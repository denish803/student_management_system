
//     function callApiAndRedirect() {
////            fetch('http://localhost:8080/session/expired')  // Replace with your API endpoint
//            fetch('http://localhost:8080/cookies/check')  // Replace with your API endpoint
//                .then(response => response.json())
//                .then(data => {
//                    console.log('API response:', data);  // Log the response for debugging
//                    alert(data.status);
//                    // Check the response and redirect accordingly
//                    if (data.status == true) {  // Replace 'someCondition' with your condition
//                        window.location.href = '/log-out/user';
//                    }
//                })
//                .catch(error => {
//                    console.error('Error calling API:', error);
//                });
//        }
//
//        // Call the function immediately and then set an interval to call it every 2 minutes (120000 ms)
//        callApiAndRedirect();
//
//        setInterval(callApiAndRedirect, 10000);