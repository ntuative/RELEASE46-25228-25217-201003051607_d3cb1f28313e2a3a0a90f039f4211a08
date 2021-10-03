package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_620;
         param1["bitmap"] = const_505;
         param1["border"] = const_560;
         param1["border_notify"] = const_1167;
         param1["button"] = const_374;
         param1["button_thick"] = const_691;
         param1["button_icon"] = const_1201;
         param1["button_group_left"] = const_543;
         param1["button_group_center"] = const_576;
         param1["button_group_right"] = const_513;
         param1["canvas"] = const_578;
         param1["checkbox"] = const_545;
         param1["closebutton"] = const_906;
         param1["container"] = const_318;
         param1["container_button"] = const_695;
         param1["display_object_wrapper"] = const_497;
         param1["dropmenu"] = const_385;
         param1["dropmenu_item"] = const_476;
         param1["frame"] = const_288;
         param1["frame_notify"] = const_1195;
         param1["header"] = const_587;
         param1["icon"] = const_841;
         param1["itemgrid"] = const_853;
         param1["itemgrid_horizontal"] = const_364;
         param1["itemgrid_vertical"] = const_534;
         param1["itemlist"] = const_829;
         param1["itemlist_horizontal"] = const_334;
         param1["itemlist_vertical"] = const_293;
         param1["maximizebox"] = const_1323;
         param1["menu"] = const_1310;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_878;
         param1["minimizebox"] = const_1178;
         param1["notify"] = const_1265;
         param1["null"] = const_678;
         param1["password"] = const_667;
         param1["radiobutton"] = const_588;
         param1["region"] = const_389;
         param1["restorebox"] = const_1324;
         param1["scaler"] = const_863;
         param1["scaler_horizontal"] = const_1223;
         param1["scaler_vertical"] = const_1328;
         param1["scrollbar_horizontal"] = const_398;
         param1["scrollbar_vertical"] = const_634;
         param1["scrollbar_slider_button_up"] = const_920;
         param1["scrollbar_slider_button_down"] = const_983;
         param1["scrollbar_slider_button_left"] = const_802;
         param1["scrollbar_slider_button_right"] = const_899;
         param1["scrollbar_slider_bar_horizontal"] = const_797;
         param1["scrollbar_slider_bar_vertical"] = const_974;
         param1["scrollbar_slider_track_horizontal"] = const_808;
         param1["scrollbar_slider_track_vertical"] = const_855;
         param1["scrollable_itemlist"] = const_1136;
         param1["scrollable_itemlist_vertical"] = const_463;
         param1["scrollable_itemlist_horizontal"] = const_917;
         param1["selector"] = const_571;
         param1["selector_list"] = const_621;
         param1["submenu"] = const_878;
         param1["tab_button"] = const_661;
         param1["tab_container_button"] = const_939;
         param1["tab_context"] = const_448;
         param1["tab_content"] = const_956;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_604;
         param1["input"] = const_586;
         param1["toolbar"] = const_1250;
         param1["tooltip"] = const_289;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
