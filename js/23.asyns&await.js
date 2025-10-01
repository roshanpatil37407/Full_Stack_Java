
    function getData() {
      return new Promise((resolve, reject) => {
        setTimeout(() => {
          let success = true; // change to false to test error
          if (success) {
            resolve("✅ Data received after 2 seconds");
          } else {
            reject("❌ Error while fetching data");
          }
        }, 2000);
      });
    }

    async function fetchData() {
      try {
        console.log("Fetching...");
        let data = await getData();  // wait until resolved
        console.log(data);
      } catch (error) {
        console.log(error);
      }
    }

    fetchData();
  