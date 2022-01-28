// the usual stack operations
interface IStack<T> {
    push(t: T) : void
    pop() : T
    size() : number
  }
  
  interface IList<T> {
    // add to end of list
    add(t:T): void
    // remove last element of the list
    remove() : T
    // returns the number of elements in the list
    size() : number
  }
  
  class Stack<T> implements IStack<T> {
  
    // top of stack is at end of list
    constructor (private payload: IList<T>) {}
  
    public push(t: T): void {
      this.payload.add(t);  
    }
    public pop(): T {
      return this.payload.remove();  
    }
    
    public size(): number {
      return this.payload.size()
    }
  
  }
  
  export default Stack