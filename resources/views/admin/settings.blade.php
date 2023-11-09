@extends('admin.layouts.app')

@section('title')
    Settings
@endsection

@php
    $page = 'Update Settings';
@endphp

@section('mainpart')
    <div class="card">
        <div class="card-header d-flex align-items-center justify-content-between">
            <h4 class="card-title">Settings</h3>
              
        </div>
        @php
            $set = DB::table('settings')->first();
        @endphp
        <div class="card-body">
             <form action="{{ route('admin.settings.update') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="modal-body">

                        <div class="form-group">
                            <label for="post_name">About Title</label>
                            <input type="text" class="form-control @error('about_title') is-invalid @enderror"
                                name="about_title" value="{{ $set->about_title ?? old('about_title') }}">
                            @error('about_title')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label for="post_name">About Subtitle</label>
                            <textarea  class="form-control @error('about_subtitle') is-invalid @enderror"
                                name="about_subtitle"  cols="3" rows="4">{{$set->about_subtitle ?? old('about_subtitle') }}</textarea>
                            @error('about_subtitle')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>

                        <div class="form-group">
                           <img src="{{asset('images/logo/'.$set->logo_image)}}" class="img-rounded" width="50px" alt="logo image"/>
                        </div>
                        <div class="form-group">
                            <label for="post_name">Logo Image</label>
                            <input type="file" class="form-control-file" name="logo_image">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-primary" type="submit">Update</button>
                    </div>
                </form>
        </div>
    </div>


   
@endsection
