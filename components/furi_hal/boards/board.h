/**
 * @file board.h
 * Master board selection header — Ép chạy cấu hình Custom 6 nút (board_esp32s3_6buttons.h)
 */

#pragma once

/* 1. Xóa bỏ hoàn toàn các cấu hình bo mạch generic khác để tránh xung đột */
#undef BOARD_ESP32S3_GENERIC


/* 2. Định nghĩa cứng định danh bo mạch của bạn */
#ifndef BOARD_ESP32S3_6BUTTONS
#define BOARD_ESP32S3_6BUTTONS
#endif

/* 3. Bắn thẳng vào file cấu hình 6 nút thực tế của bạn */
#include "board_esp32s3_6buttons.h"

/* 4. Khóa (Guard) bảo vệ - Đảm bảo các file .c khác khi include board.h sẽ nhận diện đúng */
#ifndef BOARD_NAME
#define BOARD_NAME        "esp32s3_6buttons"
#endif
