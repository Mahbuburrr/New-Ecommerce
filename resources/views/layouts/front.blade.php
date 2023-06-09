<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>
        @yield('title')
    </title>

   
    <!-- Fonts -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
    <!-- style -->
  
   

    
    <link href="{{asset('frontend/css/custom.css')}}" rel="stylesheet">
    <link href="{{asset('frontend/css/bootstrap5.css')}}" rel="stylesheet">
    <link href="{{asset('frontend/css/owl.carousel.min.css')}}" rel="stylesheet">
    <link href="{{asset('frontend/css/owl.theme.default.min.css')}}" rel="stylesheet">

    
   <!-- google fonts link -->
   <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">

    <!-- front-awesome cdn-link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />


    <style>
      a{

        text-decoration:none !important;
      }
    </style>

 
    
</head>
<body>
  


@include('layouts.inc.frontnavbar')
  
          <div class="content">

            @yield('content')
          </div>

        <div class="whatsapp-chat">
          <a href=" https://wa.me/+8801609558069?text=I'm%20interested%20in%20your%20car%20for%20sale" target="_blank">
            <img src="{{asset('assets/images/whatsapp.png')}}" alt="whatsapplogo" hegiht="100px" width="100px">
          </a>
        </div>
    <!-- Scripts -->
    <!-- caurosel jquery link -->
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <!-- <script src="{{asset('frontend/js/jquery-3.6.4.min.js')}}" defer></script> -->
    <!-- bootsstrap js link -->
    <script src="{{asset('frontend/js/bootstrap5.bundle.min.js')}}" defer></script>
    <!-- caurosel js link -->
    <!-- <script src="{{asset('frontend/js/owl.carousel.min.js')}}" defer></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- Search auto complete -->
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <script>
        var availableTags = [];  
          $.ajax({
            method:"GET",
            url:"/product-list",
            success:function(response){
              console.log(response);
              startAutoComplete(response);
            }
          });
        
            function startAutoComplete(availableTags){
              
            $( "#search" ).autocomplete({
              source: availableTags
            });
          }

    </script>

    <!--Start of Tawk.to Script-->
      <script type="text/javascript">
      var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
      (function(){
      var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
      s1.async=true;
      s1.src='https://embed.tawk.to/6468b84aad80445890ee10ea/1h0sgvp86';
      s1.charset='UTF-8';
      s1.setAttribute('crossorigin','*');
      s0.parentNode.insertBefore(s1,s0);
      })();
      </script>
<!--End of Tawk.to Script-->
    

     
    <!-- Custom Js Script Link -->
    <script src="{{asset('frontend/js/custom.js')}}" defer></script>
    <!-- checkout.js -->
    <script src="{{asset('frontend/js/checkout.js')}}" defer></script>

    <!-- Jquery cdn script -->
    

    <!-- js for sweet alert -->

    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    @if(session('status'))
    <script>

      swal("{{session('status')}}")
    </script>
    @endif
    @yield('scripts')
</body>
</html>
