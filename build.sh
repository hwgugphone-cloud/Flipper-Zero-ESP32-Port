#!/usr/bin/env bash
set -euo pipefail

# Configuration
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
EXPORT_SCRIPT="${ESP_IDF_EXPORT_SCRIPT:-${HOME}/esp/esp-idf/export.sh}"

# Chỉ định duy nhất board của bạn
SELECTED_BOARD="6btn"
BOARD="esp32s3_6buttons"
BUILD_DIR="build_6btn"
TARGET="esp32s3"

# Các phần còn lại của script giữ nguyên logic quét port
# ... (Phần detect_port và release_port giữ nguyên) ...

# Thiết lập IDF Target
export IDF_TARGET="${TARGET}"

# Source môi trường ESP-IDF
[[ ! -f "${EXPORT_SCRIPT}" ]] && echo "IDF export script missing." >&2 && exit 1
source "${EXPORT_SCRIPT}"

cd "${SCRIPT_DIR}"

# Build và Flash
idf.py -B "${BUILD_DIR}" set-target "${TARGET}"
idf.py -B "${BUILD_DIR}" -DFLIPPER_BOARD="${BOARD}" reconfigure build flash
