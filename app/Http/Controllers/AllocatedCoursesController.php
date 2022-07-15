<?php

namespace App\Http\Controllers;

use App\Models\AllocatedCourse;
use App\Models\Course;
use App\Models\Faculty;
use Illuminate\Http\Request;

class AllocatedCoursesController extends Controller
{
    function getAllocatedCourses() {
        return AllocatedCourse::all();
    }
    function clearData() {
        AllocatedCourse::truncate();
        return response('All data Deleted ', 202);
    }
    function addAllocatedCourses(Request $request) {
        $data =  $request->validate(
            [
                'faculty' => 'required|string|max:191',
                'courses' => 'required|string|max:191',
            ]);
        $ac = AllocatedCourse::create([
                'faculty' => $data['faculty'],
                'courses' => $data['courses'],
            ]);
        $response = [
            'Allocated Courses'=>$ac
        ];
        return response($response, 201);
    }

    function getACbyid(Request $request) {
        $ac= AllocatedCourse::where('faculty', $request->faculty)->first();
        if(!$ac) {
            return response([
                'message' => ['Faculty does not exist']
            ], 404);
        }
        $response = [
            "Allocated Courses"=>$ac,
        ];
        return response($response, 201);
    }

    function getAllACs() {           
        $l = AllocatedCourse::all();
        $ls = json_decode($l);
        
        foreach($ls as $list) {
            $ids = $list->courses_ids;
            foreach(explode(',',$ids) as $row)
                $my [] = $row;
            $course = Course::find($my);
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

    function addAllACs(Request $request) {
        
        $data = $request->all();
        $finalArray = array();
        foreach($data as $key=>$value){
        array_push($finalArray, array(
                        'faculty'=>$value["faculty"],
                        'courses'=>$value["courses"],
                        )
            );
        }
        $data = AllocatedCourse::insert($finalArray);
        $response = [
            'Allocated Courses'=>$data
        ];
        return response($response, 201);
    }
}
