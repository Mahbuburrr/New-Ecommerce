<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Wishlist;
use App\Models\Product;
use Illuminate\Support\Facades\Auth;


class WishlistController extends Controller
{
    public function index()
    {
        $wishlist=Wishlist::where('user_id',Auth::id())->get();
        return view('frontend.wishlist',compact('wishlist'));
    }
    public function add(Request $request)
    {

        if(Auth::check())
        {
            $prod_id=$request->input('product_id');
            if(Product::find($prod_id))
            {
                $wish=new Wishlist();
                $wish->prod_id=$prod_id;
                $wish->user_id=Auth::id();
                $wish->save();
            return response()->json(['status' => "Product Added to Wishlist"]);

            }
            else{
            return response()->json(['status' => "Product does't exist"]);

            }
        }
        else{

            return response()->json(['status' => "Login to Continue"]);
        }
    }
    public function destroy(Request $request)
    {
        if(Auth::check())
        {
            $prod_id=$request->input('prod_id');
            if(Wishlist::where('prod_id',$prod_id)->where('user_id',Auth::id())->exists())
            {

                $wish=Wishlist::where('prod_id',$prod_id)->where('user_id',Auth::id())->first();
                $wish->delete();
                return response()->json(['status' => "Item Removed From Wishlist"]);

            }

        }
        else
        {
        
         return response()->json(['status' => "Login to continue"]);
        }
 
    }
    public function wishlistcount()
    {
        $wishcount=Wishlist::where('user_id',Auth::id())->count();
        return response()->json(['count' => $wishcount]);
    }
}
