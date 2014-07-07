local_dir    := lib/STM32F4xx_StdPeriph_Driver
local_lib    := $(local_dir)/libstm32f4xx.a
local_src    := $(addprefix $(local_dir)/src/,                   \
misc.c                 stm32f4xx_dma.c        stm32f4xx_rcc.c    \
stm32f4xx_adc.c        stm32f4xx_exti.c       stm32f4xx_rng.c    \
stm32f4xx_can.c        stm32f4xx_flash.c      stm32f4xx_rtc.c    \
stm32f4xx_crc.c        stm32f4xx_fsmc.c       stm32f4xx_sdio.c   \
stm32f4xx_cryp_aes.c   stm32f4xx_gpio.c       stm32f4xx_spi.c    \
stm32f4xx_cryp.c       stm32f4xx_hash.c       stm32f4xx_syscfg.c \
stm32f4xx_cryp_des.c   stm32f4xx_hash_md5.c   stm32f4xx_tim.c    \
stm32f4xx_cryp_tdes.c  stm32f4xx_hash_sha1.c  stm32f4xx_usart.c  \
stm32f4xx_dac.c        stm32f4xx_i2c.c        stm32f4xx_wwdg.c   \
stm32f4xx_dbgmcu.c     stm32f4xx_iwdg.c                          \
stm32f4xx_dcmi.c       stm32f4xx_pwr.c                           \
)
local_obj    := $(patsubst %.c,%.o,$(local_src))
libraries    += $(local_lib)
sources      += $(local_src)

$(local_lib): $(local_obj)
	$(AR) $(ARFLAGS) $@ $^
