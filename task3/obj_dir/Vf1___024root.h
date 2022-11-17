// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vf1.h for the primary calling header

#ifndef VERILATED_VF1___024ROOT_H_
#define VERILATED_VF1___024ROOT_H_  // guard

#include "verilated.h"

class Vf1__Syms;

class Vf1___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(clk,0,0);
    VL_IN8(rst,0,0);
    VL_IN8(en,0,0);
    VL_OUT8(data_out,7,0);
    CData/*0:0*/ f1__DOT__count;
    CData/*0:0*/ __Vclklast__TOP__clk;
    VL_IN16(N,15,0);
    SData/*15:0*/ f1__DOT__clktick__DOT__count;
    IData/*31:0*/ f1__DOT__fsm__DOT__current_state;
    IData/*31:0*/ f1__DOT__fsm__DOT__next_state;
    VlUnpacked<CData/*0:0*/, 2> __Vm_traceActivity;

    // INTERNAL VARIABLES
    Vf1__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vf1___024root(Vf1__Syms* symsp, const char* name);
    ~Vf1___024root();
    VL_UNCOPYABLE(Vf1___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);


#endif  // guard
