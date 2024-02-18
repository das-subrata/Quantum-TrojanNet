# Dataset README

This dataset consists of 813 pairs of quantum circuits solving the Max-Cut problem on 3, 4, and 5 node graphs using the Quantum Approximate Optimization Algorithm (QAOA). The 'Trojan-free' circuits were optimized for the Max-Cut problem on each graph and compiled using the qasm_simulator/ FakeManilaV2 backend in Qiskit. Trojan-inserted circuits were then created by inserting additional Trojan gates on the critical path of each original non-compiled 'Trojan-free' QAOA circuit and then they were compiled using the qasm_simulator/ FakeManilaV2.

In total, 11 dataset folders are included that vary the Trojan gate type (X, H, Rx, Rz, SWAP, CX), number of inserted gates (1 or 2), location (front or middle of circuit), and compiler backend (qasm_simulator or FakeManilaV2) to analyze the impact of Trojans on algorithm performance.

The consistent naming convention of the Dataset folders denotes the key Trojan parameters for each circuit pair:

InsertionLocation_#Gates_GateType_Backend
Example: Front_1 Trojan_X Gate_QASM

This structure enables detailed analysis of how different types of Trojans influence attack detection and success rates. The datasets provide a robust foundation for developing defenses against hardware Trojans in NISQ-era QAOA implementations.
