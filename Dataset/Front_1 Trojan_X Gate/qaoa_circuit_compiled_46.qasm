OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[5];
h q[0];
h q[1];
cx q[0],q[1];
rz(5.101526132685132) q[1];
cx q[0],q[1];
rx(3.887509984838723) q[1];
h q[2];
h q[3];
cx q[0],q[3];
rz(5.101526132685132) q[3];
cx q[0],q[3];
rx(3.887509984838723) q[0];
rx(3.887509984838723) q[3];
h q[4];
cx q[2],q[4];
rz(5.101526132685132) q[4];
cx q[2],q[4];
rx(3.887509984838723) q[2];
rx(3.887509984838723) q[4];
barrier q[0],q[1],q[2],q[3],q[4];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
