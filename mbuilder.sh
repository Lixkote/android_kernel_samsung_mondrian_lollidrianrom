#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=/home/lixkote/kernel/build/toolchains/uber-arm-eabi-4.8/bin/arm-eabi-

mkdir output

make -C $(pwd) O=output msm8974_sec_defconfig VARIANT_DEFCONFIG=msm8974_sec_mondrianlte_eur_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -j`grep processor /proc/cpuinfo|wc -l` -C $(pwd) O=output

#cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage  # not needed
