package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetCommandsMessageParser implements IMessageParser
   {
       
      
      private var var_992:Array;
      
      private var var_1205:int;
      
      public function PetCommandsMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1205 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_992 = new Array();
         while(_loc2_-- > 0)
         {
            var_992.push(param1.readInteger());
         }
         return true;
      }
      
      public function get enabledCommands() : Array
      {
         return var_992;
      }
      
      public function get petId() : int
      {
         return var_1205;
      }
      
      public function flush() : Boolean
      {
         var_1205 = -1;
         var_992 = null;
         return true;
      }
   }
}
