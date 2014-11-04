// Copyright (C) 2012 Blue Pichu
//	
// Permission is hereby granted, free of charge, to any person obtaining a copy 
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is furnished
// to do so, subject to the following conditions:	
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//	
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
// INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
// PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
// FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
// OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
// DEALINGS IN THE SOFTWARE.
//
// Last edited Jun 30 2012

package com.bluepichu.util{
	
	/**
	 * The <code>Stack</code> class is a very simple stack (FILO) implementation
	 * using the <code>LinkedList</code> class with push, peek, and pop functions.
	 * 
	 * @version 1.0
	 * @author Blue Pichu
	 * @see com.bluepichu.util.LinkedList
	 * */
	public class Stack{
		/**
		 * The <code>LinkedList</code> object that holds the data for this
		 * instance.
		 * 
		 * @private
		 * */
		private var data:LinkedList;
		
		/**
		 * Creates a new <code>Stack</code> object.
		 * */
		public function Stack(){
			data = new LinkedList();
		}
		
		/**
		 * Returns the current length of the stack.
		 * 
		 * @return The current length of the stack
		 * */
		public function get length():int{
			return data.length;
		}
		
		/**
		 * Returns whether or not the stack is empty (i.e., if stack.length == 0).
		 * 
		 * @return <code>true</code> if the stack is empty; otherwise <code>false</code>
		 * */
		public function isEmpty():Boolean{
			return data.length == 0;
		}
		
		/**
		 * Adds an object to the top of the stack.
		 * 
		 * @param obj The object to be added
		 * @return void
		 * */
		public function push(obj:Object):void{
			data.addFirst(obj);
		}
		
		/**
		 * Retrieves the next object from the top of the stack without deleting it from the stack.
		 * 
		 * @return The next object in the stack
		 * */
		public function peek():Object{
			return data.get(0);
		}
		
		/**
		 * Retrieves and deletes the next object from the top of the stack.
		 * 
		 * @return The next object in the stack
		 * */
		public function pop():Object{
			var ret:Object = data.get(0);
			data.remove(0);
			return ret;
		}
	}
}