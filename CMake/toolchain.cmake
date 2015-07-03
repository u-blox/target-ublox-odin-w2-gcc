# Copyright (C) 2014-2015 ARM Limited. All rights reserved.

if(TARGET_UBLOX_ODIN_W2_GCC_TOOLCHAIN_INCLUDED)
    return()
endif()
set(TARGET_UBLOX_ODIN_W2_GCC_TOOLCHAIN_INCLUDED 1)

# provide compatibility definitions for compiling with this target: these are
# definitions that legacy code assumes will be defined. Before adding something
# here, think VERY CAREFULLY if you can't change anywhere that relies on the
# definition that you're about to add to rely on the TARGET_LIKE_XXX
# definitions that yotta provides based on the target.json file.
#
# TODO: This should live in yotta config
add_definitions(-DHSE_VALUE=24000000 -DHSE_STARTUP_TIMEOUT=5000)
