package com.sulake.habbo.navigator.roomsettings
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CreateFlatMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.TextFieldManager;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.domain.RoomLayout;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class RoomCreateViewCtrl
   {
       
      
      private var var_1279:Boolean = true;
      
      private var var_869:RoomLayout;
      
      private var var_20:IWindowContainer;
      
      private var var_62:Array;
      
      private var var_49:IItemListWindow;
      
      private var var_1725:Boolean = false;
      
      private var _navigator:HabboNavigator;
      
      private var var_500:Timer;
      
      private var var_1042:TextFieldManager;
      
      public function RoomCreateViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_500 = new Timer(100);
         var_500.addEventListener(TimerEvent.TIMER,updateArrowPos);
         var_62 = new Array();
         var_62.push(new RoomLayout(false,104,"a"));
         var_62.push(new RoomLayout(false,94,"b"));
         var_62.push(new RoomLayout(false,36,"c"));
         var_62.push(new RoomLayout(false,84,"d"));
         var_62.push(new RoomLayout(false,80,"e"));
         var_62.push(new RoomLayout(false,80,"f"));
         var_62.push(new RoomLayout(true,80,"g"));
         var_62.push(new RoomLayout(true,74,"h"));
         var_62.push(new RoomLayout(false,416,"i"));
         var_62.push(new RoomLayout(false,320,"j"));
         var_62.push(new RoomLayout(false,448,"k"));
         var_62.push(new RoomLayout(false,352,"l"));
         var_62.push(new RoomLayout(false,384,"m"));
         var_62.push(new RoomLayout(false,372,"n"));
         var_62.push(new RoomLayout(true,416,"o"));
         var_62.push(new RoomLayout(true,352,"p"));
         var_62.push(new RoomLayout(true,304,"q"));
         var_62.push(new RoomLayout(true,336,"r"));
      }
      
      private function getCancelButton() : IButtonWindow
      {
         return IButtonWindow(var_20.findChildByName("back_button"));
      }
      
      private function prepare() : void
      {
         if(this.var_20 != null)
         {
            return;
         }
         var_20 = IWindowContainer(_navigator.getXmlWindow("roc_create_room"));
         var_49 = IItemListWindow(var_20.findChildByName("item_list"));
         refreshRoomThumbnails();
         Util.setProcDirectly(getCreateButton(),onCreateButtonClick);
         Util.setProcDirectly(getCancelButton(),onCancelButtonClick);
         var _loc1_:IWindow = var_20.findChildByTag("close");
         _loc1_.procedure = onCancelButtonClick;
         var_1042 = new TextFieldManager(_navigator,ITextFieldWindow(var_20.findChildByName("room_name_input")),25,null,_navigator.getText("navigator.createroom.roomnameinfo"));
         var _loc2_:Rectangle = Util.getLocationRelativeTo(var_20.desktop,var_20.width,var_20.height);
         var_20.x = _loc2_.x;
         var_20.y = _loc2_.y;
      }
      
      private function addThumbnail(param1:IWindowContainer, param2:RoomLayout, param3:Boolean) : void
      {
         var _loc4_:IWindowContainer = IWindowContainer(_navigator.getXmlWindow("roc_room_thumbnail"));
         _loc4_.tags.push(param2.name);
         if(!param3)
         {
            _loc4_.x = _loc4_.width;
         }
         var _loc5_:IWindowContainer = IWindowContainer(_loc4_.findChildByName("bg_pic"));
         var _loc6_:IBitmapWrapperWindow = _navigator.getButton(param2.name,"model_" + param2.name,onPicClick,0,0,0);
         _loc5_.addChild(_loc6_);
         var _loc7_:Rectangle = Util.getLocationRelativeTo(_loc5_,_loc6_.width,_loc6_.height);
         _loc6_.x = _loc7_.x;
         _loc6_.y = _loc7_.y;
         Util.setProc(_loc4_,"bg_unsel",onChooseLayout);
         param1.addChild(_loc4_);
         param1.width = 2 * _loc4_.width;
         param1.height = _loc4_.height;
         param2.view = _loc4_;
         ITextWindow(param2.view.findChildByName("tile_size_txt")).text = param2.tileSize + " " + _navigator.getText("navigator.createroom.tilesize");
         _navigator.refreshButton(param2.view,"hc_only",param2.hc,null,0);
      }
      
      private function onCreateButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:String = var_1042.getText();
         var _loc4_:String = "model_undefined";
         if(!isMandatoryFieldsFilled())
         {
            return;
         }
         _navigator.send(new CreateFlatMessageComposer(_loc3_,_loc4_));
         var_20.visible = false;
      }
      
      private function findLayout(param1:String) : RoomLayout
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_62)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return var_62[0];
      }
      
      private function getCreateButton() : IButtonWindow
      {
         return IButtonWindow(var_20.findChildByName("create_button"));
      }
      
      private function refreshRoomThumbnails() : void
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         while(false)
         {
            _loc5_ = var_49.removeListItemAt(0);
            _loc5_.destroy();
         }
         for each(_loc1_ in var_62)
         {
            if(_loc1_.view != null)
            {
               _loc1_.view.destroy();
               _loc1_.view = null;
            }
         }
         _loc2_ = 0;
         _loc4_ = 0;
         while(_loc4_ < var_62.length)
         {
            _loc6_ = var_62[_loc4_];
            if(isAllowed(_loc6_))
            {
               if(_loc2_ == 0)
               {
                  _loc3_ = getRow();
                  var_49.addListItem(_loc3_);
               }
               addThumbnail(_loc3_,var_62[_loc4_],_loc2_ % 2 == 0);
               _loc2_ = _loc2_ == 0 ? 1 : 0;
            }
            _loc4_++;
         }
         refreshSelection();
         if(!_navigator.data.hcMember)
         {
            _loc7_ = IWindowContainer(_navigator.getXmlWindow("roc_hc_promo"));
            _navigator.refreshButton(_loc7_,"hc_logo",true,null,0);
            _loc7_.findChildByName("link").procedure = onHcMoreClick;
            var_49.addListItem(_loc7_);
         }
         var_1725 = _navigator.data.hcMember;
      }
      
      private function onHcMoreClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         trace("HC LINK CLICKED");
         _navigator.method_4();
      }
      
      private function onPicClick(param1:WindowEvent, param2:IWindow) : void
      {
         onChooseLayout(param1,param2.parent);
      }
      
      private function isAllowed(param1:RoomLayout) : Boolean
      {
         return !param1.hc || _navigator.data.hcMember;
      }
      
      public function dispose() : void
      {
         if(var_500)
         {
            var_500.removeEventListener(TimerEvent.TIMER,updateArrowPos);
            var_500.reset();
            var_500 = null;
         }
      }
      
      private function onChooseLayout(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            _loc3_ = getLayout(param2);
            if(isAllowed(_loc3_))
            {
               var_869 = _loc3_;
               refreshSelection();
            }
         }
      }
      
      private function refresh() : void
      {
         var_1042.goBackToInitialState();
         var_1042.input.textBackgroundColor = 4294967295;
         var_869 = var_62[0];
         if(var_1725 != _navigator.data.hcMember)
         {
            this.refreshRoomThumbnails();
         }
         refreshSelection();
      }
      
      private function getRow() : IWindowContainer
      {
         return IWindowContainer(_navigator.windowManager.createWindow("","",HabboWindowType.const_57,HabboWindowStyle.const_36,HabboWindowParam.const_65,new Rectangle(0,0,100,300)));
      }
      
      private function onCancelButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         close();
      }
      
      private function getLayout(param1:IWindow) : RoomLayout
      {
         var _loc2_:IWindowContainer = IWindowContainer(param1.parent);
         return findLayout(_loc2_.tags[0]);
      }
      
      private function isMandatoryFieldsFilled() : Boolean
      {
         var _loc1_:Boolean = var_1042.checkMandatory(_navigator.getText("navigator.createroom.nameerr"));
         return Boolean(_loc1_);
      }
      
      private function refreshSelection() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = false;
         var _loc3_:* = null;
         for each(_loc1_ in var_62)
         {
            if(_loc1_.view != null)
            {
               _loc2_ = _loc1_ == var_869;
               _loc1_.view.findChildByName("bg_sel").visible = _loc2_;
               _loc1_.view.findChildByName("bg_unsel").visible = !_loc2_;
               _loc3_ = ITextWindow(_loc1_.view.findChildByName("tile_size_txt"));
               _loc3_.textColor = !!_loc2_ ? 4294967295 : uint(4278190080);
               _loc3_.color = !!_loc2_ ? 4285432196 : uint(4291546059);
               _navigator.refreshButton(_loc1_.view,"tile_icon_black",!_loc2_,null,0);
               _navigator.refreshButton(_loc1_.view,"tile_icon_white",_loc2_,null,0);
               _navigator.refreshButton(_loc1_.view,"select_arrow",_loc2_,null,0);
            }
         }
      }
      
      private function close() : void
      {
         this.var_20.visible = false;
         this.var_500.reset();
      }
      
      private function updateArrowPos(param1:Event) : void
      {
         var _loc3_:IBitmapWrapperWindow = IBitmapWrapperWindow(var_869.view.findChildByName("select_arrow"));
         var _loc6_:int = Math.abs(_loc3_.y - 0) < 2 || Math.abs(_loc3_.y - 15) < 2 ? 1 : 2;
         _loc3_.y += !!var_1279 ? _loc6_ : -_loc6_;
         if(_loc3_.y < 0)
         {
            var_1279 = true;
            _loc3_.y = 1;
         }
         else if(_loc3_.y > 15)
         {
            var_1279 = false;
            _loc3_.y = 14;
         }
      }
      
      public function show() : void
      {
         this.prepare();
         this.var_20.visible = true;
         this.refresh();
         this.var_20.activate();
         this.var_500.start();
      }
   }
}
