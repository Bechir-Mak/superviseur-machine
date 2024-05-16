<?php

namespace App\Http\Controllers;

use App\Models\Machine;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class MachineController extends Controller
{

    public function checkStatusChanges()
    {
       // $machines = Machine::all();
        if (Auth::user()->name === "admin"){
            $machines = Machine::all();
        }else{
            $machines = Auth::user()->machines()->get();
        }
        return response()->json($machines);
    }

}
