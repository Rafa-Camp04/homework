document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });


  // adding SF places as list items

  // Your code here

  const favoriteInput = document.querySelector('.favorite-input');
  const favoriteSubmit = document.querySelector('.favorite-submit');
  const sfPlacesList = document.getElementById('sf-places');

  // Add event listener to the submit button
  favoriteSubmit.addEventListener('click', function(event) {
    event.preventDefault(); // Prevent form submission

    // Get the value entered by the user
    const inputValue = favoriteInput.value;

    // Clear the input box
    favoriteInput.value = '';

    // Append the new item to the list
    appendItem(inputValue);
  });

  // Function to append a new item to the list
  function appendItem(value) {
    // Create a new list item
    const listItem = document.createElement('li');

    // Set the text content of the list item
    listItem.textContent = value;

    // Append the list item to the list
    sfPlacesList.appendChild(listItem);
  }
  
  // adding new photos

  // Your code here

  const photoFormContainer = document.querySelector('.photo-form-container');
  const photoShowButton = document.querySelector('.photo-show-button');
  const photoUrlInput = document.querySelector('.photo-url-input');
  const photoUrlSubmit = document.querySelector('.photo-url-submit');
  const dogPhotosList = document.querySelector('.dog-photos');

  // Add event listener to the "Toggle new photo form" button
  photoShowButton.addEventListener('click', function() {
    // Toggle the visibility of the photo form container
    photoFormContainer.classList.toggle('hidden');
  });

  // Add event listener to the submit button inside the photo form
  photoUrlSubmit.addEventListener('click', function(event) {
    event.preventDefault(); // Prevent form submission

    // Get the URL entered by the user
    const photoUrl = photoUrlInput.value;

    // Clear the input box
    photoUrlInput.value = '';

    // Append the new photo to the list
    appendPhoto(photoUrl);
  });

  // Function to append a new photo to the list
  function appendPhoto(url) {
    // Create a new list item
    const listItem = document.createElement('li');

    // Create a new image element
    const image = document.createElement('img');

    // Set the src attribute of the image element to the provided URL
    image.src = url;

    // Append the image element to the list item
    listItem.appendChild(image);

    // Append the list item to the puppy list
    dogPhotosList.appendChild(listItem);
  }



});