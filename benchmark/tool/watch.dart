// Copyright (c) 2016, Google Inc. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:async';

import 'package:build/build.dart';
import 'package:built_value_generator/built_value_generator.dart';
import 'package:source_gen/source_gen.dart';

Future main(List<String> args) async {
  watch(
      new PhaseGroup.singleAction(
          new GeneratorBuilder([new BuiltValueGenerator()]),
          new InputSet('benchmark', const ['lib/*.dart'])),
      deleteFilesByDefault: true);
}
