#include <ruby.h>
#include "bsdiff.h"
#include "bspatch.h"

VALUE BSDiff;

static VALUE bsdiff_diff(VALUE mod, VALUE oldfile, VALUE newfile, VALUE patchfile)
{
  if( bsdiff_files(StringValuePtr(oldfile), StringValuePtr(newfile), StringValuePtr(patchfile)) ) {
    return Qfalse;
  }
  return Qtrue;
}

static VALUE bsdiff_patch(VALUE mod, VALUE oldfile, VALUE newfile, VALUE patchfile)
{
  if( bspatch_files(StringValuePtr(oldfile), StringValuePtr(newfile), StringValuePtr(patchfile)) ) {
    return Qfalse;
  }
  return Qtrue;
}

/* main entry point */
void Init_bsdiff()
{
  BSDiff = rb_define_module("BSDiff");

  rb_define_singleton_method(BSDiff, "diff", bsdiff_diff, 3);
  rb_define_singleton_method(BSDiff, "patch", bsdiff_patch, 3);
}
