package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1435:int = 2;
      
      public static const const_333:int = 4;
      
      public static const const_1203:int = 1;
      
      public static const const_1208:int = 3;
       
      
      private var var_1037:int = 0;
      
      private var var_864:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_1037;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1037 = param1.readInteger();
         if(var_1037 == 3)
         {
            var_864 = param1.readString();
         }
         else
         {
            var_864 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1037 = 0;
         var_864 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_864;
      }
   }
}
