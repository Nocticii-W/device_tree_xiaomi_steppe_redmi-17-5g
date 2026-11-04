
DEVICE_PATH := device/xiaomi/steppe

# ==========================================
# Architecture
# ==========================================

TARGET_ARCH                := arm64
TARGET_ARCH_VARIANT        := armv8-2a-dotprod
TARGET_CPU_ABI              := arm64-v8a
TARGET_CPU_VARIANT          := generic
TARGET_CPU_VARIANT_RUNTIME  := kryo300

# ==========================================
# Kernel / Recovery image
# ==========================================

TARGET_KERNEL_ARCH        := $(TARGET_ARCH)
TARGET_KERNEL_HEADER_ARCH := $(TARGET_ARCH)

BOARD_KERNEL_PAGESIZE     := 4096
BOARD_BOOT_HEADER_VERSION := 4

BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)

# ==========================================
# Partition sizes
# ==========================================

BOARD_RECOVERYIMAGE_PARTITION_SIZE    := 104857600
BOARD_BOOTIMAGE_PARTITION_SIZE        := 100663296
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_INIT_BOOT_IMAGE_PARTITION_SIZE  := 8388608
BOARD_DTBOIMG_PARTITION_SIZE          := 75497472

# ==========================================
# Dynamic Partitions - Virtual A/B
# ==========================================

BOARD_SUPER_PARTITION_SIZE := 10200547328

BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions

BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 10190061568

BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST += \
    odm \
    product \
    system \
    system_dlkm \
    system_ext \
    vendor \
    vendor_dlkm \
    mi_ext

# Platform
TARGET_BOARD_PLATFORM     := malabar
TARGET_BOARD_PLATFORM_GPU := qcom-adreno629

# Filesystems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EROFS := true

# Device
TARGET_DEVICE := steppe
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab
