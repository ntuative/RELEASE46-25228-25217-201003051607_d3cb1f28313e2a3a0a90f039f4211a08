package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_1891:XML;
      
      private var var_1463:ITextWindow;
      
      private var var_1462:ITextWindow;
      
      private var var_1887:XML;
      
      private var var_811:IWindowContainer;
      
      private var var_2293:ITextWindow;
      
      private var var_1890:String = "";
      
      private var var_2352:IButtonWindow;
      
      private var var_1888:XML;
      
      private var var_1464:ITextWindow;
      
      private var var_1889:XML;
      
      private var var_812:IButtonWindow;
      
      private var var_80:Offer;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      private function attachStub(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_474:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1887) as IWindowContainer;
               break;
            case Offer.const_423:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1889) as IWindowContainer;
               break;
            case Offer.const_409:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1891) as IWindowContainer;
               break;
            case Offer.const_725:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1888) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach...undefined");
         }
         if(_loc2_ != null)
         {
            if(var_811 != null)
            {
               _window.removeChild(var_811);
               var_811.dispose();
            }
            var_811 = _loc2_;
            _window.addChild(_loc2_);
            var_811.x = 0;
            var_811.y = 0;
         }
         var_1464 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         var_1462 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         var_1463 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         var_2293 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         var_812 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(var_812 != null)
         {
            var_812.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onPurchase);
            var_812.disable();
         }
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(var_80 != null)
         {
            Logger.log("Init Purchase: undefined undefined");
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(var_80,page,var_1890);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            var_1887 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            var_1889 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            var_1891 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         if(_loc4_ != null)
         {
            var_1888 = _loc4_.content as XML;
         }
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,onSelectProduct);
         events.addEventListener(WidgetEvent.const_845,onSetParameter);
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         var_1890 = param1.parameter;
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         var_80 = param1.offer;
         attachStub(var_80.priceType);
         if(var_1464 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(var_80.priceInCredits));
            var_1464.caption = "${catalog.purchase.price.credits}";
         }
         if(var_1462 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.pixels","pixels",String(var_80.priceInPixels));
            var_1462.caption = "${catalog.purchase.price.pixels}";
         }
         if(var_1463 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","credits",String(var_80.priceInCredits));
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","pixels",String(var_80.priceInPixels));
            var_1463.caption = "${catalog.purchase.price.credits+pixels}";
         }
         if(var_812 != null)
         {
            var_812.enable();
         }
      }
   }
}
