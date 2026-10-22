#  Device Tree for Xiaomi Pad 6s Pro (sheng)

## Spec Sheet

| Feature                 | Specification                                                              |
| :---------------------- | :--------------------------------                                          |
| CPU                     | Octa-core (1x3.2 GHz Cortex-X3 & 2x2.8 GHz Cortex-A715 & 2x2.8 GHz Cortex-A710 & 3x2.0 GHz Cortex-A510)|
| Chipset                 | Qualcomm SM8550-AB Snapdragon 8 Gen 2 (4 nm)                                      |
| GPU                     | Adreno 740                                                                 |
| Memory                  | 8 GB / 12 GB / 16 GB                                                               |
| Shipped Software        | Android 14, up to 3 major OS updates, HyperOS                                                       |
| Storage                 | 256 GB / 512 GB / 1 TB                                                           |
| Battery                 | 10000 mAh                                                                   |
| Dimensions              | 278.7 x 191.6 x 6.3 mm (10.97 x 7.54 x 0.25 in)                              |
| Display                 | 12.4 inches, 457.8 cm2 (~85.7% screen-to-body ratio)                       |
| Rear Camera             | 50 MP, f/1.8, (wide), 1/2.76", 0.64µm, PDAF / Auxiliary lens                            |
| Front Camera            | 32 MP, f/2.2, (wide), 1/3.6", 0.61µm                                   |
| Release Date            | February 2024                                                               |

## Build dependencies

Select these repositories and branches in the local manifest:

| Path | Repository | Branch |
| --- | --- | --- |
| `device/xiaomi/sm8550-common` | [xiaomi-sm8550-devs/android_device_xiaomi_sm8550-common](https://github.com/xiaomi-sm8550-devs/android_device_xiaomi_sm8550-common) | `lineage-24.0` |
| `hardware/xiaomi` | [UwUniverse/android_hardware_xiaomi](https://github.com/UwUniverse/android_hardware_xiaomi) | `lineage-24.0` |
| `hardware/qcom-caf/sm8550/display` | [UwUniverse/android_hardware_qcom_display](https://github.com/UwUniverse/android_hardware_qcom_display) | `lineage-24.0-caf-sm8550` |

Generate `vendor/xiaomi/sheng` with `extract-files.py` from the matching firmware.
The prebuilt GKI, matching DTB/DTBO and kernel modules belong in
`device/xiaomi/sheng-kernel`; keep `kernel.release` aligned with `system_dlkm`.
The AOSP-compatible GKI build is available from
[bk-kernel_5.15, ForAOSP](https://github.com/Jelly10086/bk-kernel_5.15/tree/ForAOSP).
Vendor blobs and prebuilt kernel artifacts are not included in this source tree.

## Device Picture

![pad6sp](https://i02.appmifile.com/966_operator_sg/17/02/2024/d93754f43f5152e5d94407606f78d8ba.png)
