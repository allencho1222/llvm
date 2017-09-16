; ModuleID = 'functioncallcount.opt.bc'
source_filename = "functioncallcount.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_functioncallcount.cpp, i8* null }]
@count = internal global i32 0, align 4

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  %0 = load i32, i32* @count
  %1 = add i32 %0, 1
  store i32 %1, i32* @count
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit) #5
  %2 = load i32, i32* @count
  %3 = add i32 %2, 1
  store i32 %3, i32* @count
  %4 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline uwtable
define void @_Z7countMev() #0 {
entry:
  %0 = load i32, i32* @count
  %1 = add i32 %0, 1
  store i32 %1, i32* @count
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  %2 = load i32, i32* @count
  %3 = add i32 %2, 1
  store i32 %3, i32* @count
  %call1 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #2

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #2

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #2

; Function Attrs: noinline norecurse uwtable
define i32 @main() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %n, align 4
  %0 = load i32, i32* @count
  %1 = add i32 %0, 1
  store i32 %1, i32* @count
  %call = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %n)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* @count
  %5 = add i32 %4, 1
  store i32 %5, i32* @count
  call void @_Z7countMev()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"*, i32* dereferenceable(4)) #2

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_functioncallcount.cpp() #0 section ".text.startup" {
entry:
  %0 = load i32, i32* @count
  %1 = add i32 %0, 1
  store i32 %1, i32* @count
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "Constructor"="Init" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "Constructor"="Init" }

!llvm.ident = !{!0}
!greater_equal = !{!1}
!divides = !{!2}
!failure = !{!3}
!not_equal_to = !{!1}
!length_error = !{!4}
!const_mem_fun1_ref_t = !{!5}
!runtime_error = !{!6}
!num_get = !{!7}
!bit_not = !{!8}
!bit_and = !{!2}
!__ctype_abstract_base = !{!9}
!negate = !{!8}
!bad_exception = !{!6}
!numpunct_byname = !{!10}
!bit_xor = !{!2}
!binary_negate = !{!11}
!out_of_range = !{!4}
!_Miter_base = !{!12}
!range_error = !{!13}
!logic_error = !{!6}
!const_mem_fun_t = !{!14}
!__is_arithmetic = !{!15}
!__numeric_traits = !{!16}
!mem_fun1_ref_t = !{!5}
!modulus = !{!2}
!invalid_argument = !{!4}
!logical_not = !{!17}
!basic_ios = !{!18}
!minus = !{!2}
!less_equal = !{!1}
!logical_and = !{!1}
!bad_alloc = !{!6}
!const_mem_fun1_t = !{!19}
!_Niter_base = !{!20}
!istreambuf_iterator = !{!21}
!bidirectional_iterator_tag = !{!22}
!collate_byname = !{!23}
!ctype_byname = !{!24}
!ostreambuf_iterator = !{!25}
!unary_negate = !{!26}
!collate = !{!7}
!system_error = !{!27}
!domain_error = !{!4}
!mem_fun1_t = !{!28}
!binder1st = !{!29}
!__numpunct_cache = !{!30}
!__is_scalar = !{!31}
!_Alloc_hider = !{!32}
!random_access_iterator_tag = !{!33}
!less = !{!1}
!_Select1st = !{!34}
!pointer_to_unary_function = !{!35}
!numpunct = !{!7}
!equal_to = !{!1}
!mem_fun_ref_t = !{!36}
!overflow_error = !{!13}
!binder2nd = !{!37}
!bit_or = !{!2}
!underflow_error = !{!13}
!allocator = !{!38}
!_Select2nd = !{!39}
!plus = !{!2}
!basic_iostream = !{!40}
!reverse_iterator = !{!41}
!front_insert_iterator = !{!42}
!ctype = !{!43}
!num_put = !{!7}
!greater = !{!1}
!multiplies = !{!2}
!pointer_to_binary_function = !{!44}
!back_insert_iterator = !{!42}
!_Identity = !{!8}
!char_traits = !{!45}
!basic_istream = !{!46}
!forward_iterator_tag = !{!47}
!mem_fun_t = !{!48}
!logical_or = !{!1}
!basic_ostream = !{!46}
!const_mem_fun_ref_t = !{!36}
!insert_iterator = !{!42}

