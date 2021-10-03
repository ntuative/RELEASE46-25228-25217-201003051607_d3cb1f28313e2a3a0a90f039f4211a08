package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_119;
         param1["bound_to_parent_rect"] = const_84;
         param1["child_window"] = const_903;
         param1["embedded_controller"] = const_332;
         param1["resize_to_accommodate_children"] = const_62;
         param1["input_event_processor"] = const_49;
         param1["internal_event_handling"] = const_614;
         param1["mouse_dragging_target"] = const_188;
         param1["mouse_dragging_trigger"] = const_284;
         param1["mouse_scaling_target"] = const_254;
         param1["mouse_scaling_trigger"] = const_446;
         param1["horizontal_mouse_scaling_trigger"] = const_213;
         param1["vertical_mouse_scaling_trigger"] = const_210;
         param1["observe_parent_input_events"] = const_831;
         param1["optimize_region_to_layout_size"] = const_414;
         param1["parent_window"] = const_905;
         param1["relative_horizontal_scale_center"] = const_152;
         param1["relative_horizontal_scale_fixed"] = const_115;
         param1["relative_horizontal_scale_move"] = const_292;
         param1["relative_horizontal_scale_strech"] = const_250;
         param1["relative_scale_center"] = const_901;
         param1["relative_scale_fixed"] = const_641;
         param1["relative_scale_move"] = const_943;
         param1["relative_scale_strech"] = const_851;
         param1["relative_vertical_scale_center"] = const_159;
         param1["relative_vertical_scale_fixed"] = const_111;
         param1["relative_vertical_scale_move"] = const_300;
         param1["relative_vertical_scale_strech"] = const_230;
         param1["on_resize_align_left"] = const_514;
         param1["on_resize_align_right"] = const_352;
         param1["on_resize_align_center"] = const_453;
         param1["on_resize_align_top"] = const_686;
         param1["on_resize_align_bottom"] = const_469;
         param1["on_resize_align_middle"] = const_441;
         param1["on_accommodate_align_left"] = const_960;
         param1["on_accommodate_align_right"] = const_450;
         param1["on_accommodate_align_center"] = const_599;
         param1["on_accommodate_align_top"] = const_902;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_711;
         param1["route_input_events_to_parent"] = const_427;
         param1["use_parent_graphic_context"] = const_29;
         param1["draggable_with_mouse"] = const_872;
         param1["scalable_with_mouse"] = const_946;
         param1["reflect_horizontal_resize_to_parent"] = const_442;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_243;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
