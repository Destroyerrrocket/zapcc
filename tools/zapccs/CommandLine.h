// Copyright (c) 2014-2018 Ceemple Software Ltd. All rights Reserved.
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
#ifndef TOOLS_ZAPCC_COMMANDLINE_H_
#define TOOLS_ZAPCC_COMMANDLINE_H_

#include "llvm/ADT/ArrayRef.h"

void resetNumOccurrencesFlags();
void parseDebugFlags(llvm::ArrayRef<const char *> Argv);
extern bool DebugTimeFlag;

#endif
