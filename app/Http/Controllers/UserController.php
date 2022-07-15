<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    //
    function index(Request $request)
    {
        $user= User::where('email', $request->email)->first();
        // print_r($data);
            if (!$user || !Hash::check($request->password, $user->password)) {
                return response([
                    'message' => ['These credentials do not match our records.']
                ], 404);
            }
        
            $token = $user->createToken('my-app-token')->plainTextToken;
        
            $response = [
                'user' => $user,
                'token' => $token
            ];
        
            return response($response, 201);
    }

    public function register(Request $request) {
        $data =  $request->validate(
            [
                'name' => 'required|string|max:191',
                'department' => 'required|string|max:191',
                'email' => 'required|email|max:191|unique:users,email',
                'password' => 'required|string'
            ]);
        $user = User::create([
            'name' => $data['name'],
            'department' => $data['department'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
        ]);
        
        $token = $user->createToken('courseAllocationProject')->plainTextToken;
        $response = [
            'user'=>$user,
            'token'=>$token
        ];
        return response($response, 201);


    }
}

