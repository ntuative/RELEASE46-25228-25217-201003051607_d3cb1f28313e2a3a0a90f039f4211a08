package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerPreviewMessage extends RoomWidgetMessage
   {
      
      public static const const_530:String = "RWDPM_PREVIEW_DIMMER_PRESET";
       
      
      private var var_964:int;
      
      private var _color:uint;
      
      private var var_2133:Boolean;
      
      public function RoomWidgetDimmerPreviewMessage(param1:uint, param2:int, param3:Boolean)
      {
         super(const_530);
         _color = param1;
         var_964 = param2;
         var_2133 = param3;
      }
      
      public function get brightness() : int
      {
         return var_964;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get bgOnly() : Boolean
      {
         return var_2133;
      }
   }
}
