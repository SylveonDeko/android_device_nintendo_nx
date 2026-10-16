#
# Copyright (C) 2022-2023 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Gpu driver
ifeq ($(TARGET_TEGRA_GPU),nvgpu)
BOARD_VENDOR_KERNEL_MODULES_LOAD += \
    governor_pod_scaling \
    nvgpu
else
BOARD_VENDOR_KERNEL_MODULES_LOAD += \
    nouveau
endif

# Tegra high speed serial
BOARD_VENDOR_KERNEL_MODULES_LOAD += \
    serial-tegra

# Usb Bluetooth
BOARD_VENDOR_KERNEL_MODULES_LOAD += \
    btusb

# Broadcom wifi
BOARD_VENDOR_KERNEL_MODULES_LOAD += \
    brcmfmac-wcc

# Tegra cec
BOARD_VENDOR_KERNEL_MODULES_LOAD += \
    tegra_cec

# Tegra hdmi audio
ifeq ($(TARGET_KERNEL_VERSION),6.12)
BOARD_VENDOR_KERNEL_MODULES_LOAD += \
    snd-hda-codec-hdmi
else
BOARD_VENDOR_KERNEL_MODULES_LOAD += \
    snd-hda-codec-tegrahdmi
endif
BOARD_VENDOR_KERNEL_MODULES_LOAD += \
    snd-hda-tegra

# Sound codec
BOARD_VENDOR_KERNEL_MODULES_LOAD += \
    snd-soc-rt5640

# Tegra audio processing engine
BOARD_VENDOR_KERNEL_MODULES_LOAD += \
    tegra210-adma \
    snd-soc-tegra210-ahub \
    snd-soc-tegra210-sfc \
    snd-soc-tegra210-i2s \
    snd-soc-tegra210-mixer \
    snd-soc-tegra210-amx \
    snd-soc-tegra210-admaif \
    snd-soc-tegra210-adx \
    snd-soc-tegra210-dmic \
    snd-soc-tegra210-mvc \
    snd-soc-tegra210-ope \
    snd-soc-tegra-audio-graph-card

# Nvidia Controllers
BOARD_VENDOR_KERNEL_MODULES_LOAD += \
    hid-nvidia-shield \
    hid-nvidia-shield-oot

# Copy to boot
BOOT_KERNEL_MODULES := \
    system_heap.ko \
    tegra30-devfreq.ko \
    cpufreq-dt.ko \
    tegra124-cpufreq.ko \
    i2c-tegra.ko \
    spi-tegra114.ko \
    spi-tegra210-quad.ko \
    bq24190_charger.ko \
    rtc-tegra.ko \
    gpio-tegra.ko \
    max77620.ko \
    gpio-max77620.ko \
    pinctrl-max77620.ko \
    max77620-regulator.ko \
    max77812-regulator.ko \
    max77620-restart.ko \
    max77620-onoff.ko \
    max17042_battery.ko \
    tegra20-apb-dma.ko \
    r2p-tegra.ko \
    phy-tegra-xusb.ko \
    xhci-tegra.ko \
    tegra-xudc.ko \
    usb-conn-gpio.ko \
    pci-tegra.ko \
    hwmon.ko \
    pwm-tegra.ko \
    pwm-fan.ko \
    pwm-regulator.ko \
    tegra-soctherm.ko \
    cqhci.ko \
    sdhci-tegra.ko \
    mtd.ko \
    spi-nor.ko \
    mtd_blkdevs.ko \
    mtdblock.ko \
    host1x.ko \
    drm_display_helper.ko \
    drm_dp_aux_bus.ko \
    tegra-aconnect.ko \
    tegra-drm.ko \
    pwm_bl.ko \
    bm92txx.ko \
    panel-nx-dsi.ko \
    stmfts.ko \
    bh1730.ko

# Load in first stage boot
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD := \
    system_heap \
    tegra20-apb-dma \
    i2c-tegra \
    max77620 \
    max77620-regulator \
    gpio-tegra \
    pwm-tegra \
    pwm-regulator \
    pinctrl-max77620 \
    gpio-max77620 \
    max77812-regulator \
    tegra124-cpufreq \
    spi-tegra114 \
    spi-tegra210-quad \
    bq24190_charger \
    rtc-tegra \
    r2p-tegra \
    xhci-tegra \
    tegra-xudc \
    usb-conn-gpio \
    pci-tegra \
    pwm-fan \
    tegra-soctherm \
    max77620-restart \
    max77620-onoff \
    max17042_battery \
    tegra-aconnect \
    sdhci-tegra \
    spi-nor \
    mtdblock \
    tegra-drm \
    pwm_bl \
    tegra30-devfreq \
    bm92txx \
    panel-nx-dsi \
    stmfts \
    bh1730

# Copy to recovery
RECOVERY_KERNEL_MODULES := \
    $(BOOT_KERNEL_MODULES)

# Load in recovery
BOARD_RECOVERY_KERNEL_MODULES_LOAD := \
    $(BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD)
