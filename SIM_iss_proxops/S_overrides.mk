MODELS_HOME = /Users/bethwei/Downloads/trick_proj/models

export TRICK_HOME=/Users/bethwei/trick
export JEOD_HOME=/Users/bethwei/jeod

# Include Paths (Compiler)
TRICK_CFLAGS   += -I$(MODELS_HOME) -I$(JEOD_HOME) -I$(JEOD_HOME)/include
TRICK_CXXFLAGS += -I$(MODELS_HOME) -I$(JEOD_HOME) -I$(JEOD_HOME)/include

# Library Paths & Linking Flags (Linker)
TRICK_LDFLAGS  += -L$(JEOD_HOME)/lib

# Debug Flags
TRICK_CFLAGS   += -g
TRICK_CXXFLAGS += -g

# Include JEOD Generic Overrides
include $(JEOD_HOME)/bin/jeod/generic_S_overrides.mk