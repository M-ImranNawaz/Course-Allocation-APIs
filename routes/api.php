<?php

use App\Http\Controllers\AllocatedCoursesController;
use App\Http\Controllers\CourseController;
use App\Http\Controllers\FacultyController;
use App\Http\Controllers\FacultyPreferenceController;
use App\Http\Controllers\UserController;
use App\Models\AllocatedCourse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['middleware' => 'auth:sanctum'], function(){
    //All secure URL's
    Route::get('getallfacultypreferences',[FacultyPreferenceController::class,'getAllFacultyPreferences']);
    Route::get('clearpreferences',[FacultyPreferenceController::class,'clearAll']);
    Route::get('faculty',[FacultyController::class,'getFaculty']);
    Route::post('addallcourses',[CourseController::class,'addAllCourses']);
    Route::get('clearcourses',[CourseController::class,'clearData']);
    Route::get('clearfaculty',[FacultyController::class,'clearAll']);
    Route::get('clearacs',[AllocatedCoursesController::class,'clearData']);
    Route::post('addallfaculty',[FacultyController::class,'registerAllFaculty']);
    });

//Route::get('getallfacultypreferences',[FacultyPreferenceController::class,'getAllFacultyPreferences']);

Route::post("signin",[UserController::class,'index']);
//Route::post("signup",[UserController::class,'singup']);
Route::post("register",[UserController::class,'register']); 


Route::get('courses',[CourseController::class,'getCourses']);
//Route::get('addallcourses',[CourseController::class,'addAllCourses']);
//Route::post('addallcourses',[CourseController::class,'addAllCourses']);

//Route::get('faculty',[FacultyController::class,'getFaculty']);
Route::post('loginfaculty',[FacultyController::class,'index']);
Route::post('registerfaculty',[FacultyController::class,'registerFaculty']);


//
Route::post('getfpbyid',[FacultyPreferenceController::class,'getFPById']);
Route::post('addpreferences',[FacultyPreferenceController::class,'addPreferences']);

Route::get('allocatedcourses',[AllocatedCoursesController::class,'getAllocatedCourses']);
Route::get('getacs',[AllocatedCoursesController::class,'getAllACs']);
Route::post('addallacs',[AllocatedCoursesController::class,'addAllACs']);
Route::post('getacbyid',[AllocatedCoursesController::class,'getACbyId']);


//Route::post('addallocatedcourses',[AllocatedCoursesController::class,'addAllocatedCourses']);

Route::post('deletefaculty',[FacultyController::class,'deleteFaculty']);