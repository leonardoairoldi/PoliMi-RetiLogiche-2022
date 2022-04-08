/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_2(char*, char *);
IKI_DLLESPEC extern void execute_3(char*, char *);
IKI_DLLESPEC extern void execute_4(char*, char *);
IKI_DLLESPEC extern void execute_5(char*, char *);
IKI_DLLESPEC extern void execute_6(char*, char *);
IKI_DLLESPEC extern void execute_7(char*, char *);
IKI_DLLESPEC extern void execute_8(char*, char *);
IKI_DLLESPEC extern void execute_9(char*, char *);
IKI_DLLESPEC extern void execute_10(char*, char *);
IKI_DLLESPEC extern void execute_11(char*, char *);
IKI_DLLESPEC extern void execute_747(char*, char *);
IKI_DLLESPEC extern void execute_748(char*, char *);
IKI_DLLESPEC extern void execute_749(char*, char *);
IKI_DLLESPEC extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_41(char*, char *);
IKI_DLLESPEC extern void execute_753(char*, char *);
IKI_DLLESPEC extern void execute_754(char*, char *);
IKI_DLLESPEC extern void execute_752(char*, char *);
IKI_DLLESPEC extern void execute_44(char*, char *);
IKI_DLLESPEC extern void execute_45(char*, char *);
IKI_DLLESPEC extern void vlog_simple_process_execute_0_fast_no_reg(char*, char*, char*);
IKI_DLLESPEC extern void execute_48(char*, char *);
IKI_DLLESPEC extern void execute_757(char*, char *);
IKI_DLLESPEC extern void execute_758(char*, char *);
IKI_DLLESPEC extern void execute_759(char*, char *);
IKI_DLLESPEC extern void execute_760(char*, char *);
IKI_DLLESPEC extern void execute_761(char*, char *);
IKI_DLLESPEC extern void execute_762(char*, char *);
IKI_DLLESPEC extern void execute_763(char*, char *);
IKI_DLLESPEC extern void execute_764(char*, char *);
IKI_DLLESPEC extern void execute_756(char*, char *);
IKI_DLLESPEC extern void execute_51(char*, char *);
IKI_DLLESPEC extern void execute_766(char*, char *);
IKI_DLLESPEC extern void execute_767(char*, char *);
IKI_DLLESPEC extern void execute_768(char*, char *);
IKI_DLLESPEC extern void execute_769(char*, char *);
IKI_DLLESPEC extern void execute_765(char*, char *);
IKI_DLLESPEC extern void execute_53(char*, char *);
IKI_DLLESPEC extern void execute_54(char*, char *);
IKI_DLLESPEC extern void execute_55(char*, char *);
IKI_DLLESPEC extern void execute_770(char*, char *);
IKI_DLLESPEC extern void execute_771(char*, char *);
IKI_DLLESPEC extern void execute_772(char*, char *);
IKI_DLLESPEC extern void execute_773(char*, char *);
IKI_DLLESPEC extern void execute_66(char*, char *);
IKI_DLLESPEC extern void execute_67(char*, char *);
IKI_DLLESPEC extern void execute_791(char*, char *);
IKI_DLLESPEC extern void execute_792(char*, char *);
IKI_DLLESPEC extern void execute_793(char*, char *);
IKI_DLLESPEC extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_796(char*, char *);
IKI_DLLESPEC extern void execute_797(char*, char *);
IKI_DLLESPEC extern void execute_798(char*, char *);
IKI_DLLESPEC extern void execute_799(char*, char *);
IKI_DLLESPEC extern void execute_148(char*, char *);
IKI_DLLESPEC extern void execute_149(char*, char *);
IKI_DLLESPEC extern void execute_355(char*, char *);
IKI_DLLESPEC extern void execute_356(char*, char *);
IKI_DLLESPEC extern void execute_357(char*, char *);
IKI_DLLESPEC extern void execute_1002(char*, char *);
IKI_DLLESPEC extern void execute_1003(char*, char *);
IKI_DLLESPEC extern void execute_1004(char*, char *);
IKI_DLLESPEC extern void execute_1005(char*, char *);
IKI_DLLESPEC extern void execute_1354(char*, char *);
IKI_DLLESPEC extern void execute_662(char*, char *);
IKI_DLLESPEC extern void execute_1355(char*, char *);
IKI_DLLESPEC extern void execute_684(char*, char *);
IKI_DLLESPEC extern void execute_1366(char*, char *);
IKI_DLLESPEC extern void execute_1367(char*, char *);
IKI_DLLESPEC extern void execute_1368(char*, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_34(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_35(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_37(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_38(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_39(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_40(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_41(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_47(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_54(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_58(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_59(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_63(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_65(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_66(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_67(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_68(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_71(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_72(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_80(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_82(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_84(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_88(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_90(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_91(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_171(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_172(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_173(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_174(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_175(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_176(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_177(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_178(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_179(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_180(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_181(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_182(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_142(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_148(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_154(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_444(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_450(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_456(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_462(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_468(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_474(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_480(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_486(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_492(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_498(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_504(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_510(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_516(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_522(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_528(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_534(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_546(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_552(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_558(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_564(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_570(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_576(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_582(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_588(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_594(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_600(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_606(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_612(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_618(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_624(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_630(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_636(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_664(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_670(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_676(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_682(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_688(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_694(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_700(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_706(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_712(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_718(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_724(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_785(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_917(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_923(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_929(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_935(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_941(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_947(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_953(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_959(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_965(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_971(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_977(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_983(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_989(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_995(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1001(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1007(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1039(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1045(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1051(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1057(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1187(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1193(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1199(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1246(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1252(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1258(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[190] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_10, (funcp)execute_11, (funcp)execute_747, (funcp)execute_748, (funcp)execute_749, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_41, (funcp)execute_753, (funcp)execute_754, (funcp)execute_752, (funcp)execute_44, (funcp)execute_45, (funcp)vlog_simple_process_execute_0_fast_no_reg, (funcp)execute_48, (funcp)execute_757, (funcp)execute_758, (funcp)execute_759, (funcp)execute_760, (funcp)execute_761, (funcp)execute_762, (funcp)execute_763, (funcp)execute_764, (funcp)execute_756, (funcp)execute_51, (funcp)execute_766, (funcp)execute_767, (funcp)execute_768, (funcp)execute_769, (funcp)execute_765, (funcp)execute_53, (funcp)execute_54, (funcp)execute_55, (funcp)execute_770, (funcp)execute_771, (funcp)execute_772, (funcp)execute_773, (funcp)execute_66, (funcp)execute_67, (funcp)execute_791, (funcp)execute_792, (funcp)execute_793, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_796, (funcp)execute_797, (funcp)execute_798, (funcp)execute_799, (funcp)execute_148, (funcp)execute_149, (funcp)execute_355, (funcp)execute_356, (funcp)execute_357, (funcp)execute_1002, (funcp)execute_1003, (funcp)execute_1004, (funcp)execute_1005, (funcp)execute_1354, (funcp)execute_662, (funcp)execute_1355, (funcp)execute_684, (funcp)execute_1366, (funcp)execute_1367, (funcp)execute_1368, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_34, (funcp)transaction_35, (funcp)transaction_36, (funcp)transaction_37, (funcp)transaction_38, (funcp)transaction_39, (funcp)transaction_40, (funcp)transaction_41, (funcp)transaction_42, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_46, (funcp)transaction_47, (funcp)transaction_48, (funcp)transaction_49, (funcp)transaction_50, (funcp)transaction_51, (funcp)transaction_52, (funcp)transaction_53, (funcp)transaction_54, (funcp)transaction_58, (funcp)transaction_59, (funcp)transaction_63, (funcp)transaction_65, (funcp)transaction_66, (funcp)transaction_67, (funcp)transaction_68, (funcp)transaction_71, (funcp)transaction_72, (funcp)transaction_80, (funcp)transaction_82, (funcp)transaction_84, (funcp)transaction_88, (funcp)transaction_90, (funcp)transaction_91, (funcp)transaction_171, (funcp)transaction_172, (funcp)transaction_173, (funcp)transaction_174, (funcp)transaction_175, (funcp)transaction_176, (funcp)transaction_177, (funcp)transaction_178, (funcp)transaction_179, (funcp)transaction_180, (funcp)transaction_181, (funcp)transaction_182, (funcp)transaction_142, (funcp)transaction_148, (funcp)transaction_154, (funcp)transaction_444, (funcp)transaction_450, (funcp)transaction_456, (funcp)transaction_462, (funcp)transaction_468, (funcp)transaction_474, (funcp)transaction_480, (funcp)transaction_486, (funcp)transaction_492, (funcp)transaction_498, (funcp)transaction_504, (funcp)transaction_510, (funcp)transaction_516, (funcp)transaction_522, (funcp)transaction_528, (funcp)transaction_534, (funcp)transaction_546, (funcp)transaction_552, (funcp)transaction_558, (funcp)transaction_564, (funcp)transaction_570, (funcp)transaction_576, (funcp)transaction_582, (funcp)transaction_588, (funcp)transaction_594, (funcp)transaction_600, (funcp)transaction_606, (funcp)transaction_612, (funcp)transaction_618, (funcp)transaction_624, (funcp)transaction_630, (funcp)transaction_636, (funcp)transaction_664, (funcp)transaction_670, (funcp)transaction_676, (funcp)transaction_682, (funcp)transaction_688, (funcp)transaction_694, (funcp)transaction_700, (funcp)transaction_706, (funcp)transaction_712, (funcp)transaction_718, (funcp)transaction_724, (funcp)transaction_785, (funcp)transaction_917, (funcp)transaction_923, (funcp)transaction_929, (funcp)transaction_935, (funcp)transaction_941, (funcp)transaction_947, (funcp)transaction_953, (funcp)transaction_959, (funcp)transaction_965, (funcp)transaction_971, (funcp)transaction_977, (funcp)transaction_983, (funcp)transaction_989, (funcp)transaction_995, (funcp)transaction_1001, (funcp)transaction_1007, (funcp)transaction_1039, (funcp)transaction_1045, (funcp)transaction_1051, (funcp)transaction_1057, (funcp)transaction_1187, (funcp)transaction_1193, (funcp)transaction_1199, (funcp)transaction_1246, (funcp)transaction_1252, (funcp)transaction_1258};
const int NumRelocateId= 190;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/project_tb_func_synth/xsim.reloc",  (void **)funcTab, 190);
	iki_vhdl_file_variable_register(dp + 1324608);
	iki_vhdl_file_variable_register(dp + 1324664);
	iki_vhdl_file_variable_register(dp + 1330792);
	iki_vhdl_file_variable_register(dp + 1855336);
	iki_vhdl_file_variable_register(dp + 1855448);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/project_tb_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 1330360, dp + 2381800, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 1330304, dp + 2382192, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 1330248, dp + 2382080, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 1330416, dp + 2381968, 0, 7, 0, 7, 8, 1);

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/project_tb_func_synth/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/project_tb_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/project_tb_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/project_tb_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
