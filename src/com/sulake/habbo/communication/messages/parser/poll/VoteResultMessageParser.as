package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1278:int;
      
      private var var_994:String;
      
      private var var_705:Array;
      
      private var var_1041:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_705.slice();
      }
      
      public function flush() : Boolean
      {
         var_994 = "";
         var_1041 = [];
         var_705 = [];
         var_1278 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1278;
      }
      
      public function get question() : String
      {
         return var_994;
      }
      
      public function get choices() : Array
      {
         return var_1041.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_994 = param1.readString();
         var_1041 = [];
         var_705 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_1041.push(param1.readString());
            var_705.push(param1.readInteger());
            _loc3_++;
         }
         var_1278 = param1.readInteger();
         return true;
      }
   }
}
