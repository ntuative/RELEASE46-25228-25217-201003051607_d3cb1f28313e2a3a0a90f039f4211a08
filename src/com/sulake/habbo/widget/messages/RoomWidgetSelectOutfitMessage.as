package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_968:String = "select_outfit";
       
      
      private var var_1653:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_968);
         var_1653 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_1653;
      }
   }
}
