# OctoNyte
A RISC-V Multithreaded Core Targeting the Skywater 0.13um ASIC library
**Story**  
As a **Physical Design Engineer**, I want to **take timed RTL** (along with a pre-defined floor plan) through synthesis, placement, routing, timing closure, and physical verification using **OpenROAD** and **SkyWater 0.13µm** libraries, so that I can **deliver a final GDSII** package ready for tapeout that meets all timing, power, and area constraints.

---

### **Business Goal**  
Ensure a **tapeout-ready design** with predictable silicon success by producing a **verified GDSII**—achieving timing closure, minimal DRC violations, and meeting power and area requirements without the need for extensive rework.

---

### **Scope & Objectives**  
1. **Timed RTL Synthesis**  
   - Transform RTL into a gate-level netlist optimized for SkyWater 0.13µm libraries.  
   - Uphold clock-frequency targets and early power/area constraints.

2. **Placement (Within an Existing Floor Plan)**  
   - Accept and **honor the constraints of a floor plan** provided by a separate team (macro placements, chip boundaries).  
   - Place standard cells efficiently to respect timing budgets and congestion goals.

3. **Routing & Timing Closure**  
   - Route interconnects using OpenROAD, ensuring minimal detours and no design-rule violations.  
   - Resolve setup/hold violations and maintain clock integrity under multiple corners.

4. **Physical Verification**  
   - Perform DRC, LVS, and electrical checks (ERC) to confirm compliance with SkyWater 0.13µm design rules.  
   - Validate IR-drop, electromigration (EM), and other reliability factors.

5. **Tapeout Package**  
   - Finalize GDSII output, ensuring sign-off reports for timing, power, and physical verification are complete.  
   - Archive design constraints and metadata for handoff to the foundry.

---

### **Acceptance Criteria**

1. **Timing Closure**  
   - **Condition:** Gate-level netlist must meet the specified clock frequency (e.g., 200 MHz) under worst-case PVT corners.  
   - **Test:** Static Timing Analysis (STA) reports show zero setup/hold violations across all corners.  
   - **Satisfaction:** The design operates at or above its target frequency with no major timing exceptions.

2. **Power & Area Compliance**  
   - **Condition:** The final layout is within the designated die area and meets stated power budgets.  
   - **Test:** Post-route power analysis confirms consumption is under the specified threshold; cell placement and utilization remain below target capacity (e.g., <80% utilization).  
   - **Satisfaction:** No area overflows or excessive power usage that breach project specs.

3. **DRC & LVS Sign-Off**  
   - **Condition:** No un-waived DRC or LVS violations remain in the final layout.  
   - **Test:** OpenROAD or other sign-off tools (e.g., Magic/Calibre) report zero errors for design rule checks and layout vs. schematic checks.  
   - **Satisfaction:** The design is physically clean and consistent with the schematic netlist.

4. **Reliable Power Delivery**  
   - **Condition:** IR-drop and EM stress remain within safe margins.  
   - **Test:** Post-route IR-drop analysis and EM checks reveal no hotspots or excessive current densities.  
   - **Satisfaction:** The design meets reliability requirements for long-term operation.

5. **Documentation & Handoff**  
   - **Condition:** All final reports and the GDSII data are neatly packaged.  
   - **Test:** A release package (GDSII, STA reports, DRC/LVS logs, constraints) is provided to stakeholders or foundry.  
   - **Satisfaction:** Stakeholders confirm the completeness of deliverables for tapeout.

---

### **Definition of Done**

1. **Functional Requirements**  
   - Gate-level netlist is formally verified against the RTL (logical equivalence).  
   - Placement and routing respect the external floor plan constraints.

2. **Non-Functional Requirements**  
   - All runs (synthesis, P&R, verification) complete without unrecoverable errors.  
   - Security measures are in place to protect proprietary design data.

3. **Testing & Validation**  
   - Final STA sign-off at multiple corners; no critical path violations remain.  
   - DRC, LVS, and ERC checks pass under SkyWater 0.13µm rules.

4. **Documentation**  
   - Provide sign-off package (including GDSII, netlists, constraints, verification logs).  
   - Maintain version control records for all major design iterations.

---

## **Top-Level Tasks (GitHub Sub-Issues) with Estimated Person Hours**

- [ ] **Task 1: RTL Synthesis & Initial Timing Analysis (16 ph)**  
  - Convert timed RTL to gate-level netlist using SkyWater 0.13µm libraries.  
  - Check and refine constraints to align with the existing floor plan.

- [ ] **Task 2: Placement (Within Provided Floor Plan) (12 ph)**  
  - Honor macro locations and boundaries defined by the floorplanning engineer.  
  - Place standard cells to balance timing, power, and congestion requirements.

- [ ] **Task 3: Clock Tree Synthesis & Optimization (14 ph)**  
  - Insert and optimize clock trees for minimal skew and robust timing margins.  
  - Re-run timing checks to address hold/setup issues introduced by CTS.

- [ ] **Task 4: Routing & Timing Closure (20 ph)**  
  - Perform global and detailed routing with OpenROAD, respecting DRC rules.  
  - Iterate timing closure steps, ensuring minimal overhead and zero violations.

- [ ] **Task 5: Physical Verification (18 ph)**  
  - Run DRC, LVS, ERC sign-off checks for SkyWater 0.13µm.  
  - Address any violations; confirm IR-drop/EM margins remain acceptable.

- [ ] **Task 6: Final Sign-Off & Tapeout Package (10 ph)**  
  - Generate final GDSII, netlists, constraints, and verification reports.  
  - Archive design documentation, ensuring readiness for the foundry handoff.
