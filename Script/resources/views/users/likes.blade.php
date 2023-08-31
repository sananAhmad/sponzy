@extends('layouts.app')

@section('title') {{trans('general.likes')}} -@endsection

@section('content')
<section class="section section-sm">
    <div class="container container-lg-3 pt-5">
      <div class="row">

        <div class="col-md-2">
          @include('includes.menu-sidebar-home')
        </div>

        <div class="col-md-6 p-0 second wrap-post">

          @if ($updates->total() != 0)

            @php
              $counterPosts = ($updates->total() - $settings->number_posts_show);
            @endphp

          <div class="grid-updates position-relative" id="updatesPaginator">
              @include('includes.updates')
          </div>

        @else
          <div class="grid-updates position-relative" id="updatesPaginator"></div>

        <div class="my-5 text-center no-updates">
          <span class="btn-block mb-3">
            <i class="far fa-heart ico-no-result"></i>
          </span>
        <h4 class="font-weight-light">{{trans('general.no_likes')}}</h4>
        </div>

        @endif
        </div><!-- end col-md-6 -->

        <div class="col-md-4 mb-4 first">

          @if ($users->total() == 0)
          <div class="panel panel-default panel-transparent mb-4 d-lg-block d-none">
        	  <div class="panel-body">
        	    <div class="media none-overflow">
        			  <div class="d-flex my-2 align-items-center">
        			      <img class="rounded-circle mr-2" src="{{Helper::getFile(config('path.avatar').auth()->user()->avatar)}}" width="60" height="60">

        						<div class="d-block">
        						<strong>{{auth()->user()->name}}</strong>


        							<div class="d-block">
        								<small class="media-heading text-muted btn-block margin-zero">
                          <a href="{{url('settings/page')}}">
                						{{ auth()->user()->verified_id == 'yes' ? trans('general.edit_my_page') : trans('users.edit_profile')}}
                            <small class="pl-1"><i class="fa fa-long-arrow-alt-right"></i></small>
                          </a>
                        </small>
        							</div>
        						</div>
        			  </div>
        			</div>
        	  </div>
        	</div>
        @endif

        @if ($users->total() != 0)
          <button type="button" class="btn btn-primary btn-block mb-2 d-lg-none" type="button" data-toggle="collapse" data-target="#navbarUserHome" aria-controls="navbarCollapse" aria-expanded="false">
            <i class="far	fa-compass mr-1"></i> {{trans('general.explore_creators')}}
          </button>
          @endif

          <div class="navbar-collapse collapse d-lg-block sticky-top" id="navbarUserHome">

            @if ($users->total() != 0)
                @include('includes.explore_creators')
            @endif

            <div class="d-lg-block d-none">
              @include('includes.footer-tiny')
            </div>

         </div><!-- navbarUserHome -->

        </div><!-- col-md -->

      </div>
    </div>
  </section>
@endsection
