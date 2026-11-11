# Design Google Maps/Uber live tracking: map rendering, location updates, smoothing, and state synchronization

**Track:** Frontend system design  
**Level:** Hard  
**Time:** about 60 minutes  

**[Design it on the whiteboard](https://uiround.com/questions/design-google-maps-uber-live-tracking-map-rendering)** and check yourself against the rubric: free, no account needed.

## Problem

Design the live-tracking screen of a ride-hailing or delivery app (like Uber's "your driver is arriving" view):

- an interactive map with the route, pickup and drop-off pins, and the driver's car moving **smoothly**, rotating to its heading;
- an ETA and trip status that update in real time (driver assigned → arriving → on trip → completed);
- location updates every few seconds over a mobile network that is slow, lossy and sometimes offline;
- the screen also works when the user leaves and comes back, or opens the trip on another device;
- battery and data usage stay low.

Cover map rendering, the real-time location protocol, smoothing and interpolation, state synchronisation, and handling bad networks.

## Hints

<details><summary>Hint 1</summary>

Clarify what must be real: update frequency, accuracy, and what the user should see when data is late or the network is lost.

</details>

<details><summary>Hint 2</summary>

Separate map rendering, the location stream and animation: interpolate between received points on `requestAnimationFrame` and update the marker directly, not through React renders.

</details>

<details><summary>Hint 3</summary>

Trade-offs to cover: rendering slightly behind real time for smoothness, out-of-order or missing updates, a staleness indicator, trip state sync across devices, and battery and data cost.

</details>

## Solution

The full answer is free on UIRound: [Design Google Maps/Uber live tracking: map rendering, location updates, smoothing, and state synchronization](https://uiround.com/questions/design-google-maps-uber-live-tracking-map-rendering). It has a complete design walkthrough, the rubric interviewers score against, and follow-up questions with model answers.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%20140%5D%20).
