// ===== 1. 基础函数定义与测试 =====
const add = (a, b) => {
  return a + b;
};

const add1 = (a, b) => a + b;

console.log("执行 add(3, 5) 结果:", add(3, 5));
console.log("执行 add1(10, 20) 结果:", add1(10, 20));

// ===== 2. 闭包计数器函数 =====
function createCounter() {
  let count = 0;

  return () => {
    count = count + 1;
    return count;
  };
}

const counterA = createCounter(); // 造出第一台计数器，交给 counterA
console.log("counterA 第一次执行:", counterA()); // 1️⃣ 第一次打印 -> 1
console.log("counterA 第二次执行:", counterA()); // 2️⃣ 第二次打印 -> 2

const counterB = createCounter(); // 再造出第二台计数器，交给 counterB
console.log("counterB 第一次执行:", counterB()); // 3️⃣ 第三次打印 -> 1
console.log("counterA 第三次执行:", counterA()); // 验证 counterA 的状态独立性 -> 3

// ===== 3. 与网页界面元素交互 (DOM 绑定) =====
if (typeof document !== "undefined") {
  const countDisplay = document.getElementById("count-display");
  const incrementBtn = document.getElementById("increment");
  const decrementBtn = document.getElementById("decrement");
  const resetBtn = document.getElementById("reset");

  if (countDisplay && incrementBtn) {
    let pageCount = 0;

    const updateDisplay = () => {
      countDisplay.textContent = pageCount;
    };

    // 绑定增加按钮
    incrementBtn.addEventListener("click", () => {
      pageCount++;
      updateDisplay();
      console.log(`[按钮交互] ➕ 增加，当前计数值: ${pageCount}`);
    });

    // 绑定减少按钮
    if (decrementBtn) {
      decrementBtn.addEventListener("click", () => {
        pageCount--;
        updateDisplay();
        console.log(`[按钮交互] ➖ 减少，当前计数值: ${pageCount}`);
      });
    }

    // 绑定重置按钮
    if (resetBtn) {
      resetBtn.addEventListener("click", () => {
        pageCount = 0;
        updateDisplay();
        console.log(`[按钮交互] 🔄 重置，当前计数值: 0`);
      });
    }
  }
}

const discountPrices = prices.map((price) => price * 0.8);
console.log("打折后的价格数组:", discountPrices);