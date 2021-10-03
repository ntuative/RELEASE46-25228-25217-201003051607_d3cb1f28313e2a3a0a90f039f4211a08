package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_632:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_1667:int;
      
      private var var_1666:int;
      
      private var var_1673:Boolean;
      
      private var var_964:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_632);
         var_1666 = param1;
         var_1667 = param2;
         _color = param3;
         var_964 = param4;
         var_1673 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_1667;
      }
      
      public function get presetNumber() : int
      {
         return var_1666;
      }
      
      public function get brightness() : int
      {
         return var_964;
      }
      
      public function get apply() : Boolean
      {
         return var_1673;
      }
   }
}
