LIBS += heatshrink_static
CFLAGS += -DHEATSHRINK_DYNAMIC_ALLOC=0

packages: $(PACKAGES)/heatshrink-0.4.1

$(PACKAGES)/heatshrink-0.4.1: $(ML_SOURCES)/heatshrink-0.4.1.tar.gz
	mkdir -p $(BUILD)/root/bin
	mkdir -p $(BUILD)/root/include
	mkdir -p $(BUILD)/root/lib
	cd $(PACKAGES) && \
	tar xf $(ML_SOURCES)/heatshrink-0.4.1.tar.gz && \
	cd heatshrink-0.4.1 && \
	$(MAKE) CC=$(CROSS_COMPILE)gcc && \
	$(MAKE) install PREFIX=$(BUILD)/root