package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_922:String = "price_type_none";
      
      public static const const_464:String = "pricing_model_multi";
      
      public static const const_474:String = "price_type_credits";
      
      public static const const_409:String = "price_type_credits_and_pixels";
      
      public static const const_379:String = "pricing_model_bundle";
      
      public static const const_433:String = "pricing_model_single";
      
      public static const const_725:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1359:String = "pricing_model_unknown";
      
      public static const const_423:String = "price_type_pixels";
       
      
      private var var_814:int;
      
      private var _offerId:int;
      
      private var var_815:int;
      
      private var var_388:String;
      
      private var var_563:String;
      
      private var var_1893:int;
      
      private var var_703:ICatalogPage;
      
      private var var_1195:String;
      
      private var var_389:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1195 = param1.localizationId;
         var_814 = param1.priceInCredits;
         var_815 = param1.priceInPixels;
         var_703 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_388;
      }
      
      public function get page() : ICatalogPage
      {
         return var_703;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1893 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_389;
      }
      
      public function get localizationId() : String
      {
         return var_1195;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_815;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1195 = "";
         var_814 = 0;
         var_815 = 0;
         var_703 = null;
         if(var_389 != null)
         {
            var_389.dispose();
            var_389 = null;
         }
      }
      
      public function get priceType() : String
      {
         return var_563;
      }
      
      public function get previewCallbackId() : int
      {
         return var_1893;
      }
      
      public function get priceInCredits() : int
      {
         return var_814;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_388 = const_433;
            }
            else
            {
               var_388 = const_464;
            }
         }
         else if(param1.length > 1)
         {
            var_388 = const_379;
         }
         else
         {
            var_388 = const_1359;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_388)
         {
            case const_433:
               var_389 = new SingleProductContainer(this,param1);
               break;
            case const_464:
               var_389 = new MultiProductContainer(this,param1);
               break;
            case const_379:
               var_389 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_388);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_814 > 0 && var_815 > 0)
         {
            var_563 = const_409;
         }
         else if(var_814 > 0)
         {
            var_563 = const_474;
         }
         else if(var_815 > 0)
         {
            var_563 = const_423;
         }
         else
         {
            var_563 = const_922;
         }
      }
   }
}
