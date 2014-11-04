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

/**
 * The package <code>com.bluepichu.util</code> contains classes
 * that are helpful in a variety of applications, including
 * implementations of many common data structures.
 * */
package com.bluepichu.util{
	/**
	 * The <code>BinaryTree</code> supplies a way to create trees by
	 * linking several instances together.  Each node considers itself
	 * to be the root node of its own subtree.
	 * */
	public class BinaryTree{
		/**
		 * The root node's left child.
		 * */
		public var left:BinaryTree;
		
		/**
		 * The root node's right child.
		 * */
		public var right:BinaryTree;
		
		/**
		 * The root node's value.
		 * */
		public var value:Object;
		
		/**
		 * Creates a new <code>BinaryTree</code> object.
		 * 
		 * @param v The root node's value
		 * @param l The root node's left child
		 * @param r The root node's right child
		 * */
		public function BinaryTree(v:Object, l:BinaryTree = null, r:BinaryTree = null){
			super();
			value = v;
			left = l;
			right = r;
		}
	}
}