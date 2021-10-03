package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2296:Boolean;
      
      private var var_2295:int;
      
      private var var_2297:Boolean;
      
      private var var_1503:String;
      
      private var var_1137:String;
      
      private var var_1727:int;
      
      private var var_1995:String;
      
      private var var_2298:String;
      
      private var var_1996:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1727 = param1.readInteger();
         this.var_1503 = param1.readString();
         this.var_1995 = param1.readString();
         this.var_2296 = param1.readBoolean();
         this.var_2297 = param1.readBoolean();
         param1.readString();
         this.var_2295 = param1.readInteger();
         this.var_1996 = param1.readString();
         this.var_2298 = param1.readString();
         this.var_1137 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1137;
      }
      
      public function get avatarName() : String
      {
         return this.var_1503;
      }
      
      public function get avatarId() : int
      {
         return this.var_1727;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2296;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2298;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1996;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2297;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1995;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2295;
      }
   }
}
