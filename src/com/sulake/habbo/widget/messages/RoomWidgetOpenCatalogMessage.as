package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_683:String = "RWOCM_CLUB_MAIN";
      
      public static const const_501:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_2165:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_501);
         var_2165 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_2165;
      }
   }
}
