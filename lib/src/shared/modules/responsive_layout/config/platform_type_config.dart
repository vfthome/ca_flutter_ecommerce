//* MOBILE THRESHOLD (MAX WIDTH)
// The threshold value to determine if the device is a mobile device.
const double mobileThreshold = 760;

//* TABLET THRESHOLD (MAX WIDTH)
// The threshold value to determine if the device is a tablet device.
const double tabletThreshold = 1000;

//* DESKTOP THRESHOLD (MAX WIDTH)
// The threshold value to determine if the device is a desktop device.
const double desktopThreshold = 2000;

//? NOTES EXPLANATION:
//! 1)
// After the desktop threshold, the application width is kept at 2000 pixels.
// so the user interface does not expand indefinitely.

//! 2)
// This is a design decision to keep the application layout consistent and avoid
// unnecessary width expansion.

//! 3)
// If you want to change this behavior, you can update the desktop threshold value,
// or create a new device like "large desktop".
