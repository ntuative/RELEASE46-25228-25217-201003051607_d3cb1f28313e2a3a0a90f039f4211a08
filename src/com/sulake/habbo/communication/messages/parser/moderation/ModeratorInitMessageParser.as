package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_2214:Boolean;
      
      private var var_1575:Array;
      
      private var var_2217:Boolean;
      
      private var var_2213:Boolean;
      
      private var var_2218:Boolean;
      
      private var var_158:Array;
      
      private var var_2215:Boolean;
      
      private var var_2216:Boolean;
      
      private var var_1576:Array;
      
      private var var_2219:Boolean;
      
      private var var_2212:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_2212;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_2214;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_2217;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_2215;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_2216;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1575;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_158 = [];
         var_1575 = [];
         _roomMessageTemplates = [];
         var_1576 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_158.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1575.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1576.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_2215 = param1.readBoolean();
         var_2218 = param1.readBoolean();
         var_2217 = param1.readBoolean();
         var_2213 = param1.readBoolean();
         var_2212 = param1.readBoolean();
         var_2216 = param1.readBoolean();
         var_2214 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_2219 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_2213;
      }
      
      public function get offenceCategories() : Array
      {
         return var_1576;
      }
      
      public function get issues() : Array
      {
         return var_158;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_2219;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_2218;
      }
   }
}
