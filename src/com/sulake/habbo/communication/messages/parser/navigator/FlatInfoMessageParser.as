package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomSettingsFlatInfo;
   
   public class FlatInfoMessageParser implements IMessageParser
   {
       
      
      private var var_239:RoomSettingsFlatInfo;
      
      public function FlatInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_239 = null;
         return true;
      }
      
      public function get flatInfo() : RoomSettingsFlatInfo
      {
         return var_239;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_239 = new RoomSettingsFlatInfo();
         var_239.allowFurniMoving = param1.readInteger() == 1;
         var_239.doorMode = param1.readInteger();
         var_239.id = param1.readInteger();
         var_239.ownerName = param1.readString();
         var_239.type = param1.readString();
         var_239.name = param1.readString();
         var_239.description = param1.readString();
         var_239.showOwnerName = param1.readInteger() == 1;
         var_239.allowTrading = param1.readInteger() == 1;
         var_239.categoryAlertKey = param1.readInteger() == 1;
         return true;
      }
   }
}
