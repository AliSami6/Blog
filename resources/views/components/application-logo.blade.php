@php
    $logo = \App\Models\Setting::first();
@endphp
<img src="{{ asset('images/logo/'.$logo->logo_image) }}" alt="" style="height: 40px; margin-bottom: 10px">
