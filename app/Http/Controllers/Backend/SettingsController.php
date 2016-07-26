<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Helpers\Helper;
use App\Models\Backend\Settings;
use DB;

class SettingsController  extends Controller
{
    public function index(Request $request)
    {              
        $settingArr = Settings::whereRaw('1')->lists('value', 'name');
        var_dump("<pre>", $settingArr);

        return view('backend.settings.index', compact( 'settingArr'));
    }
}
