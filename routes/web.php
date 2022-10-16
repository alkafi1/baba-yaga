<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\FrontendControlller;
use App\Http\Controllers\userControlller;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\SubcategoryController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\InventoryController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\CustomerLoginController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\CouponController;
use App\Http\Controllers\CheckoutController;
use App\Http\Controllers\AccountController;
use App\Http\Controllers\SslCommerzPaymentController;
use App\Http\Controllers\StripePaymentController;
use App\Http\Controllers\Users;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\SocialsiteController;



/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



Auth::routes();
Route::get('/admin', [FrontendControlller::class, 'welcome'])->name('welcome');
Route::get('/', [FrontendControlller::class, 'index'])->name('index');
Route::get('/product_details/{slug}', [FrontendControlller::class, 'product_details'])->name('product_details');

Route::get('/home', [HomeController::class, 'index'])->name('home');

//users
Route::get('/user', [userControlller::class, 'users'])->name('user');
Route::get('/user_delete/{user_id}', [userControlller::class, 'user_delete'])->name('user_delete');

//role
Route::get('/role/permission', [RoleController::class, 'add_role_permission'])->name('add.role.permission');
Route::post('/permission/store', [RoleController::class, 'permission_store'])->name('permission.store');
Route::post('/role/store', [RoleController::class, 'role_store'])->name('role.store');
Route::get('/role/update/{role_id}', [RoleController::class, 'role_update'])->name('role.update');
Route::post('/role/update/store', [RoleController::class, 'role_update_store'])->name('role.update.store');
Route::get('/role/assign/user', [RoleController::class, 'assign_role_user'])->name('assign.role.user');
Route::post('/role/assign/user/store', [RoleController::class, 'role_assign_user_store'])->name('role.assign.user.store');

//category
Route::get('/category', [CategoryController::class, 'category'])->name('category');
Route::get('/add_category', [CategoryController::class, 'addcategory'])->name('addcategory');
Route::post('/add_category', [CategoryController::class, 'addcategory_store'])->name('addcategory_store');
Route::get('/category_delete/{category_id}', [CategoryController::class, 'category_delete'])->name('category_delete');
Route::get('/category_edit/{category_id}', [CategoryController::class, 'category_edit'])->name('category_edit');
Route::post('/category_update', [CategoryController::class, 'category_update'])->name('category_update');
Route::get('/category_per_delete/{category_id}', [CategoryController::class, 'category_per_delete'])->name('category_per_delete');
Route::get('/category_restore/{category_id}', [CategoryController::class, 'category_restore'])->name('category_restore');
Route::post('/category_mark_delete', [CategoryController::class, 'category_mark_delete'])->name('category_mark_delete');
Route::post('/trashed_category_delete', [CategoryController::class, 'trashed_category_delete'])->name('trashed_category_delete');


//subcategory
Route::get('/addsubcategory', [SubcategoryController::class, 'addsubcategory'])->name('addsubcategory');
Route::post('/subcategory_store', [SubcategoryController::class, 'subcategory_store'])->name('subcategory_store');
Route::get('/subcategory', [SubcategoryController::class, 'subcategory'])->name('subcategory');
Route::get('/subacategory_delete/{subcategory_id}', [SubcategoryController::class, 'subacategory_delete'])->name('subacategory_delete');
Route::get('/subacategory_restore/{subcategory_id}', [SubcategoryController::class, 'subacategory_restore'])->name('subacategory_restore');
Route::get('/subacategory_edit/{subcategory_id}', [SubcategoryController::class, 'subacategory_edit'])->name('subacategory_edit');
Route::post('/subacategory_update', [SubcategoryController::class, 'subacategory_update'])->name('subacategory_update');

//product
Route::get('/addproduct', [ProductController::class, 'addproduct' ])->name('addproduct');
Route::post('/getsubategory', [ProductController::class, 'getsubategory' ]);
Route::post('/product_store', [ProductController::class, 'product_store' ])->name('product_store');
Route::get('/product', [ProductController::class, 'product' ])->name('product');

