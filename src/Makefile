# Makefile for the build system

# Specify the target(s) to build
TARGET := all

# Directories
SRC_DIR := src
CORE_DIR := $(SRC_DIR)/core
PACKAGES_DIR := $(SRC_DIR)/packages

# Core components
KERNEL_DIR := $(CORE_DIR)/kernel
BOOTLOADER_DIR := $(CORE_DIR)/bootloader
TOOLCHAIN_DIR := $(CORE_DIR)/toolchain

# List of packages/components
PACKAGES := package1 package2 package3

.PHONY: $(TARGET) $(PACKAGES)

$(TARGET): $(KERNEL_DIR) $(BOOTLOADER_DIR) $(TOOLCHAIN_DIR) $(PACKAGES)

$(KERNEL_DIR):
	@$(MAKE) -C $@

$(BOOTLOADER_DIR):
	@$(MAKE) -C $@

$(TOOLCHAIN_DIR):
	@$(MAKE) -C $@

$(PACKAGES):
	@$(MAKE) -C $(PACKAGES_DIR)/$@

.PHONY: clean

clean:
	@$(MAKE) -C $(KERNEL_DIR) clean
	@$(MAKE) -C $(BOOTLOADER_DIR) clean
	@$(MAKE) -C $(TOOLCHAIN_DIR) clean
	@for package in $(PACKAGES); do \
		$(MAKE) -C $(PACKAGES_DIR)/$$package clean; \
	done

