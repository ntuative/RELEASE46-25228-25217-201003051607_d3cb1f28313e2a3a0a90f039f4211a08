package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1551:int = 9;
      
      public static const const_1433:int = 4;
      
      public static const const_1566:int = 1;
      
      public static const const_1138:int = 10;
      
      public static const const_1557:int = 2;
      
      public static const const_1263:int = 7;
      
      public static const const_1327:int = 11;
      
      public static const const_1459:int = 3;
      
      public static const const_1377:int = 8;
      
      public static const const_1198:int = 5;
      
      public static const const_1513:int = 6;
      
      public static const const_1240:int = 12;
       
      
      private var var_2153:String;
      
      private var _roomId:int;
      
      private var var_1106:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_2153;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1106 = param1.readInteger();
         var_2153 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1106;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
