function loginUser(username, password) {
      return new Promise((resolve, reject) => {
        console.log("Checking credentials...");
        setTimeout(() => {
          if (username === "roshan" && password === "1234") {
            resolve("✅ Login successful!");
          } else {
            reject("❌ Invalid username or password");
          }
        }, 2000);
      });
    }

    loginUser("roshan", "1234")
      .then(message => console.log(message))
      .catch(error => console.log(error));