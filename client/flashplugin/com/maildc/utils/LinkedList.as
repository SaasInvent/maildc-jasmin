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
	 * The <code>LinkedList</code> class is a very simple doubly circular
	 * linked list implementation with add, remove, and get methods.
	 * 
	 * @author Blue Pichu
	 * @version 1.0
	 * */
	public class LinkedList{
		/**
		 * Dummy root node.  Identifiable by its value of a <code>LLNode</code> whose value
		 * is null.  (No real node can have this value because the <code>LLNode</code>
		 * class is internal.)
		 * 
		 * @private
		 * */
		private var head:LLNode;
		
		/**
		 * The current size/length of the linked list.
		 * 
		 * @private
		 * */
		private var size:int;
		
		/**
		 * Creates a new linked list.
		 * */
		public function LinkedList(){
			head = new LLNode(new LLNode(null));
			size = 0;
		}
		
		/**
		 * Appends an object to the list.
		 * 
		 * @param obj The object to be added
		 * @return void
		 * */
		public function add(obj:Object):void{
			head.prev.next = head.prev = new LLNode(obj, head.prev, head);
			size++;
		}
		
		/**
		 * Adds an object to the specified location in the list.
		 * 
		 * @param obj The object to be added
		 * @param i The index at which to add obj
		 * @return void
		 * */
		public function addAt(obj:Object, i:int):void{
			var c:LLNode = head;
			if(i > size){
				throw(new RangeError());
			}
			for(; i > 0; i--){
				c = c.next;
			}
			c.next = c.next.prev = new LLNode(obj, c, c.next);
			size++;
		}
		
		/**
		 * Adds an object to the front of the list.
		 * 
		 * @param obj The object to be added
		 * @return void
		 * */
		public function addFirst(obj:Object):void{
			head.next.prev = head.next = new LLNode(obj, head, head.next);
			size++;
		}
		
		/**
		 * Adds an object to the end of the list.
		 * 
		 * @param obj The object to be added
		 * @return void
		 * */
		public function addLast(obj:Object):void{
			add(obj);
		}
		
		/**
		 * Removes the object at the specified index from the list.
		 * 
		 * @param i The index from which to remove the object
		 * @return void
		 * */
		public function removeAt(i:int):void{
			var c:LLNode = head;
			if(i >= size){
				throw(new RangeError());
			}
			for(; i >= 0; i--){
				c = c.next;
			}
			c.prev.next = c.next;
			c.next.prev = c.prev;
			size--;
		}
		
		/**
		 * Removes the first instance of an object from the list.
		 * 
		 * @param obj The object to be removed
		 * @return void
		 * */
		public function remove(obj:Object):void{
			for(var c:LLNode = head.next; !(c.val is LLNode); c = c.next){
				if(c.val == obj){
					c.prev.next = c.next;
					c.next.prev = c.prev;
					size--;
					return;
				}
			}
			throw new Error("NoSuchElement");
		}
		
		/**
		 * Removes the ith instance of an object from the list,
		 * starting at the beginning.
		 * 
		 * @param obj The object to be removed
		 * @param i The instance of <code>obj</code> to be removed
		 * @return void
		 * */
		public function removeCount(obj:Object, i:int):void{
			if(i <= 0){
				throw new Error("IllegalArgument");
			}
			for(var c:LLNode = head.next; !(c.val is LLNode); c = c.next){
				i--;
				if(c.val == obj && i == 0){
					c.prev.next = c.next;
					c.next.prev = c.prev;
					size--;
					return;
				}
			}
			throw new Error("NoSuchElement");
		}
		
		/**
		 * Removes the ith instance of an object from the list,
		 * starting at the end.
		 * 
		 * @param obj The object to be removed
		 * @param i The instance of <code>obj</code> to be removed
		 * @return void
		 * */
		public function removeLastCount(obj:Object, i:int):void{
			if(i <= 0){
				throw new Error("IllegalArgument");
			}
			for(var c:LLNode = head.prev; !(c.val is LLNode); c = c.prev){
				i--;
				if(c.val == obj && i == 0){
					c.prev.next = c.next;
					c.next.prev = c.prev;
					size--;
					return;
				}
			}
			throw new Error("NoSuchElement");
		}
		
		/**
		 * Retrieves the ith element from the list.
		 * 
		 * @param i The index of the element to retrieve
		 * @return The object at index <code>i</code>
		 * */
		public function get(i:int):Object{
			if(i >= size){
				throw new RangeError();
			}
			for(var c:LLNode = head.next; i > 0; i--){
				c = c.next;
			}
			return c.val;
		}
		
		/**
		 * Returns the current length of the list.
		 * 
		 * @return The length of the list
		 * */
		public function get length():int{
			return size;
		}
	}
}