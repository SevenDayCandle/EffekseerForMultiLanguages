#!/bin/sh
mkdir -p java/swig
mkdir -p csharp/swig
mkdir -p python/swig

mkdir -p cpp/java
mkdir -p cpp/csharp
mkdir -p cpp/python

swig -c++ -java -package stseffekseer.swig -o cpp/java/dll.cpp -outdir java/swig/ EffekseerCore.i
swig -c++ -csharp -namespace stseffekseer.swig -o cpp/csharp/dll.cpp -outdir csharp/swig/ -dllimport EffekseerNativeForCSharp EffekseerCore.i
swig -c++ -python -o cpp/python/dll.cpp -outdir python/swig/ EffekseerCore.i
