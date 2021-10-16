import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.querySelectorAll("#offer_address, #booking_address");
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };