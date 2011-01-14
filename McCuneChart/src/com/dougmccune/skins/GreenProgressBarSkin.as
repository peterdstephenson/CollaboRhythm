package com.dougmccune.skins
{
	import mx.skins.Border;
	import mx.styles.StyleManager;
	import mx.utils.ColorUtil;
	
	/**
	 *  The skin for a ProgressBar.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 9
	 *  @playerversion AIR 1.1
	 *  @productversion Flex 3
	 */
	public class GreenProgressBarSkin extends Border
	{
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		/**
		 *  Constructor.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 9
		 *  @playerversion AIR 1.1
		 *  @productversion Flex 3
		 */
		public function GreenProgressBarSkin()
		{
			super();		
		}
		
		//--------------------------------------------------------------------------
		//
		//  Overridden properties
		//
		//--------------------------------------------------------------------------
		
		//----------------------------------
		//  measuredWidth
		//----------------------------------
		
		/**
		 *  @private
		 */    
		override public function get measuredWidth():Number
		{
			return 200;
		}
		
		//----------------------------------
		//  measuredHeight
		//----------------------------------
		
		/**
		 *  @private
		 */        
		override public function get measuredHeight():Number
		{
			return 6;
		}
		
		//--------------------------------------------------------------------------
		//
		//  Overridden methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 *  @private
		 */        
		override protected function updateDisplayList(w:Number, h:Number):void
		{
			super.updateDisplayList(w, h);
			
			
			
			// User-defined styles
			var barColorStyle:* = getStyle("barColor");
			var barColor:uint = styleManager.isValidStyleValue(barColorStyle) ?
				barColorStyle :
				getStyle("themeColor");
			
			barColor = 0x00AA00;
			var barColor0:Number = ColorUtil.adjustBrightness2(barColor, 40);
			
			// default fill color for halo uses theme color
			var fillColors:Array = [ barColor0, barColor ]; 
			
			graphics.clear();
			
			// glow
			drawRoundRect(
				0, 0, w, h, 0,
				fillColors, 0.5,
				verticalGradientMatrix(0, 0, w - 2, h - 2));
			
			// fill
			drawRoundRect(
				1, 1, w - 2, h - 2, 0,
				fillColors, 1,
				verticalGradientMatrix(0, 0, w - 2, h - 2));
		}
	}
}