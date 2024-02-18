OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg c[3];
h q[0];
h q[1];
cx q[0],q[1];
rz(6.907017631065816) q[1];
cx q[0],q[1];
h q[2];
cx q[0],q[2];
rz(6.907017631065816) q[2];
cx q[0],q[2];
rx(2.523914572849925) q[0];
cx q[1],q[2];
rz(6.907017631065816) q[2];
cx q[1],q[2];
rx(2.523914572849925) q[1];
rx(2.523914572849925) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
