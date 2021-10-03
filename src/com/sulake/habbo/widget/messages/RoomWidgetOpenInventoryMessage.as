package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_979:String = "inventory_badges";
      
      public static const const_1193:String = "inventory_clothes";
      
      public static const const_1160:String = "inventory_furniture";
      
      public static const const_696:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_951:String = "inventory_effects";
       
      
      private var var_2127:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_696);
         var_2127 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_2127;
      }
   }
}
