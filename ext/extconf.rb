require 'mkmf'

dir_config('bsdiff')
fail unless have_header('unistd.h')
fail unless have_header('err.h')
fail unless have_header('bzlib.h')
fail unless have_library('bz2')
fail unless have_func('BZ2_bzWrite','bzlib.h')
fail unless have_macro('BZ_OK','bzlib.h')
create_header('bsdiff_config.h')
create_makefile('bsdiff')
