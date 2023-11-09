<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-icon">
            @php
                $set = DB::table('settings')->first();
            @endphp
            <img src="{{ asset('images/logo/'.$set->logo_image) }}" alt="" style="width: 50px">
        </div>
       
    </a>

    <!-- Divider -->
    <hr class="my-0 sidebar-divider">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item @if ($page == 'Dashboard') active @endif">
        <a class="nav-link" href={{ route('admin.dashboard') }}>
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">
    <!-- Heading -->
    <div class="sidebar-heading">
        Core
    </div>

    <!-- Nav Item - Tables -->
    <li class="nav-item @if ($page == 'Categories') active @endif">
        <a class="nav-link" href={{ route('category.index') }}>
            <i class="fas fa-fw fa-table"></i>
            <span>Category</span></a>
    </li>

    <li class="nav-item @if ($page == 'posts') active @endif">
        <a class="nav-link" href={{ route('post.index') }}>
            <i class="fas fa-fw fa-table"></i>
            <span>Posts</span></a>
    </li>

    <li class="nav-item @if ($page == 'messages') active @endif">
        <a class="nav-link" href={{ route('messages.index') }}>
            <i class="fas fa-fw fa-envelope"></i>
            <span>Contact Messages</span></a>
    </li>



    <!-- Sidebar Toggler (Sidebar) -->
    <div class="mt-5 text-center d-none d-md-inline">
        <button class="border-0 rounded-circle" id="sidebarToggle"></button>
    </div>

</ul>
