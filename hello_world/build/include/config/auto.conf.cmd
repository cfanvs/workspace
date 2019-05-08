deps_config := \
	/home/cl/esp32/sdk/esp-idf-v3.1.3/components/app_trace/Kconfig \
	/home/cl/esp32/sdk/esp-idf-v3.1.3/components/aws_iot/Kconfig \
	/home/cl/esp32/sdk/esp-idf-v3.1.3/components/bt/Kconfig \
	/home/cl/esp32/sdk/esp-idf-v3.1.3/components/driver/Kconfig \
	/home/cl/esp32/sdk/esp-idf-v3.1.3/components/esp32/Kconfig \
	/home/cl/esp32/sdk/esp-idf-v3.1.3/components/esp_adc_cal/Kconfig \
	/home/cl/esp32/sdk/esp-idf-v3.1.3/components/esp_http_client/Kconfig \
	/home/cl/esp32/sdk/esp-idf-v3.1.3/components/ethernet/Kconfig \
	/home/cl/esp32/sdk/esp-idf-v3.1.3/components/fatfs/Kconfig \
	/home/cl/esp32/sdk/esp-idf-v3.1.3/components/freertos/Kconfig \
	/home/cl/esp32/sdk/esp-idf-v3.1.3/components/heap/Kconfig \
	/home/cl/esp32/sdk/esp-idf-v3.1.3/components/libsodium/Kconfig \
	/home/cl/esp32/sdk/esp-idf-v3.1.3/components/log/Kconfig \
	/home/cl/esp32/sdk/esp-idf-v3.1.3/components/lwip/Kconfig \
	/home/cl/esp32/sdk/esp-idf-v3.1.3/components/mbedtls/Kconfig \
	/home/cl/esp32/sdk/esp-idf-v3.1.3/components/nvs_flash/Kconfig \
	/home/cl/esp32/sdk/esp-idf-v3.1.3/components/openssl/Kconfig \
	/home/cl/esp32/sdk/esp-idf-v3.1.3/components/pthread/Kconfig \
	/home/cl/esp32/sdk/esp-idf-v3.1.3/components/spi_flash/Kconfig \
	/home/cl/esp32/sdk/esp-idf-v3.1.3/components/spiffs/Kconfig \
	/home/cl/esp32/sdk/esp-idf-v3.1.3/components/tcpip_adapter/Kconfig \
	/home/cl/esp32/sdk/esp-idf-v3.1.3/components/vfs/Kconfig \
	/home/cl/esp32/sdk/esp-idf-v3.1.3/components/wear_levelling/Kconfig \
	/home/cl/esp32/sdk/esp-idf-v3.1.3/components/bootloader/Kconfig.projbuild \
	/home/cl/esp32/sdk/esp-idf-v3.1.3/components/esptool_py/Kconfig.projbuild \
	/home/cl/esp32/sdk/esp-idf-v3.1.3/components/partition_table/Kconfig.projbuild \
	/home/cl/esp32/sdk/esp-idf-v3.1.3/Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(IDF_CMAKE)" "n"
include/config/auto.conf: FORCE
endif

$(deps_config): ;
