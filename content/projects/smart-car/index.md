---
title: 'Smart Car Design — Provincial Competition Silver Award (Team Lead)'
summary: Led a team to design and build a cam-steered smart car from scratch — SolidWorks mechanical design, MATLAB trajectory simulation, and custom charging circuit. Won silver award at the provincial competition.
tags:
  - Robotics
  - Hardware
  - Mechanical Design
date: '2023-06-01T00:00:00Z'
external_link: ''
image:
  caption: 'SolidWorks detailed render — cam steering mechanism with drive wheels and onboard camera'
  focal_point: Smart
links: []
---

Led a team in designing and manufacturing a cam-steered autonomous smart car for the provincial-level competition, taking the project from concept through mechanical design, simulation, and hardware implementation.

**Role:** Team Lead — responsible for overall mechanical architecture, steering system design, trajectory modeling, and circuit design.

---

### Mechanical Design

{{< figure src="cad_v1.png" caption="Early-stage CAD concept model — initial chassis layout and wheel configuration." >}}

{{< figure src="featured.png" caption="Final SolidWorks detailed render — cam steering mechanism, gear transmission, drive wheels, and onboard camera mount." >}}

The steering system uses a **cam-based mechanism** to convert rotational motion into precise lateral displacement, eliminating the need for servo actuators and improving mechanical reliability. The drivetrain uses a gear reduction stage paired with brushed DC motors.

---

### Trajectory Simulation

{{< figure src="simulation.jpeg" caption="MATLAB trajectory simulation — left: full path trace (x/y in mm); top-right: vehicle turning angle vs. displacement; bottom-right: cam curve profile." >}}

Developed a MATLAB model to simulate the vehicle trajectory based on the cam profile. Key outputs:
- **Path trace** — verifies the car follows the intended curved route
- **Turning angle curve** — validates smooth, continuous steering input
- **Cam profile** — designed for minimal acceleration jerk and stable contact force

---

### Charging Circuit

{{< figure src="circuit.png" caption="Custom charging circuit schematic — onboard battery management for the competition vehicle." >}}

Designed a custom charging circuit with battery management to ensure reliable power delivery during competition runs.

---

**Award:** Silver Award, Provincial Smart Car Competition | Team Lead
**Stack:** SolidWorks · MATLAB · PCB Design · DC Motor Control
