OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg c[4];
h q[0];
h q[1];
cx q[0],q[1];
rz(4.223834033227141) q[1];
cx q[0],q[1];
h q[2];
cx q[0],q[2];
rz(4.223834033227141) q[2];
cx q[0],q[2];
cx q[1],q[2];
rz(4.223834033227141) q[2];
cx q[1],q[2];
rx(1.8198322433263263) q[2];
h q[3];
cx q[0],q[3];
rz(4.223834033227141) q[3];
cx q[0],q[3];
rx(1.8198322433263263) q[0];
cx q[1],q[3];
rz(4.223834033227141) q[3];
cx q[1],q[3];
rx(1.8198322433263263) q[1];
rx(1.8198322433263263) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
