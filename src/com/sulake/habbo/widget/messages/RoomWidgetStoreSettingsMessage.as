package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStoreSettingsMessage extends RoomWidgetMessage
   {
      
      public static const const_618:String = "RWSSM_STORE_SOUND";
      
      public static const const_703:String = "RWSSM_PREVIEW_SOUND";
      
      public static const const_1288:String = "RWSSM_STORE_SETTINGS";
       
      
      private var var_664:Number;
      
      public function RoomWidgetStoreSettingsMessage(param1:String)
      {
         super(param1);
      }
      
      public function set volume(param1:Number) : void
      {
         var_664 = param1;
      }
      
      public function get volume() : Number
      {
         return var_664;
      }
   }
}
