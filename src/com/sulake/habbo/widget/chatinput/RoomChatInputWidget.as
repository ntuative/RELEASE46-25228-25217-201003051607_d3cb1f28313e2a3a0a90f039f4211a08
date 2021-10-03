package com.sulake.habbo.widget.chatinput
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.runtime.exceptions.CrashMeError;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetChatInputContentUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetChatInputDisplayEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomViewUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetChatInputWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetChatMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetRoomObjectMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class RoomChatInputWidget extends RoomWidgetBase implements IUpdateReceiver
   {
      
      private static const const_1094:int = 2;
      
      private static const const_1408:int = 150;
      
      private static const const_1095:int = 3000;
      
      private static const const_1093:int = 30000;
       
      
      private var _disposed:Boolean = false;
      
      private var var_1220:int;
      
      private var var_1219:Boolean = false;
      
      private var var_1218:String = "";
      
      private var var_398:int = -1;
      
      private var var_841:Timer = null;
      
      private var _visualization:RoomChatInputView;
      
      private var var_1956:Boolean = false;
      
      private var var_840:Boolean = false;
      
      private var var_673:int = 0;
      
      private var var_29:Component = null;
      
      public function RoomChatInputWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:Component)
      {
         var_1220 = getTimer();
         super(param1,param2,param3);
         var_29 = param4;
         var_29.registerUpdateReceiver(this,9);
      }
      
      public function sendChat(param1:String, param2:int, param3:String = "") : void
      {
         if(var_840)
         {
            return;
         }
         checkForFlooding();
         var _loc4_:RoomWidgetChatMessage = new RoomWidgetChatMessage(RoomWidgetChatMessage.const_590,param1,param2,param3);
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc4_);
         }
      }
      
      private function onReleaseTimerTick(param1:TimerEvent) : void
      {
         if(_visualization != null)
         {
            var_673 = var_673 - 1;
            _visualization.showFloodBlocking(var_673);
         }
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_326,onRoomObjectSelected);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_192,onRoomObjectDeselected);
         param1.addEventListener(RoomWidgetRoomViewUpdateEvent.const_247,onRoomViewUpdate);
         param1.addEventListener(RoomWidgetChatInputContentUpdateEvent.const_719,onChatInputUpdate);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_224,onUserInfo);
         param1.addEventListener(RoomWidgetChatInputDisplayEvent.const_515,onSettings);
         super.registerUpdateEvents(param1);
      }
      
      public function update(param1:uint) : void
      {
         if(var_1219)
         {
            var_1219 = false;
            throw new CrashMeError();
         }
      }
      
      public function get allowPaste() : Boolean
      {
         return var_1956;
      }
      
      public function get floodBlocked() : Boolean
      {
         return var_840;
      }
      
      private function onRoomViewUpdate(param1:RoomWidgetRoomViewUpdateEvent) : void
      {
         if(_visualization == null)
         {
            _visualization = new RoomChatInputView(this,windowManager,assets,localizations);
         }
         method_5();
      }
      
      private function onReleaseTimerComplete(param1:TimerEvent) : void
      {
         Logger.log("Releasing flood blocking");
         var_840 = false;
         var_398 = -1;
         if(_visualization != null)
         {
            _visualization.hideFloodBlocking();
         }
         var_841 = null;
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         var_1218 = param1.name;
      }
      
      private function onSettings(param1:RoomWidgetChatInputDisplayEvent) : void
      {
         var_1956 = param1.allowPaste;
      }
      
      private function onChatInputUpdate(param1:RoomWidgetChatInputContentUpdateEvent) : void
      {
         var _loc2_:String = "";
         switch(param1.messageType)
         {
            case RoomWidgetChatInputContentUpdateEvent.const_910:
               _loc2_ = localizations.getKey("widgets.chatinput.mode.whisper",":tell");
               _visualization.displaySpecialChatMessage(_loc2_,param1.userName);
               break;
            case RoomWidgetChatInputContentUpdateEvent.const_1285:
         }
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_326,onRoomObjectSelected);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_192,onRoomObjectDeselected);
         param1.removeEventListener(RoomWidgetRoomViewUpdateEvent.const_247,onRoomViewUpdate);
         param1.removeEventListener(RoomWidgetChatInputContentUpdateEvent.const_719,onChatInputUpdate);
         param1.removeEventListener(RoomWidgetChatInputDisplayEvent.const_515,onSettings);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_224,onUserInfo);
      }
      
      private function onRoomObjectDeselected(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         var_1218 = "";
      }
      
      override public function dispose() : void
      {
         if(_visualization != null)
         {
            _visualization.dispose();
            _visualization = null;
         }
         var_29.removeUpdateReceiver(this);
         _disposed = true;
         super.dispose();
      }
      
      private function checkForFlooding() : Boolean
      {
         if(var_840)
         {
            return true;
         }
         var _loc1_:int = getTimer();
         if(var_398 == -1)
         {
            var_398 = 0;
            var_1220 = _loc1_;
         }
         else
         {
            ++var_398;
         }
         if(var_398 > const_1094)
         {
            if(_loc1_ < var_1220 + const_1095)
            {
               var_840 = true;
               var_673 = const_1093 / 1000;
               Logger.log("Enabling flood blocking");
               var_841 = new Timer(1000,var_673);
               var_841.addEventListener(TimerEvent.TIMER,onReleaseTimerTick);
               var_841.addEventListener(TimerEvent.TIMER_COMPLETE,onReleaseTimerComplete);
               var_841.start();
               if(_visualization != null)
               {
                  _visualization.showFloodBlocking(var_673);
               }
               return true;
            }
            var_398 = -1;
         }
         return false;
      }
      
      public function triggerManualCrash() : void
      {
         var_1219 = true;
      }
      
      private function onRoomObjectSelected(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         var _loc2_:RoomWidgetRoomObjectMessage = new RoomWidgetRoomObjectMessage(RoomWidgetRoomObjectMessage.const_290,param1.id,param1.category);
      }
      
      public function get selectedUserName() : String
      {
         return var_1218;
      }
      
      private function method_5() : void
      {
         if(_visualization == null)
         {
            return;
         }
         var _loc1_:RoomWidgetChatInputWidgetMessage = new RoomWidgetChatInputWidgetMessage(RoomWidgetChatInputWidgetMessage.const_736,_visualization.window);
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc1_);
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
   }
}