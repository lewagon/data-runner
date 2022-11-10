
This branch introduces a corrective runner for the [B2B Schlumberger batch](https://kitt.lewagon.com/active_admin/programs/126) based on the `py-3.8.12-2022-q2-v2` branch

The students of the batch are supposed to have ran the [Q2 2022 data-setup](https://github.com/lewagon/data-setup/tree/master/specs/releases/past/2022_Q2)

But for some reason the numpy and pandas package versions of the students do not correspond to the setup contraints and the Kitt validation of the challenges fails

Setup constraints for base `py-3.8.12-2022-q2-v2` branch:

```txt
numpy<1.20
pandas<1.4
```

Collected students versions:

``` txt
pandas==1.4.4
numpy==1.23.3
```
