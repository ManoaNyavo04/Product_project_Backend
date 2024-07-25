<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class Data_controller extends Controller
{
    public function allData(){
        $data = [
            [
                'id' => 1,
                'name' => 'John Doe',
                'email' => 'john@example.com'
            ],
            [
                'id' => 2,
                'name' => 'Jane Smith',
                'email' => 'jane@example.com'
            ],
            [
                'id' => 3,
                'name' => 'Bob Johnson',
                'email' => 'bob@example.com'
            ]
        ];

        return response()->json($data);
    }

    public function insertData(Request $request){
        $donnee = $request->all();

        Log::info('Données reçues:', $donnee);


        return response()->json([
            'message' => 'Données reçues avec succès',
            'data' => $donnee
        ]);
    }
}
