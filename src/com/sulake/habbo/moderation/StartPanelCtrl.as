package com.sulake.habbo.moderation
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.moderator.GetRoomChatlogMessageComposer;
   import com.sulake.habbo.communication.messages.parser.navigator.PublicSpaceCastLibsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   
   public class StartPanelCtrl implements IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_1145:Boolean;
      
      private var var_48:ModerationManager;
      
      private var _userId:int;
      
      private var var_50:IFrameWindow;
      
      private var _roomId:int;
      
      public function StartPanelCtrl(param1:ModerationManager)
      {
         super();
         var_48 = param1;
      }
      
      public function userSelected(param1:int, param2:String) : void
      {
         if(var_50 == null)
         {
            return;
         }
         _userId = param1;
         var _loc3_:IButtonWindow = IButtonWindow(var_50.findChildByName("userinfo_but"));
         _loc3_.enable();
         _loc3_.caption = "User info: " + param2;
      }
      
      private function onUserinfoButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_48.windowTracker.show(new UserInfoFrameCtrl(var_48,_userId),var_50,false,false,true);
      }
      
      public function publicSpaceEntered(param1:PublicSpaceCastLibsMessageParser) : void
      {
         if(var_50 == null || param1 == null)
         {
            return;
         }
         var_50.findChildByName("room_tool_but").disable();
         enableChatlogButton();
         var_1145 = false;
         _roomId = param1.nodeId;
      }
      
      private function onChatlogButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_48.windowTracker.show(new ChatlogCtrl(new GetRoomChatlogMessageComposer(!!var_1145 ? 0 : 1,_roomId),var_48,WindowTracker.const_597,_roomId),var_50,false,false,true);
      }
      
      public function guestRoomEntered(param1:RoomEntryInfoMessageParser) : void
      {
         if(var_50 == null || param1 == null)
         {
            return;
         }
         var_50.findChildByName("room_tool_but").enable();
         enableChatlogButton();
         var_1145 = true;
         _roomId = param1.guestRoomId;
      }
      
      private function onTicketQueueButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_48.issueManager.init();
      }
      
      private function onRoomToolButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_48.windowTracker.show(new RoomToolCtrl(var_48,_roomId),var_50,false,false,true);
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            var_48 = null;
            if(var_50)
            {
               var_50.dispose();
               var_50 = null;
            }
         }
      }
      
      public function roomExited() : void
      {
         if(var_50 == null)
         {
            return;
         }
         var_50.findChildByName("room_tool_but").disable();
         var_50.findChildByName("chatlog_but").disable();
      }
      
      private function enableChatlogButton() : void
      {
         if(var_48.initMsg.chatlogsPermission)
         {
            var_50.findChildByName("chatlog_but").enable();
         }
      }
      
      public function show() : void
      {
         if(var_50 == null)
         {
            var_50 = IFrameWindow(var_48.getXmlWindow("start_panel"));
            var_50.findChildByName("room_tool_but").procedure = onRoomToolButton;
            var_50.findChildByName("chatlog_but").procedure = onChatlogButton;
            var_50.findChildByName("ticket_queue_but").procedure = onTicketQueueButton;
            var_50.findChildByName("userinfo_but").procedure = onUserinfoButton;
            var_50.findChildByName("userinfo_but").disable();
            var_50.findChildByName("room_tool_but").disable();
            var_50.findChildByName("chatlog_but").disable();
            var_48.disableButton(var_48.initMsg.cfhPermission,var_50,"ticket_queue_but");
            var_48.disableButton(var_48.initMsg.chatlogsPermission,var_50,"chatlog_but");
         }
         var_50.visible = true;
      }
   }
}
