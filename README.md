## Simulation of IBM’s kicked Ising experiment with Projected Entangled Pair Operator

 arXiv:2308.03082, https://arxiv.org/abs/2308.03082, by Hai-Jun Liao, Kang Wang, Zong-Sheng Zhou Pan Zhang and Tao Xiang

### The tensor network structure of IBM's Eagle Processor

<p align="center">
<img align="middle" src="_assets/IBM127_TN.jpg" width="500" alt="IBM127_TN"/>
</p>

### Exactly compute M_z, W_{10}, W_{17} and \tilde{W}_{17}

Run this to exactly compute M_z, W_{10}, W_{17} and \tilde{W}_{17} by Clifford expansion theory, respectively

```bash
$ cd ExactTNC
$ matlab -nodesktop -nosplash < Fig3a.m > out_Fig3a 2>&1 &
$ matlab -nodesktop -nosplash < Fig3b.m > out_Fig3b 2>&1 &
$ matlab -nodesktop -nosplash < Fig3c.m > out_Fig3c 2>&1 &
$ matlab -nodesktop -nosplash < Fig4a.m > out_Fig4a 2>&1 &
```

### Approximately compute M_z, W_{10}, W_{17}, \tilde{W}_{17} and Z_{62} by PEPO method

Run this to approximately compute M_z, W_{10}, W_{17}, \tilde{W}_{17} and Z_{62} by our PEPO method

```bash
$ cd PEPO
$ matlab -nodesktop -nosplash < Fig3a.m > out_Fig3a 2>&1 &
$ matlab -nodesktop -nosplash < Fig3b.m > out_Fig3b 2>&1 &
$ matlab -nodesktop -nosplash < Fig3c.m > out_Fig3c 2>&1 &
$ matlab -nodesktop -nosplash < Fig4a.m > out_Fig4a 2>&1 &
$ matlab -nodesktop -nosplash < Fig4b.m > out_Fig4b 2>&1 &
```