//inventory
Route::get('/product_inventory/{product_id}', [InventoryController::class, 'product_inventory' ])->name('product_inventory');
// Route::get('/product_inventory', [InventoryController::class, 'product_inventory' ])->name('product_inventory');
Route::get('/add_color', [InventoryController::class, 'add_color' ])->name('add_color');
Route::post('/add_color_store', [InventoryController::class, 'add_color_store' ])->name('add_color_store');
Route::get('/color_delete/{color_id}', [InventoryController::class, 'color_delete' ])->name('color_delete');
Route::post('/add_size_store', [InventoryController::class, 'add_size_store' ])->name('add_size_store');
Route::get('/size_delete/{size_id}', [InventoryController::class, 'size_delete' ])->name('size_delete');
Route::post('/product_inventory_store', [InventoryController::class, 'product_inventory_store' ])->name('product_inventory_store');


Route::post('/get_size', [FrontendControlller::class, 'get_size' ])->name('get_size');


//customer 

Route::get('/customer_register', [CustomerController::class,'customer_register'])->name('customer_register');
Route::post('/customer_register_store', [CustomerController::class,'customer_register_store'])->name('customer_register_store');
Route::post('/customer/login', [CustomerLoginController::class,'customer_login'])->name('customer.login');
Route::get('/customer/logout', [CustomerLoginController::class,'customer_logout'])->name('customer.logout');
//email verify 

Route::get('/customer/email/verify/{token}', [CustomerLoginController::class,'customer_email_verify'])->name('customer.email.verify');

//passreset
Route::get('/customer/password/reset', [CustomerLoginController::class,'customer_password_reset'])->name('customer.password.reset');
Route::post('/customer/pass/req/store', [CustomerLoginController::class,'customer_pass_req_store'])->name('customer.pass.req.store');
Route::get('/customer/pass/reset/form/{token}', [CustomerLoginController::class,'customer_pass_reset_form'])->name('customer.pass.reset.update');
Route::post('/customer/pass/reset/update', [CustomerLoginController::class,'customer_pass_reset_update'])->name('pass_reset_update');

//cart
Route::post('/cart/store', [CartController::class,'cart_store'])->name('cart.store');
Route::get('/cart/remove/{cart_id}', [CartController::class,'cart_remove'])->name('cart.remove');
Route::get('/cart/view', [CartController::class,'cart_view'])->name('cart.view');
Route::post('/cart/update', [CartController::class,'cart_update'])->name('cart.update');

//copupon
Route::get('/copuon', [CouponController::class,'add_coupon'])->name('add.coupon');
Route::post('/copuon/store', [CouponController::class,'coupon_store'])->name('coupon.store');
Route::get('/copuon/status/{coupon_id}', [CouponController::class,'coupon_update'])->name('coupon.status');

//checkout
Route::get('/checkout', [CheckoutController::class,'checkout'])->name('checkout');
Route::post('/getCity', [CheckoutController::class,'getCity']);
Route::post('/order/store', [CheckoutController::class,'order_store'])->name('order.store');
Route::get('/order/success', [CheckoutController::class,'order_success'])->name('order.success');

//account
Route::get('/account', [AccountController::class,'account'])->name('account');
Route::get('/invoice/download/{order_id}', [AccountController::class,'invoice_download'])->name('invoice.download');
Route::post('/review/store', [AccountController::class,'review_store'])->name('review.store');

// SSLCOMMERZ Start
Route::get('/ssl/payment', [SslCommerzPaymentController::class, 'ssl_pay']);

Route::post('/pay', [SslCommerzPaymentController::class, 'index']);
Route::post('/pay-via-ajax', [SslCommerzPaymentController::class, 'payViaAjax']);

Route::post('/success', [SslCommerzPaymentController::class, 'success']);
Route::post('/fail', [SslCommerzPaymentController::class, 'fail']);
Route::post('/cancel', [SslCommerzPaymentController::class, 'cancel']);

Route::post('/ipn', [SslCommerzPaymentController::class, 'ipn']);
//SSLCOMMERZ END

//Stripe 

Route::get('stripe', [StripePaymentController::class, 'stripe']);
Route::post('stripe', [StripePaymentController::class, 'stripePost'])->name('stripe.post');


//github sign in
Route::get('/github/redirect', [SocialsiteController::class, 'github_redirect'])->name('github.redirect');
Route::get('/github/callback', [SocialsiteController::class, 'github_callback'])->name('github.callback');
//goggle sign in
Route::get('/google/redirect', [SocialsiteController::class, 'google_redirect'])->name('google.redirect');
Route::get('/google/callback', [SocialsiteController::class, 'google_callback'])->name('google.callback');

//shop_open
Route::get('/shop', [FrontendControlller::class, 'shop'])->name('shop');
