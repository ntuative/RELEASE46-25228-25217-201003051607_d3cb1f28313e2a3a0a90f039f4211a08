package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_351:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_462:int = 0;
      
      public static const const_971:int = 2;
      
      public static const const_937:int = 1;
      
      public static const const_526:Boolean = false;
      
      public static const const_687:String = "";
      
      public static const const_420:int = 0;
      
      public static const const_418:int = 0;
      
      public static const const_439:int = 0;
       
      
      private var var_1809:int = 0;
      
      private var var_1620:String = "";
      
      private var var_1402:int = 0;
      
      private var var_1811:int = 0;
      
      private var var_1808:Number = 0;
      
      private var var_1621:int = 255;
      
      private var var_1810:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_1809;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1402 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_1808;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_1811 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_1809 = param1;
      }
      
      public function get tag() : String
      {
         return var_1620;
      }
      
      public function get alpha() : int
      {
         return var_1621;
      }
      
      public function get ink() : int
      {
         return var_1402;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_1808 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_1811;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_1810 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_1810;
      }
      
      public function set tag(param1:String) : void
      {
         var_1620 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1621 = param1;
      }
   }
}
