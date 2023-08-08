## Simulation of IBM’s kicked Ising experiment with Projected Entangled Pair Operator

The code for [arXiv:2308.03082](https://arxiv.org/abs/2308.03082) by Hai-Jun Liao, Kang Wang, Zong-Sheng Zhou, Pan Zhang, and Tao Xiang


### Exactly computing expectations with $5+1$ Trotter steps

Runing the following command lines to exactly compute $M_z$, $W_{10}$, $W_{17}$ and $\tilde{W}_{17}$ by the Clifford expansion theory. See our paper [arXiv:2308.03082](https://arxiv.org/abs/2308.03082) for details.

```bash
$ cd ExactTNC
$ matlab -nodesktop -nosplash < Fig3a.m > out_Fig3a 2>&1 & 
$ matlab -nodesktop -nosplash < Fig3b.m > out_Fig3b 2>&1 &
$ matlab -nodesktop -nosplash < Fig3c.m > out_Fig3c 2>&1 &
$ matlab -nodesktop -nosplash < Fig4a.m > out_Fig4a 2>&1 &
```

### Approximately computing expectations using the PEPO method

Run the following command lines to approximately compute the $M_z$, $W_{10}$, $W_{17}$, $\tilde{W}_{17}$, and $Z_{62}$ using our PEPO method in Heisenberg evolution

```bash
$ cd PEPO
$ matlab -nodesktop -nosplash < Fig3a.m > out_Fig3a 2>&1 &
$ matlab -nodesktop -nosplash < Fig3b.m > out_Fig3b 2>&1 &
$ matlab -nodesktop -nosplash < Fig3c.m > out_Fig3c 2>&1 &
$ matlab -nodesktop -nosplash < Fig4a.m > out_Fig4a 2>&1 &
$ matlab -nodesktop -nosplash < Fig4b.m > out_Fig4b 2>&1 &
```
