package com.sulake.core.window.graphics.renderer
{
   import flash.geom.Rectangle;
   
   public class SkinLayoutEntity implements ISkinLayoutEntity
   {
      
      public static const const_261:uint = 1;
      
      public static const const_378:uint = 0;
      
      public static const const_962:uint = 8;
      
      public static const const_260:uint = 4;
      
      public static const const_397:uint = 2;
       
      
      private var var_370:uint;
      
      private var var_1745:uint;
      
      private var _color:uint;
      
      private var _name:String;
      
      private var var_1746:uint;
      
      private var var_99:Rectangle;
      
      private var var_614:Array;
      
      private var _id:uint;
      
      public function SkinLayoutEntity(param1:uint, param2:String, param3:Rectangle, param4:uint = 4.294967295E9, param5:uint = 100, param6:uint = 0, param7:uint = 0)
      {
         super();
         _id = param1;
         _name = param2;
         var_99 = param3;
         _color = param4;
         var_370 = param5;
         var_1745 = param6;
         var_1746 = param7;
         var_614 = new Array();
      }
      
      public function get scaleH() : uint
      {
         return var_1745;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get blend() : uint
      {
         return var_370;
      }
      
      public function get scaleV() : uint
      {
         return var_1746;
      }
      
      public function get tags() : Array
      {
         return var_614;
      }
      
      public function get id() : uint
      {
         return _id;
      }
      
      public function dispose() : void
      {
         var_99 = null;
         var_614 = null;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get region() : Rectangle
      {
         return var_99;
      }
   }
}