!0 = !{!"clang version 4.0.0 (git@git.corelab.or.kr:corelab/clang.git 0fee3c9972ead9470210b259461a40693f620556) (git@git.corelab.or.kr:corelab/llvm.git a3bfbbd5a2c5b7d9b2f4203369d05f4bda7df1a6)"}
!1 = !{!"binary_function<_Tp, _Tp, _Bool>"}
!2 = !{!"binary_function<_Tp, _Tp, _Tp>"}
!3 = !{!"struct std::ios_base::system_error"}
!4 = !{!"class std::logic_error"}
!5 = !{!"binary_function<_Tp, _Arg, _Ret>"}
!6 = !{!"class std::exception"}
!7 = !{!"class locale::facet", !"class locale::facet", !"class locale::facet", !"class locale::facet"}
!8 = !{!"unary_function<_Tp, _Tp>"}
!9 = !{!"class locale::facet", !"struct std::ctype_base"}
!10 = !{!"numpunct<_CharT>", !"numpunct<_CharT>", !"numpunct<char>", !"numpunct<wchar_t>"}
!11 = !{!"binary_function<typename _Predicate::first_argument_type, typename _Predicate::second_argument_type, _Bool>"}
!12 = !{!"_Iter_base<_Iterator, __is_move_iterator<_Iterator>::__value>"}
!13 = !{!"class std::runtime_error"}
!14 = !{!"unary_function<const _Tp *, _Ret>"}
!15 = !{!"__traitor<__is_integer<_Tp>, __is_floating<_Tp> >"}
!16 = !{!"__conditional_type<std::__is_integer<_Value>::__value, __numeric_traits_integer<_Value>, __numeric_traits_floating<_Value> >::__type"}
!17 = !{!"unary_function<_Tp, _Bool>"}
!18 = !{!"class std::ios_base", !"class std::ios_base", !"class std::ios_base", !"class std::ios_base"}
!19 = !{!"binary_function<const _Tp *, _Arg, _Ret>"}
!20 = !{!"_Iter_base<_Iterator, __is_normal_iterator<_Iterator>::__value>"}
!21 = !{!"iterator<struct std::input_iterator_tag, _CharT, typename _Traits::off_type, _CharT *, _CharT &>", !"iterator<struct std::input_iterator_tag, _CharT, typename _Traits::off_type, _CharT *, _CharT &>", !"iterator<struct std::input_iterator_tag, _CharT, typename _Traits::off_type, _CharT *, _CharT &>"}
!22 = !{!"struct std::forward_iterator_tag"}
!23 = !{!"collate<_CharT>", !"collate<_CharT>", !"collate<char>", !"collate<wchar_t>"}
!24 = !{!"ctype<_CharT>", !"ctype<_CharT>", !"ctype<char>", !"ctype<wchar_t>", !"ctype<char>", !"ctype<wchar_t>"}
!25 = !{!"iterator<struct std::output_iterator_tag, void, void, void, void>", !"iterator<struct std::output_iterator_tag, void, void, void, void>", !"iterator<struct std::output_iterator_tag, void, void, void, void>"}
!26 = !{!"unary_function<typename _Predicate::argument_type, _Bool>"}
!27 = !{!"std::runtime_error"}
!28 = !{!"binary_function<_Tp *, _Arg, _Ret>"}
!29 = !{!"unary_function<typename _Operation::second_argument_type, typename _Operation::result_type>"}
!30 = !{!"class locale::facet"}
!31 = !{!"__traitor<__is_arithmetic<_Tp>, __is_pointer<_Tp> >"}
!32 = !{!"allocator_type"}
!33 = !{!"struct std::bidirectional_iterator_tag"}
!34 = !{!"unary_function<_Pair, typename _Pair::first_type>"}
!35 = !{!"unary_function<_Arg, _Result>"}
!36 = !{!"unary_function<_Tp, _Ret>"}
!37 = !{!"unary_function<typename _Operation::first_argument_type, typename _Operation::result_type>"}
!38 = !{!"__gnu_cxx::new_allocator<_Tp>", !"__gnu_cxx::new_allocator<_Tp>", !"__gnu_cxx::new_allocator<char>", !"__gnu_cxx::new_allocator<wchar_t>"}
!39 = !{!"unary_function<_Pair, typename _Pair::second_type>"}
!40 = !{!"basic_istream<_CharT, _Traits>", !"basic_ostream<_CharT, _Traits>", !"basic_istream<_CharT, _Traits>", !"basic_ostream<_CharT, _Traits>", !"basic_istream<char, struct std::char_traits<char> >", !"basic_ostream<char, struct std::char_traits<char> >", !"basic_istream<wchar_t, struct std::char_traits<wchar_t> >", !"basic_ostream<wchar_t, struct std::char_traits<wchar_t> >"}
!41 = !{!"iterator<typename iterator_traits<_Iterator>::iterator_category, typename iterator_traits<_Iterator>::value_type, typename iterator_traits<_Iterator>::difference_type, typename iterator_traits<_Iterator>::pointer, typename iterator_traits<_Iterator>::reference>"}
!42 = !{!"iterator<struct std::output_iterator_tag, void, void, void, void>"}
!43 = !{!"__ctype_abstract_base<_CharT>", !"class locale::facet", !"struct std::ctype_base", !"__ctype_abstract_base<wchar_t>", !"__ctype_abstract_base<_CharT>", !"class locale::facet", !"struct std::ctype_base", !"__ctype_abstract_base<wchar_t>"}
!44 = !{!"binary_function<_Arg1, _Arg2, _Result>"}
!45 = !{!"__gnu_cxx::char_traits<_CharT>", !"__gnu_cxx::char_traits<_CharT>", !"__gnu_cxx::char_traits<_CharT>"}
!46 = !{!"basic_ios<_CharT, _Traits>", !"basic_ios<_CharT, _Traits>", !"basic_ios<char, struct std::char_traits<char> >", !"basic_ios<wchar_t, struct std::char_traits<wchar_t> >"}
!47 = !{!"struct std::input_iterator_tag"}
!48 = !{!"unary_function<_Tp *, _Ret>"}
