// 本练习用于理解方法调用时的 this。请先独立思考。
export function makeCounter(initial = 0) {
  return {
    count: initial,
    increment() {
      this.count += 1;
      return this.count;
    },
  };
}
