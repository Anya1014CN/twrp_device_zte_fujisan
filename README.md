# TWRP device tree for ZTE Axon M Z999 (fujisan)

This is a bring-up oriented device tree for building TWRP against the Android
8.1 / Oreo base for the ZTE Axon M Z999 (`fujisan`, msm8996).

The first-pass priorities are booting recovery, main display output, main touch
input, and recovery ADB. The secondary display is intentionally not treated as a
target surface. Nonessential extras are disabled initially to keep the recovery
ramdisk small for the stock msm8996 bootloader.

## Local source data

- Stock boot image: `../booto.img`
- Stock recovery image: `../recoveryo.img`
- Kernel: extracted from stock recovery into `prebuilt/kernel`
- Boot image page size: `4096`
- Kernel base: `0x80000000`
- Ramdisk offset: `0x01000000`
- Tags offset: `0x00000100`
- Board platform: `msm8996`
- Boot hardware: `qcom`

## Display and input notes

The live device exposes `fb0`, `fb1`, and `fb2`. `fb0` reports
`U:1080x1920p-60` with a `1080,3840` virtual buffer, so this tree uses the
portrait 1080p TWRP theme and enables line-length based graphics.

Touch input devices observed from Android:

- `zte-touchscreen`: primary panel, X range `0..1079`, Y range `0..1919`
- `zte-touchscreen-2nd`: secondary panel, X range `1080..2159`, Y range `0..1919`
- `zte-touchsrceen-3nd`: virtual combined touch device, X range `0..2160`

The secondary and combined touch devices are blacklisted in `BoardConfig.mk` so
TWRP should use the primary touch panel only.

## Build

From an Omni/TWRP 8.1 source tree:

```sh
. build/envsetup.sh
lunch omni_fujisan-eng
mka recoveryimage
```

Flash or boot the resulting recovery image with the method appropriate for the
device bootloader state.
