package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      private static const const_1062:int = 100;
      
      private static const const_1061:int = 200;
      
      private static const const_1059:int = 180;
      
      public static const const_898:int = 1;
      
      public static const const_417:int = 2;
      
      private static const const_1060:int = 250;
      
      private static const const_752:int = 5;
       
      
      private var var_548:BitmapData;
      
      private var var_291:Timer;
      
      private var var_6:IWindowContainer;
      
      private var var_642:BitmapData;
      
      private var var_290:Timer;
      
      private var var_69:IWindowContainer;
      
      private var var_1420:int = 2;
      
      private var _assets:IAssetLibrary;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         var_290 = new Timer(const_1060,1);
         var_291 = new Timer(const_1062,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         var_69 = param1;
         var_69.visible = false;
         _assets = param2;
         var_290.addEventListener(TimerEvent.TIMER,onDisplayTimer);
         var_291.addEventListener(TimerEvent.TIMER,onHideTimer);
         var _loc3_:BitmapDataAsset = _assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_642 = _loc3_.content as BitmapData;
         }
         _loc3_ = _assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_548 = _loc3_.content as BitmapData;
         }
      }
      
      public function hide() : void
      {
         var_69.visible = false;
         var_291.reset();
         var_290.reset();
         if(var_6 != null)
         {
            var_6.removeChild(var_69);
         }
      }
      
      public function hideDelayed() : void
      {
         var_291.reset();
         var_290.reset();
         var_291.start();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         hide();
      }
      
      public function dispose() : void
      {
         if(var_290 != null)
         {
            var_290.removeEventListener(TimerEvent.TIMER,onDisplayTimer);
            var_290.stop();
            var_290 = null;
         }
         if(var_291 != null)
         {
            var_291.removeEventListener(TimerEvent.TIMER,onHideTimer);
            var_291.stop();
            var_291 = null;
         }
         _assets = null;
         var_69 = null;
         var_6 = null;
         var_548 = null;
         var_642 = null;
      }
      
      public function showDelayed() : void
      {
         var_291.reset();
         var_290.reset();
         var_290.start();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         show();
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(var_69 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(var_6 != null)
         {
            var_6.removeChild(var_69);
         }
         var_6 = param1;
         var_1420 = param4;
         var _loc5_:ITextWindow = ITextWindow(var_69.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = var_69.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1059,param3.width),Math.min(const_1061,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (0 - _loc6_.width) / 2;
            var_69.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(var_69 == null || false)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(var_69.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_898:
               _loc2_.bitmap = var_642.clone();
               _loc2_.width = var_642.width;
               _loc2_.height = var_642.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = -1;
               break;
            case const_417:
               _loc2_.bitmap = var_548.clone();
               _loc2_.width = var_548.width;
               _loc2_.height = var_548.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = 1;
         }
         _loc2_.invalidate();
      }
      
      public function show() : void
      {
         var_291.reset();
         var_290.reset();
         if(var_6 == null)
         {
            return;
         }
         var_69.visible = true;
         var_6.addChild(var_69);
         refreshArrow(var_1420);
         switch(var_1420)
         {
            case const_898:
               var_69.x = 0 - const_752;
               break;
            case const_417:
               var_69.x = var_6.width + const_752;
         }
         var_69.y = (0 - 0) / 2;
      }
   }
}
