<?php

namespace App\Http\Controllers;

use App\Models\Course;
use App\Models\Faculty;
use App\Models\FacultyPreference;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FacultyPreferenceController extends Controller
{
    function addPreferences(Request $request) {
        if (FacultyPreference::where('faculty_id', $request->faculty_id )->exists()) {
            return response([
                'message' => ['Your Preferences Already Exists.']
            ], 406);
        }
        $data =  $request->validate(
            [
                'faculty_id' => 'required|int|max:191',
                'pref_1' => 'required|int|max:191',
                'pref_2' => 'required|int|max:191',
                'pref_3' => 'required|int|max:191',
                'pref_4' => 'required|int|max:191',
            ]);
        $pref = FacultyPreference::create([
                'faculty_id' => $data['faculty_id'],
                'pref_1' => $data['pref_1'],
                'pref_2' => $data['pref_2'],
                'pref_3' => $data['pref_3'],
                'pref_4' => $data['pref_4']
            ]);
        $response = [
            'preferences'=>$pref
        ];
        return response($response, 201);
    }
    function getFacultyPreferences() {
        return FacultyPreference::all();
    }

    function getPreferedCourses(Request $request) {
        $user= FacultyPreference::where('faculty_id', $request->id)->first();
            if (!$user) {
                return response([
                    'message' => ['These credentials do not match our records.']
                ], 404);
            }
            return response([$user], 201);
    }
    function getAllFacultyPreferences() {            
        $cou = Course::count();
        if($cou == 0) {
            echo $cou;
            return $cou;
        }
        $fac = Faculty::count();
        if($fac == 0) {
            echo $fac;
            return $fac;
        }
        $l = FacultyPreference::all();
        $ls = json_decode($l);
        foreach($ls as $list) {
            $course = Course::find([$list->pref_1,$list->pref_2,$list->pref_3,$list->pref_4]);
            $course = json_decode($course);
            $courses[ ] = $course;
            $f = Faculty::find([$list->faculty_id]);
            $faculty = json_decode($f);
            $faculties [ ] = $faculty;
            $res = [
                "Faculty"=>$faculty,
                "Courses"=>$course
            ];
            $response []= $res;
        }
        return $response;
    }
    function getFPById(Request $request) {
        $faculty= FacultyPreference::where('faculty_id', $request->id)->first();
        if(!$faculty) {
            return response([
                'message' => ['Faculty does not exist']
            ], 404);
        }
        $ls = json_decode($faculty);
        $course = Course::find([$ls->pref_1,$ls->pref_2,$ls->pref_3,$ls->pref_4]);
        $f = Faculty::find([$ls->faculty_id]);
        $faculty = json_decode($f);
        $courses = json_decode($course);
        $response = [
            "Faculty"=>$f,
            "Courses"=>$courses
        ];
        
        return $response;
    }
    function clearAll() {
        FacultyPreference::truncate();
        return response('All data Deleted ', 201);
    }
}

