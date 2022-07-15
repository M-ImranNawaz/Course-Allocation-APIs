<?php

namespace App\Http\Controllers;

use App\Models\Faculty;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class FacultyController extends Controller
{
    //
    function getFaculty() {
        return Faculty::all();
    }
    function clearAll() {
        Faculty::truncate();
        return 204;
    }
    function index(Request $request)
    {
        $user= Faculty::where('email', $request->email)->first();
            if (!$user || $request->password != $user->password) {
                return response([
                    'message' => ['These credentials do not match our records.']
                ], 404);
            }
        
            return response([$user], 201);
    }

    function registerFaculty(Request $request) {
        $data =  $request->validate(
            [
                'name' => 'required|string|max:191',
                'email' => 'required|email|max:191|unique:users,email',
                'password' => 'required|string'
            ]);
        $user = Faculty::create([
                'name' => $data['name'],
                'email' => $data['email'],
                'password' => $data['password'],
            ]);
        $response = [
            'user'=>$user
        ];
        return response($response, 201);
    }

    function registerAllFaculty(Request $request) {
        $data = $request->all();
        $finalArray = array();
        foreach($data as $key=>$value){
        array_push($finalArray, array(
                        'name'=>$value["name"],
                        'email'=>$value["email"],
                        'password'=>$value["password"],
                        )
            );
        }
        $data = Faculty::insert($finalArray);
        $response = [
            'users'=>$data
        ];
        return response($response, 201);
    }
    function deleteFaculty(Request $request) {
        $fac = Faculty::findorFail($request->id);
        $fac->delete();
        if(strpos($fac, $request->id)) {
            //response(201, 'Data Deleted Successfully');
            print('Data Deleted Successfully');
        }
        
    }
}
