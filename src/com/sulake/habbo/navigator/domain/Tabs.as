package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_581:int = 6;
      
      public static const const_200:int = 5;
      
      public static const const_705:int = 2;
      
      public static const const_306:int = 9;
      
      public static const const_330:int = 4;
      
      public static const const_242:int = 2;
      
      public static const const_557:int = 4;
      
      public static const const_199:int = 8;
      
      public static const const_708:int = 7;
      
      public static const const_271:int = 3;
      
      public static const const_328:int = 1;
      
      public static const const_198:int = 5;
      
      public static const const_465:int = 12;
      
      public static const const_311:int = 1;
      
      public static const const_519:int = 11;
      
      public static const const_619:int = 3;
      
      public static const const_1561:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_385:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_385 = new Array();
         var_385.push(new Tab(_navigator,const_328,const_465,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_466));
         var_385.push(new Tab(_navigator,const_242,const_311,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_466));
         var_385.push(new Tab(_navigator,const_330,const_519,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_809));
         var_385.push(new Tab(_navigator,const_271,const_200,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_466));
         var_385.push(new Tab(_navigator,const_198,const_199,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_730));
         setSelectedTab(const_328);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_385)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_385)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_385)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_330;
      }
      
      public function get tabs() : Array
      {
         return var_385;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
