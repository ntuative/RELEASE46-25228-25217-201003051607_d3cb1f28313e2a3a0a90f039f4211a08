package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_720:IWindowContainer;
      
      private var var_1066:ITextWindow;
      
      private var var_202:RoomSettingsCtrl;
      
      private var var_1316:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var _hideInfoTimer:Timer;
      
      private var var_1314:ITextWindow;
      
      private var var_353:IWindowContainer;
      
      private var var_2148:IWindowContainer;
      
      private var var_2149:ITextWindow;
      
      private var var_889:IWindowContainer;
      
      private var var_1561:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_701:ITextWindow;
      
      private var var_1560:IWindowContainer;
      
      private var var_1313:IWindowContainer;
      
      private var var_890:ITextWindow;
      
      private var var_1067:ITextFieldWindow;
      
      private var var_308:IWindowContainer;
      
      private var var_888:ITextWindow;
      
      private var var_1559:IButtonWindow;
      
      private var var_1065:ITextWindow;
      
      private var var_2317:int;
      
      private var var_1312:IContainerButtonWindow;
      
      private var var_891:IWindowContainer;
      
      private var var_1315:ITextWindow;
      
      private var var_1311:IContainerButtonWindow;
      
      private var var_1558:ITextWindow;
      
      private var var_1557:IButtonWindow;
      
      private var var_905:TagRenderer;
      
      private var var_2120:ITextWindow;
      
      private var var_352:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_719:ITextWindow;
      
      private var var_269:RoomThumbnailCtrl;
      
      private var var_1317:IContainerButtonWindow;
      
      private var var_2150:IWindowContainer;
      
      private var var_270:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_352 = new RoomEventViewCtrl(_navigator);
         var_202 = new RoomSettingsCtrl(_navigator,this,true);
         var_269 = new RoomThumbnailCtrl(_navigator);
         var_905 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_202);
         _hideInfoTimer = new Timer(6000,1);
         _hideInfoTimer.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_202.active = true;
         this.var_352.active = false;
         this.var_269.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1561.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1557.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1560.visible = Util.hasVisibleChildren(var_1560);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_701.text = param1.roomName;
         var_701.height = NaN;
         _ownerName.text = param1.ownerName;
         var_890.text = param1.description;
         var_905.refreshTags(var_353,param1.tags);
         var_890.visible = false;
         if(param1.description != "")
         {
            var_890.height = NaN;
            var_890.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_353,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_353,"thumb_down",_loc3_,onThumbDown,0);
         var_2149.visible = _loc3_;
         var_888.visible = !_loc3_;
         var_1558.visible = !_loc3_;
         var_1558.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_353,"home",param2,null,0);
         _navigator.refreshButton(var_353,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_353,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_701.y,0);
         var_353.visible = true;
         var_353.height = Util.getLowestPoint(var_353);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      public function dispose() : void
      {
         if(_hideInfoTimer)
         {
            _hideInfoTimer.removeEventListener(TimerEvent.TIMER,hideInfo);
            _hideInfoTimer.reset();
            _hideInfoTimer = null;
         }
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_415,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false)
         {
            return;
         }
         var_1559.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1316.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1317.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1312.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1311.visible = _navigator.data.canEditRoomSettings && param1;
         var_1313.visible = Util.hasVisibleChildren(var_1313);
      }
      
      public function open(param1:Boolean) : void
      {
         this._hideInfoTimer.reset();
         this.var_352.active = false;
         this.var_202.active = false;
         this.var_269.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_45,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this._hideInfoTimer.start();
         }
      }
      
      public function toggle() : void
      {
         this._hideInfoTimer.reset();
         this.var_352.active = false;
         this.var_202.active = false;
         this.var_269.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_45,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_415,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_308);
         var_308.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _navigator.data.settings != null && _loc1_ != null && _loc1_.flatId == _navigator.data.settings.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_202.refresh(var_308);
         this.var_269.refresh(var_308);
         Util.moveChildrenToColumn(var_308,["room_details","room_buttons"],0,2);
         var_308.height = Util.getLowestPoint(var_308);
         var_308.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_1067.setSelection(0,var_1067.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_270);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_352.refresh(var_270);
         if(Util.hasVisibleChildren(var_270) && !this.var_269.active)
         {
            Util.moveChildrenToColumn(var_270,["event_details","event_buttons"],0,2);
            var_270.height = Util.getLowestPoint(var_270);
            var_270.visible = true;
         }
         else
         {
            var_270.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_352.active = true;
         this.var_202.active = false;
         this.var_269.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         _hideInfoTimer.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_1066.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_1066.height = NaN;
         var_1314.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1314.height = NaN;
         Util.moveChildrenToColumn(var_720,["public_space_name","public_space_desc"],var_1066.y,0);
         var_720.visible = true;
         var_720.height = Math.max(86,Util.getLowestPoint(var_720));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","PetPlacingErrorParser") == "true";
         if(_loc1_ && true && true && true)
         {
            var_891.visible = true;
            var_1067.text = this.getEmbedData();
         }
         else
         {
            var_891.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this._hideInfoTimer.reset();
         this.var_202.load(param1);
         this.var_202.active = true;
         this.var_352.active = false;
         this.var_269.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_202.active = false;
         this.var_352.active = false;
         this.var_269.active = true;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_65,false);
         _window.setParamFlag(HabboWindowParam.const_1251,true);
         _window.visible = false;
         var_308 = IWindowContainer(find("room_info"));
         var_353 = IWindowContainer(find("room_details"));
         var_720 = IWindowContainer(find("public_space_details"));
         var_2150 = IWindowContainer(find("owner_name_cont"));
         var_2148 = IWindowContainer(find("rating_cont"));
         var_1313 = IWindowContainer(find("room_buttons"));
         var_701 = ITextWindow(find("room_name"));
         var_1066 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_890 = ITextWindow(find("room_desc"));
         var_1314 = ITextWindow(find("public_space_desc"));
         var_1065 = ITextWindow(find("owner_caption"));
         var_888 = ITextWindow(find("rating_caption"));
         var_2149 = ITextWindow(find("rate_caption"));
         var_1558 = ITextWindow(find("rating_txt"));
         var_270 = IWindowContainer(find("event_info"));
         var_889 = IWindowContainer(find("event_details"));
         var_1560 = IWindowContainer(find("event_buttons"));
         var_2120 = ITextWindow(find("event_name"));
         var_719 = ITextWindow(find("event_desc"));
         var_1316 = IContainerButtonWindow(find("add_favourite_button"));
         var_1317 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1312 = IContainerButtonWindow(find("make_home_button"));
         var_1311 = IContainerButtonWindow(find("unmake_home_button"));
         var_1559 = IButtonWindow(find("room_settings_button"));
         var_1561 = IButtonWindow(find("create_event_button"));
         var_1557 = IButtonWindow(find("edit_event_button"));
         var_891 = IWindowContainer(find("embed_info"));
         var_1315 = ITextWindow(find("embed_info_txt"));
         var_1067 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1316,onAddFavouriteClick);
         Util.setProcDirectly(var_1317,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1559,onRoomSettingsClick);
         Util.setProcDirectly(var_1312,onMakeHomeClick);
         Util.setProcDirectly(var_1311,onUnmakeHomeClick);
         Util.setProcDirectly(var_1561,onEventSettingsClick);
         Util.setProcDirectly(var_1557,onEventSettingsClick);
         Util.setProcDirectly(var_1067,onEmbedSrcClick);
         _navigator.refreshButton(var_1316,"favourite",true,null,0);
         _navigator.refreshButton(var_1317,"favourite",true,null,0);
         _navigator.refreshButton(var_1312,"home",true,null,0);
         _navigator.refreshButton(var_1311,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_308,onHover);
         Util.setProcDirectly(var_270,onHover);
         var_1065.width = var_1065.textWidth;
         Util.moveChildrenToRow(var_2150,["owner_caption","owner_name"],var_1065.x,var_1065.y,3);
         var_888.width = var_888.textWidth;
         Util.moveChildrenToRow(var_2148,["rating_caption","rating_txt"],var_888.x,var_888.y,3);
         var_1315.height = NaN;
         Util.moveChildrenToColumn(var_891,["embed_info_txt","embed_src_txt"],var_1315.y,2);
         var_891.height = Util.getLowestPoint(var_891) + 5;
         var_2317 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_2120.text = param1.eventName;
         var_719.text = param1.eventDescription;
         var_905.refreshTags(var_889,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_719.visible = false;
         if(param1.eventDescription != "")
         {
            var_719.height = NaN;
            var_719.y = Util.getLowestPoint(var_889) + 2;
            var_719.visible = true;
         }
         var_889.visible = true;
         var_889.height = Util.getLowestPoint(var_889);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_893,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
