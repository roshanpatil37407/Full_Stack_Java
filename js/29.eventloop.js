 console.log("▶ Start of Script");

    // Macrotask Example (setTimeout)
    setTimeout(() => {
      console.log("🕑 Macrotask → setTimeout executed");
    }, 0);

    // Another Macrotask
    setTimeout(() => {
      console.log("🕑 Another Macrotask → setTimeout executed");
    }, 0);

    // Microtask Example (Promise)
    Promise.resolve().then(() => {
      console.log("⚡ Microtask → Promise.then executed");
    });

    // Another Microtask
    queueMicrotask(() => {
      console.log("⚡ Microtask → queueMicrotask executed");
    });

    console.log("▶ End of Script");