<?php

namespace App\Http\Controllers;

use App\Models\Setting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Storage;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class SettingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function Settings_list()
    {
        $set = Setting::first();
        return view('admin.settings', compact('set'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Setting  $setting
     * @return \Illuminate\Http\Response
     */
    public function show(Setting $setting)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Setting  $setting
     * @return \Illuminate\Http\Response
     */
    public function edit(Setting $setting)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Setting  $setting
     * @return \Illuminate\Http\Response
     */
    public function Settings_update(Request $request)
    {
        $request->validate([
            'about_title' => 'string',
            'about_subtitle' => 'string',
            'logo_image' => 'image|mimes:jpg,png',
        ]);
        try {
            $set = Setting::first();
            $data = $request->except('logo_image');
            if ($request->hasFile('logo_image')) {
                if ($request->logo_image) {
                    File::delete(public_path('images/logo/' . $request->logo_image));
                }
                $file = $request->file('logo_image');
                $extension = $file->getClientOriginalExtension();
                $filename = time() . '.' . $extension;
                $logo_image = Image::make($file);
                $logo_image->resize(100, 60)->save(public_path('images/logo/' . $filename));
                $data['logo_image'] = $filename;
            }

            $set->update($data);

            $notify = ['message' => 'Updated Successfully', 'alert-type' => 'success'];
            return redirect()
                ->back()
                ->with($notify);
        } catch (ModelNotFoundException $exception) {
            return back()
                ->withError($exception->getMessage())
                ->withInput();
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Setting  $setting
     * @return \Illuminate\Http\Response
     */
    public function destroy(Setting $setting)
    {
        //
    }
}