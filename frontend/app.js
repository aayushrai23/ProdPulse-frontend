const API_BASE_URL = "http://127.0.0.1:8000";

function checkHealth() {
  fetch(`${API_BASE_URL}/health`)
    .then(response => {
      if (!response.ok) {
        throw new Error("API error");
      }
      return response.json();
    })
    .then(data => {
      document.getElementById("output").innerText =
        JSON.stringify(data, null, 2);
    })
    .catch(err => {
      document.getElementById("output").innerText =
        "❌ Backend not reachable";
    });
}
