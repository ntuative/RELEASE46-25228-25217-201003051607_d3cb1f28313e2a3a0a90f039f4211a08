package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IInteractiveWindow;
   import com.sulake.core.window.components.IToolTipWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowType;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class WindowToolTipAgent extends WindowMouseOperator implements IWindowToolTipAgentService
   {
       
      
      protected var var_315:Timer;
      
      protected var var_928:String;
      
      protected var var_929:uint;
      
      protected var var_1101:Point;
      
      protected var var_242:IToolTipWindow;
      
      protected var var_1102:Point;
      
      public function WindowToolTipAgent(param1:DisplayObject)
      {
         var_1101 = new Point();
         var_1102 = new Point(20,20);
         var_929 = 500;
         super(param1);
      }
      
      override public function end(param1:IWindow) : IWindow
      {
         if(var_315 != null)
         {
            var_315.stop();
            var_315.removeEventListener(TimerEvent.TIMER,showToolTip);
            var_315 = null;
         }
         hideToolTip();
         return super.end(param1);
      }
      
      override public function operate(param1:int, param2:int) : void
      {
         if(_window && true)
         {
            _mouse.x = param1;
            _mouse.y = param2;
            getMousePositionRelativeTo(_window,_mouse,var_1101);
            if(var_242 != null && true)
            {
               var_242.x = param1 + var_1102.x;
               var_242.y = param2 + var_1102.y;
            }
         }
      }
      
      protected function showToolTip(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         if(var_315 != null)
         {
            var_315.reset();
         }
         if(_window && true)
         {
            if(var_242 == null || false)
            {
               var_242 = _window.context.create("undefined::ToolTip",var_928,WindowType.const_289,_window.style,0 | 0,null,null,null,0,null,null) as IToolTipWindow;
            }
            _loc2_ = new Point();
            _window.getGlobalPosition(_loc2_);
            var_242.x = _loc2_.x + var_1101.x + var_1102.x;
            var_242.y = _loc2_.y + var_1101.y + var_1102.y;
         }
      }
      
      override public function begin(param1:IWindow, param2:uint = 0) : IWindow
      {
         if(param1 && !param1.disposed)
         {
            if(param1 is IInteractiveWindow)
            {
               var_928 = IInteractiveWindow(param1).toolTipCaption;
               var_929 = IInteractiveWindow(param1).toolTipDelay;
            }
            else
            {
               var_928 = param1.caption;
               var_929 = 500;
            }
            _mouse.x = var_119.mouseX;
            _mouse.y = var_119.mouseY;
            getMousePositionRelativeTo(param1,_mouse,var_1101);
            if(var_928 != null && var_928 != "")
            {
               if(var_315 == null)
               {
                  var_315 = new Timer(var_929,1);
                  var_315.addEventListener(TimerEvent.TIMER,showToolTip);
               }
               var_315.reset();
               var_315.start();
            }
         }
         return super.begin(param1,param2);
      }
      
      protected function hideToolTip() : void
      {
         if(var_242 != null && true)
         {
            var_242.destroy();
            var_242 = null;
         }
      }
   }
}
