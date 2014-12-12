## Reproducing issue with profiling code that uses hashtables

For some reason, I always get build errors when trying to build against hashtables with library profiling enabled.

Steps to reproduce:

```
∴ cabal sandbox init

∴ cabal install --only-dependencies --enable-library-profiling

∴ cabal configure --enable-library-profiling --enable-executable-profiling --enable-tests --enable-ben
chmarks

∴ cabal build
Building profiling-with-hashtables-0.1.0.0...
Preprocessing executable 'profiling-with-hashtables' for
profiling-with-hashtables-0.1.0.0...
[1 of 1] Compiling Main             ( Main.hs, dist/build/profiling-with-hashtables/profiling-with-hashtables-tmp/Main.p_o )
Linking dist/build/profiling-with-hashtables/profiling-with-hashtables ...
Undefined symbols for architecture x86_64:
  "_line_mask", referenced from:
      _line_search in libHShashtables-1.2.0.0_p.a(default.p_o)
  "_line_mask_2", referenced from:
      _line_search_2 in libHShashtables-1.2.0.0_p.a(default.p_o)
  "_line_mask_3", referenced from:
      _line_search_3 in libHShashtables-1.2.0.0_p.a(default.p_o)
ld: symbol(s) not found for architecture x86_64
clang: error: linker command failed with exit code 1 (use -v to see invocation)
```
