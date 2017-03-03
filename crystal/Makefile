ALL_PROGRAMS := $(shell find -E . -type f -regex '.*/[0-9]{4}\.cr' | sed "s|^./||" | sed 's|.cr$$||')

all: $(ALL_PROGRAMS)

clean:
	rm -f $(ALL_PROGRAMS)

% :: %.cr
	crystal build --release $<
