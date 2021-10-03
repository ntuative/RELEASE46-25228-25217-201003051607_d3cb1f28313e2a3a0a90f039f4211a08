package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_134:int = 1;
      
      public static const const_1379:int = 3;
      
      public static const const_387:int = 2;
       
      
      private var var_1911:int;
      
      private var var_1711:int;
      
      private var var_1906:int;
      
      private var var_1705:int;
      
      private var var_34:int;
      
      private var var_408:int;
      
      private var var_1143:int;
      
      private var var_1676:int;
      
      private var var_968:int;
      
      private var _roomResources:String;
      
      private var var_1907:int;
      
      private var var_1914:int;
      
      private var var_1909:String;
      
      private var var_1675:String;
      
      private var var_1908:int = 0;
      
      private var var_1158:String;
      
      private var _message:String;
      
      private var var_1910:int;
      
      private var var_1912:String;
      
      private var var_1138:int;
      
      private var var_701:String;
      
      private var var_1913:String;
      
      private var var_1382:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_968 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_1908 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_1914;
      }
      
      public function set roomName(param1:String) : void
      {
         var_701 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_1907 = param1;
      }
      
      public function get state() : int
      {
         return var_34;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_701;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1705 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_34 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1711;
      }
      
      public function get priority() : int
      {
         return var_1911 + var_1908;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1676 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_1675;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1382) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1138;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_1914 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1143;
      }
      
      public function set flatType(param1:String) : void
      {
         var_1909 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_1907;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1705;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_1913 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1158 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1676;
      }
      
      public function set priority(param1:int) : void
      {
         var_1911 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1711 = param1;
      }
      
      public function get flatType() : String
      {
         return var_1909;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_1906 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_1675 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1910 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1158;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1143 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_1906;
      }
      
      public function set flatId(param1:int) : void
      {
         var_408 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1138 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1382 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1910;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_1912 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1382;
      }
      
      public function get reportedUserId() : int
      {
         return var_968;
      }
      
      public function get flatId() : int
      {
         return var_408;
      }
      
      public function get flatOwnerName() : String
      {
         return var_1913;
      }
      
      public function get reporterUserName() : String
      {
         return var_1912;
      }
   }
}
