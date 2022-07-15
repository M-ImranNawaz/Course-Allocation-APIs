<?php

namespace App\Http\Controllers;

use App\Models\Course;
use Illuminate\Http\Request;

class CourseController extends Controller
{
    //
    function getCourses() {
        return Course::all();
    }
    function clearData() {
        Course::truncate();
        return response('All data Deleted ', 201);
    }
    function addAllCourses(Request $request) {
        $data = $request->all();
        $finalArray = array();
        foreach($data as $key=>$value){
        array_push($finalArray, array(
                        'name'=>$value["name"],
                        'code'=>$value["code"],
                        'department'=>$value["department"],
                        'program'=>$value["program"],
                        'creditHours'=>$value["creditHours"],
                        'semester'=>$value["semester"],
                        )
            );
        }
        $data = Course::insert($finalArray);
        $response = [
            'users'=>$data
        ];
        return response($response, 201);
    }
}
