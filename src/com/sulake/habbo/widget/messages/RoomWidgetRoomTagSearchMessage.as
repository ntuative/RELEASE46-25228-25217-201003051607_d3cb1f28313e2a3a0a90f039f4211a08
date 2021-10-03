package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_724:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1620:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_724);
         var_1620 = param1;
      }
      
      public function get tag() : String
      {
         return var_1620;
      }
   }
}
