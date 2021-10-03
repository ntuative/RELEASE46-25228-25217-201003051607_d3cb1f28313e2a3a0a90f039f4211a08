package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1798:int;
      
      private var var_1884:Boolean;
      
      private var var_1963:int;
      
      private var var_1362:String;
      
      private var var_1964:Boolean = false;
      
      private var var_1882:int;
      
      private var var_436:int;
      
      private var var_935:String;
      
      private var var_1750:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1353:int;
      
      private var var_1885:Boolean;
      
      private var var_1965:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1798 = param1;
         var_935 = param2;
         _objId = param3;
         var_1353 = param4;
         var_1362 = param5;
         var_1884 = param6;
         var_1885 = param7;
         var_1882 = param8;
         var_1750 = param9;
         var_1963 = param10;
         var_436 = -1;
      }
      
      public function get songId() : int
      {
         return var_1963;
      }
      
      public function get iconCallbackId() : int
      {
         return var_436;
      }
      
      public function get expiryTime() : int
      {
         return var_1882;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_1965 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_1964 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_436 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1885;
      }
      
      public function get slotId() : String
      {
         return var_1750;
      }
      
      public function get classId() : int
      {
         return var_1353;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1884;
      }
      
      public function get stuffData() : String
      {
         return var_1362;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1798;
      }
      
      public function get isLocked() : Boolean
      {
         return var_1964;
      }
      
      public function get prevCallbackId() : int
      {
         return var_1965;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_935;
      }
   }
}
