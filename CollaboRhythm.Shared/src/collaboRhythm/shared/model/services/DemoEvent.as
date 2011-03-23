/**
 * Copyright 2011 John Moore, Scott Gilroy
 *
 * This file is part of CollaboRhythm.
 *
 * CollaboRhythm is free software: you can redistribute it and/or modify it under the terms of the GNU General Public
 * License as published by the Free Software Foundation, either version 2 of the License, or (at your option) any later
 * version.
 *
 * CollaboRhythm is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
 * details.
 *
 * You should have received a copy of the GNU General Public License along with CollaboRhythm.  If not, see
 * <http://www.gnu.org/licenses/>.
 */
package collaboRhythm.shared.model.services
{
	import flash.events.Event;

	public class DemoEvent extends Event
	{
		private var _targetDate:Date;
		public static const CHANGE_DEMO_DATE:String = "changeDemoDate";

		public function DemoEvent(type:String, targetDate:Date, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.targetDate = targetDate;
		}

		public function get targetDate():Date
		{
			return _targetDate;
		}

		public function set targetDate(targetDate:Date):void
		{
			_targetDate = targetDate;
		}
	}
}