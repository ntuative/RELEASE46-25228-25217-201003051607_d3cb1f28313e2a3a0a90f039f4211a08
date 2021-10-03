package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_556:String;
      
      private var var_1140:String;
      
      private var var_1141:String;
      
      private var var_1138:int;
      
      private var var_984:int;
      
      private var var_1137:String;
      
      private var _name:String;
      
      private var var_1139:Boolean;
      
      private var var_677:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_984 = param1.readInteger();
         this.var_677 = param1.readBoolean();
         this.var_1139 = param1.readBoolean();
         this.var_556 = param1.readString();
         this.var_1138 = param1.readInteger();
         this.var_1141 = param1.readString();
         this.var_1140 = param1.readString();
         this.var_1137 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_984;
      }
      
      public function get realName() : String
      {
         return var_1137;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1141;
      }
      
      public function get categoryId() : int
      {
         return var_1138;
      }
      
      public function get online() : Boolean
      {
         return var_677;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1139;
      }
      
      public function get lastAccess() : String
      {
         return var_1140;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_556;
      }
   }
}
