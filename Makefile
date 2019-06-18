# Hisilicon Hi35xx sample Makefile
include $(PWD)/../Makefile.param
include $(PWD)/Makefile.param

CFLAGS += -I$(PWD)/sample
CFLAGS += -I$(PWD)/sample_nnie_software
CFLAGS += -O3


SRCS := $(wildcard *.c)
SRCS += $(wildcard ./sample/*.c)
SRCS += $(wildcard ./sample_nnie_software/*.c)
SRCS += $(wildcard $(PWD)/../common/*.c)

TARGET := detect

# compile linux or HuaweiLite
include $(PWD)/../../../$(OSTYPE).mak
