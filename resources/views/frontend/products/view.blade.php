@extends('layouts.front')

@section('title',$product->name)

   



@section('content')
<!-- Modal for product rate -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
            <div class="modal-content">
        <form action="{{url('add-rating')}}" method="POST">
            @csrf
            <input type="hidden" name="product_id" value="{{$product->id}}">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Rate {{$product->name}}</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                        <div class="rating-css">
                            <div class="star-icon">
                                @if($user_rating)
                                @for($i=1 ; $i <= $user_rating->stars_rated ; $i++)
                                <input type="radio" value="{{$i}}" name="product_rating" checked id="rating{{$i}}">
                                <label for="rating{{$i}}" class="fa fa-star"></label>
                                @endfor
                                
                                @for($j=$user_rating->stars_rated+1 ; $j<=5 ; $j++)
                                <input type="radio" value="{{$j}}" name="product_rating"  id="rating{{$j}}">
                                <label for="rating{{$j}}" class="fa fa-star"></label>
                                @endfor
                                
                                @else
                                <input type="radio" value="1" name="product_rating" checked id="rating1">
                                <label for="rating1" class="fa fa-star"></label>
                                <input type="radio" value="2" name="product_rating" id="rating2">
                                <label for="rating2" class="fa fa-star"></label>
                                <input type="radio" value="3" name="product_rating" id="rating3">
                                <label for="rating3" class="fa fa-star"></label>
                                <input type="radio" value="4" name="product_rating" id="rating4">
                                <label for="rating4" class="fa fa-star"></label>
                                <input type="radio" value="5" name="product_rating" id="rating5">
                                <label for="rating5" class="fa fa-star"></label>
                               @endif
                            </div>
                        </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">submit</button>
            </div>
      </form>
    </div>
  </div>
</div>
<!-- Modal end for product rate -->
<div class="py-3 mb-4 shadow-sm bg-warning border-top">
    <div class="container">
        <h6 class="mb-0">Collections/{{$product->category->name}}/{{$product->name}} </h6>
    </div>

</div>

<div class="container pb-5">
    <div class=" product_data">
        <div class="">
            <div class="row">
                <div class="col-md-4  border-right">
                    <img src="{{asset('assets/uploads/products/'.$product->image)}}" class="w-100" alt="">
                </div>
                <div class="col-md-8">
                    <h2 class="mb-0">

                    {{$product->name}}
                    @if($product->trending=='1')
                    <label for="trend" style="font-size:10px;" class="float-end badge bg-danger trending_tag">Trending</label>
                   @endif
                    </h2>
                    <hr>
                    <label for="" class="me-3">Original Price:<s>Rs{{$product->original_price}}</s></label>
                    <label for="" class="fw-bold">Selling Price: Rs {{$product->selling_price}}</label>
                    @php $ratenum=number_format($rating_value) @endphp
                    <div class="rating">
                        @for($i=1; $i<=$ratenum; $i++)
                        <i class="fa fa-star checked"></i>
                        @endfor
                        @for($j=$ratenum+1;$j<=5; $j++)
                        <i class="fa fa-star"></i>
                        @endfor
                        <span>
                            @if($rating->count()>0)
                            {{$rating->count()}} Ratings
                            @else
                            No Ratings
                            @endif
                        </span>
                       
                        
                     </div>
                    <p class="mt-3">

                    {!! $product->small_description !!}

                    </p>
                    <hr>
                    @if($product->qty > 0)
                    <label for="" class="badge bg-success">To stock</label>
                    @else
                    <label class="badge bg-danger">Out of stock</label>
                    @endif

                    <div class="row mt-2">
                                <div class="col-md-2">
                                    <input type="hidden" value="{{$product->id}}" class="prod_id">
                                    <label for="Quantity">Quantity</label>
                                    <div class="input-group text-center mb-3">
                                        <span class="input-group-text decrement-btn">-</span>
                                        <input type="text" name="quantity " value="1" class="form-control text-center qty-input"/>
                                        <span class="input-group-text increment-btn">+</span>

                                    </div>
                                </div>

                                <div class="col-md-10">
                                    <br/>
                                    @if($product->qty>0)
                                    <button type="button" class="btn btn-primary addToCartBtn me-3 float-start">Add to Cart <i class="fa fa-shopping-cart"></i></button>
                                    @endif
                                    <button type="button" class="btn btn-success addToWishlist me-3 float-start">Add to wishlist <i class="fa fa-heart"></i></button>
                                   

                                </div>
                     </div>  
                 </div>
                 <div class="col-md-12">
                <hr>
                <h3>Description</h3>
                <p class="mt-3">
                    {!! $product->description !!}
                </p>
             
            </div>
            <hr>
              </div>

              <div class="row">
                <div class="col-md-4">

                <button type="button" class="btn btn-link" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        Rate this product
                </button>
                <a  href="{{url('add-review/'.$product->slug.'/userview')}}"  class="btn btn-link" >
                       Write a Review
                </a>
                
                </div>
                <div class="col-md-8">
                    @foreach($reviews as $item)
                    <div class="user-review">

                    <label for="">{{$item->user->name .' '.$item->user->lname}}</label>
                    @if($item->user_id == Auth::id())
                    <a href="{{url('edit-review/'.$product->slug.'/userreview')}}">edit-review</a>
                    @endif
                    <br>
                    @php  
                    $rating=App\Models\Rating::where('prod_id',$product->id)->where('user_id',$item->user->id)->first();
                    @endphp
                    @if($rating)
                    @php $user_rated=$rating->stars_rated @endphp
                    @for($i=1; $i<=$user_rated; $i++)
                        <i class="fa fa-star checked"></i>
                        @endfor
                        @for($j=$user_rated+1;$j<=5; $j++)
                        <i class="fa fa-star"></i>
                        @endfor
                    @endif
                    <small>Reviewed on {{$item->created_at->format('d M Y')}}</small>
                    <p>{{$item->user_review}}
                    </p>
                    </div>
                    @endforeach

                </div>
              </div>
            
           
        </div>
    </div>
</div>
@endsection

@section('scripts')
<script>
    $(document).ready(function(){

        // $('.addToCartBtn').click(function(e){
        //         e.preventDefault();

        //         var product_id=$(this).closest('.product_data').find('.prod_id').val();
        //         var product_qty=$(this).closest('.product_data').find('.qty-input').val();



        //         //    alert(product_id);
        //         $.ajaxSetup({
        //                     headers: {
        //                         'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        //                     }
        //                 });

        //         $.ajax({

        //             method:"POST",
        //             url:"{{url('add-to-cart')}}",
        //             data:{
        //                 'product_id':product_id,
        //                 'product_qty':product_qty,
        //             },
        //             success:function(response){

        //         swal(response.status);
        //             }
        //         });

        // });

        $('.increment-btn').click(function(e){

            e.preventDefault();
            // var inc_value=$('.qty-input').val();
            var inc_value=$(this).closest('.product_data').find('.qty-input').val();
            var value=parseInt(inc_value,10);
            value=isNaN(value) ? 0 : value;
            if(value<10)
            {

                value++;
                $(this).closest('.product_data').find('.qty-input').val(value);
            }
        });

        $('.decrement-btn').click(function(e){

                e.preventDefault();
                var dec_value=$(this).closest('.product_data').find('.qty-input').val();
                var value=parseInt(dec_value,10);
                value=isNaN(value) ? 0 : value;
                if(value>1)
                {

                    value--;
                    $(this).closest('.product_data').find('.qty-input').val();
                }
         });

         
    });

    

    
</script>
@endsection