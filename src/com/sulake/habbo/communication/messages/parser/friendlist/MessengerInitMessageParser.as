package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2314:int;
      
      private var var_2311:int;
      
      private var var_2312:int;
      
      private var var_211:Array;
      
      private var var_2313:int;
      
      private var var_2310:int;
      
      private var var_13:Array;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_13 = new Array();
         this.var_211 = new Array();
         return true;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2314;
      }
      
      public function get friends() : Array
      {
         return this.var_211;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2312;
      }
      
      public function get categories() : Array
      {
         return this.var_13;
      }
      
      public function get friendRequestLimit() : int
      {
         return this.var_2311;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2310;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2310 = param1.readInteger();
         this.var_2312 = param1.readInteger();
         this.var_2314 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_13.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_211.push(new FriendData(param1));
            _loc4_++;
         }
         this.var_2311 = param1.readInteger();
         this.var_2313 = param1.readInteger();
         return true;
      }
      
      public function get friendRequestCount() : int
      {
         return this.var_2313;
      }
   }
}
