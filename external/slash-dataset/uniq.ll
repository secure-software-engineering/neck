; ModuleID = 'uniq.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.linebuffer = type { i64, i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Usage: %s [OPTION]... [INPUT [OUTPUT]]\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [173 x i8] c"Filter adjacent matching lines from INPUT (or standard input),\0Awriting to OUTPUT (or standard output).\0A\0AWith no options, matching lines are merged to the first occurrence.\0A\00", align 1
@.str.3 = private unnamed_addr constant [138 x i8] c"  -c, --count           prefix lines by the number of occurrences\0A  -d, --repeated        only print duplicate lines, one for each group\0A\00", align 1
@.str.4 = private unnamed_addr constant [245 x i8] c"  -D                    print all duplicate lines\0A      --all-repeated[=METHOD]  like -D, but allow separating groups\0A                                 with an empty line;\0A                                 METHOD={none(default),prepend,separate}\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"  -f, --skip-fields=N   avoid comparing the first N fields\0A\00", align 1
@.str.6 = private unnamed_addr constant [152 x i8] c"      --group[=METHOD]  show all items, separating groups with an empty line;\0A                          METHOD={separate(default),prepend,append,both}\0A\00", align 1
@.str.7 = private unnamed_addr constant [178 x i8] c"  -i, --ignore-case     ignore differences in case when comparing\0A  -s, --skip-chars=N    avoid comparing the first N characters\0A  -u, --unique          only print unique lines\0A\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"  -z, --zero-terminated     line delimiter is NUL, not newline\0A\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"  -w, --check-chars=N   compare no more than N characters in lines\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.12 = private unnamed_addr constant [120 x i8] c"\0AA field is a run of blanks (usually spaces and/or TABs), then non-blank\0Acharacters.  Fields are skipped before chars.\0A\00", align 1
@.str.13 = private unnamed_addr constant [143 x i8] c"\0ANote: 'uniq' does not detect repeated lines unless they are adjacent.\0AYou may want to sort the input first, or use 'sort -u' without 'uniq'.\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"uniq\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.41 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.44 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.46 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.31 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@skip_chars = internal global i64 0, align 8, !dbg !0
@skip_fields = internal global i64 0, align 8, !dbg !88
@check_chars = internal global i64 0, align 8, !dbg !90
@output_first_repeated = internal global i8 0, align 1, !dbg !97
@output_unique = internal global i8 0, align 1, !dbg !94
@output_later_repeated = internal global i8 0, align 1, !dbg !99
@countmode = internal global i32 0, align 4, !dbg !92
@delimit_groups = internal global i32 0, align 4, !dbg !103
@.str.18 = private unnamed_addr constant [24 x i8] c"-0123456789Dcdf:is:uw:z\00", align 1
@longopts = internal constant [13 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i32 0, i32 0), i32 2, i32* null, i32 68 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i32 2, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !105
@optind = external dso_local global i32, align 4
@.str.19 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@optarg = external dso_local global i8*, align 8
@.str.20 = private unnamed_addr constant [15 x i8] c"--all-repeated\00", align 1
@delimit_method_string = internal constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i8* null], align 16, !dbg !125
@delimit_method_map = internal constant [3 x i32] [i32 0, i32 1, i32 2], align 4, !dbg !119
@grouping = internal global i32 0, align 4, !dbg !131
@.str.21 = private unnamed_addr constant [8 x i8] c"--group\00", align 1
@grouping_method_string = internal constant [5 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i8* null], align 16, !dbg !137
@grouping_method_map = internal constant [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 16, !dbg !133
@.str.22 = private unnamed_addr constant [33 x i8] c"invalid number of fields to skip\00", align 1
@ignore_case = internal global i8 0, align 1, !dbg !101
@.str.23 = private unnamed_addr constant [32 x i8] c"invalid number of bytes to skip\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"invalid number of bytes to compare\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"--group is mutually exclusive with -c/-d/-D/-u\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"grouping and printing repeat counts is meaningless\00", align 1
@.str.30 = private unnamed_addr constant [63 x i8] c"printing all duplicated lines and repeat counts is meaningless\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.66 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.69 = private unnamed_addr constant [17 x i8] c"error reading %s\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"%7lu \00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"prepend\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"separate\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"repeated\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"all-repeated\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"ignore-case\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"unique\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"skip-fields\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"skip-chars\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"check-chars\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0), align 8, !dbg !142
@.str.71 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@argmatch_die = dso_local global void ()* @__argmatch_die, align 8, !dbg !148
@.str.74 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.75 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.76 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.77 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.78 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@file_name = internal global i8* null, align 8, !dbg !160
@ignore_EPIPE = internal global i8 0, align 1, !dbg !166
@.str.83 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.84 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.85 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !168
@.str.92 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.101 = private unnamed_addr constant [16 x i8] c"_POSIX2_VERSION\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !174
@.str.106 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.107 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.108 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external dso_local global i8*, align 8
@program_invocation_name = external dso_local global i8*, align 8
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.110, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.111, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.112, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.113, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.114, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.115, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.116, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.117, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.118, i32 0, i32 0), i8* null], align 16, !dbg !180
@.str.109 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.110 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.111 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.112 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.113 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.114 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.115 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.116 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.117 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.118 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !192
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !198
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !210
@.str.10.119 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.120 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.121 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.122 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.14.123 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.124 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.16.125 = private unnamed_addr constant [8 x i8] c"GB18030\00", align 1
@.str.17.126 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.127 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !217
@nslots = internal global i32 1, align 4, !dbg !224
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !212
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !226
@.str.140 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.141 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.142 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.143 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.144 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.145 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.146 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.147 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.148 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.149 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.150 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.151 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.152 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.153 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.154 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.155 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.158 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.159 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.160 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.161 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.162 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.163 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.164 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !231
@.str.177 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.178 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.181 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.182 = private unnamed_addr constant [17 x i8] c"../lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.197 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.198 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.201 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.202 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 %0) #0 !dbg !691 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !694, metadata !DIExpression()), !dbg !695
  %3 = load i32, i32* %2, align 4, !dbg !696
  %4 = icmp ne i32 %3, 0, !dbg !698
  br i1 %4, label %5, label %11, !dbg !699

5:                                                ; preds = %1
  br label %6, !dbg !700

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !701
  %8 = load i8*, i8** @program_name, align 8, !dbg !701
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %8), !dbg !701
  br label %10, !dbg !701

10:                                               ; preds = %6
  br label %38, !dbg !701

11:                                               ; preds = %1
  %12 = load i8*, i8** @program_name, align 8, !dbg !703
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %12), !dbg !705
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !706
  %15 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* %14), !dbg !706
  call void @emit_mandatory_arg_note(), !dbg !707
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !708
  %17 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* %16), !dbg !708
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !709
  %19 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([245 x i8], [245 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* %18), !dbg !709
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !710
  %21 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), %struct._IO_FILE* %20), !dbg !710
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !711
  %23 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.6, i64 0, i64 0), %struct._IO_FILE* %22), !dbg !711
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !712
  %25 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([178 x i8], [178 x i8]* @.str.7, i64 0, i64 0), %struct._IO_FILE* %24), !dbg !712
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !713
  %27 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0), %struct._IO_FILE* %26), !dbg !713
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !714
  %29 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i64 0, i64 0), %struct._IO_FILE* %28), !dbg !714
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !715
  %31 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), %struct._IO_FILE* %30), !dbg !715
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !716
  %33 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), %struct._IO_FILE* %32), !dbg !716
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !717
  %35 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.12, i64 0, i64 0), %struct._IO_FILE* %34), !dbg !717
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !718
  %37 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.13, i64 0, i64 0), %struct._IO_FILE* %36), !dbg !718
  call void @emit_ancillary_info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)), !dbg !719
  br label %38

38:                                               ; preds = %11, %10
  %39 = load i32, i32* %2, align 4, !dbg !720
  call void @exit(i32 %39) #13, !dbg !721
  unreachable, !dbg !721
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @fputs_unlocked(i8*, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_mandatory_arg_note() #3 !dbg !722 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !724
  %2 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.31, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !724
  ret void, !dbg !725
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* %0) #3 !dbg !726 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 16
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !729, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !731, metadata !DIExpression()), !dbg !740
  %7 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !740
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !740
  call void @llvm.dbg.declare(metadata i8** %4, metadata !741, metadata !DIExpression()), !dbg !742
  %8 = load i8*, i8** %2, align 8, !dbg !743
  store i8* %8, i8** %4, align 8, !dbg !742
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !744, metadata !DIExpression()), !dbg !746
  %9 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !747
  store %struct.infomap* %9, %struct.infomap** %5, align 8, !dbg !746
  br label %10, !dbg !748

10:                                               ; preds = %25, %1
  %11 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !749
  %12 = getelementptr inbounds %struct.infomap, %struct.infomap* %11, i32 0, i32 0, !dbg !750
  %13 = load i8*, i8** %12, align 8, !dbg !750
  %14 = icmp ne i8* %13, null, !dbg !749
  br i1 %14, label %15, label %23, !dbg !751

15:                                               ; preds = %10
  %16 = load i8*, i8** %2, align 8, !dbg !752
  %17 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !752
  %18 = getelementptr inbounds %struct.infomap, %struct.infomap* %17, i32 0, i32 0, !dbg !752
  %19 = load i8*, i8** %18, align 8, !dbg !752
  %20 = call i32 @strcmp(i8* %16, i8* %19) #14, !dbg !752
  %21 = icmp eq i32 %20, 0, !dbg !752
  %22 = xor i1 %21, true, !dbg !753
  br label %23

23:                                               ; preds = %15, %10
  %24 = phi i1 [ false, %10 ], [ %22, %15 ], !dbg !754
  br i1 %24, label %25, label %28, !dbg !748

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !755
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !755
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !755
  br label %10, !dbg !748, !llvm.loop !756

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !758
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !760
  %31 = load i8*, i8** %30, align 8, !dbg !760
  %32 = icmp ne i8* %31, null, !dbg !758
  br i1 %32, label %33, label %37, !dbg !761

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !762
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !763
  %36 = load i8*, i8** %35, align 8, !dbg !763
  store i8* %36, i8** %4, align 8, !dbg !764
  br label %37, !dbg !765

37:                                               ; preds = %33, %28
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i64 0, i64 0)), !dbg !766
  call void @llvm.dbg.declare(metadata i8** %6, metadata !767, metadata !DIExpression()), !dbg !768
  %39 = call i8* @setlocale(i32 5, i8* null) #15, !dbg !769
  store i8* %39, i8** %6, align 8, !dbg !768
  %40 = load i8*, i8** %6, align 8, !dbg !770
  %41 = icmp ne i8* %40, null, !dbg !770
  br i1 %41, label %42, label %49, !dbg !772

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8, !dbg !773
  %44 = call i32 @strncmp(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0), i64 3) #14, !dbg !773
  %45 = icmp ne i32 %44, 0, !dbg !773
  br i1 %45, label %46, label %49, !dbg !774

46:                                               ; preds = %42
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !775
  %48 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.44, i64 0, i64 0), %struct._IO_FILE* %47), !dbg !775
  br label %49, !dbg !777

49:                                               ; preds = %46, %42, %37
  %50 = load i8*, i8** %2, align 8, !dbg !778
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i64 0, i64 0), i8* %50), !dbg !779
  %52 = load i8*, i8** %4, align 8, !dbg !780
  %53 = load i8*, i8** %4, align 8, !dbg !781
  %54 = load i8*, i8** %2, align 8, !dbg !782
  %55 = icmp eq i8* %53, %54, !dbg !783
  %56 = zext i1 %55 to i64, !dbg !781
  %57 = select i1 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0), !dbg !781
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.46, i64 0, i64 0), i8* %52, i8* %57), !dbg !784
  ret void, !dbg !785
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #6

; Function Attrs: nounwind
declare dso_local i8* @setlocale(i32, i8*) #7

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8*, i8*, i64) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @klee_dump_memory() #3 !dbg !786 {
  ret void, !dbg !787
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #3 !dbg !788 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i8*], align 16
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !792, metadata !DIExpression()), !dbg !793
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !794, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.declare(metadata i32* %6, metadata !796, metadata !DIExpression()), !dbg !797
  store i32 0, i32* %6, align 4, !dbg !797
  call void @llvm.dbg.declare(metadata i8* %7, metadata !798, metadata !DIExpression()), !dbg !799
  %14 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)) #15, !dbg !800
  %15 = icmp ne i8* %14, null, !dbg !801
  %16 = zext i1 %15 to i8, !dbg !799
  store i8 %16, i8* %7, align 1, !dbg !799
  call void @llvm.dbg.declare(metadata i32* %8, metadata !802, metadata !DIExpression()), !dbg !803
  store i32 0, i32* %8, align 4, !dbg !803
  call void @llvm.dbg.declare(metadata i32* %9, metadata !804, metadata !DIExpression()), !dbg !805
  store i32 0, i32* %9, align 4, !dbg !805
  call void @llvm.dbg.declare(metadata [2 x i8*]* %10, metadata !806, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.declare(metadata i8* %11, metadata !811, metadata !DIExpression()), !dbg !812
  store i8 10, i8* %11, align 1, !dbg !812
  call void @llvm.dbg.declare(metadata i8* %12, metadata !813, metadata !DIExpression()), !dbg !814
  store i8 0, i8* %12, align 1, !dbg !814
  %17 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 1, !dbg !815
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8** %17, align 8, !dbg !816
  %18 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0, !dbg !817
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8** %18, align 16, !dbg !818
  %19 = load i8**, i8*** %5, align 8, !dbg !819
  %20 = getelementptr inbounds i8*, i8** %19, i64 0, !dbg !819
  %21 = load i8*, i8** %20, align 8, !dbg !819
  call void @set_program_name(i8* %21), !dbg !820
  %22 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #15, !dbg !821
  %23 = call i32 @atexit(void ()* @close_stdout) #15, !dbg !822
  store i64 0, i64* @skip_chars, align 8, !dbg !823
  store i64 0, i64* @skip_fields, align 8, !dbg !824
  store i64 -1, i64* @check_chars, align 8, !dbg !825
  store i8 1, i8* @output_first_repeated, align 1, !dbg !826
  store i8 1, i8* @output_unique, align 1, !dbg !827
  store i8 0, i8* @output_later_repeated, align 1, !dbg !828
  store i32 1, i32* @countmode, align 4, !dbg !829
  store i32 0, i32* @delimit_groups, align 4, !dbg !830
  br label %24, !dbg !831

24:                                               ; preds = %2, %168
  %25 = load i32, i32* %6, align 4, !dbg !832
  %26 = icmp eq i32 %25, -1, !dbg !835
  br i1 %26, label %38, label %27, !dbg !836

27:                                               ; preds = %24
  %28 = load i8, i8* %7, align 1, !dbg !837
  %29 = trunc i8 %28 to i1, !dbg !837
  br i1 %29, label %30, label %33, !dbg !838

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4, !dbg !839
  %32 = icmp ne i32 %31, 0, !dbg !840
  br i1 %32, label %38, label %33, !dbg !841

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %4, align 4, !dbg !842
  %35 = load i8**, i8*** %5, align 8, !dbg !843
  %36 = call i32 @getopt_long(i32 %34, i8** %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), %struct.option* getelementptr inbounds ([13 x %struct.option], [13 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #15, !dbg !844
  store i32 %36, i32* %6, align 4, !dbg !845
  %37 = icmp eq i32 %36, -1, !dbg !846
  br i1 %37, label %38, label %64, !dbg !847

38:                                               ; preds = %33, %30, %24
  %39 = load i32, i32* %4, align 4, !dbg !848
  %40 = load i32, i32* @optind, align 4, !dbg !851
  %41 = icmp sle i32 %39, %40, !dbg !852
  br i1 %41, label %42, label %43, !dbg !853

42:                                               ; preds = %38
  br label %169, !dbg !854

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4, !dbg !855
  %45 = icmp eq i32 %44, 2, !dbg !857
  br i1 %45, label %46, label %53, !dbg !858

46:                                               ; preds = %43
  %47 = load i8**, i8*** %5, align 8, !dbg !859
  %48 = load i32, i32* @optind, align 4, !dbg !861
  %49 = sext i32 %48 to i64, !dbg !859
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49, !dbg !859
  %51 = load i8*, i8** %50, align 8, !dbg !859
  %52 = call i8* @quote(i8* %51), !dbg !862
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* %52), !dbg !863
  call void @usage(i32 1) #16, !dbg !864
  unreachable, !dbg !864

53:                                               ; preds = %43
  %54 = load i8**, i8*** %5, align 8, !dbg !865
  %55 = load i32, i32* @optind, align 4, !dbg !866
  %56 = add nsw i32 %55, 1, !dbg !866
  store i32 %56, i32* @optind, align 4, !dbg !866
  %57 = sext i32 %55 to i64, !dbg !865
  %58 = getelementptr inbounds i8*, i8** %54, i64 %57, !dbg !865
  %59 = load i8*, i8** %58, align 8, !dbg !865
  %60 = load i32, i32* %9, align 4, !dbg !867
  %61 = add i32 %60, 1, !dbg !867
  store i32 %61, i32* %9, align 4, !dbg !867
  %62 = zext i32 %60 to i64, !dbg !868
  %63 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 %62, !dbg !868
  store i8* %59, i8** %63, align 8, !dbg !869
  br label %168, !dbg !870

64:                                               ; preds = %33
  %65 = load i32, i32* %6, align 4, !dbg !871
  switch i32 %65, label %166 [
    i32 1, label %66
    i32 48, label %97
    i32 49, label %97
    i32 50, label %97
    i32 51, label %97
    i32 52, label %97
    i32 53, label %97
    i32 54, label %97
    i32 55, label %97
    i32 56, label %97
    i32 57, label %97
    i32 99, label %126
    i32 100, label %127
    i32 68, label %128
    i32 128, label %139
    i32 102, label %150
    i32 105, label %153
    i32 115, label %154
    i32 117, label %157
    i32 119, label %158
    i32 122, label %161
    i32 -130, label %162
    i32 -131, label %163
  ], !dbg !872

66:                                               ; preds = %64
  call void @llvm.dbg.declare(metadata i64* %13, metadata !873, metadata !DIExpression()), !dbg !880
  %67 = load i8*, i8** @optarg, align 8, !dbg !881
  %68 = getelementptr inbounds i8, i8* %67, i64 0, !dbg !881
  %69 = load i8, i8* %68, align 1, !dbg !881
  %70 = sext i8 %69 to i32, !dbg !881
  %71 = icmp eq i32 %70, 43, !dbg !883
  br i1 %71, label %72, label %83, !dbg !884

72:                                               ; preds = %66
  %73 = call zeroext i1 @strict_posix2(), !dbg !885
  br i1 %73, label %83, label %74, !dbg !886

74:                                               ; preds = %72
  %75 = load i8*, i8** @optarg, align 8, !dbg !887
  %76 = call i32 @xstrtoumax(i8* %75, i8** null, i32 10, i64* %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)), !dbg !888
  %77 = icmp eq i32 %76, 0, !dbg !889
  br i1 %77, label %78, label %83, !dbg !890

78:                                               ; preds = %74
  %79 = load i64, i64* %13, align 8, !dbg !891
  %80 = icmp ule i64 %79, -1, !dbg !892
  br i1 %80, label %81, label %83, !dbg !893

81:                                               ; preds = %78
  %82 = load i64, i64* %13, align 8, !dbg !894
  store i64 %82, i64* @skip_chars, align 8, !dbg !895
  br label %96, !dbg !896

83:                                               ; preds = %78, %74, %72, %66
  %84 = load i32, i32* %9, align 4, !dbg !897
  %85 = icmp eq i32 %84, 2, !dbg !899
  br i1 %85, label %86, label %89, !dbg !900

86:                                               ; preds = %83
  %87 = load i8*, i8** @optarg, align 8, !dbg !901
  %88 = call i8* @quote(i8* %87), !dbg !903
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* %88), !dbg !904
  call void @usage(i32 1) #16, !dbg !905
  unreachable, !dbg !905

89:                                               ; preds = %83
  %90 = load i8*, i8** @optarg, align 8, !dbg !906
  %91 = load i32, i32* %9, align 4, !dbg !907
  %92 = add i32 %91, 1, !dbg !907
  store i32 %92, i32* %9, align 4, !dbg !907
  %93 = zext i32 %91 to i64, !dbg !908
  %94 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 %93, !dbg !908
  store i8* %90, i8** %94, align 8, !dbg !909
  br label %95

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95, %81
  br label %167, !dbg !910

97:                                               ; preds = %64, %64, %64, %64, %64, %64, %64, %64, %64, %64
  %98 = load i32, i32* %8, align 4, !dbg !911
  %99 = icmp eq i32 %98, 2, !dbg !914
  br i1 %99, label %100, label %101, !dbg !915

100:                                              ; preds = %97
  store i64 0, i64* @skip_fields, align 8, !dbg !916
  br label %101, !dbg !917

101:                                              ; preds = %100, %97
  %102 = load i64, i64* @skip_fields, align 8, !dbg !918
  %103 = icmp ult i64 1844674407370955161, %102, !dbg !918
  br i1 %103, label %113, label %104, !dbg !918

104:                                              ; preds = %101
  %105 = load i64, i64* @skip_fields, align 8, !dbg !918
  %106 = mul i64 %105, 10, !dbg !918
  %107 = load i32, i32* %6, align 4, !dbg !918
  %108 = sub nsw i32 %107, 48, !dbg !918
  %109 = sext i32 %108 to i64, !dbg !918
  %110 = add i64 %106, %109, !dbg !918
  %111 = load i64, i64* @skip_fields, align 8, !dbg !918
  %112 = icmp ult i64 %110, %111, !dbg !918
  br i1 %112, label %113, label %114, !dbg !918

113:                                              ; preds = %104, %101
  br label %121, !dbg !918

114:                                              ; preds = %104
  %115 = load i64, i64* @skip_fields, align 8, !dbg !918
  %116 = mul i64 %115, 10, !dbg !918
  %117 = load i32, i32* %6, align 4, !dbg !918
  %118 = sub nsw i32 %117, 48, !dbg !918
  %119 = sext i32 %118 to i64, !dbg !918
  %120 = add i64 %116, %119, !dbg !918
  store i64 %120, i64* @skip_fields, align 8, !dbg !918
  br label %121, !dbg !918

121:                                              ; preds = %114, %113
  %122 = phi i32 [ 0, %113 ], [ 1, %114 ], !dbg !918
  %123 = icmp ne i32 %122, 0, !dbg !918
  br i1 %123, label %125, label %124, !dbg !920

124:                                              ; preds = %121
  store i64 -1, i64* @skip_fields, align 8, !dbg !921
  br label %125, !dbg !922

125:                                              ; preds = %124, %121
  store i32 1, i32* %8, align 4, !dbg !923
  br label %167, !dbg !924

126:                                              ; preds = %64
  store i32 0, i32* @countmode, align 4, !dbg !925
  store i8 1, i8* %12, align 1, !dbg !926
  br label %167, !dbg !927

127:                                              ; preds = %64
  store i8 0, i8* @output_unique, align 1, !dbg !928
  store i8 1, i8* %12, align 1, !dbg !929
  br label %167, !dbg !930

128:                                              ; preds = %64
  store i8 0, i8* @output_unique, align 1, !dbg !931
  store i8 1, i8* @output_later_repeated, align 1, !dbg !932
  %129 = load i8*, i8** @optarg, align 8, !dbg !933
  %130 = icmp eq i8* %129, null, !dbg !935
  br i1 %130, label %131, label %132, !dbg !936

131:                                              ; preds = %128
  store i32 0, i32* @delimit_groups, align 4, !dbg !937
  br label %138, !dbg !938

132:                                              ; preds = %128
  %133 = load i8*, i8** @optarg, align 8, !dbg !939
  %134 = load void ()*, void ()** @argmatch_die, align 8, !dbg !939
  %135 = call i64 @__xargmatch_internal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* %133, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @delimit_method_string, i64 0, i64 0), i8* bitcast ([3 x i32]* @delimit_method_map to i8*), i64 4, void ()* %134), !dbg !939
  %136 = getelementptr inbounds [3 x i32], [3 x i32]* @delimit_method_map, i64 0, i64 %135, !dbg !939
  %137 = load i32, i32* %136, align 4, !dbg !939
  store i32 %137, i32* @delimit_groups, align 4, !dbg !940
  br label %138

138:                                              ; preds = %132, %131
  store i8 1, i8* %12, align 1, !dbg !941
  br label %167, !dbg !942

139:                                              ; preds = %64
  %140 = load i8*, i8** @optarg, align 8, !dbg !943
  %141 = icmp eq i8* %140, null, !dbg !945
  br i1 %141, label %142, label %143, !dbg !946

142:                                              ; preds = %139
  store i32 3, i32* @grouping, align 4, !dbg !947
  br label %149, !dbg !948

143:                                              ; preds = %139
  %144 = load i8*, i8** @optarg, align 8, !dbg !949
  %145 = load void ()*, void ()** @argmatch_die, align 8, !dbg !949
  %146 = call i64 @__xargmatch_internal(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8* %144, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @grouping_method_string, i64 0, i64 0), i8* bitcast ([4 x i32]* @grouping_method_map to i8*), i64 4, void ()* %145), !dbg !949
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* @grouping_method_map, i64 0, i64 %146, !dbg !949
  %148 = load i32, i32* %147, align 4, !dbg !949
  store i32 %148, i32* @grouping, align 4, !dbg !950
  br label %149

149:                                              ; preds = %143, %142
  br label %167, !dbg !951

150:                                              ; preds = %64
  store i32 2, i32* %8, align 4, !dbg !952
  %151 = load i8*, i8** @optarg, align 8, !dbg !953
  %152 = call i64 @size_opt(i8* %151, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0)), !dbg !954
  store i64 %152, i64* @skip_fields, align 8, !dbg !955
  br label %167, !dbg !956

153:                                              ; preds = %64
  store i8 1, i8* @ignore_case, align 1, !dbg !957
  br label %167, !dbg !958

154:                                              ; preds = %64
  %155 = load i8*, i8** @optarg, align 8, !dbg !959
  %156 = call i64 @size_opt(i8* %155, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0)), !dbg !960
  store i64 %156, i64* @skip_chars, align 8, !dbg !961
  br label %167, !dbg !962

157:                                              ; preds = %64
  store i8 0, i8* @output_first_repeated, align 1, !dbg !963
  store i8 1, i8* %12, align 1, !dbg !964
  br label %167, !dbg !965

158:                                              ; preds = %64
  %159 = load i8*, i8** @optarg, align 8, !dbg !966
  %160 = call i64 @size_opt(i8* %159, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i64 0, i64 0)), !dbg !967
  store i64 %160, i64* @check_chars, align 8, !dbg !968
  br label %167, !dbg !969

161:                                              ; preds = %64
  store i8 0, i8* %11, align 1, !dbg !970
  br label %167, !dbg !971

162:                                              ; preds = %64
  call void @usage(i32 0) #16, !dbg !972
  unreachable, !dbg !972

163:                                              ; preds = %64
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !973
  %165 = load i8*, i8** @Version, align 8, !dbg !973
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %164, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i8* %165, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0), i8* null), !dbg !973
  call void @exit(i32 0) #13, !dbg !973
  unreachable, !dbg !973

166:                                              ; preds = %64
  call void @usage(i32 1) #16, !dbg !974
  unreachable, !dbg !974

167:                                              ; preds = %161, %158, %157, %154, %153, %150, %149, %138, %127, %126, %125, %96
  br label %168

168:                                              ; preds = %167, %53
  br label %24, !dbg !831, !llvm.loop !975

169:                                              ; preds = %42
  call void @klee_dump_memory(), !dbg !977
  %170 = load i32, i32* @grouping, align 4, !dbg !978
  %171 = icmp ne i32 %170, 0, !dbg !980
  br i1 %171, label %172, label %176, !dbg !981

172:                                              ; preds = %169
  %173 = load i8, i8* %12, align 1, !dbg !982
  %174 = trunc i8 %173 to i1, !dbg !982
  br i1 %174, label %175, label %176, !dbg !983

175:                                              ; preds = %172
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i64 0, i64 0)), !dbg !984
  call void @usage(i32 1) #16, !dbg !986
  unreachable, !dbg !986

176:                                              ; preds = %172, %169
  %177 = load i32, i32* @grouping, align 4, !dbg !987
  %178 = icmp ne i32 %177, 0, !dbg !989
  br i1 %178, label %179, label %183, !dbg !990

179:                                              ; preds = %176
  %180 = load i32, i32* @countmode, align 4, !dbg !991
  %181 = icmp ne i32 %180, 1, !dbg !992
  br i1 %181, label %182, label %183, !dbg !993

182:                                              ; preds = %179
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i64 0, i64 0)), !dbg !994
  call void @usage(i32 1) #16, !dbg !996
  unreachable, !dbg !996

183:                                              ; preds = %179, %176
  %184 = load i32, i32* @countmode, align 4, !dbg !997
  %185 = icmp eq i32 %184, 0, !dbg !999
  br i1 %185, label %186, label %190, !dbg !1000

186:                                              ; preds = %183
  %187 = load i8, i8* @output_later_repeated, align 1, !dbg !1001
  %188 = trunc i8 %187 to i1, !dbg !1001
  br i1 %188, label %189, label %190, !dbg !1002

189:                                              ; preds = %186
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.30, i64 0, i64 0)), !dbg !1003
  call void @usage(i32 1) #16, !dbg !1005
  unreachable, !dbg !1005

190:                                              ; preds = %186, %183
  %191 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0, !dbg !1006
  %192 = load i8*, i8** %191, align 16, !dbg !1006
  %193 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 1, !dbg !1007
  %194 = load i8*, i8** %193, align 8, !dbg !1007
  %195 = load i8, i8* %11, align 1, !dbg !1008
  call void @check_file(i8* %192, i8* %194, i8 signext %195), !dbg !1009
  ret i32 0, !dbg !1010
}

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #7

; Function Attrs: nounwind
declare dso_local i32 @atexit(void ()*) #7

; Function Attrs: nounwind
declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #7

declare dso_local void @error(i32, i32, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @strict_posix2() #3 !dbg !1011 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1014, metadata !DIExpression()), !dbg !1015
  %2 = call i32 @posix2_version(), !dbg !1016
  store i32 %2, i32* %1, align 4, !dbg !1015
  %3 = load i32, i32* %1, align 4, !dbg !1017
  %4 = icmp sle i32 200112, %3, !dbg !1018
  br i1 %4, label %5, label %8, !dbg !1019

5:                                                ; preds = %0
  %6 = load i32, i32* %1, align 4, !dbg !1020
  %7 = icmp slt i32 %6, 200809, !dbg !1021
  br label %8

8:                                                ; preds = %5, %0
  %9 = phi i1 [ false, %0 ], [ %7, %5 ], !dbg !1022
  ret i1 %9, !dbg !1023
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @size_opt(i8* %0, i8* %1) #3 !dbg !1024 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1027, metadata !DIExpression()), !dbg !1028
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1029, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1031, metadata !DIExpression()), !dbg !1032
  %6 = load i8*, i8** %3, align 8, !dbg !1033
  %7 = call i32 @xstrtoumax(i8* %6, i8** null, i32 10, i64* %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)), !dbg !1034
  switch i32 %7, label %9 [
    i32 0, label %8
    i32 1, label %8
  ], !dbg !1035

8:                                                ; preds = %2, %2
  br label %12, !dbg !1036

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8, !dbg !1038
  %11 = load i8*, i8** %4, align 8, !dbg !1038
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i8* %10, i8* %11), !dbg !1038
  unreachable, !dbg !1038

12:                                               ; preds = %8
  %13 = load i64, i64* %5, align 8, !dbg !1039
  %14 = icmp ult i64 %13, -1, !dbg !1039
  br i1 %14, label %15, label %17, !dbg !1039

15:                                               ; preds = %12
  %16 = load i64, i64* %5, align 8, !dbg !1039
  br label %18, !dbg !1039

17:                                               ; preds = %12
  br label %18, !dbg !1039

18:                                               ; preds = %17, %15
  %19 = phi i64 [ %16, %15 ], [ -1, %17 ], !dbg !1039
  ret i64 %19, !dbg !1040
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_file(i8* %0, i8* %1, i8 signext %2) #3 !dbg !1041 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.linebuffer, align 8
  %8 = alloca %struct.linebuffer, align 8
  %9 = alloca %struct.linebuffer*, align 8
  %10 = alloca %struct.linebuffer*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  %17 = alloca %struct.linebuffer*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.linebuffer*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1044, metadata !DIExpression()), !dbg !1045
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1046, metadata !DIExpression()), !dbg !1047
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1048, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.declare(metadata %struct.linebuffer* %7, metadata !1050, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.declare(metadata %struct.linebuffer* %8, metadata !1058, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %9, metadata !1060, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %10, metadata !1063, metadata !DIExpression()), !dbg !1064
  %26 = load i8*, i8** %4, align 8, !dbg !1065
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #14, !dbg !1065
  %28 = icmp eq i32 %27, 0, !dbg !1065
  br i1 %28, label %39, label %29, !dbg !1067

29:                                               ; preds = %3
  %30 = load i8*, i8** %4, align 8, !dbg !1068
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1069
  %32 = call %struct._IO_FILE* @freopen_safer(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i64 0, i64 0), %struct._IO_FILE* %31), !dbg !1070
  %33 = icmp ne %struct._IO_FILE* %32, null, !dbg !1070
  br i1 %33, label %39, label %34, !dbg !1071

34:                                               ; preds = %29
  %35 = call i32* @__errno_location() #17, !dbg !1072
  %36 = load i32, i32* %35, align 4, !dbg !1072
  %37 = load i8*, i8** %4, align 8, !dbg !1072
  %38 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %37), !dbg !1072
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i64 0, i64 0), i8* %38), !dbg !1072
  unreachable, !dbg !1072

39:                                               ; preds = %29, %3
  %40 = load i8*, i8** %5, align 8, !dbg !1073
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #14, !dbg !1073
  %42 = icmp eq i32 %41, 0, !dbg !1073
  br i1 %42, label %53, label %43, !dbg !1075

43:                                               ; preds = %39
  %44 = load i8*, i8** %5, align 8, !dbg !1076
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1077
  %46 = call %struct._IO_FILE* @freopen_safer(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), %struct._IO_FILE* %45), !dbg !1078
  %47 = icmp ne %struct._IO_FILE* %46, null, !dbg !1078
  br i1 %47, label %53, label %48, !dbg !1079

48:                                               ; preds = %43
  %49 = call i32* @__errno_location() #17, !dbg !1080
  %50 = load i32, i32* %49, align 4, !dbg !1080
  %51 = load i8*, i8** %5, align 8, !dbg !1080
  %52 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %51), !dbg !1080
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i64 0, i64 0), i8* %52), !dbg !1080
  unreachable, !dbg !1080

53:                                               ; preds = %43, %39
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1081
  call void @fadvise(%struct._IO_FILE* %54, i32 2), !dbg !1082
  store %struct.linebuffer* %7, %struct.linebuffer** %9, align 8, !dbg !1083
  store %struct.linebuffer* %8, %struct.linebuffer** %10, align 8, !dbg !1084
  %55 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1085
  call void @initbuffer(%struct.linebuffer* %55), !dbg !1086
  %56 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1087
  call void @initbuffer(%struct.linebuffer* %56), !dbg !1088
  %57 = load i8, i8* @output_unique, align 1, !dbg !1089
  %58 = trunc i8 %57 to i1, !dbg !1089
  br i1 %58, label %59, label %167, !dbg !1091

59:                                               ; preds = %53
  %60 = load i8, i8* @output_first_repeated, align 1, !dbg !1092
  %61 = trunc i8 %60 to i1, !dbg !1092
  br i1 %61, label %62, label %167, !dbg !1093

62:                                               ; preds = %59
  %63 = load i32, i32* @countmode, align 4, !dbg !1094
  %64 = icmp eq i32 %63, 1, !dbg !1095
  br i1 %64, label %65, label %167, !dbg !1096

65:                                               ; preds = %62
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1097, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1100, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.declare(metadata i8* %13, metadata !1102, metadata !DIExpression()), !dbg !1103
  store i8 0, i8* %13, align 1, !dbg !1103
  br label %66, !dbg !1104

66:                                               ; preds = %152, %65
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1105
  %68 = call i32 @feof_unlocked(%struct._IO_FILE* %67) #15, !dbg !1105
  %69 = icmp ne i32 %68, 0, !dbg !1106
  %70 = xor i1 %69, true, !dbg !1106
  br i1 %70, label %71, label %153, !dbg !1104

71:                                               ; preds = %66
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1107, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.declare(metadata i64* %15, metadata !1110, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.declare(metadata i8* %16, metadata !1112, metadata !DIExpression()), !dbg !1113
  %72 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1114
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1116
  %74 = load i8, i8* %6, align 1, !dbg !1117
  %75 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %72, %struct._IO_FILE* %73, i8 signext %74), !dbg !1118
  %76 = icmp eq %struct.linebuffer* %75, null, !dbg !1119
  br i1 %76, label %77, label %78, !dbg !1120

77:                                               ; preds = %71
  br label %153, !dbg !1121

78:                                               ; preds = %71
  %79 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1122
  %80 = call i8* @find_field(%struct.linebuffer* %79) #14, !dbg !1123
  store i8* %80, i8** %14, align 8, !dbg !1124
  %81 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1125
  %82 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %81, i32 0, i32 1, !dbg !1126
  %83 = load i64, i64* %82, align 8, !dbg !1126
  %84 = sub i64 %83, 1, !dbg !1127
  %85 = load i8*, i8** %14, align 8, !dbg !1128
  %86 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1129
  %87 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %86, i32 0, i32 2, !dbg !1130
  %88 = load i8*, i8** %87, align 8, !dbg !1130
  %89 = ptrtoint i8* %85 to i64, !dbg !1131
  %90 = ptrtoint i8* %88 to i64, !dbg !1131
  %91 = sub i64 %89, %90, !dbg !1131
  %92 = sub i64 %84, %91, !dbg !1132
  store i64 %92, i64* %15, align 8, !dbg !1133
  %93 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1134
  %94 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %93, i32 0, i32 1, !dbg !1135
  %95 = load i64, i64* %94, align 8, !dbg !1135
  %96 = icmp eq i64 %95, 0, !dbg !1136
  br i1 %96, label %103, label %97, !dbg !1137

97:                                               ; preds = %78
  %98 = load i8*, i8** %14, align 8, !dbg !1138
  %99 = load i8*, i8** %11, align 8, !dbg !1139
  %100 = load i64, i64* %15, align 8, !dbg !1140
  %101 = load i64, i64* %12, align 8, !dbg !1141
  %102 = call zeroext i1 @different(i8* %98, i8* %99, i64 %100, i64 %101), !dbg !1142
  br label %103, !dbg !1137

103:                                              ; preds = %97, %78
  %104 = phi i1 [ true, %78 ], [ %102, %97 ]
  %105 = zext i1 %104 to i8, !dbg !1143
  store i8 %105, i8* %16, align 1, !dbg !1143
  %106 = load i8, i8* %16, align 1, !dbg !1144
  %107 = trunc i8 %106 to i1, !dbg !1144
  br i1 %107, label %108, label %130, !dbg !1146

108:                                              ; preds = %103
  %109 = load i32, i32* @grouping, align 4, !dbg !1147
  %110 = icmp ne i32 %109, 0, !dbg !1148
  br i1 %110, label %111, label %130, !dbg !1149

111:                                              ; preds = %108
  %112 = load i32, i32* @grouping, align 4, !dbg !1150
  %113 = icmp eq i32 %112, 1, !dbg !1151
  br i1 %113, label %126, label %114, !dbg !1152

114:                                              ; preds = %111
  %115 = load i32, i32* @grouping, align 4, !dbg !1153
  %116 = icmp eq i32 %115, 4, !dbg !1154
  br i1 %116, label %126, label %117, !dbg !1155

117:                                              ; preds = %114
  %118 = load i8, i8* %13, align 1, !dbg !1156
  %119 = trunc i8 %118 to i1, !dbg !1156
  br i1 %119, label %120, label %130, !dbg !1157

120:                                              ; preds = %117
  %121 = load i32, i32* @grouping, align 4, !dbg !1158
  %122 = icmp eq i32 %121, 2, !dbg !1159
  br i1 %122, label %126, label %123, !dbg !1160

123:                                              ; preds = %120
  %124 = load i32, i32* @grouping, align 4, !dbg !1161
  %125 = icmp eq i32 %124, 3, !dbg !1162
  br i1 %125, label %126, label %130, !dbg !1163

126:                                              ; preds = %123, %120, %114, %111
  %127 = load i8, i8* %6, align 1, !dbg !1164
  %128 = sext i8 %127 to i32, !dbg !1164
  %129 = call i32 @putchar_unlocked(i32 %128), !dbg !1164
  br label %130, !dbg !1164

130:                                              ; preds = %126, %123, %117, %108, %103
  %131 = load i8, i8* %16, align 1, !dbg !1165
  %132 = trunc i8 %131 to i1, !dbg !1165
  br i1 %132, label %136, label %133, !dbg !1167

133:                                              ; preds = %130
  %134 = load i32, i32* @grouping, align 4, !dbg !1168
  %135 = icmp ne i32 %134, 0, !dbg !1169
  br i1 %135, label %136, label %152, !dbg !1170

136:                                              ; preds = %133, %130
  %137 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1171
  %138 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %137, i32 0, i32 2, !dbg !1171
  %139 = load i8*, i8** %138, align 8, !dbg !1171
  %140 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1171
  %141 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %140, i32 0, i32 1, !dbg !1171
  %142 = load i64, i64* %141, align 8, !dbg !1171
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1171
  %144 = call i64 @fwrite_unlocked(i8* %139, i64 1, i64 %142, %struct._IO_FILE* %143), !dbg !1171
  br label %145, !dbg !1173

145:                                              ; preds = %136
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %17, metadata !1174, metadata !DIExpression()), !dbg !1176
  %146 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1176
  store %struct.linebuffer* %146, %struct.linebuffer** %17, align 8, !dbg !1176
  %147 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1176
  store %struct.linebuffer* %147, %struct.linebuffer** %10, align 8, !dbg !1176
  %148 = load %struct.linebuffer*, %struct.linebuffer** %17, align 8, !dbg !1176
  store %struct.linebuffer* %148, %struct.linebuffer** %9, align 8, !dbg !1176
  br label %149, !dbg !1176

149:                                              ; preds = %145
  %150 = load i8*, i8** %14, align 8, !dbg !1177
  store i8* %150, i8** %11, align 8, !dbg !1178
  %151 = load i64, i64* %15, align 8, !dbg !1179
  store i64 %151, i64* %12, align 8, !dbg !1180
  store i8 1, i8* %13, align 1, !dbg !1181
  br label %152, !dbg !1182

152:                                              ; preds = %149, %133
  br label %66, !dbg !1104, !llvm.loop !1183

153:                                              ; preds = %77, %66
  %154 = load i32, i32* @grouping, align 4, !dbg !1185
  %155 = icmp eq i32 %154, 4, !dbg !1187
  br i1 %155, label %159, label %156, !dbg !1188

156:                                              ; preds = %153
  %157 = load i32, i32* @grouping, align 4, !dbg !1189
  %158 = icmp eq i32 %157, 2, !dbg !1190
  br i1 %158, label %159, label %166, !dbg !1191

159:                                              ; preds = %156, %153
  %160 = load i8, i8* %13, align 1, !dbg !1192
  %161 = trunc i8 %160 to i1, !dbg !1192
  br i1 %161, label %162, label %166, !dbg !1193

162:                                              ; preds = %159
  %163 = load i8, i8* %6, align 1, !dbg !1194
  %164 = sext i8 %163 to i32, !dbg !1194
  %165 = call i32 @putchar_unlocked(i32 %164), !dbg !1194
  br label %166, !dbg !1194

166:                                              ; preds = %162, %159, %156
  br label %294, !dbg !1195

167:                                              ; preds = %62, %59, %53
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1196, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.declare(metadata i64* %19, metadata !1199, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.declare(metadata i64* %20, metadata !1201, metadata !DIExpression()), !dbg !1202
  store i64 0, i64* %20, align 8, !dbg !1202
  call void @llvm.dbg.declare(metadata i8* %21, metadata !1203, metadata !DIExpression()), !dbg !1204
  store i8 1, i8* %21, align 1, !dbg !1204
  %168 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1205
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1207
  %170 = load i8, i8* %6, align 1, !dbg !1208
  %171 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %168, %struct._IO_FILE* %169, i8 signext %170), !dbg !1209
  %172 = icmp eq %struct.linebuffer* %171, null, !dbg !1210
  br i1 %172, label %173, label %174, !dbg !1211

173:                                              ; preds = %167
  br label %295, !dbg !1212

174:                                              ; preds = %167
  %175 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1213
  %176 = call i8* @find_field(%struct.linebuffer* %175) #14, !dbg !1214
  store i8* %176, i8** %18, align 8, !dbg !1215
  %177 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1216
  %178 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %177, i32 0, i32 1, !dbg !1217
  %179 = load i64, i64* %178, align 8, !dbg !1217
  %180 = sub i64 %179, 1, !dbg !1218
  %181 = load i8*, i8** %18, align 8, !dbg !1219
  %182 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1220
  %183 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %182, i32 0, i32 2, !dbg !1221
  %184 = load i8*, i8** %183, align 8, !dbg !1221
  %185 = ptrtoint i8* %181 to i64, !dbg !1222
  %186 = ptrtoint i8* %184 to i64, !dbg !1222
  %187 = sub i64 %185, %186, !dbg !1222
  %188 = sub i64 %180, %187, !dbg !1223
  store i64 %188, i64* %19, align 8, !dbg !1224
  br label %189, !dbg !1225

189:                                              ; preds = %290, %174
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1226
  %191 = call i32 @feof_unlocked(%struct._IO_FILE* %190) #15, !dbg !1226
  %192 = icmp ne i32 %191, 0, !dbg !1227
  %193 = xor i1 %192, true, !dbg !1227
  br i1 %193, label %194, label %291, !dbg !1225

194:                                              ; preds = %189
  call void @llvm.dbg.declare(metadata i8* %22, metadata !1228, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.declare(metadata i8** %23, metadata !1231, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1233, metadata !DIExpression()), !dbg !1234
  %195 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1235
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1237
  %197 = load i8, i8* %6, align 1, !dbg !1238
  %198 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %195, %struct._IO_FILE* %196, i8 signext %197), !dbg !1239
  %199 = icmp eq %struct.linebuffer* %198, null, !dbg !1240
  br i1 %199, label %200, label %206, !dbg !1241

200:                                              ; preds = %194
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1242
  %202 = call i32 @ferror_unlocked(%struct._IO_FILE* %201) #15, !dbg !1242
  %203 = icmp ne i32 %202, 0, !dbg !1242
  br i1 %203, label %204, label %205, !dbg !1245

204:                                              ; preds = %200
  br label %295, !dbg !1246

205:                                              ; preds = %200
  br label %291, !dbg !1247

206:                                              ; preds = %194
  %207 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1248
  %208 = call i8* @find_field(%struct.linebuffer* %207) #14, !dbg !1249
  store i8* %208, i8** %23, align 8, !dbg !1250
  %209 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1251
  %210 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %209, i32 0, i32 1, !dbg !1252
  %211 = load i64, i64* %210, align 8, !dbg !1252
  %212 = sub i64 %211, 1, !dbg !1253
  %213 = load i8*, i8** %23, align 8, !dbg !1254
  %214 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1255
  %215 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %214, i32 0, i32 2, !dbg !1256
  %216 = load i8*, i8** %215, align 8, !dbg !1256
  %217 = ptrtoint i8* %213 to i64, !dbg !1257
  %218 = ptrtoint i8* %216 to i64, !dbg !1257
  %219 = sub i64 %217, %218, !dbg !1257
  %220 = sub i64 %212, %219, !dbg !1258
  store i64 %220, i64* %24, align 8, !dbg !1259
  %221 = load i8*, i8** %23, align 8, !dbg !1260
  %222 = load i8*, i8** %18, align 8, !dbg !1261
  %223 = load i64, i64* %24, align 8, !dbg !1262
  %224 = load i64, i64* %19, align 8, !dbg !1263
  %225 = call zeroext i1 @different(i8* %221, i8* %222, i64 %223, i64 %224), !dbg !1264
  %226 = xor i1 %225, true, !dbg !1265
  %227 = zext i1 %226 to i8, !dbg !1266
  store i8 %227, i8* %22, align 1, !dbg !1266
  %228 = load i8, i8* %22, align 1, !dbg !1267
  %229 = trunc i8 %228 to i1, !dbg !1267
  %230 = zext i1 %229 to i64, !dbg !1267
  %231 = load i64, i64* %20, align 8, !dbg !1268
  %232 = add i64 %231, %230, !dbg !1268
  store i64 %232, i64* %20, align 8, !dbg !1268
  %233 = load i64, i64* %20, align 8, !dbg !1269
  %234 = icmp eq i64 %233, -1, !dbg !1271
  br i1 %234, label %235, label %238, !dbg !1272

235:                                              ; preds = %206
  %236 = load i64, i64* %20, align 8, !dbg !1273
  %237 = add i64 %236, -1, !dbg !1273
  store i64 %237, i64* %20, align 8, !dbg !1273
  br label %238, !dbg !1275

238:                                              ; preds = %235, %206
  %239 = load i32, i32* @delimit_groups, align 4, !dbg !1276
  %240 = icmp ne i32 %239, 0, !dbg !1278
  br i1 %240, label %241, label %268, !dbg !1279

241:                                              ; preds = %238
  %242 = load i8, i8* %22, align 1, !dbg !1280
  %243 = trunc i8 %242 to i1, !dbg !1280
  br i1 %243, label %249, label %244, !dbg !1283

244:                                              ; preds = %241
  %245 = load i64, i64* %20, align 8, !dbg !1284
  %246 = icmp ne i64 %245, 0, !dbg !1284
  br i1 %246, label %247, label %248, !dbg !1287

247:                                              ; preds = %244
  store i8 0, i8* %21, align 1, !dbg !1288
  br label %248, !dbg !1289

248:                                              ; preds = %247, %244
  br label %267, !dbg !1290

249:                                              ; preds = %241
  %250 = load i64, i64* %20, align 8, !dbg !1291
  %251 = icmp eq i64 %250, 1, !dbg !1293
  br i1 %251, label %252, label %266, !dbg !1294

252:                                              ; preds = %249
  %253 = load i32, i32* @delimit_groups, align 4, !dbg !1295
  %254 = icmp eq i32 %253, 1, !dbg !1298
  br i1 %254, label %261, label %255, !dbg !1299

255:                                              ; preds = %252
  %256 = load i32, i32* @delimit_groups, align 4, !dbg !1300
  %257 = icmp eq i32 %256, 2, !dbg !1301
  br i1 %257, label %258, label %265, !dbg !1302

258:                                              ; preds = %255
  %259 = load i8, i8* %21, align 1, !dbg !1303
  %260 = trunc i8 %259 to i1, !dbg !1303
  br i1 %260, label %265, label %261, !dbg !1304

261:                                              ; preds = %258, %252
  %262 = load i8, i8* %6, align 1, !dbg !1305
  %263 = sext i8 %262 to i32, !dbg !1305
  %264 = call i32 @putchar_unlocked(i32 %263), !dbg !1305
  br label %265, !dbg !1305

265:                                              ; preds = %261, %258, %255
  br label %266, !dbg !1306

266:                                              ; preds = %265, %249
  br label %267

267:                                              ; preds = %266, %248
  br label %268, !dbg !1307

268:                                              ; preds = %267, %238
  %269 = load i8, i8* %22, align 1, !dbg !1308
  %270 = trunc i8 %269 to i1, !dbg !1308
  br i1 %270, label %271, label %274, !dbg !1310

271:                                              ; preds = %268
  %272 = load i8, i8* @output_later_repeated, align 1, !dbg !1311
  %273 = trunc i8 %272 to i1, !dbg !1311
  br i1 %273, label %274, label %290, !dbg !1312

274:                                              ; preds = %271, %268
  %275 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1313
  %276 = load i8, i8* %22, align 1, !dbg !1315
  %277 = trunc i8 %276 to i1, !dbg !1315
  %278 = load i64, i64* %20, align 8, !dbg !1316
  call void @writeline(%struct.linebuffer* %275, i1 zeroext %277, i64 %278), !dbg !1317
  br label %279, !dbg !1318

279:                                              ; preds = %274
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %25, metadata !1319, metadata !DIExpression()), !dbg !1321
  %280 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1321
  store %struct.linebuffer* %280, %struct.linebuffer** %25, align 8, !dbg !1321
  %281 = load %struct.linebuffer*, %struct.linebuffer** %9, align 8, !dbg !1321
  store %struct.linebuffer* %281, %struct.linebuffer** %10, align 8, !dbg !1321
  %282 = load %struct.linebuffer*, %struct.linebuffer** %25, align 8, !dbg !1321
  store %struct.linebuffer* %282, %struct.linebuffer** %9, align 8, !dbg !1321
  br label %283, !dbg !1321

283:                                              ; preds = %279
  %284 = load i8*, i8** %23, align 8, !dbg !1322
  store i8* %284, i8** %18, align 8, !dbg !1323
  %285 = load i64, i64* %24, align 8, !dbg !1324
  store i64 %285, i64* %19, align 8, !dbg !1325
  %286 = load i8, i8* %22, align 1, !dbg !1326
  %287 = trunc i8 %286 to i1, !dbg !1326
  br i1 %287, label %289, label %288, !dbg !1328

288:                                              ; preds = %283
  store i64 0, i64* %20, align 8, !dbg !1329
  br label %289, !dbg !1330

289:                                              ; preds = %288, %283
  br label %290, !dbg !1331

290:                                              ; preds = %289, %271
  br label %189, !dbg !1225, !llvm.loop !1332

291:                                              ; preds = %205, %189
  %292 = load %struct.linebuffer*, %struct.linebuffer** %10, align 8, !dbg !1334
  %293 = load i64, i64* %20, align 8, !dbg !1335
  call void @writeline(%struct.linebuffer* %292, i1 zeroext false, i64 %293), !dbg !1336
  br label %294

294:                                              ; preds = %291, %166
  br label %295, !dbg !1337

295:                                              ; preds = %294, %204, %173
  call void @llvm.dbg.label(metadata !1338), !dbg !1339
  %296 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1340
  %297 = call i32 @ferror_unlocked(%struct._IO_FILE* %296) #15, !dbg !1340
  %298 = icmp ne i32 %297, 0, !dbg !1340
  br i1 %298, label %303, label %299, !dbg !1342

299:                                              ; preds = %295
  %300 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1343
  %301 = call i32 @rpl_fclose(%struct._IO_FILE* %300), !dbg !1344
  %302 = icmp ne i32 %301, 0, !dbg !1345
  br i1 %302, label %303, label %306, !dbg !1346

303:                                              ; preds = %299, %295
  %304 = load i8*, i8** %4, align 8, !dbg !1347
  %305 = call i8* @quotearg_style(i32 4, i8* %304), !dbg !1347
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.69, i64 0, i64 0), i8* %305), !dbg !1347
  unreachable, !dbg !1347

306:                                              ; preds = %299
  %307 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %7, i32 0, i32 2, !dbg !1348
  %308 = load i8*, i8** %307, align 8, !dbg !1348
  call void @free(i8* %308) #15, !dbg !1349
  %309 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %8, i32 0, i32 2, !dbg !1350
  %310 = load i8*, i8** %309, align 8, !dbg !1350
  call void @free(i8* %310) #15, !dbg !1351
  ret void, !dbg !1352
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #8

; Function Attrs: nounwind
declare dso_local i32 @feof_unlocked(%struct._IO_FILE*) #7

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define internal i8* @find_field(%struct.linebuffer* %0) #9 !dbg !1353 {
  %2 = alloca %struct.linebuffer*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.linebuffer* %0, %struct.linebuffer** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %2, metadata !1358, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1360, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1362, metadata !DIExpression()), !dbg !1363
  %7 = load %struct.linebuffer*, %struct.linebuffer** %2, align 8, !dbg !1364
  %8 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %7, i32 0, i32 2, !dbg !1365
  %9 = load i8*, i8** %8, align 8, !dbg !1365
  store i8* %9, i8** %4, align 8, !dbg !1363
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1366, metadata !DIExpression()), !dbg !1367
  %10 = load %struct.linebuffer*, %struct.linebuffer** %2, align 8, !dbg !1368
  %11 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %10, i32 0, i32 1, !dbg !1369
  %12 = load i64, i64* %11, align 8, !dbg !1369
  %13 = sub i64 %12, 1, !dbg !1370
  store i64 %13, i64* %5, align 8, !dbg !1367
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1371, metadata !DIExpression()), !dbg !1372
  store i64 0, i64* %6, align 8, !dbg !1372
  store i64 0, i64* %3, align 8, !dbg !1373
  br label %14, !dbg !1375

14:                                               ; preds = %58, %1
  %15 = load i64, i64* %3, align 8, !dbg !1376
  %16 = load i64, i64* @skip_fields, align 8, !dbg !1378
  %17 = icmp ult i64 %15, %16, !dbg !1379
  br i1 %17, label %18, label %22, !dbg !1380

18:                                               ; preds = %14
  %19 = load i64, i64* %6, align 8, !dbg !1381
  %20 = load i64, i64* %5, align 8, !dbg !1382
  %21 = icmp ult i64 %19, %20, !dbg !1383
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ], !dbg !1384
  br i1 %23, label %24, label %61, !dbg !1385

24:                                               ; preds = %22
  br label %25, !dbg !1386

25:                                               ; preds = %37, %24
  %26 = load i64, i64* %6, align 8, !dbg !1388
  %27 = load i64, i64* %5, align 8, !dbg !1389
  %28 = icmp ult i64 %26, %27, !dbg !1390
  br i1 %28, label %29, label %35, !dbg !1391

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8, !dbg !1392
  %31 = load i64, i64* %6, align 8, !dbg !1393
  %32 = getelementptr inbounds i8, i8* %30, i64 %31, !dbg !1392
  %33 = load i8, i8* %32, align 1, !dbg !1392
  %34 = call zeroext i1 @field_sep(i8 zeroext %33), !dbg !1394
  br label %35

35:                                               ; preds = %29, %25
  %36 = phi i1 [ false, %25 ], [ %34, %29 ], !dbg !1395
  br i1 %36, label %37, label %40, !dbg !1386

37:                                               ; preds = %35
  %38 = load i64, i64* %6, align 8, !dbg !1396
  %39 = add i64 %38, 1, !dbg !1396
  store i64 %39, i64* %6, align 8, !dbg !1396
  br label %25, !dbg !1386, !llvm.loop !1397

40:                                               ; preds = %35
  br label %41, !dbg !1398

41:                                               ; preds = %54, %40
  %42 = load i64, i64* %6, align 8, !dbg !1399
  %43 = load i64, i64* %5, align 8, !dbg !1400
  %44 = icmp ult i64 %42, %43, !dbg !1401
  br i1 %44, label %45, label %52, !dbg !1402

45:                                               ; preds = %41
  %46 = load i8*, i8** %4, align 8, !dbg !1403
  %47 = load i64, i64* %6, align 8, !dbg !1404
  %48 = getelementptr inbounds i8, i8* %46, i64 %47, !dbg !1403
  %49 = load i8, i8* %48, align 1, !dbg !1403
  %50 = call zeroext i1 @field_sep(i8 zeroext %49), !dbg !1405
  %51 = xor i1 %50, true, !dbg !1406
  br label %52

52:                                               ; preds = %45, %41
  %53 = phi i1 [ false, %41 ], [ %51, %45 ], !dbg !1395
  br i1 %53, label %54, label %57, !dbg !1398

54:                                               ; preds = %52
  %55 = load i64, i64* %6, align 8, !dbg !1407
  %56 = add i64 %55, 1, !dbg !1407
  store i64 %56, i64* %6, align 8, !dbg !1407
  br label %41, !dbg !1398, !llvm.loop !1408

57:                                               ; preds = %52
  br label %58, !dbg !1409

58:                                               ; preds = %57
  %59 = load i64, i64* %3, align 8, !dbg !1410
  %60 = add i64 %59, 1, !dbg !1410
  store i64 %60, i64* %3, align 8, !dbg !1410
  br label %14, !dbg !1411, !llvm.loop !1412

61:                                               ; preds = %22
  %62 = load i64, i64* @skip_chars, align 8, !dbg !1414
  %63 = load i64, i64* %5, align 8, !dbg !1414
  %64 = load i64, i64* %6, align 8, !dbg !1414
  %65 = sub i64 %63, %64, !dbg !1414
  %66 = icmp ult i64 %62, %65, !dbg !1414
  br i1 %66, label %67, label %69, !dbg !1414

67:                                               ; preds = %61
  %68 = load i64, i64* @skip_chars, align 8, !dbg !1414
  br label %73, !dbg !1414

69:                                               ; preds = %61
  %70 = load i64, i64* %5, align 8, !dbg !1414
  %71 = load i64, i64* %6, align 8, !dbg !1414
  %72 = sub i64 %70, %71, !dbg !1414
  br label %73, !dbg !1414

73:                                               ; preds = %69, %67
  %74 = phi i64 [ %68, %67 ], [ %72, %69 ], !dbg !1414
  %75 = load i64, i64* %6, align 8, !dbg !1415
  %76 = add i64 %75, %74, !dbg !1415
  store i64 %76, i64* %6, align 8, !dbg !1415
  %77 = load %struct.linebuffer*, %struct.linebuffer** %2, align 8, !dbg !1416
  %78 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %77, i32 0, i32 2, !dbg !1417
  %79 = load i8*, i8** %78, align 8, !dbg !1417
  %80 = load i64, i64* %6, align 8, !dbg !1418
  %81 = getelementptr inbounds i8, i8* %79, i64 %80, !dbg !1419
  ret i8* %81, !dbg !1420
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @different(i8* %0, i8* %1, i64 %2, i64 %3) #3 !dbg !1421 {
  %5 = alloca i1, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1424, metadata !DIExpression()), !dbg !1425
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1426, metadata !DIExpression()), !dbg !1427
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1428, metadata !DIExpression()), !dbg !1429
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1430, metadata !DIExpression()), !dbg !1431
  %10 = load i64, i64* @check_chars, align 8, !dbg !1432
  %11 = load i64, i64* %8, align 8, !dbg !1434
  %12 = icmp ult i64 %10, %11, !dbg !1435
  br i1 %12, label %13, label %15, !dbg !1436

13:                                               ; preds = %4
  %14 = load i64, i64* @check_chars, align 8, !dbg !1437
  store i64 %14, i64* %8, align 8, !dbg !1438
  br label %15, !dbg !1439

15:                                               ; preds = %13, %4
  %16 = load i64, i64* @check_chars, align 8, !dbg !1440
  %17 = load i64, i64* %9, align 8, !dbg !1442
  %18 = icmp ult i64 %16, %17, !dbg !1443
  br i1 %18, label %19, label %21, !dbg !1444

19:                                               ; preds = %15
  %20 = load i64, i64* @check_chars, align 8, !dbg !1445
  store i64 %20, i64* %9, align 8, !dbg !1446
  br label %21, !dbg !1447

21:                                               ; preds = %19, %15
  %22 = load i8, i8* @ignore_case, align 1, !dbg !1448
  %23 = trunc i8 %22 to i1, !dbg !1448
  br i1 %23, label %24, label %36, !dbg !1450

24:                                               ; preds = %21
  %25 = load i64, i64* %8, align 8, !dbg !1451
  %26 = load i64, i64* %9, align 8, !dbg !1452
  %27 = icmp ne i64 %25, %26, !dbg !1453
  br i1 %27, label %34, label %28, !dbg !1454

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8, !dbg !1455
  %30 = load i8*, i8** %7, align 8, !dbg !1456
  %31 = load i64, i64* %8, align 8, !dbg !1457
  %32 = call i32 @memcasecmp(i8* %29, i8* %30, i64 %31) #14, !dbg !1458
  %33 = icmp ne i32 %32, 0, !dbg !1454
  br label %34, !dbg !1454

34:                                               ; preds = %28, %24
  %35 = phi i1 [ true, %24 ], [ %33, %28 ]
  store i1 %35, i1* %5, align 1, !dbg !1459
  br label %48, !dbg !1459

36:                                               ; preds = %21
  %37 = load i64, i64* %8, align 8, !dbg !1460
  %38 = load i64, i64* %9, align 8, !dbg !1461
  %39 = icmp ne i64 %37, %38, !dbg !1462
  br i1 %39, label %46, label %40, !dbg !1463

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8, !dbg !1464
  %42 = load i8*, i8** %7, align 8, !dbg !1465
  %43 = load i64, i64* %8, align 8, !dbg !1466
  %44 = call i32 @memcmp(i8* %41, i8* %42, i64 %43) #14, !dbg !1467
  %45 = icmp ne i32 %44, 0, !dbg !1463
  br label %46, !dbg !1463

46:                                               ; preds = %40, %36
  %47 = phi i1 [ true, %36 ], [ %45, %40 ]
  store i1 %47, i1* %5, align 1, !dbg !1468
  br label %48, !dbg !1468

48:                                               ; preds = %46, %34
  %49 = load i1, i1* %5, align 1, !dbg !1469
  ret i1 %49, !dbg !1469
}

declare dso_local i32 @putchar_unlocked(i32) #2

declare dso_local i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local i32 @ferror_unlocked(%struct._IO_FILE*) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writeline(%struct.linebuffer* %0, i1 zeroext %1, i64 %2) #3 !dbg !1470 {
  %4 = alloca %struct.linebuffer*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store %struct.linebuffer* %0, %struct.linebuffer** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %4, metadata !1473, metadata !DIExpression()), !dbg !1474
  %7 = zext i1 %1 to i8
  store i8 %7, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1475, metadata !DIExpression()), !dbg !1476
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1477, metadata !DIExpression()), !dbg !1478
  %8 = load i64, i64* %6, align 8, !dbg !1479
  %9 = icmp eq i64 %8, 0, !dbg !1481
  br i1 %9, label %10, label %13, !dbg !1482

10:                                               ; preds = %3
  %11 = load i8, i8* @output_unique, align 1, !dbg !1483
  %12 = trunc i8 %11 to i1, !dbg !1483
  br i1 %12, label %23, label %22, !dbg !1479

13:                                               ; preds = %3
  %14 = load i8, i8* %5, align 1, !dbg !1484
  %15 = trunc i8 %14 to i1, !dbg !1484
  br i1 %15, label %19, label %16, !dbg !1482

16:                                               ; preds = %13
  %17 = load i8, i8* @output_first_repeated, align 1, !dbg !1485
  %18 = trunc i8 %17 to i1, !dbg !1485
  br i1 %18, label %23, label %22, !dbg !1486

19:                                               ; preds = %13
  %20 = load i8, i8* @output_later_repeated, align 1, !dbg !1487
  %21 = trunc i8 %20 to i1, !dbg !1487
  br i1 %21, label %23, label %22, !dbg !1482

22:                                               ; preds = %19, %16, %10
  br label %39, !dbg !1488

23:                                               ; preds = %19, %16, %10
  %24 = load i32, i32* @countmode, align 4, !dbg !1489
  %25 = icmp eq i32 %24, 0, !dbg !1491
  br i1 %25, label %26, label %30, !dbg !1492

26:                                               ; preds = %23
  %27 = load i64, i64* %6, align 8, !dbg !1493
  %28 = add i64 %27, 1, !dbg !1494
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0), i64 %28), !dbg !1495
  br label %30, !dbg !1495

30:                                               ; preds = %26, %23
  %31 = load %struct.linebuffer*, %struct.linebuffer** %4, align 8, !dbg !1496
  %32 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %31, i32 0, i32 2, !dbg !1496
  %33 = load i8*, i8** %32, align 8, !dbg !1496
  %34 = load %struct.linebuffer*, %struct.linebuffer** %4, align 8, !dbg !1496
  %35 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %34, i32 0, i32 1, !dbg !1496
  %36 = load i64, i64* %35, align 8, !dbg !1496
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1496
  %38 = call i64 @fwrite_unlocked(i8* %33, i64 1, i64 %36, %struct._IO_FILE* %37), !dbg !1496
  br label %39, !dbg !1497

39:                                               ; preds = %30, %22
  ret void, !dbg !1497
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #7

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8*, i8*, i64) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @field_sep(i8 zeroext %0) #3 !dbg !1498 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1501, metadata !DIExpression()), !dbg !1502
  %3 = call i16** @__ctype_b_loc() #17, !dbg !1503
  %4 = load i16*, i16** %3, align 8, !dbg !1503
  %5 = load i8, i8* %2, align 1, !dbg !1503
  %6 = zext i8 %5 to i32, !dbg !1503
  %7 = sext i32 %6 to i64, !dbg !1503
  %8 = getelementptr inbounds i16, i16* %4, i64 %7, !dbg !1503
  %9 = load i16, i16* %8, align 2, !dbg !1503
  %10 = zext i16 %9 to i32, !dbg !1503
  %11 = and i32 %10, 1, !dbg !1503
  %12 = icmp ne i32 %11, 0, !dbg !1503
  br i1 %12, label %17, label %13, !dbg !1504

13:                                               ; preds = %1
  %14 = load i8, i8* %2, align 1, !dbg !1505
  %15 = zext i8 %14 to i32, !dbg !1505
  %16 = icmp eq i32 %15, 10, !dbg !1506
  br label %17, !dbg !1504

17:                                               ; preds = %13, %1
  %18 = phi i1 [ true, %1 ], [ %16, %13 ]
  ret i1 %18, !dbg !1507
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #8

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__argmatch_die() #3 !dbg !1508 {
  call void @usage(i32 1), !dbg !1509
  ret void, !dbg !1510
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @argmatch(i8* %0, i8** %1, i8* %2, i64 %3) #9 !dbg !1511 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1517, metadata !DIExpression()), !dbg !1518
  store i8** %1, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1519, metadata !DIExpression()), !dbg !1520
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1521, metadata !DIExpression()), !dbg !1522
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1523, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1525, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1527, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1529, metadata !DIExpression()), !dbg !1530
  store i64 -1, i64* %12, align 8, !dbg !1530
  call void @llvm.dbg.declare(metadata i8* %13, metadata !1531, metadata !DIExpression()), !dbg !1532
  store i8 0, i8* %13, align 1, !dbg !1532
  %14 = load i8*, i8** %6, align 8, !dbg !1533
  %15 = call i64 @strlen(i8* %14) #14, !dbg !1534
  store i64 %15, i64* %11, align 8, !dbg !1535
  store i64 0, i64* %10, align 8, !dbg !1536
  br label %16, !dbg !1538

16:                                               ; preds = %68, %4
  %17 = load i8**, i8*** %7, align 8, !dbg !1539
  %18 = load i64, i64* %10, align 8, !dbg !1541
  %19 = getelementptr inbounds i8*, i8** %17, i64 %18, !dbg !1539
  %20 = load i8*, i8** %19, align 8, !dbg !1539
  %21 = icmp ne i8* %20, null, !dbg !1542
  br i1 %21, label %22, label %71, !dbg !1542

22:                                               ; preds = %16
  %23 = load i8**, i8*** %7, align 8, !dbg !1543
  %24 = load i64, i64* %10, align 8, !dbg !1546
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24, !dbg !1543
  %26 = load i8*, i8** %25, align 8, !dbg !1543
  %27 = load i8*, i8** %6, align 8, !dbg !1547
  %28 = load i64, i64* %11, align 8, !dbg !1548
  %29 = call i32 @strncmp(i8* %26, i8* %27, i64 %28) #14, !dbg !1549
  %30 = icmp ne i32 %29, 0, !dbg !1549
  br i1 %30, label %67, label %31, !dbg !1550

31:                                               ; preds = %22
  %32 = load i8**, i8*** %7, align 8, !dbg !1551
  %33 = load i64, i64* %10, align 8, !dbg !1554
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33, !dbg !1551
  %35 = load i8*, i8** %34, align 8, !dbg !1551
  %36 = call i64 @strlen(i8* %35) #14, !dbg !1555
  %37 = load i64, i64* %11, align 8, !dbg !1556
  %38 = icmp eq i64 %36, %37, !dbg !1557
  br i1 %38, label %39, label %41, !dbg !1558

39:                                               ; preds = %31
  %40 = load i64, i64* %10, align 8, !dbg !1559
  store i64 %40, i64* %5, align 8, !dbg !1560
  br label %77, !dbg !1560

41:                                               ; preds = %31
  %42 = load i64, i64* %12, align 8, !dbg !1561
  %43 = icmp eq i64 %42, -1, !dbg !1563
  br i1 %43, label %44, label %46, !dbg !1564

44:                                               ; preds = %41
  %45 = load i64, i64* %10, align 8, !dbg !1565
  store i64 %45, i64* %12, align 8, !dbg !1566
  br label %65, !dbg !1567

46:                                               ; preds = %41
  %47 = load i8*, i8** %8, align 8, !dbg !1568
  %48 = icmp eq i8* %47, null, !dbg !1571
  br i1 %48, label %63, label %49, !dbg !1572

49:                                               ; preds = %46
  %50 = load i8*, i8** %8, align 8, !dbg !1573
  %51 = load i64, i64* %9, align 8, !dbg !1574
  %52 = load i64, i64* %12, align 8, !dbg !1575
  %53 = mul i64 %51, %52, !dbg !1576
  %54 = getelementptr inbounds i8, i8* %50, i64 %53, !dbg !1577
  %55 = load i8*, i8** %8, align 8, !dbg !1578
  %56 = load i64, i64* %9, align 8, !dbg !1579
  %57 = load i64, i64* %10, align 8, !dbg !1580
  %58 = mul i64 %56, %57, !dbg !1581
  %59 = getelementptr inbounds i8, i8* %55, i64 %58, !dbg !1582
  %60 = load i64, i64* %9, align 8, !dbg !1583
  %61 = call i32 @memcmp(i8* %54, i8* %59, i64 %60) #14, !dbg !1584
  %62 = icmp ne i32 %61, 0, !dbg !1584
  br i1 %62, label %63, label %64, !dbg !1585

63:                                               ; preds = %49, %46
  store i8 1, i8* %13, align 1, !dbg !1586
  br label %64, !dbg !1588

64:                                               ; preds = %63, %49
  br label %65

65:                                               ; preds = %64, %44
  br label %66

66:                                               ; preds = %65
  br label %67, !dbg !1589

67:                                               ; preds = %66, %22
  br label %68, !dbg !1590

68:                                               ; preds = %67
  %69 = load i64, i64* %10, align 8, !dbg !1591
  %70 = add i64 %69, 1, !dbg !1591
  store i64 %70, i64* %10, align 8, !dbg !1591
  br label %16, !dbg !1592, !llvm.loop !1593

71:                                               ; preds = %16
  %72 = load i8, i8* %13, align 1, !dbg !1595
  %73 = trunc i8 %72 to i1, !dbg !1595
  br i1 %73, label %74, label %75, !dbg !1597

74:                                               ; preds = %71
  store i64 -2, i64* %5, align 8, !dbg !1598
  br label %77, !dbg !1598

75:                                               ; preds = %71
  %76 = load i64, i64* %12, align 8, !dbg !1599
  store i64 %76, i64* %5, align 8, !dbg !1600
  br label %77, !dbg !1600

77:                                               ; preds = %75, %74, %39
  %78 = load i64, i64* %5, align 8, !dbg !1601
  ret i64 %78, !dbg !1601
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @argmatch_invalid(i8* %0, i8* %1, i64 %2) #3 !dbg !1602 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1605, metadata !DIExpression()), !dbg !1606
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1607, metadata !DIExpression()), !dbg !1608
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1609, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1611, metadata !DIExpression()), !dbg !1612
  %8 = load i64, i64* %6, align 8, !dbg !1613
  %9 = icmp eq i64 %8, -1, !dbg !1614
  %10 = zext i1 %9 to i64, !dbg !1613
  %11 = select i1 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.75, i64 0, i64 0), !dbg !1613
  store i8* %11, i8** %7, align 8, !dbg !1612
  %12 = load i8*, i8** %7, align 8, !dbg !1615
  %13 = load i8*, i8** %5, align 8, !dbg !1616
  %14 = call i8* @quotearg_n_style(i32 0, i32 8, i8* %13), !dbg !1617
  %15 = load i8*, i8** %4, align 8, !dbg !1618
  %16 = call i8* @quote_n(i32 1, i8* %15), !dbg !1619
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %12, i8* %14, i8* %16), !dbg !1620
  ret void, !dbg !1621
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @argmatch_valid(i8** %0, i8* %1, i64 %2) #3 !dbg !1622 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !1625, metadata !DIExpression()), !dbg !1626
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1627, metadata !DIExpression()), !dbg !1628
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1629, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1631, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1633, metadata !DIExpression()), !dbg !1634
  store i8* null, i8** %8, align 8, !dbg !1634
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1635
  %10 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.76, i64 0, i64 0), %struct._IO_FILE* %9), !dbg !1635
  store i64 0, i64* %7, align 8, !dbg !1636
  br label %11, !dbg !1638

11:                                               ; preds = %52, %3
  %12 = load i8**, i8*** %4, align 8, !dbg !1639
  %13 = load i64, i64* %7, align 8, !dbg !1641
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13, !dbg !1639
  %15 = load i8*, i8** %14, align 8, !dbg !1639
  %16 = icmp ne i8* %15, null, !dbg !1642
  br i1 %16, label %17, label %55, !dbg !1642

17:                                               ; preds = %11
  %18 = load i64, i64* %7, align 8, !dbg !1643
  %19 = icmp eq i64 %18, 0, !dbg !1645
  br i1 %19, label %30, label %20, !dbg !1646

20:                                               ; preds = %17
  %21 = load i8*, i8** %8, align 8, !dbg !1647
  %22 = load i8*, i8** %5, align 8, !dbg !1648
  %23 = load i64, i64* %6, align 8, !dbg !1649
  %24 = load i64, i64* %7, align 8, !dbg !1650
  %25 = mul i64 %23, %24, !dbg !1651
  %26 = getelementptr inbounds i8, i8* %22, i64 %25, !dbg !1652
  %27 = load i64, i64* %6, align 8, !dbg !1653
  %28 = call i32 @memcmp(i8* %21, i8* %26, i64 %27) #14, !dbg !1654
  %29 = icmp ne i32 %28, 0, !dbg !1654
  br i1 %29, label %30, label %43, !dbg !1655

30:                                               ; preds = %20, %17
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1656
  %32 = load i8**, i8*** %4, align 8, !dbg !1658
  %33 = load i64, i64* %7, align 8, !dbg !1659
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33, !dbg !1658
  %35 = load i8*, i8** %34, align 8, !dbg !1658
  %36 = call i8* @quote(i8* %35), !dbg !1660
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.77, i64 0, i64 0), i8* %36), !dbg !1661
  %38 = load i8*, i8** %5, align 8, !dbg !1662
  %39 = load i64, i64* %6, align 8, !dbg !1663
  %40 = load i64, i64* %7, align 8, !dbg !1664
  %41 = mul i64 %39, %40, !dbg !1665
  %42 = getelementptr inbounds i8, i8* %38, i64 %41, !dbg !1666
  store i8* %42, i8** %8, align 8, !dbg !1667
  br label %51, !dbg !1668

43:                                               ; preds = %20
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1669
  %45 = load i8**, i8*** %4, align 8, !dbg !1671
  %46 = load i64, i64* %7, align 8, !dbg !1672
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46, !dbg !1671
  %48 = load i8*, i8** %47, align 8, !dbg !1671
  %49 = call i8* @quote(i8* %48), !dbg !1673
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.78, i64 0, i64 0), i8* %49), !dbg !1674
  br label %51

51:                                               ; preds = %43, %30
  br label %52, !dbg !1675

52:                                               ; preds = %51
  %53 = load i64, i64* %7, align 8, !dbg !1676
  %54 = add i64 %53, 1, !dbg !1676
  store i64 %54, i64* %7, align 8, !dbg !1676
  br label %11, !dbg !1677, !llvm.loop !1678

55:                                               ; preds = %11
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1680
  %57 = call i32 @putc_unlocked(i32 10, %struct._IO_FILE* %56), !dbg !1680
  ret void, !dbg !1681
}

declare dso_local i32 @putc_unlocked(i32, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__xargmatch_internal(i8* %0, i8* %1, i8** %2, i8* %3, i64 %4, void ()* %5) #3 !dbg !1682 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca void ()*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1685, metadata !DIExpression()), !dbg !1686
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1687, metadata !DIExpression()), !dbg !1688
  store i8** %2, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !1689, metadata !DIExpression()), !dbg !1690
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1691, metadata !DIExpression()), !dbg !1692
  store i64 %4, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1693, metadata !DIExpression()), !dbg !1694
  store void ()* %5, void ()** %13, align 8
  call void @llvm.dbg.declare(metadata void ()** %13, metadata !1695, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1697, metadata !DIExpression()), !dbg !1698
  %15 = load i8*, i8** %9, align 8, !dbg !1699
  %16 = load i8**, i8*** %10, align 8, !dbg !1700
  %17 = load i8*, i8** %11, align 8, !dbg !1701
  %18 = load i64, i64* %12, align 8, !dbg !1702
  %19 = call i64 @argmatch(i8* %15, i8** %16, i8* %17, i64 %18) #14, !dbg !1703
  store i64 %19, i64* %14, align 8, !dbg !1698
  %20 = load i64, i64* %14, align 8, !dbg !1704
  %21 = icmp sge i64 %20, 0, !dbg !1706
  br i1 %21, label %22, label %24, !dbg !1707

22:                                               ; preds = %6
  %23 = load i64, i64* %14, align 8, !dbg !1708
  store i64 %23, i64* %7, align 8, !dbg !1709
  br label %32, !dbg !1709

24:                                               ; preds = %6
  %25 = load i8*, i8** %8, align 8, !dbg !1710
  %26 = load i8*, i8** %9, align 8, !dbg !1711
  %27 = load i64, i64* %14, align 8, !dbg !1712
  call void @argmatch_invalid(i8* %25, i8* %26, i64 %27), !dbg !1713
  %28 = load i8**, i8*** %10, align 8, !dbg !1714
  %29 = load i8*, i8** %11, align 8, !dbg !1715
  %30 = load i64, i64* %12, align 8, !dbg !1716
  call void @argmatch_valid(i8** %28, i8* %29, i64 %30), !dbg !1717
  %31 = load void ()*, void ()** %13, align 8, !dbg !1718
  call void %31(), !dbg !1719
  store i64 -1, i64* %7, align 8, !dbg !1720
  br label %32, !dbg !1720

32:                                               ; preds = %24, %22
  %33 = load i64, i64* %7, align 8, !dbg !1721
  ret i64 %33, !dbg !1721
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @argmatch_to_argument(i8* %0, i8** %1, i8* %2, i64 %3) #9 !dbg !1722 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1725, metadata !DIExpression()), !dbg !1726
  store i8** %1, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1727, metadata !DIExpression()), !dbg !1728
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1729, metadata !DIExpression()), !dbg !1730
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1731, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1733, metadata !DIExpression()), !dbg !1734
  store i64 0, i64* %10, align 8, !dbg !1735
  br label %11, !dbg !1737

11:                                               ; preds = %33, %4
  %12 = load i8**, i8*** %7, align 8, !dbg !1738
  %13 = load i64, i64* %10, align 8, !dbg !1740
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13, !dbg !1738
  %15 = load i8*, i8** %14, align 8, !dbg !1738
  %16 = icmp ne i8* %15, null, !dbg !1741
  br i1 %16, label %17, label %36, !dbg !1741

17:                                               ; preds = %11
  %18 = load i8*, i8** %6, align 8, !dbg !1742
  %19 = load i8*, i8** %8, align 8, !dbg !1744
  %20 = load i64, i64* %9, align 8, !dbg !1745
  %21 = load i64, i64* %10, align 8, !dbg !1746
  %22 = mul i64 %20, %21, !dbg !1747
  %23 = getelementptr inbounds i8, i8* %19, i64 %22, !dbg !1748
  %24 = load i64, i64* %9, align 8, !dbg !1749
  %25 = call i32 @memcmp(i8* %18, i8* %23, i64 %24) #14, !dbg !1750
  %26 = icmp ne i32 %25, 0, !dbg !1750
  br i1 %26, label %32, label %27, !dbg !1751

27:                                               ; preds = %17
  %28 = load i8**, i8*** %7, align 8, !dbg !1752
  %29 = load i64, i64* %10, align 8, !dbg !1753
  %30 = getelementptr inbounds i8*, i8** %28, i64 %29, !dbg !1752
  %31 = load i8*, i8** %30, align 8, !dbg !1752
  store i8* %31, i8** %5, align 8, !dbg !1754
  br label %37, !dbg !1754

32:                                               ; preds = %17
  br label %33, !dbg !1755

33:                                               ; preds = %32
  %34 = load i64, i64* %10, align 8, !dbg !1756
  %35 = add i64 %34, 1, !dbg !1756
  store i64 %35, i64* %10, align 8, !dbg !1756
  br label %11, !dbg !1757, !llvm.loop !1758

36:                                               ; preds = %11
  store i8* null, i8** %5, align 8, !dbg !1760
  br label %37, !dbg !1760

37:                                               ; preds = %36, %27
  %38 = load i8*, i8** %5, align 8, !dbg !1761
  ret i8* %38, !dbg !1761
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* %0) #3 !dbg !1762 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1763, metadata !DIExpression()), !dbg !1764
  %3 = load i8*, i8** %2, align 8, !dbg !1765
  store i8* %3, i8** @file_name, align 8, !dbg !1766
  ret void, !dbg !1767
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) #3 !dbg !1768 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1771, metadata !DIExpression()), !dbg !1772
  %4 = load i8, i8* %2, align 1, !dbg !1773
  %5 = trunc i8 %4 to i1, !dbg !1773
  %6 = zext i1 %5 to i8, !dbg !1774
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !1774
  ret void, !dbg !1775
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #3 !dbg !1776 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1777
  %3 = call i32 @close_stream(%struct._IO_FILE* %2), !dbg !1779
  %4 = icmp ne i32 %3, 0, !dbg !1780
  br i1 %4, label %5, label %27, !dbg !1781

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1782
  %7 = trunc i8 %6 to i1, !dbg !1782
  br i1 %7, label %8, label %12, !dbg !1783

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #17, !dbg !1784
  %10 = load i32, i32* %9, align 4, !dbg !1784
  %11 = icmp eq i32 %10, 32, !dbg !1785
  br i1 %11, label %27, label %12, !dbg !1786

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !1787, metadata !DIExpression()), !dbg !1789
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i64 0, i64 0), i8** %1, align 8, !dbg !1789
  %13 = load i8*, i8** @file_name, align 8, !dbg !1790
  %14 = icmp ne i8* %13, null, !dbg !1790
  br i1 %14, label %15, label %21, !dbg !1792

15:                                               ; preds = %12
  %16 = call i32* @__errno_location() #17, !dbg !1793
  %17 = load i32, i32* %16, align 4, !dbg !1793
  %18 = load i8*, i8** @file_name, align 8, !dbg !1794
  %19 = call i8* @quotearg_colon(i8* %18), !dbg !1795
  %20 = load i8*, i8** %1, align 8, !dbg !1796
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.84, i64 0, i64 0), i8* %19, i8* %20), !dbg !1797
  br label %25, !dbg !1797

21:                                               ; preds = %12
  %22 = call i32* @__errno_location() #17, !dbg !1798
  %23 = load i32, i32* %22, align 4, !dbg !1798
  %24 = load i8*, i8** %1, align 8, !dbg !1799
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.85, i64 0, i64 0), i8* %24), !dbg !1800
  br label %25

25:                                               ; preds = %21, %15
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1801
  call void @_exit(i32 %26) #16, !dbg !1802
  unreachable, !dbg !1802

27:                                               ; preds = %8, %0
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1803
  %29 = call i32 @close_stream(%struct._IO_FILE* %28), !dbg !1805
  %30 = icmp ne i32 %29, 0, !dbg !1806
  br i1 %30, label %31, label %33, !dbg !1807

31:                                               ; preds = %27
  %32 = load volatile i32, i32* @exit_failure, align 4, !dbg !1808
  call void @_exit(i32 %32) #16, !dbg !1809
  unreachable, !dbg !1809

33:                                               ; preds = %27
  ret void, !dbg !1810
}

; Function Attrs: noreturn
declare dso_local void @_exit(i32) #10

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) #3 !dbg !1811 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1818, metadata !DIExpression()), !dbg !1819
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1820, metadata !DIExpression()), !dbg !1821
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1822, metadata !DIExpression()), !dbg !1823
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1824, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1826, metadata !DIExpression()), !dbg !1828
  %10 = load i32, i32* %5, align 4, !dbg !1828
  %11 = load i64, i64* %6, align 8, !dbg !1828
  %12 = load i64, i64* %7, align 8, !dbg !1828
  %13 = load i32, i32* %8, align 4, !dbg !1828
  %14 = call i32 @posix_fadvise(i32 %10, i64 %11, i64 %12, i32 %13) #15, !dbg !1828
  store i32 %14, i32* %9, align 4, !dbg !1828
  %15 = load i32, i32* %9, align 4, !dbg !1828
  ret void, !dbg !1829
}

; Function Attrs: nounwind
declare dso_local i32 @posix_fadvise(i32, i64, i64, i32) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) #3 !dbg !1830 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !1885, metadata !DIExpression()), !dbg !1886
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1887, metadata !DIExpression()), !dbg !1888
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1889
  %6 = icmp ne %struct._IO_FILE* %5, null, !dbg !1889
  br i1 %6, label %7, label %11, !dbg !1891

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1892
  %9 = call i32 @fileno(%struct._IO_FILE* %8) #15, !dbg !1893
  %10 = load i32, i32* %4, align 4, !dbg !1894
  call void @fdadvise(i32 %9, i64 0, i64 0, i32 %10), !dbg !1895
  br label %11, !dbg !1895

11:                                               ; preds = %7, %2
  ret void, !dbg !1896
}

; Function Attrs: nounwind
declare dso_local i32 @fileno(%struct._IO_FILE*) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._IO_FILE* @freopen_safer(i8* %0, i8* %1, %struct._IO_FILE* %2) #3 !dbg !1897 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1934, metadata !DIExpression()), !dbg !1935
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1936, metadata !DIExpression()), !dbg !1937
  store %struct._IO_FILE* %2, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !1938, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1940, metadata !DIExpression()), !dbg !1941
  store i8 0, i8* %7, align 1, !dbg !1941
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1942, metadata !DIExpression()), !dbg !1943
  store i8 0, i8* %8, align 1, !dbg !1943
  call void @llvm.dbg.declare(metadata i8* %9, metadata !1944, metadata !DIExpression()), !dbg !1945
  store i8 0, i8* %9, align 1, !dbg !1945
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1946, metadata !DIExpression()), !dbg !1947
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !1948
  %12 = call i32 @fileno(%struct._IO_FILE* %11) #15, !dbg !1949
  switch i32 %12, label %13 [
    i32 2, label %18
    i32 1, label %23
    i32 0, label %28
  ], !dbg !1950

13:                                               ; preds = %3
  %14 = call i32 @dup2(i32 2, i32 2) #15, !dbg !1951
  %15 = icmp ne i32 %14, 2, !dbg !1954
  br i1 %15, label %16, label %17, !dbg !1955

16:                                               ; preds = %13
  store i8 1, i8* %9, align 1, !dbg !1956
  br label %17, !dbg !1957

17:                                               ; preds = %16, %13
  br label %18, !dbg !1958

18:                                               ; preds = %3, %17
  %19 = call i32 @dup2(i32 1, i32 1) #15, !dbg !1959
  %20 = icmp ne i32 %19, 1, !dbg !1961
  br i1 %20, label %21, label %22, !dbg !1962

21:                                               ; preds = %18
  store i8 1, i8* %8, align 1, !dbg !1963
  br label %22, !dbg !1964

22:                                               ; preds = %21, %18
  br label %23, !dbg !1965

23:                                               ; preds = %3, %22
  %24 = call i32 @dup2(i32 0, i32 0) #15, !dbg !1966
  %25 = icmp ne i32 %24, 0, !dbg !1968
  br i1 %25, label %26, label %27, !dbg !1969

26:                                               ; preds = %23
  store i8 1, i8* %7, align 1, !dbg !1970
  br label %27, !dbg !1971

27:                                               ; preds = %26, %23
  br label %28, !dbg !1972

28:                                               ; preds = %3, %27
  br label %29, !dbg !1973

29:                                               ; preds = %28
  %30 = load i8, i8* %7, align 1, !dbg !1974
  %31 = trunc i8 %30 to i1, !dbg !1974
  br i1 %31, label %32, label %35, !dbg !1976

32:                                               ; preds = %29
  %33 = call zeroext i1 @protect_fd(i32 0), !dbg !1977
  br i1 %33, label %35, label %34, !dbg !1978

34:                                               ; preds = %32
  store %struct._IO_FILE* null, %struct._IO_FILE** %6, align 8, !dbg !1979
  br label %54, !dbg !1980

35:                                               ; preds = %32, %29
  %36 = load i8, i8* %8, align 1, !dbg !1981
  %37 = trunc i8 %36 to i1, !dbg !1981
  br i1 %37, label %38, label %41, !dbg !1983

38:                                               ; preds = %35
  %39 = call zeroext i1 @protect_fd(i32 1), !dbg !1984
  br i1 %39, label %41, label %40, !dbg !1985

40:                                               ; preds = %38
  store %struct._IO_FILE* null, %struct._IO_FILE** %6, align 8, !dbg !1986
  br label %53, !dbg !1987

41:                                               ; preds = %38, %35
  %42 = load i8, i8* %9, align 1, !dbg !1988
  %43 = trunc i8 %42 to i1, !dbg !1988
  br i1 %43, label %44, label %47, !dbg !1990

44:                                               ; preds = %41
  %45 = call zeroext i1 @protect_fd(i32 2), !dbg !1991
  br i1 %45, label %47, label %46, !dbg !1992

46:                                               ; preds = %44
  store %struct._IO_FILE* null, %struct._IO_FILE** %6, align 8, !dbg !1993
  br label %52, !dbg !1994

47:                                               ; preds = %44, %41
  %48 = load i8*, i8** %4, align 8, !dbg !1995
  %49 = load i8*, i8** %5, align 8, !dbg !1996
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !1997
  %51 = call %struct._IO_FILE* @freopen(i8* %48, i8* %49, %struct._IO_FILE* %50), !dbg !1998
  store %struct._IO_FILE* %51, %struct._IO_FILE** %6, align 8, !dbg !1999
  br label %52

52:                                               ; preds = %47, %46
  br label %53

53:                                               ; preds = %52, %40
  br label %54

54:                                               ; preds = %53, %34
  %55 = call i32* @__errno_location() #17, !dbg !2000
  %56 = load i32, i32* %55, align 4, !dbg !2000
  store i32 %56, i32* %10, align 4, !dbg !2001
  %57 = load i8, i8* %9, align 1, !dbg !2002
  %58 = trunc i8 %57 to i1, !dbg !2002
  br i1 %58, label %59, label %61, !dbg !2004

59:                                               ; preds = %54
  %60 = call i32 @close(i32 2), !dbg !2005
  br label %61, !dbg !2005

61:                                               ; preds = %59, %54
  %62 = load i8, i8* %8, align 1, !dbg !2006
  %63 = trunc i8 %62 to i1, !dbg !2006
  br i1 %63, label %64, label %66, !dbg !2008

64:                                               ; preds = %61
  %65 = call i32 @close(i32 1), !dbg !2009
  br label %66, !dbg !2009

66:                                               ; preds = %64, %61
  %67 = load i8, i8* %7, align 1, !dbg !2010
  %68 = trunc i8 %67 to i1, !dbg !2010
  br i1 %68, label %69, label %71, !dbg !2012

69:                                               ; preds = %66
  %70 = call i32 @close(i32 0), !dbg !2013
  br label %71, !dbg !2013

71:                                               ; preds = %69, %66
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2014
  %73 = icmp ne %struct._IO_FILE* %72, null, !dbg !2014
  br i1 %73, label %77, label %74, !dbg !2016

74:                                               ; preds = %71
  %75 = load i32, i32* %10, align 4, !dbg !2017
  %76 = call i32* @__errno_location() #17, !dbg !2018
  store i32 %75, i32* %76, align 4, !dbg !2019
  br label %77, !dbg !2018

77:                                               ; preds = %74, %71
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2020
  ret %struct._IO_FILE* %78, !dbg !2021
}

; Function Attrs: nounwind
declare dso_local i32 @dup2(i32, i32) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @protect_fd(i32 %0) #3 !dbg !2022 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2025, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2027, metadata !DIExpression()), !dbg !2028
  %5 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i64 0, i64 0), i32 0), !dbg !2029
  store i32 %5, i32* %4, align 4, !dbg !2028
  %6 = load i32, i32* %4, align 4, !dbg !2030
  %7 = load i32, i32* %3, align 4, !dbg !2032
  %8 = icmp ne i32 %6, %7, !dbg !2033
  br i1 %8, label %9, label %17, !dbg !2034

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4, !dbg !2035
  %11 = icmp sle i32 0, %10, !dbg !2038
  br i1 %11, label %12, label %16, !dbg !2039

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4, !dbg !2040
  %14 = call i32 @close(i32 %13), !dbg !2042
  %15 = call i32* @__errno_location() #17, !dbg !2043
  store i32 9, i32* %15, align 4, !dbg !2044
  br label %16, !dbg !2045

16:                                               ; preds = %12, %9
  store i1 false, i1* %2, align 1, !dbg !2046
  br label %18, !dbg !2046

17:                                               ; preds = %1
  store i1 true, i1* %2, align 1, !dbg !2047
  br label %18, !dbg !2047

18:                                               ; preds = %17, %16
  %19 = load i1, i1* %2, align 1, !dbg !2048
  ret i1 %19, !dbg !2048
}

declare dso_local %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @open(i8*, i32, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initbuffer(%struct.linebuffer* %0) #3 !dbg !2049 {
  %2 = alloca %struct.linebuffer*, align 8
  store %struct.linebuffer* %0, %struct.linebuffer** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %2, metadata !2058, metadata !DIExpression()), !dbg !2059
  %3 = load %struct.linebuffer*, %struct.linebuffer** %2, align 8, !dbg !2060
  %4 = bitcast %struct.linebuffer* %3 to i8*, !dbg !2061
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 24, i1 false), !dbg !2061
  ret void, !dbg !2062
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.linebuffer* @readlinebuffer(%struct.linebuffer* %0, %struct._IO_FILE* %1) #3 !dbg !2063 {
  %3 = alloca %struct.linebuffer*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  store %struct.linebuffer* %0, %struct.linebuffer** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %3, metadata !2100, metadata !DIExpression()), !dbg !2101
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !2102, metadata !DIExpression()), !dbg !2103
  %5 = load %struct.linebuffer*, %struct.linebuffer** %3, align 8, !dbg !2104
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2105
  %7 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %5, %struct._IO_FILE* %6, i8 signext 10), !dbg !2106
  ret %struct.linebuffer* %7, !dbg !2107
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %0, %struct._IO_FILE* %1, i8 signext %2) #3 !dbg !2108 {
  %4 = alloca %struct.linebuffer*, align 8
  %5 = alloca %struct.linebuffer*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.linebuffer* %0, %struct.linebuffer** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %5, metadata !2111, metadata !DIExpression()), !dbg !2112
  store %struct._IO_FILE* %1, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !2113, metadata !DIExpression()), !dbg !2114
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !2115, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2117, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2119, metadata !DIExpression()), !dbg !2120
  %13 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2121
  %14 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %13, i32 0, i32 2, !dbg !2122
  %15 = load i8*, i8** %14, align 8, !dbg !2122
  store i8* %15, i8** %9, align 8, !dbg !2120
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2123, metadata !DIExpression()), !dbg !2124
  %16 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2125
  %17 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %16, i32 0, i32 2, !dbg !2126
  %18 = load i8*, i8** %17, align 8, !dbg !2126
  store i8* %18, i8** %10, align 8, !dbg !2124
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2127, metadata !DIExpression()), !dbg !2128
  %19 = load i8*, i8** %9, align 8, !dbg !2129
  %20 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2130
  %21 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %20, i32 0, i32 0, !dbg !2131
  %22 = load i64, i64* %21, align 8, !dbg !2131
  %23 = getelementptr inbounds i8, i8* %19, i64 %22, !dbg !2132
  store i8* %23, i8** %11, align 8, !dbg !2128
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2133
  %25 = call i32 @feof_unlocked(%struct._IO_FILE* %24) #15, !dbg !2133
  %26 = icmp ne i32 %25, 0, !dbg !2133
  br i1 %26, label %27, label %28, !dbg !2135

27:                                               ; preds = %3
  store %struct.linebuffer* null, %struct.linebuffer** %4, align 8, !dbg !2136
  br label %97, !dbg !2136

28:                                               ; preds = %3
  br label %29, !dbg !2137

29:                                               ; preds = %83, %28
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2138
  %31 = call i32 @getc_unlocked(%struct._IO_FILE* %30), !dbg !2138
  store i32 %31, i32* %8, align 4, !dbg !2140
  %32 = load i32, i32* %8, align 4, !dbg !2141
  %33 = icmp eq i32 %32, -1, !dbg !2143
  br i1 %33, label %34, label %55, !dbg !2144

34:                                               ; preds = %29
  %35 = load i8*, i8** %10, align 8, !dbg !2145
  %36 = load i8*, i8** %9, align 8, !dbg !2148
  %37 = icmp eq i8* %35, %36, !dbg !2149
  br i1 %37, label %42, label %38, !dbg !2150

38:                                               ; preds = %34
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2151
  %40 = call i32 @ferror_unlocked(%struct._IO_FILE* %39) #15, !dbg !2151
  %41 = icmp ne i32 %40, 0, !dbg !2151
  br i1 %41, label %42, label %43, !dbg !2152

42:                                               ; preds = %38, %34
  store %struct.linebuffer* null, %struct.linebuffer** %4, align 8, !dbg !2153
  br label %97, !dbg !2153

43:                                               ; preds = %38
  %44 = load i8*, i8** %10, align 8, !dbg !2154
  %45 = getelementptr inbounds i8, i8* %44, i64 -1, !dbg !2154
  %46 = load i8, i8* %45, align 1, !dbg !2154
  %47 = sext i8 %46 to i32, !dbg !2154
  %48 = load i8, i8* %7, align 1, !dbg !2156
  %49 = sext i8 %48 to i32, !dbg !2156
  %50 = icmp eq i32 %47, %49, !dbg !2157
  br i1 %50, label %51, label %52, !dbg !2158

51:                                               ; preds = %43
  br label %88, !dbg !2159

52:                                               ; preds = %43
  %53 = load i8, i8* %7, align 1, !dbg !2160
  %54 = sext i8 %53 to i32, !dbg !2160
  store i32 %54, i32* %8, align 4, !dbg !2161
  br label %55, !dbg !2162

55:                                               ; preds = %52, %29
  %56 = load i8*, i8** %10, align 8, !dbg !2163
  %57 = load i8*, i8** %11, align 8, !dbg !2165
  %58 = icmp eq i8* %56, %57, !dbg !2166
  br i1 %58, label %59, label %78, !dbg !2167

59:                                               ; preds = %55
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2168, metadata !DIExpression()), !dbg !2170
  %60 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2171
  %61 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %60, i32 0, i32 0, !dbg !2172
  %62 = load i64, i64* %61, align 8, !dbg !2172
  store i64 %62, i64* %12, align 8, !dbg !2170
  %63 = load i8*, i8** %9, align 8, !dbg !2173
  %64 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2174
  %65 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %64, i32 0, i32 0, !dbg !2175
  %66 = call i8* @x2realloc(i8* %63, i64* %65), !dbg !2176
  store i8* %66, i8** %9, align 8, !dbg !2177
  %67 = load i8*, i8** %9, align 8, !dbg !2178
  %68 = load i64, i64* %12, align 8, !dbg !2179
  %69 = getelementptr inbounds i8, i8* %67, i64 %68, !dbg !2180
  store i8* %69, i8** %10, align 8, !dbg !2181
  %70 = load i8*, i8** %9, align 8, !dbg !2182
  %71 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2183
  %72 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %71, i32 0, i32 2, !dbg !2184
  store i8* %70, i8** %72, align 8, !dbg !2185
  %73 = load i8*, i8** %9, align 8, !dbg !2186
  %74 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2187
  %75 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %74, i32 0, i32 0, !dbg !2188
  %76 = load i64, i64* %75, align 8, !dbg !2188
  %77 = getelementptr inbounds i8, i8* %73, i64 %76, !dbg !2189
  store i8* %77, i8** %11, align 8, !dbg !2190
  br label %78, !dbg !2191

78:                                               ; preds = %59, %55
  %79 = load i32, i32* %8, align 4, !dbg !2192
  %80 = trunc i32 %79 to i8, !dbg !2192
  %81 = load i8*, i8** %10, align 8, !dbg !2193
  %82 = getelementptr inbounds i8, i8* %81, i32 1, !dbg !2193
  store i8* %82, i8** %10, align 8, !dbg !2193
  store i8 %80, i8* %81, align 1, !dbg !2194
  br label %83, !dbg !2195

83:                                               ; preds = %78
  %84 = load i32, i32* %8, align 4, !dbg !2196
  %85 = load i8, i8* %7, align 1, !dbg !2197
  %86 = sext i8 %85 to i32, !dbg !2197
  %87 = icmp ne i32 %84, %86, !dbg !2198
  br i1 %87, label %29, label %88, !dbg !2195, !llvm.loop !2199

88:                                               ; preds = %83, %51
  %89 = load i8*, i8** %10, align 8, !dbg !2201
  %90 = load i8*, i8** %9, align 8, !dbg !2202
  %91 = ptrtoint i8* %89 to i64, !dbg !2203
  %92 = ptrtoint i8* %90 to i64, !dbg !2203
  %93 = sub i64 %91, %92, !dbg !2203
  %94 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2204
  %95 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %94, i32 0, i32 1, !dbg !2205
  store i64 %93, i64* %95, align 8, !dbg !2206
  %96 = load %struct.linebuffer*, %struct.linebuffer** %5, align 8, !dbg !2207
  store %struct.linebuffer* %96, %struct.linebuffer** %4, align 8, !dbg !2208
  br label %97, !dbg !2208

97:                                               ; preds = %88, %42, %27
  %98 = load %struct.linebuffer*, %struct.linebuffer** %4, align 8, !dbg !2209
  ret %struct.linebuffer* %98, !dbg !2209
}

declare dso_local i32 @getc_unlocked(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freebuffer(%struct.linebuffer* %0) #3 !dbg !2210 {
  %2 = alloca %struct.linebuffer*, align 8
  store %struct.linebuffer* %0, %struct.linebuffer** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.linebuffer** %2, metadata !2211, metadata !DIExpression()), !dbg !2212
  %3 = load %struct.linebuffer*, %struct.linebuffer** %2, align 8, !dbg !2213
  %4 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %3, i32 0, i32 2, !dbg !2214
  %5 = load i8*, i8** %4, align 8, !dbg !2214
  call void @free(i8* %5) #15, !dbg !2215
  ret void, !dbg !2216
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i32 @memcasecmp(i8* %0, i8* %1, i64 %2) #9 !dbg !2217 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2220, metadata !DIExpression()), !dbg !2221
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2222, metadata !DIExpression()), !dbg !2223
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2224, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2226, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2228, metadata !DIExpression()), !dbg !2229
  %16 = load i8*, i8** %5, align 8, !dbg !2230
  store i8* %16, i8** %9, align 8, !dbg !2229
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2231, metadata !DIExpression()), !dbg !2232
  %17 = load i8*, i8** %6, align 8, !dbg !2233
  store i8* %17, i8** %10, align 8, !dbg !2232
  store i64 0, i64* %8, align 8, !dbg !2234
  br label %18, !dbg !2236

18:                                               ; preds = %45, %3
  %19 = load i64, i64* %8, align 8, !dbg !2237
  %20 = load i64, i64* %7, align 8, !dbg !2239
  %21 = icmp ult i64 %19, %20, !dbg !2240
  br i1 %21, label %22, label %48, !dbg !2241

22:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata i8* %11, metadata !2242, metadata !DIExpression()), !dbg !2244
  %23 = load i8*, i8** %9, align 8, !dbg !2245
  %24 = load i64, i64* %8, align 8, !dbg !2246
  %25 = getelementptr inbounds i8, i8* %23, i64 %24, !dbg !2245
  %26 = load i8, i8* %25, align 1, !dbg !2245
  store i8 %26, i8* %11, align 1, !dbg !2244
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2247, metadata !DIExpression()), !dbg !2248
  %27 = load i8*, i8** %10, align 8, !dbg !2249
  %28 = load i64, i64* %8, align 8, !dbg !2250
  %29 = getelementptr inbounds i8, i8* %27, i64 %28, !dbg !2249
  %30 = load i8, i8* %29, align 1, !dbg !2249
  store i8 %30, i8* %12, align 1, !dbg !2248
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2251, metadata !DIExpression()), !dbg !2252
  %31 = load i8, i8* %11, align 1, !dbg !2253
  %32 = zext i8 %31 to i32, !dbg !2253
  %33 = call i32 @toupper(i32 %32) #14, !dbg !2254
  store i32 %33, i32* %13, align 4, !dbg !2252
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2255, metadata !DIExpression()), !dbg !2256
  %34 = load i8, i8* %12, align 1, !dbg !2257
  %35 = zext i8 %34 to i32, !dbg !2257
  %36 = call i32 @toupper(i32 %35) #14, !dbg !2258
  store i32 %36, i32* %14, align 4, !dbg !2256
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2259, metadata !DIExpression()), !dbg !2260
  %37 = load i32, i32* %13, align 4, !dbg !2261
  %38 = load i32, i32* %14, align 4, !dbg !2262
  %39 = sub nsw i32 %37, %38, !dbg !2263
  store i32 %39, i32* %15, align 4, !dbg !2260
  %40 = load i32, i32* %15, align 4, !dbg !2264
  %41 = icmp ne i32 %40, 0, !dbg !2264
  br i1 %41, label %42, label %44, !dbg !2266

42:                                               ; preds = %22
  %43 = load i32, i32* %15, align 4, !dbg !2267
  store i32 %43, i32* %4, align 4, !dbg !2268
  br label %49, !dbg !2268

44:                                               ; preds = %22
  br label %45, !dbg !2269

45:                                               ; preds = %44
  %46 = load i64, i64* %8, align 8, !dbg !2270
  %47 = add i64 %46, 1, !dbg !2270
  store i64 %47, i64* %8, align 8, !dbg !2270
  br label %18, !dbg !2271, !llvm.loop !2272

48:                                               ; preds = %18
  store i32 0, i32* %4, align 4, !dbg !2274
  br label %49, !dbg !2274

49:                                               ; preds = %48, %42
  %50 = load i32, i32* %4, align 4, !dbg !2275
  ret i32 %50, !dbg !2275
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @toupper(i32) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @posix2_version() #3 !dbg !2276 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %1, metadata !2279, metadata !DIExpression()), !dbg !2280
  store i64 200809, i64* %1, align 8, !dbg !2280
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2281, metadata !DIExpression()), !dbg !2282
  %5 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.101, i64 0, i64 0)) #15, !dbg !2283
  store i8* %5, i8** %2, align 8, !dbg !2282
  %6 = load i8*, i8** %2, align 8, !dbg !2284
  %7 = icmp ne i8* %6, null, !dbg !2284
  br i1 %7, label %8, label %22, !dbg !2286

8:                                                ; preds = %0
  %9 = load i8*, i8** %2, align 8, !dbg !2287
  %10 = load i8, i8* %9, align 1, !dbg !2288
  %11 = sext i8 %10 to i32, !dbg !2288
  %12 = icmp ne i32 %11, 0, !dbg !2288
  br i1 %12, label %13, label %22, !dbg !2289

13:                                               ; preds = %8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2290, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2293, metadata !DIExpression()), !dbg !2294
  %14 = load i8*, i8** %2, align 8, !dbg !2295
  %15 = call i64 @strtol(i8* %14, i8** %3, i32 10) #15, !dbg !2296
  store i64 %15, i64* %4, align 8, !dbg !2294
  %16 = load i8*, i8** %3, align 8, !dbg !2297
  %17 = load i8, i8* %16, align 1, !dbg !2299
  %18 = icmp ne i8 %17, 0, !dbg !2299
  br i1 %18, label %21, label %19, !dbg !2300

19:                                               ; preds = %13
  %20 = load i64, i64* %4, align 8, !dbg !2301
  store i64 %20, i64* %1, align 8, !dbg !2302
  br label %21, !dbg !2303

21:                                               ; preds = %19, %13
  br label %22, !dbg !2304

22:                                               ; preds = %21, %8, %0
  %23 = load i64, i64* %1, align 8, !dbg !2305
  %24 = icmp slt i64 %23, -2147483648, !dbg !2306
  br i1 %24, label %25, label %26, !dbg !2305

25:                                               ; preds = %22
  br label %34, !dbg !2305

26:                                               ; preds = %22
  %27 = load i64, i64* %1, align 8, !dbg !2307
  %28 = icmp slt i64 %27, 2147483647, !dbg !2308
  br i1 %28, label %29, label %31, !dbg !2307

29:                                               ; preds = %26
  %30 = load i64, i64* %1, align 8, !dbg !2309
  br label %32, !dbg !2307

31:                                               ; preds = %26
  br label %32, !dbg !2307

32:                                               ; preds = %31, %29
  %33 = phi i64 [ %30, %29 ], [ 2147483647, %31 ], !dbg !2307
  br label %34, !dbg !2305

34:                                               ; preds = %32, %25
  %35 = phi i64 [ -2147483648, %25 ], [ %33, %32 ], !dbg !2305
  %36 = trunc i64 %35 to i32, !dbg !2305
  ret i32 %36, !dbg !2310
}

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8*, i8**, i32) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* %0) #3 !dbg !2311 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2312, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2314, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2316, metadata !DIExpression()), !dbg !2317
  %5 = load i8*, i8** %2, align 8, !dbg !2318
  %6 = icmp eq i8* %5, null, !dbg !2320
  br i1 %6, label %7, label %10, !dbg !2321

7:                                                ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2322
  %9 = call i32 @fputs(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.106, i64 0, i64 0), %struct._IO_FILE* %8), !dbg !2324
  call void @abort() #13, !dbg !2325
  unreachable, !dbg !2325

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8, !dbg !2326
  %12 = call i8* @strrchr(i8* %11, i32 47) #14, !dbg !2327
  store i8* %12, i8** %3, align 8, !dbg !2328
  %13 = load i8*, i8** %3, align 8, !dbg !2329
  %14 = icmp ne i8* %13, null, !dbg !2330
  br i1 %14, label %15, label %18, !dbg !2329

15:                                               ; preds = %10
  %16 = load i8*, i8** %3, align 8, !dbg !2331
  %17 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !2332
  br label %20, !dbg !2329

18:                                               ; preds = %10
  %19 = load i8*, i8** %2, align 8, !dbg !2333
  br label %20, !dbg !2329

20:                                               ; preds = %18, %15
  %21 = phi i8* [ %17, %15 ], [ %19, %18 ], !dbg !2329
  store i8* %21, i8** %4, align 8, !dbg !2334
  %22 = load i8*, i8** %4, align 8, !dbg !2335
  %23 = load i8*, i8** %2, align 8, !dbg !2337
  %24 = ptrtoint i8* %22 to i64, !dbg !2338
  %25 = ptrtoint i8* %23 to i64, !dbg !2338
  %26 = sub i64 %24, %25, !dbg !2338
  %27 = icmp sge i64 %26, 7, !dbg !2339
  br i1 %27, label %28, label %43, !dbg !2340

28:                                               ; preds = %20
  %29 = load i8*, i8** %4, align 8, !dbg !2341
  %30 = getelementptr inbounds i8, i8* %29, i64 -7, !dbg !2342
  %31 = call i32 @strncmp(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.107, i64 0, i64 0), i64 7) #14, !dbg !2343
  %32 = icmp eq i32 %31, 0, !dbg !2344
  br i1 %32, label %33, label %43, !dbg !2345

33:                                               ; preds = %28
  %34 = load i8*, i8** %4, align 8, !dbg !2346
  store i8* %34, i8** %2, align 8, !dbg !2348
  %35 = load i8*, i8** %4, align 8, !dbg !2349
  %36 = call i32 @strncmp(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.108, i64 0, i64 0), i64 3) #14, !dbg !2351
  %37 = icmp eq i32 %36, 0, !dbg !2352
  br i1 %37, label %38, label %42, !dbg !2353

38:                                               ; preds = %33
  %39 = load i8*, i8** %4, align 8, !dbg !2354
  %40 = getelementptr inbounds i8, i8* %39, i64 3, !dbg !2356
  store i8* %40, i8** %2, align 8, !dbg !2357
  %41 = load i8*, i8** %2, align 8, !dbg !2358
  store i8* %41, i8** @program_invocation_short_name, align 8, !dbg !2359
  br label %42, !dbg !2360

42:                                               ; preds = %38, %33
  br label %43, !dbg !2361

43:                                               ; preds = %42, %28, %20
  %44 = load i8*, i8** %2, align 8, !dbg !2362
  store i8* %44, i8** @program_name, align 8, !dbg !2363
  %45 = load i8*, i8** %2, align 8, !dbg !2364
  store i8* %45, i8** @program_invocation_name, align 8, !dbg !2365
  ret void, !dbg !2366
}

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strrchr(i8*, i32) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) #3 !dbg !2367 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !2371, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2373, metadata !DIExpression()), !dbg !2374
  %5 = call i32* @__errno_location() #17, !dbg !2375
  %6 = load i32, i32* %5, align 4, !dbg !2375
  store i32 %6, i32* %3, align 4, !dbg !2374
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !2376, metadata !DIExpression()), !dbg !2377
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2378
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !2378
  br i1 %8, label %9, label %11, !dbg !2378

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2379
  br label %12, !dbg !2378

11:                                               ; preds = %1
  br label %12, !dbg !2378

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !2378
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !2378
  %15 = call i8* @xmemdup(i8* %14, i64 56), !dbg !2380
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !2380
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !2377
  %17 = load i32, i32* %3, align 4, !dbg !2381
  %18 = call i32* @__errno_location() #17, !dbg !2382
  store i32 %17, i32* %18, align 4, !dbg !2383
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2384
  ret %struct.quoting_options* %19, !dbg !2385
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* %0) #3 !dbg !2386 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !2391, metadata !DIExpression()), !dbg !2392
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2393
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !2393
  br i1 %4, label %5, label %7, !dbg !2393

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !2394
  br label %8, !dbg !2393

7:                                                ; preds = %1
  br label %8, !dbg !2393

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !2393
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !2395
  %11 = load i32, i32* %10, align 8, !dbg !2395
  ret i32 %11, !dbg !2396
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) #3 !dbg !2397 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !2400, metadata !DIExpression()), !dbg !2401
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2402, metadata !DIExpression()), !dbg !2403
  %5 = load i32, i32* %4, align 4, !dbg !2404
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2405
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !2405
  br i1 %7, label %8, label %10, !dbg !2405

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2406
  br label %11, !dbg !2405

10:                                               ; preds = %2
  br label %11, !dbg !2405

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !2405
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !2407
  store i32 %5, i32* %13, align 8, !dbg !2408
  ret void, !dbg !2409
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) #3 !dbg !2410 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !2413, metadata !DIExpression()), !dbg !2414
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2415, metadata !DIExpression()), !dbg !2416
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2417, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.declare(metadata i8* %7, metadata !2419, metadata !DIExpression()), !dbg !2420
  %11 = load i8, i8* %5, align 1, !dbg !2421
  store i8 %11, i8* %7, align 1, !dbg !2420
  call void @llvm.dbg.declare(metadata i32** %8, metadata !2422, metadata !DIExpression()), !dbg !2424
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2425
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !2425
  br i1 %13, label %14, label %16, !dbg !2425

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2426
  br label %17, !dbg !2425

16:                                               ; preds = %3
  br label %17, !dbg !2425

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !2425
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !2427
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !2428
  %21 = load i8, i8* %7, align 1, !dbg !2429
  %22 = zext i8 %21 to i64, !dbg !2429
  %23 = udiv i64 %22, 32, !dbg !2430
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !2431
  store i32* %24, i32** %8, align 8, !dbg !2424
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2432, metadata !DIExpression()), !dbg !2433
  %25 = load i8, i8* %7, align 1, !dbg !2434
  %26 = zext i8 %25 to i64, !dbg !2434
  %27 = urem i64 %26, 32, !dbg !2435
  %28 = trunc i64 %27 to i32, !dbg !2434
  store i32 %28, i32* %9, align 4, !dbg !2433
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2436, metadata !DIExpression()), !dbg !2437
  %29 = load i32*, i32** %8, align 8, !dbg !2438
  %30 = load i32, i32* %29, align 4, !dbg !2439
  %31 = load i32, i32* %9, align 4, !dbg !2440
  %32 = lshr i32 %30, %31, !dbg !2441
  %33 = and i32 %32, 1, !dbg !2442
  store i32 %33, i32* %10, align 4, !dbg !2437
  %34 = load i32, i32* %6, align 4, !dbg !2443
  %35 = and i32 %34, 1, !dbg !2444
  %36 = load i32, i32* %10, align 4, !dbg !2445
  %37 = xor i32 %35, %36, !dbg !2446
  %38 = load i32, i32* %9, align 4, !dbg !2447
  %39 = shl i32 %37, %38, !dbg !2448
  %40 = load i32*, i32** %8, align 8, !dbg !2449
  %41 = load i32, i32* %40, align 4, !dbg !2450
  %42 = xor i32 %41, %39, !dbg !2450
  store i32 %42, i32* %40, align 4, !dbg !2450
  %43 = load i32, i32* %10, align 4, !dbg !2451
  ret i32 %43, !dbg !2452
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) #3 !dbg !2453 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !2456, metadata !DIExpression()), !dbg !2457
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2458, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2460, metadata !DIExpression()), !dbg !2461
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2462
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !2462
  br i1 %7, label %9, label %8, !dbg !2464

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !2465
  br label %9, !dbg !2466

9:                                                ; preds = %8, %2
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2467
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !2468
  %12 = load i32, i32* %11, align 4, !dbg !2468
  store i32 %12, i32* %5, align 4, !dbg !2469
  %13 = load i32, i32* %4, align 4, !dbg !2470
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !2471
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !2472
  store i32 %13, i32* %15, align 4, !dbg !2473
  %16 = load i32, i32* %5, align 4, !dbg !2474
  ret i32 %16, !dbg !2475
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) #3 !dbg !2476 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !2479, metadata !DIExpression()), !dbg !2480
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2481, metadata !DIExpression()), !dbg !2482
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2483, metadata !DIExpression()), !dbg !2484
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2485
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !2485
  br i1 %8, label %10, label %9, !dbg !2487

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !2488
  br label %10, !dbg !2489

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2490
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !2491
  store i32 10, i32* %12, align 8, !dbg !2492
  %13 = load i8*, i8** %5, align 8, !dbg !2493
  %14 = icmp ne i8* %13, null, !dbg !2493
  br i1 %14, label %15, label %18, !dbg !2495

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !2496
  %17 = icmp ne i8* %16, null, !dbg !2496
  br i1 %17, label %19, label %18, !dbg !2497

18:                                               ; preds = %15, %10
  call void @abort() #13, !dbg !2498
  unreachable, !dbg !2498

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !2499
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2500
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !2501
  store i8* %20, i8** %22, align 8, !dbg !2502
  %23 = load i8*, i8** %6, align 8, !dbg !2503
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2504
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !2505
  store i8* %23, i8** %25, align 8, !dbg !2506
  ret void, !dbg !2507
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* %4) #3 !dbg !2508 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2511, metadata !DIExpression()), !dbg !2512
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2513, metadata !DIExpression()), !dbg !2514
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2515, metadata !DIExpression()), !dbg !2516
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2517, metadata !DIExpression()), !dbg !2518
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !2519, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !2521, metadata !DIExpression()), !dbg !2522
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !2523
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2523
  br i1 %15, label %16, label %18, !dbg !2523

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !2524
  br label %19, !dbg !2523

18:                                               ; preds = %5
  br label %19, !dbg !2523

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2523
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !2522
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2525, metadata !DIExpression()), !dbg !2526
  %21 = call i32* @__errno_location() #17, !dbg !2527
  %22 = load i32, i32* %21, align 4, !dbg !2527
  store i32 %22, i32* %12, align 4, !dbg !2526
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2528, metadata !DIExpression()), !dbg !2529
  %23 = load i8*, i8** %6, align 8, !dbg !2530
  %24 = load i64, i64* %7, align 8, !dbg !2531
  %25 = load i8*, i8** %8, align 8, !dbg !2532
  %26 = load i64, i64* %9, align 8, !dbg !2533
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2534
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !2535
  %29 = load i32, i32* %28, align 8, !dbg !2535
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2536
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !2537
  %32 = load i32, i32* %31, align 4, !dbg !2537
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2538
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !2539
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !2538
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2540
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !2541
  %38 = load i8*, i8** %37, align 8, !dbg !2541
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2542
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !2543
  %41 = load i8*, i8** %40, align 8, !dbg !2543
  %42 = call i64 @quotearg_buffer_restyled(i8* %23, i64 %24, i8* %25, i64 %26, i32 %29, i32 %32, i32* %35, i8* %38, i8* %41), !dbg !2544
  store i64 %42, i64* %13, align 8, !dbg !2529
  %43 = load i32, i32* %12, align 4, !dbg !2545
  %44 = call i32* @__errno_location() #17, !dbg !2546
  store i32 %43, i32* %44, align 4, !dbg !2547
  %45 = load i64, i64* %13, align 8, !dbg !2548
  ret i64 %45, !dbg !2549
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* %6, i8* %7, i8* %8) #3 !dbg !2550 {
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  %28 = alloca i8, align 1
  %29 = alloca i8, align 1
  %30 = alloca i8, align 1
  %31 = alloca i8, align 1
  %32 = alloca i8, align 1
  %33 = alloca i8, align 1
  %34 = alloca i8, align 1
  %35 = alloca i8, align 1
  %36 = alloca i64, align 8
  %37 = alloca i8, align 1
  %38 = alloca %struct.__mbstate_t, align 4
  %39 = alloca i32, align 4
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  store i8* %0, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2555, metadata !DIExpression()), !dbg !2556
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2557, metadata !DIExpression()), !dbg !2558
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2559, metadata !DIExpression()), !dbg !2560
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2561, metadata !DIExpression()), !dbg !2562
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2563, metadata !DIExpression()), !dbg !2564
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2565, metadata !DIExpression()), !dbg !2566
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !2567, metadata !DIExpression()), !dbg !2568
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !2569, metadata !DIExpression()), !dbg !2570
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !2571, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.declare(metadata i64* %20, metadata !2573, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.declare(metadata i64* %21, metadata !2575, metadata !DIExpression()), !dbg !2576
  store i64 0, i64* %21, align 8, !dbg !2576
  call void @llvm.dbg.declare(metadata i64* %22, metadata !2577, metadata !DIExpression()), !dbg !2578
  store i64 0, i64* %22, align 8, !dbg !2578
  call void @llvm.dbg.declare(metadata i8** %23, metadata !2579, metadata !DIExpression()), !dbg !2580
  store i8* null, i8** %23, align 8, !dbg !2580
  call void @llvm.dbg.declare(metadata i64* %24, metadata !2581, metadata !DIExpression()), !dbg !2582
  store i64 0, i64* %24, align 8, !dbg !2582
  call void @llvm.dbg.declare(metadata i8* %25, metadata !2583, metadata !DIExpression()), !dbg !2584
  store i8 0, i8* %25, align 1, !dbg !2584
  call void @llvm.dbg.declare(metadata i8* %26, metadata !2585, metadata !DIExpression()), !dbg !2586
  %43 = call i64 @__ctype_get_mb_cur_max() #15, !dbg !2587
  %44 = icmp eq i64 %43, 1, !dbg !2588
  %45 = zext i1 %44 to i8, !dbg !2586
  store i8 %45, i8* %26, align 1, !dbg !2586
  call void @llvm.dbg.declare(metadata i8* %27, metadata !2589, metadata !DIExpression()), !dbg !2590
  %46 = load i32, i32* %16, align 4, !dbg !2591
  %47 = and i32 %46, 2, !dbg !2592
  %48 = icmp ne i32 %47, 0, !dbg !2593
  %49 = zext i1 %48 to i8, !dbg !2590
  store i8 %49, i8* %27, align 1, !dbg !2590
  call void @llvm.dbg.declare(metadata i8* %28, metadata !2594, metadata !DIExpression()), !dbg !2595
  store i8 0, i8* %28, align 1, !dbg !2595
  call void @llvm.dbg.declare(metadata i8* %29, metadata !2596, metadata !DIExpression()), !dbg !2597
  store i8 0, i8* %29, align 1, !dbg !2597
  call void @llvm.dbg.declare(metadata i8* %30, metadata !2598, metadata !DIExpression()), !dbg !2599
  store i8 1, i8* %30, align 1, !dbg !2599
  br label %50, !dbg !2600

50:                                               ; preds = %1042, %9
  call void @llvm.dbg.label(metadata !2601), !dbg !2602
  %51 = load i32, i32* %15, align 4, !dbg !2603
  switch i32 %51, label %136 [
    i32 6, label %52
    i32 5, label %53
    i32 7, label %70
    i32 8, label %71
    i32 9, label %71
    i32 10, label %71
    i32 3, label %111
    i32 1, label %112
    i32 4, label %113
    i32 2, label %118
    i32 0, label %135
  ], !dbg !2604

52:                                               ; preds = %50
  store i32 5, i32* %15, align 4, !dbg !2605
  store i8 1, i8* %27, align 1, !dbg !2607
  br label %53, !dbg !2608

53:                                               ; preds = %50, %52
  %54 = load i8, i8* %27, align 1, !dbg !2609
  %55 = trunc i8 %54 to i1, !dbg !2609
  br i1 %55, label %69, label %56, !dbg !2611

56:                                               ; preds = %53
  br label %57, !dbg !2612

57:                                               ; preds = %56
  %58 = load i64, i64* %21, align 8, !dbg !2613
  %59 = load i64, i64* %12, align 8, !dbg !2613
  %60 = icmp ult i64 %58, %59, !dbg !2613
  br i1 %60, label %61, label %65, !dbg !2616

61:                                               ; preds = %57
  %62 = load i8*, i8** %11, align 8, !dbg !2613
  %63 = load i64, i64* %21, align 8, !dbg !2613
  %64 = getelementptr inbounds i8, i8* %62, i64 %63, !dbg !2613
  store i8 34, i8* %64, align 1, !dbg !2613
  br label %65, !dbg !2613

65:                                               ; preds = %61, %57
  %66 = load i64, i64* %21, align 8, !dbg !2616
  %67 = add i64 %66, 1, !dbg !2616
  store i64 %67, i64* %21, align 8, !dbg !2616
  br label %68, !dbg !2616

68:                                               ; preds = %65
  br label %69, !dbg !2616

69:                                               ; preds = %68, %53
  store i8 1, i8* %25, align 1, !dbg !2617
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.119, i64 0, i64 0), i8** %23, align 8, !dbg !2618
  store i64 1, i64* %24, align 8, !dbg !2619
  br label %137, !dbg !2620

70:                                               ; preds = %50
  store i8 1, i8* %25, align 1, !dbg !2621
  store i8 0, i8* %27, align 1, !dbg !2622
  br label %137, !dbg !2623

71:                                               ; preds = %50, %50, %50
  %72 = load i32, i32* %15, align 4, !dbg !2624
  %73 = icmp ne i32 %72, 10, !dbg !2627
  br i1 %73, label %74, label %79, !dbg !2628

74:                                               ; preds = %71
  %75 = load i32, i32* %15, align 4, !dbg !2629
  %76 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.120, i64 0, i64 0), i32 %75), !dbg !2631
  store i8* %76, i8** %18, align 8, !dbg !2632
  %77 = load i32, i32* %15, align 4, !dbg !2633
  %78 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.121, i64 0, i64 0), i32 %77), !dbg !2634
  store i8* %78, i8** %19, align 8, !dbg !2635
  br label %79, !dbg !2636

79:                                               ; preds = %74, %71
  %80 = load i8, i8* %27, align 1, !dbg !2637
  %81 = trunc i8 %80 to i1, !dbg !2637
  br i1 %81, label %107, label %82, !dbg !2639

82:                                               ; preds = %79
  %83 = load i8*, i8** %18, align 8, !dbg !2640
  store i8* %83, i8** %23, align 8, !dbg !2642
  br label %84, !dbg !2643

84:                                               ; preds = %103, %82
  %85 = load i8*, i8** %23, align 8, !dbg !2644
  %86 = load i8, i8* %85, align 1, !dbg !2646
  %87 = icmp ne i8 %86, 0, !dbg !2647
  br i1 %87, label %88, label %106, !dbg !2647

88:                                               ; preds = %84
  br label %89, !dbg !2648

89:                                               ; preds = %88
  %90 = load i64, i64* %21, align 8, !dbg !2649
  %91 = load i64, i64* %12, align 8, !dbg !2649
  %92 = icmp ult i64 %90, %91, !dbg !2649
  br i1 %92, label %93, label %99, !dbg !2652

93:                                               ; preds = %89
  %94 = load i8*, i8** %23, align 8, !dbg !2649
  %95 = load i8, i8* %94, align 1, !dbg !2649
  %96 = load i8*, i8** %11, align 8, !dbg !2649
  %97 = load i64, i64* %21, align 8, !dbg !2649
  %98 = getelementptr inbounds i8, i8* %96, i64 %97, !dbg !2649
  store i8 %95, i8* %98, align 1, !dbg !2649
  br label %99, !dbg !2649

99:                                               ; preds = %93, %89
  %100 = load i64, i64* %21, align 8, !dbg !2652
  %101 = add i64 %100, 1, !dbg !2652
  store i64 %101, i64* %21, align 8, !dbg !2652
  br label %102, !dbg !2652

102:                                              ; preds = %99
  br label %103, !dbg !2652

103:                                              ; preds = %102
  %104 = load i8*, i8** %23, align 8, !dbg !2653
  %105 = getelementptr inbounds i8, i8* %104, i32 1, !dbg !2653
  store i8* %105, i8** %23, align 8, !dbg !2653
  br label %84, !dbg !2654, !llvm.loop !2655

106:                                              ; preds = %84
  br label %107, !dbg !2656

107:                                              ; preds = %106, %79
  store i8 1, i8* %25, align 1, !dbg !2657
  %108 = load i8*, i8** %19, align 8, !dbg !2658
  store i8* %108, i8** %23, align 8, !dbg !2659
  %109 = load i8*, i8** %23, align 8, !dbg !2660
  %110 = call i64 @strlen(i8* %109) #14, !dbg !2661
  store i64 %110, i64* %24, align 8, !dbg !2662
  br label %137, !dbg !2663

111:                                              ; preds = %50
  store i8 1, i8* %25, align 1, !dbg !2664
  br label %112, !dbg !2665

112:                                              ; preds = %50, %111
  store i8 1, i8* %27, align 1, !dbg !2666
  br label %113, !dbg !2667

113:                                              ; preds = %50, %112
  %114 = load i8, i8* %27, align 1, !dbg !2668
  %115 = trunc i8 %114 to i1, !dbg !2668
  br i1 %115, label %117, label %116, !dbg !2670

116:                                              ; preds = %113
  store i8 1, i8* %25, align 1, !dbg !2671
  br label %117, !dbg !2672

117:                                              ; preds = %116, %113
  br label %118, !dbg !2673

118:                                              ; preds = %50, %117
  store i32 2, i32* %15, align 4, !dbg !2674
  %119 = load i8, i8* %27, align 1, !dbg !2675
  %120 = trunc i8 %119 to i1, !dbg !2675
  br i1 %120, label %134, label %121, !dbg !2677

121:                                              ; preds = %118
  br label %122, !dbg !2678

122:                                              ; preds = %121
  %123 = load i64, i64* %21, align 8, !dbg !2679
  %124 = load i64, i64* %12, align 8, !dbg !2679
  %125 = icmp ult i64 %123, %124, !dbg !2679
  br i1 %125, label %126, label %130, !dbg !2682

126:                                              ; preds = %122
  %127 = load i8*, i8** %11, align 8, !dbg !2679
  %128 = load i64, i64* %21, align 8, !dbg !2679
  %129 = getelementptr inbounds i8, i8* %127, i64 %128, !dbg !2679
  store i8 39, i8* %129, align 1, !dbg !2679
  br label %130, !dbg !2679

130:                                              ; preds = %126, %122
  %131 = load i64, i64* %21, align 8, !dbg !2682
  %132 = add i64 %131, 1, !dbg !2682
  store i64 %132, i64* %21, align 8, !dbg !2682
  br label %133, !dbg !2682

133:                                              ; preds = %130
  br label %134, !dbg !2682

134:                                              ; preds = %133, %118
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.121, i64 0, i64 0), i8** %23, align 8, !dbg !2683
  store i64 1, i64* %24, align 8, !dbg !2684
  br label %137, !dbg !2685

135:                                              ; preds = %50
  store i8 0, i8* %27, align 1, !dbg !2686
  br label %137, !dbg !2687

136:                                              ; preds = %50
  call void @abort() #13, !dbg !2688
  unreachable, !dbg !2688

137:                                              ; preds = %135, %134, %107, %70, %69
  store i64 0, i64* %20, align 8, !dbg !2689
  br label %138, !dbg !2691

138:                                              ; preds = %1001, %137
  %139 = load i64, i64* %14, align 8, !dbg !2692
  %140 = icmp eq i64 %139, -1, !dbg !2694
  br i1 %140, label %141, label %149, !dbg !2692

141:                                              ; preds = %138
  %142 = load i8*, i8** %13, align 8, !dbg !2695
  %143 = load i64, i64* %20, align 8, !dbg !2696
  %144 = getelementptr inbounds i8, i8* %142, i64 %143, !dbg !2695
  %145 = load i8, i8* %144, align 1, !dbg !2695
  %146 = sext i8 %145 to i32, !dbg !2695
  %147 = icmp eq i32 %146, 0, !dbg !2697
  %148 = zext i1 %147 to i32, !dbg !2697
  br label %154, !dbg !2692

149:                                              ; preds = %138
  %150 = load i64, i64* %20, align 8, !dbg !2698
  %151 = load i64, i64* %14, align 8, !dbg !2699
  %152 = icmp eq i64 %150, %151, !dbg !2700
  %153 = zext i1 %152 to i32, !dbg !2700
  br label %154, !dbg !2692

154:                                              ; preds = %149, %141
  %155 = phi i32 [ %148, %141 ], [ %153, %149 ], !dbg !2692
  %156 = icmp ne i32 %155, 0, !dbg !2701
  %157 = xor i1 %156, true, !dbg !2701
  br i1 %157, label %158, label %1004, !dbg !2702

158:                                              ; preds = %154
  call void @llvm.dbg.declare(metadata i8* %31, metadata !2703, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.declare(metadata i8* %32, metadata !2706, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.declare(metadata i8* %33, metadata !2708, metadata !DIExpression()), !dbg !2709
  store i8 0, i8* %33, align 1, !dbg !2709
  call void @llvm.dbg.declare(metadata i8* %34, metadata !2710, metadata !DIExpression()), !dbg !2711
  store i8 0, i8* %34, align 1, !dbg !2711
  call void @llvm.dbg.declare(metadata i8* %35, metadata !2712, metadata !DIExpression()), !dbg !2713
  store i8 0, i8* %35, align 1, !dbg !2713
  %159 = load i8, i8* %25, align 1, !dbg !2714
  %160 = trunc i8 %159 to i1, !dbg !2714
  br i1 %160, label %161, label %197, !dbg !2716

161:                                              ; preds = %158
  %162 = load i32, i32* %15, align 4, !dbg !2717
  %163 = icmp ne i32 %162, 2, !dbg !2718
  br i1 %163, label %164, label %197, !dbg !2719

164:                                              ; preds = %161
  %165 = load i64, i64* %24, align 8, !dbg !2720
  %166 = icmp ne i64 %165, 0, !dbg !2720
  br i1 %166, label %167, label %197, !dbg !2721

167:                                              ; preds = %164
  %168 = load i64, i64* %20, align 8, !dbg !2722
  %169 = load i64, i64* %24, align 8, !dbg !2723
  %170 = add i64 %168, %169, !dbg !2724
  %171 = load i64, i64* %14, align 8, !dbg !2725
  %172 = icmp eq i64 %171, -1, !dbg !2726
  br i1 %172, label %173, label %179, !dbg !2727

173:                                              ; preds = %167
  %174 = load i64, i64* %24, align 8, !dbg !2728
  %175 = icmp ult i64 1, %174, !dbg !2729
  br i1 %175, label %176, label %179, !dbg !2725

176:                                              ; preds = %173
  %177 = load i8*, i8** %13, align 8, !dbg !2730
  %178 = call i64 @strlen(i8* %177) #14, !dbg !2731
  store i64 %178, i64* %14, align 8, !dbg !2732
  br label %181, !dbg !2725

179:                                              ; preds = %173, %167
  %180 = load i64, i64* %14, align 8, !dbg !2733
  br label %181, !dbg !2725

181:                                              ; preds = %179, %176
  %182 = phi i64 [ %178, %176 ], [ %180, %179 ], !dbg !2725
  %183 = icmp ule i64 %170, %182, !dbg !2734
  br i1 %183, label %184, label %197, !dbg !2735

184:                                              ; preds = %181
  %185 = load i8*, i8** %13, align 8, !dbg !2736
  %186 = load i64, i64* %20, align 8, !dbg !2737
  %187 = getelementptr inbounds i8, i8* %185, i64 %186, !dbg !2738
  %188 = load i8*, i8** %23, align 8, !dbg !2739
  %189 = load i64, i64* %24, align 8, !dbg !2740
  %190 = call i32 @memcmp(i8* %187, i8* %188, i64 %189) #14, !dbg !2741
  %191 = icmp eq i32 %190, 0, !dbg !2742
  br i1 %191, label %192, label %197, !dbg !2743

192:                                              ; preds = %184
  %193 = load i8, i8* %27, align 1, !dbg !2744
  %194 = trunc i8 %193 to i1, !dbg !2744
  br i1 %194, label %195, label %196, !dbg !2747

195:                                              ; preds = %192
  br label %1086, !dbg !2748

196:                                              ; preds = %192
  store i8 1, i8* %33, align 1, !dbg !2749
  br label %197, !dbg !2750

197:                                              ; preds = %196, %184, %181, %164, %161, %158
  %198 = load i8*, i8** %13, align 8, !dbg !2751
  %199 = load i64, i64* %20, align 8, !dbg !2752
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !2751
  %201 = load i8, i8* %200, align 1, !dbg !2751
  store i8 %201, i8* %31, align 1, !dbg !2753
  %202 = load i8, i8* %31, align 1, !dbg !2754
  %203 = zext i8 %202 to i32, !dbg !2754
  switch i32 %203, label %544 [
    i32 0, label %204
    i32 63, label %325
    i32 7, label %421
    i32 8, label %422
    i32 12, label %423
    i32 10, label %424
    i32 13, label %425
    i32 9, label %426
    i32 11, label %427
    i32 92, label %428
    i32 123, label %462
    i32 125, label %462
    i32 35, label %476
    i32 126, label %476
    i32 32, label %481
    i32 33, label %482
    i32 34, label %482
    i32 36, label %482
    i32 38, label %482
    i32 40, label %482
    i32 41, label %482
    i32 42, label %482
    i32 59, label %482
    i32 60, label %482
    i32 61, label %482
    i32 62, label %482
    i32 91, label %482
    i32 94, label %482
    i32 96, label %482
    i32 124, label %482
    i32 39, label %490
    i32 37, label %543
    i32 43, label %543
    i32 44, label %543
    i32 45, label %543
    i32 46, label %543
    i32 47, label %543
    i32 48, label %543
    i32 49, label %543
    i32 50, label %543
    i32 51, label %543
    i32 52, label %543
    i32 53, label %543
    i32 54, label %543
    i32 55, label %543
    i32 56, label %543
    i32 57, label %543
    i32 58, label %543
    i32 65, label %543
    i32 66, label %543
    i32 67, label %543
    i32 68, label %543
    i32 69, label %543
    i32 70, label %543
    i32 71, label %543
    i32 72, label %543
    i32 73, label %543
    i32 74, label %543
    i32 75, label %543
    i32 76, label %543
    i32 77, label %543
    i32 78, label %543
    i32 79, label %543
    i32 80, label %543
    i32 81, label %543
    i32 82, label %543
    i32 83, label %543
    i32 84, label %543
    i32 85, label %543
    i32 86, label %543
    i32 87, label %543
    i32 88, label %543
    i32 89, label %543
    i32 90, label %543
    i32 93, label %543
    i32 95, label %543
    i32 97, label %543
    i32 98, label %543
    i32 99, label %543
    i32 100, label %543
    i32 101, label %543
    i32 102, label %543
    i32 103, label %543
    i32 104, label %543
    i32 105, label %543
    i32 106, label %543
    i32 107, label %543
    i32 108, label %543
    i32 109, label %543
    i32 110, label %543
    i32 111, label %543
    i32 112, label %543
    i32 113, label %543
    i32 114, label %543
    i32 115, label %543
    i32 116, label %543
    i32 117, label %543
    i32 118, label %543
    i32 119, label %543
    i32 120, label %543
    i32 121, label %543
    i32 122, label %543
  ], !dbg !2755

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !2756
  %206 = trunc i8 %205 to i1, !dbg !2756
  br i1 %206, label %207, label %318, !dbg !2759

207:                                              ; preds = %204
  br label %208, !dbg !2760

208:                                              ; preds = %207
  %209 = load i8, i8* %27, align 1, !dbg !2762
  %210 = trunc i8 %209 to i1, !dbg !2762
  br i1 %210, label %211, label %212, !dbg !2765

211:                                              ; preds = %208
  br label %1086, !dbg !2762

212:                                              ; preds = %208
  store i8 1, i8* %34, align 1, !dbg !2765
  %213 = load i32, i32* %15, align 4, !dbg !2766
  %214 = icmp eq i32 %213, 2, !dbg !2766
  br i1 %214, label %215, label %255, !dbg !2766

215:                                              ; preds = %212
  %216 = load i8, i8* %28, align 1, !dbg !2766
  %217 = trunc i8 %216 to i1, !dbg !2766
  br i1 %217, label %255, label %218, !dbg !2765

218:                                              ; preds = %215
  br label %219, !dbg !2768

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !2770
  %221 = load i64, i64* %12, align 8, !dbg !2770
  %222 = icmp ult i64 %220, %221, !dbg !2770
  br i1 %222, label %223, label %227, !dbg !2773

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !2770
  %225 = load i64, i64* %21, align 8, !dbg !2770
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !2770
  store i8 39, i8* %226, align 1, !dbg !2770
  br label %227, !dbg !2770

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !2773
  %229 = add i64 %228, 1, !dbg !2773
  store i64 %229, i64* %21, align 8, !dbg !2773
  br label %230, !dbg !2773

230:                                              ; preds = %227
  br label %231, !dbg !2768

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !2774
  %233 = load i64, i64* %12, align 8, !dbg !2774
  %234 = icmp ult i64 %232, %233, !dbg !2774
  br i1 %234, label %235, label %239, !dbg !2777

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !2774
  %237 = load i64, i64* %21, align 8, !dbg !2774
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !2774
  store i8 36, i8* %238, align 1, !dbg !2774
  br label %239, !dbg !2774

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !2777
  %241 = add i64 %240, 1, !dbg !2777
  store i64 %241, i64* %21, align 8, !dbg !2777
  br label %242, !dbg !2777

242:                                              ; preds = %239
  br label %243, !dbg !2768

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !2778
  %245 = load i64, i64* %12, align 8, !dbg !2778
  %246 = icmp ult i64 %244, %245, !dbg !2778
  br i1 %246, label %247, label %251, !dbg !2781

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !2778
  %249 = load i64, i64* %21, align 8, !dbg !2778
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !2778
  store i8 39, i8* %250, align 1, !dbg !2778
  br label %251, !dbg !2778

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !2781
  %253 = add i64 %252, 1, !dbg !2781
  store i64 %253, i64* %21, align 8, !dbg !2781
  br label %254, !dbg !2781

254:                                              ; preds = %251
  store i8 1, i8* %28, align 1, !dbg !2768
  br label %255, !dbg !2768

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !2765

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !2782
  %258 = load i64, i64* %12, align 8, !dbg !2782
  %259 = icmp ult i64 %257, %258, !dbg !2782
  br i1 %259, label %260, label %264, !dbg !2785

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !2782
  %262 = load i64, i64* %21, align 8, !dbg !2782
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !2782
  store i8 92, i8* %263, align 1, !dbg !2782
  br label %264, !dbg !2782

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !2785
  %266 = add i64 %265, 1, !dbg !2785
  store i64 %266, i64* %21, align 8, !dbg !2785
  br label %267, !dbg !2785

267:                                              ; preds = %264
  br label %268, !dbg !2765

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !2786
  %270 = icmp ne i32 %269, 2, !dbg !2788
  br i1 %270, label %271, label %317, !dbg !2789

271:                                              ; preds = %268
  %272 = load i64, i64* %20, align 8, !dbg !2790
  %273 = add i64 %272, 1, !dbg !2791
  %274 = load i64, i64* %14, align 8, !dbg !2792
  %275 = icmp ult i64 %273, %274, !dbg !2793
  br i1 %275, label %276, label %317, !dbg !2794

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !2795
  %278 = load i64, i64* %20, align 8, !dbg !2796
  %279 = add i64 %278, 1, !dbg !2797
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !2795
  %281 = load i8, i8* %280, align 1, !dbg !2795
  %282 = sext i8 %281 to i32, !dbg !2795
  %283 = icmp sle i32 48, %282, !dbg !2798
  br i1 %283, label %284, label %317, !dbg !2799

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !2800
  %286 = load i64, i64* %20, align 8, !dbg !2801
  %287 = add i64 %286, 1, !dbg !2802
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !2800
  %289 = load i8, i8* %288, align 1, !dbg !2800
  %290 = sext i8 %289 to i32, !dbg !2800
  %291 = icmp sle i32 %290, 57, !dbg !2803
  br i1 %291, label %292, label %317, !dbg !2804

292:                                              ; preds = %284
  br label %293, !dbg !2805

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !2807
  %295 = load i64, i64* %12, align 8, !dbg !2807
  %296 = icmp ult i64 %294, %295, !dbg !2807
  br i1 %296, label %297, label %301, !dbg !2810

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !2807
  %299 = load i64, i64* %21, align 8, !dbg !2807
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !2807
  store i8 48, i8* %300, align 1, !dbg !2807
  br label %301, !dbg !2807

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !2810
  %303 = add i64 %302, 1, !dbg !2810
  store i64 %303, i64* %21, align 8, !dbg !2810
  br label %304, !dbg !2810

304:                                              ; preds = %301
  br label %305, !dbg !2811

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !2812
  %307 = load i64, i64* %12, align 8, !dbg !2812
  %308 = icmp ult i64 %306, %307, !dbg !2812
  br i1 %308, label %309, label %313, !dbg !2815

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !2812
  %311 = load i64, i64* %21, align 8, !dbg !2812
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !2812
  store i8 48, i8* %312, align 1, !dbg !2812
  br label %313, !dbg !2812

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !2815
  %315 = add i64 %314, 1, !dbg !2815
  store i64 %315, i64* %21, align 8, !dbg !2815
  br label %316, !dbg !2815

316:                                              ; preds = %313
  br label %317, !dbg !2816

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %31, align 1, !dbg !2817
  br label %324, !dbg !2818

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !2819
  %320 = and i32 %319, 1, !dbg !2821
  %321 = icmp ne i32 %320, 0, !dbg !2821
  br i1 %321, label %322, label %323, !dbg !2822

322:                                              ; preds = %318
  br label %1001, !dbg !2823

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %857, !dbg !2824

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !2825
  switch i32 %326, label %419 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !2826

327:                                              ; preds = %325
  %328 = load i8, i8* %27, align 1, !dbg !2827
  %329 = trunc i8 %328 to i1, !dbg !2827
  br i1 %329, label %330, label %331, !dbg !2830

330:                                              ; preds = %327
  br label %1086, !dbg !2831

331:                                              ; preds = %327
  br label %420, !dbg !2832

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !2833
  %334 = and i32 %333, 4, !dbg !2835
  %335 = icmp ne i32 %334, 0, !dbg !2835
  br i1 %335, label %336, label %418, !dbg !2836

336:                                              ; preds = %332
  %337 = load i64, i64* %20, align 8, !dbg !2837
  %338 = add i64 %337, 2, !dbg !2838
  %339 = load i64, i64* %14, align 8, !dbg !2839
  %340 = icmp ult i64 %338, %339, !dbg !2840
  br i1 %340, label %341, label %418, !dbg !2841

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !2842
  %343 = load i64, i64* %20, align 8, !dbg !2843
  %344 = add i64 %343, 1, !dbg !2844
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !2842
  %346 = load i8, i8* %345, align 1, !dbg !2842
  %347 = sext i8 %346 to i32, !dbg !2842
  %348 = icmp eq i32 %347, 63, !dbg !2845
  br i1 %348, label %349, label %418, !dbg !2846

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !2847
  %351 = load i64, i64* %20, align 8, !dbg !2848
  %352 = add i64 %351, 2, !dbg !2849
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !2847
  %354 = load i8, i8* %353, align 1, !dbg !2847
  %355 = sext i8 %354 to i32, !dbg !2847
  switch i32 %355, label %416 [
    i32 33, label %356
    i32 39, label %356
    i32 40, label %356
    i32 41, label %356
    i32 45, label %356
    i32 47, label %356
    i32 60, label %356
    i32 61, label %356
    i32 62, label %356
  ], !dbg !2850

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %27, align 1, !dbg !2851
  %358 = trunc i8 %357 to i1, !dbg !2851
  br i1 %358, label %359, label %360, !dbg !2854

359:                                              ; preds = %356
  br label %1086, !dbg !2855

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !2856
  %362 = load i64, i64* %20, align 8, !dbg !2857
  %363 = add i64 %362, 2, !dbg !2858
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !2856
  %365 = load i8, i8* %364, align 1, !dbg !2856
  store i8 %365, i8* %31, align 1, !dbg !2859
  %366 = load i64, i64* %20, align 8, !dbg !2860
  %367 = add i64 %366, 2, !dbg !2860
  store i64 %367, i64* %20, align 8, !dbg !2860
  br label %368, !dbg !2861

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !2862
  %370 = load i64, i64* %12, align 8, !dbg !2862
  %371 = icmp ult i64 %369, %370, !dbg !2862
  br i1 %371, label %372, label %376, !dbg !2865

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !2862
  %374 = load i64, i64* %21, align 8, !dbg !2862
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !2862
  store i8 63, i8* %375, align 1, !dbg !2862
  br label %376, !dbg !2862

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !2865
  %378 = add i64 %377, 1, !dbg !2865
  store i64 %378, i64* %21, align 8, !dbg !2865
  br label %379, !dbg !2865

379:                                              ; preds = %376
  br label %380, !dbg !2866

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !2867
  %382 = load i64, i64* %12, align 8, !dbg !2867
  %383 = icmp ult i64 %381, %382, !dbg !2867
  br i1 %383, label %384, label %388, !dbg !2870

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !2867
  %386 = load i64, i64* %21, align 8, !dbg !2867
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !2867
  store i8 34, i8* %387, align 1, !dbg !2867
  br label %388, !dbg !2867

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !2870
  %390 = add i64 %389, 1, !dbg !2870
  store i64 %390, i64* %21, align 8, !dbg !2870
  br label %391, !dbg !2870

391:                                              ; preds = %388
  br label %392, !dbg !2871

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !2872
  %394 = load i64, i64* %12, align 8, !dbg !2872
  %395 = icmp ult i64 %393, %394, !dbg !2872
  br i1 %395, label %396, label %400, !dbg !2875

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !2872
  %398 = load i64, i64* %21, align 8, !dbg !2872
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !2872
  store i8 34, i8* %399, align 1, !dbg !2872
  br label %400, !dbg !2872

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !2875
  %402 = add i64 %401, 1, !dbg !2875
  store i64 %402, i64* %21, align 8, !dbg !2875
  br label %403, !dbg !2875

403:                                              ; preds = %400
  br label %404, !dbg !2876

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !2877
  %406 = load i64, i64* %12, align 8, !dbg !2877
  %407 = icmp ult i64 %405, %406, !dbg !2877
  br i1 %407, label %408, label %412, !dbg !2880

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !2877
  %410 = load i64, i64* %21, align 8, !dbg !2877
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !2877
  store i8 63, i8* %411, align 1, !dbg !2877
  br label %412, !dbg !2877

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !2880
  %414 = add i64 %413, 1, !dbg !2880
  store i64 %414, i64* %21, align 8, !dbg !2880
  br label %415, !dbg !2880

415:                                              ; preds = %412
  br label %417, !dbg !2881

416:                                              ; preds = %349
  br label %417, !dbg !2882

417:                                              ; preds = %416, %415
  br label %418, !dbg !2883

418:                                              ; preds = %417, %341, %336, %332
  br label %420, !dbg !2884

419:                                              ; preds = %325
  br label %420, !dbg !2885

420:                                              ; preds = %419, %418, %331
  br label %857, !dbg !2886

421:                                              ; preds = %197
  store i8 97, i8* %32, align 1, !dbg !2887
  br label %456, !dbg !2888

422:                                              ; preds = %197
  store i8 98, i8* %32, align 1, !dbg !2889
  br label %456, !dbg !2890

423:                                              ; preds = %197
  store i8 102, i8* %32, align 1, !dbg !2891
  br label %456, !dbg !2892

424:                                              ; preds = %197
  store i8 110, i8* %32, align 1, !dbg !2893
  br label %448, !dbg !2894

425:                                              ; preds = %197
  store i8 114, i8* %32, align 1, !dbg !2895
  br label %448, !dbg !2896

426:                                              ; preds = %197
  store i8 116, i8* %32, align 1, !dbg !2897
  br label %448, !dbg !2898

427:                                              ; preds = %197
  store i8 118, i8* %32, align 1, !dbg !2899
  br label %456, !dbg !2900

428:                                              ; preds = %197
  %429 = load i8, i8* %31, align 1, !dbg !2901
  store i8 %429, i8* %32, align 1, !dbg !2902
  %430 = load i32, i32* %15, align 4, !dbg !2903
  %431 = icmp eq i32 %430, 2, !dbg !2905
  br i1 %431, label %432, label %437, !dbg !2906

432:                                              ; preds = %428
  %433 = load i8, i8* %27, align 1, !dbg !2907
  %434 = trunc i8 %433 to i1, !dbg !2907
  br i1 %434, label %435, label %436, !dbg !2910

435:                                              ; preds = %432
  br label %1086, !dbg !2911

436:                                              ; preds = %432
  br label %950, !dbg !2912

437:                                              ; preds = %428
  %438 = load i8, i8* %25, align 1, !dbg !2913
  %439 = trunc i8 %438 to i1, !dbg !2913
  br i1 %439, label %440, label %447, !dbg !2915

440:                                              ; preds = %437
  %441 = load i8, i8* %27, align 1, !dbg !2916
  %442 = trunc i8 %441 to i1, !dbg !2916
  br i1 %442, label %443, label %447, !dbg !2917

443:                                              ; preds = %440
  %444 = load i64, i64* %24, align 8, !dbg !2918
  %445 = icmp ne i64 %444, 0, !dbg !2918
  br i1 %445, label %446, label %447, !dbg !2919

446:                                              ; preds = %443
  br label %950, !dbg !2920

447:                                              ; preds = %443, %440, %437
  br label %448, !dbg !2918

448:                                              ; preds = %447, %426, %425, %424
  call void @llvm.dbg.label(metadata !2921), !dbg !2922
  %449 = load i32, i32* %15, align 4, !dbg !2923
  %450 = icmp eq i32 %449, 2, !dbg !2925
  br i1 %450, label %451, label %455, !dbg !2926

451:                                              ; preds = %448
  %452 = load i8, i8* %27, align 1, !dbg !2927
  %453 = trunc i8 %452 to i1, !dbg !2927
  br i1 %453, label %454, label %455, !dbg !2928

454:                                              ; preds = %451
  br label %1086, !dbg !2929

455:                                              ; preds = %451, %448
  br label %456, !dbg !2927

456:                                              ; preds = %455, %427, %423, %422, %421
  call void @llvm.dbg.label(metadata !2930), !dbg !2931
  %457 = load i8, i8* %25, align 1, !dbg !2932
  %458 = trunc i8 %457 to i1, !dbg !2932
  br i1 %458, label %459, label %461, !dbg !2934

459:                                              ; preds = %456
  %460 = load i8, i8* %32, align 1, !dbg !2935
  store i8 %460, i8* %31, align 1, !dbg !2937
  br label %888, !dbg !2938

461:                                              ; preds = %456
  br label %857, !dbg !2939

462:                                              ; preds = %197, %197
  %463 = load i64, i64* %14, align 8, !dbg !2940
  %464 = icmp eq i64 %463, -1, !dbg !2942
  br i1 %464, label %465, label %471, !dbg !2943

465:                                              ; preds = %462
  %466 = load i8*, i8** %13, align 8, !dbg !2944
  %467 = getelementptr inbounds i8, i8* %466, i64 1, !dbg !2944
  %468 = load i8, i8* %467, align 1, !dbg !2944
  %469 = sext i8 %468 to i32, !dbg !2944
  %470 = icmp eq i32 %469, 0, !dbg !2945
  br i1 %470, label %475, label %474, !dbg !2940

471:                                              ; preds = %462
  %472 = load i64, i64* %14, align 8, !dbg !2946
  %473 = icmp eq i64 %472, 1, !dbg !2947
  br i1 %473, label %475, label %474, !dbg !2943

474:                                              ; preds = %471, %465
  br label %857, !dbg !2948

475:                                              ; preds = %471, %465
  br label %476, !dbg !2949

476:                                              ; preds = %197, %197, %475
  %477 = load i64, i64* %20, align 8, !dbg !2950
  %478 = icmp ne i64 %477, 0, !dbg !2952
  br i1 %478, label %479, label %480, !dbg !2953

479:                                              ; preds = %476
  br label %857, !dbg !2954

480:                                              ; preds = %476
  br label %481, !dbg !2955

481:                                              ; preds = %197, %480
  store i8 1, i8* %35, align 1, !dbg !2956
  br label %482, !dbg !2957

482:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %481
  %483 = load i32, i32* %15, align 4, !dbg !2958
  %484 = icmp eq i32 %483, 2, !dbg !2960
  br i1 %484, label %485, label %489, !dbg !2961

485:                                              ; preds = %482
  %486 = load i8, i8* %27, align 1, !dbg !2962
  %487 = trunc i8 %486 to i1, !dbg !2962
  br i1 %487, label %488, label %489, !dbg !2963

488:                                              ; preds = %485
  br label %1086, !dbg !2964

489:                                              ; preds = %485, %482
  br label %857, !dbg !2965

490:                                              ; preds = %197
  store i8 1, i8* %29, align 1, !dbg !2966
  store i8 1, i8* %35, align 1, !dbg !2967
  %491 = load i32, i32* %15, align 4, !dbg !2968
  %492 = icmp eq i32 %491, 2, !dbg !2970
  br i1 %492, label %493, label %542, !dbg !2971

493:                                              ; preds = %490
  %494 = load i8, i8* %27, align 1, !dbg !2972
  %495 = trunc i8 %494 to i1, !dbg !2972
  br i1 %495, label %496, label %497, !dbg !2975

496:                                              ; preds = %493
  br label %1086, !dbg !2976

497:                                              ; preds = %493
  %498 = load i64, i64* %12, align 8, !dbg !2977
  %499 = icmp ne i64 %498, 0, !dbg !2977
  br i1 %499, label %500, label %505, !dbg !2979

500:                                              ; preds = %497
  %501 = load i64, i64* %22, align 8, !dbg !2980
  %502 = icmp ne i64 %501, 0, !dbg !2980
  br i1 %502, label %505, label %503, !dbg !2981

503:                                              ; preds = %500
  %504 = load i64, i64* %12, align 8, !dbg !2982
  store i64 %504, i64* %22, align 8, !dbg !2984
  store i64 0, i64* %12, align 8, !dbg !2985
  br label %505, !dbg !2986

505:                                              ; preds = %503, %500, %497
  br label %506, !dbg !2987

506:                                              ; preds = %505
  %507 = load i64, i64* %21, align 8, !dbg !2988
  %508 = load i64, i64* %12, align 8, !dbg !2988
  %509 = icmp ult i64 %507, %508, !dbg !2988
  br i1 %509, label %510, label %514, !dbg !2991

510:                                              ; preds = %506
  %511 = load i8*, i8** %11, align 8, !dbg !2988
  %512 = load i64, i64* %21, align 8, !dbg !2988
  %513 = getelementptr inbounds i8, i8* %511, i64 %512, !dbg !2988
  store i8 39, i8* %513, align 1, !dbg !2988
  br label %514, !dbg !2988

514:                                              ; preds = %510, %506
  %515 = load i64, i64* %21, align 8, !dbg !2991
  %516 = add i64 %515, 1, !dbg !2991
  store i64 %516, i64* %21, align 8, !dbg !2991
  br label %517, !dbg !2991

517:                                              ; preds = %514
  br label %518, !dbg !2992

518:                                              ; preds = %517
  %519 = load i64, i64* %21, align 8, !dbg !2993
  %520 = load i64, i64* %12, align 8, !dbg !2993
  %521 = icmp ult i64 %519, %520, !dbg !2993
  br i1 %521, label %522, label %526, !dbg !2996

522:                                              ; preds = %518
  %523 = load i8*, i8** %11, align 8, !dbg !2993
  %524 = load i64, i64* %21, align 8, !dbg !2993
  %525 = getelementptr inbounds i8, i8* %523, i64 %524, !dbg !2993
  store i8 92, i8* %525, align 1, !dbg !2993
  br label %526, !dbg !2993

526:                                              ; preds = %522, %518
  %527 = load i64, i64* %21, align 8, !dbg !2996
  %528 = add i64 %527, 1, !dbg !2996
  store i64 %528, i64* %21, align 8, !dbg !2996
  br label %529, !dbg !2996

529:                                              ; preds = %526
  br label %530, !dbg !2997

530:                                              ; preds = %529
  %531 = load i64, i64* %21, align 8, !dbg !2998
  %532 = load i64, i64* %12, align 8, !dbg !2998
  %533 = icmp ult i64 %531, %532, !dbg !2998
  br i1 %533, label %534, label %538, !dbg !3001

534:                                              ; preds = %530
  %535 = load i8*, i8** %11, align 8, !dbg !2998
  %536 = load i64, i64* %21, align 8, !dbg !2998
  %537 = getelementptr inbounds i8, i8* %535, i64 %536, !dbg !2998
  store i8 39, i8* %537, align 1, !dbg !2998
  br label %538, !dbg !2998

538:                                              ; preds = %534, %530
  %539 = load i64, i64* %21, align 8, !dbg !3001
  %540 = add i64 %539, 1, !dbg !3001
  store i64 %540, i64* %21, align 8, !dbg !3001
  br label %541, !dbg !3001

541:                                              ; preds = %538
  store i8 0, i8* %28, align 1, !dbg !3002
  br label %542, !dbg !3003

542:                                              ; preds = %541, %490
  br label %857, !dbg !3004

543:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %35, align 1, !dbg !3005
  br label %857, !dbg !3006

544:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %36, metadata !3007, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.declare(metadata i8* %37, metadata !3010, metadata !DIExpression()), !dbg !3011
  %545 = load i8, i8* %26, align 1, !dbg !3012
  %546 = trunc i8 %545 to i1, !dbg !3012
  br i1 %546, label %547, label %559, !dbg !3014

547:                                              ; preds = %544
  store i64 1, i64* %36, align 8, !dbg !3015
  %548 = call i16** @__ctype_b_loc() #17, !dbg !3017
  %549 = load i16*, i16** %548, align 8, !dbg !3017
  %550 = load i8, i8* %31, align 1, !dbg !3017
  %551 = zext i8 %550 to i32, !dbg !3017
  %552 = sext i32 %551 to i64, !dbg !3017
  %553 = getelementptr inbounds i16, i16* %549, i64 %552, !dbg !3017
  %554 = load i16, i16* %553, align 2, !dbg !3017
  %555 = zext i16 %554 to i32, !dbg !3017
  %556 = and i32 %555, 16384, !dbg !3017
  %557 = icmp ne i32 %556, 0, !dbg !3018
  %558 = zext i1 %557 to i8, !dbg !3019
  store i8 %558, i8* %37, align 1, !dbg !3019
  br label %656, !dbg !3020

559:                                              ; preds = %544
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %38, metadata !3021, metadata !DIExpression()), !dbg !3036
  %560 = bitcast %struct.__mbstate_t* %38 to i8*, !dbg !3037
  call void @llvm.memset.p0i8.i64(i8* align 4 %560, i8 0, i64 8, i1 false), !dbg !3037
  store i64 0, i64* %36, align 8, !dbg !3038
  store i8 1, i8* %37, align 1, !dbg !3039
  %561 = load i64, i64* %14, align 8, !dbg !3040
  %562 = icmp eq i64 %561, -1, !dbg !3042
  br i1 %562, label %563, label %566, !dbg !3043

563:                                              ; preds = %559
  %564 = load i8*, i8** %13, align 8, !dbg !3044
  %565 = call i64 @strlen(i8* %564) #14, !dbg !3045
  store i64 %565, i64* %14, align 8, !dbg !3046
  br label %566, !dbg !3047

566:                                              ; preds = %563, %559
  br label %567, !dbg !3048

567:                                              ; preds = %651, %566
  call void @llvm.dbg.declare(metadata i32* %39, metadata !3049, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.declare(metadata i64* %40, metadata !3053, metadata !DIExpression()), !dbg !3054
  %568 = load i8*, i8** %13, align 8, !dbg !3055
  %569 = load i64, i64* %20, align 8, !dbg !3056
  %570 = load i64, i64* %36, align 8, !dbg !3057
  %571 = add i64 %569, %570, !dbg !3058
  %572 = getelementptr inbounds i8, i8* %568, i64 %571, !dbg !3055
  %573 = load i64, i64* %14, align 8, !dbg !3059
  %574 = load i64, i64* %20, align 8, !dbg !3060
  %575 = load i64, i64* %36, align 8, !dbg !3061
  %576 = add i64 %574, %575, !dbg !3062
  %577 = sub i64 %573, %576, !dbg !3063
  %578 = call i64 @rpl_mbrtowc(i32* %39, i8* %572, i64 %577, %struct.__mbstate_t* %38), !dbg !3064
  store i64 %578, i64* %40, align 8, !dbg !3054
  %579 = load i64, i64* %40, align 8, !dbg !3065
  %580 = icmp eq i64 %579, 0, !dbg !3067
  br i1 %580, label %581, label %582, !dbg !3068

581:                                              ; preds = %567
  br label %655, !dbg !3069

582:                                              ; preds = %567
  %583 = load i64, i64* %40, align 8, !dbg !3070
  %584 = icmp eq i64 %583, -1, !dbg !3072
  br i1 %584, label %585, label %586, !dbg !3073

585:                                              ; preds = %582
  store i8 0, i8* %37, align 1, !dbg !3074
  br label %655, !dbg !3076

586:                                              ; preds = %582
  %587 = load i64, i64* %40, align 8, !dbg !3077
  %588 = icmp eq i64 %587, -2, !dbg !3079
  br i1 %588, label %589, label %611, !dbg !3080

589:                                              ; preds = %586
  store i8 0, i8* %37, align 1, !dbg !3081
  br label %590, !dbg !3083

590:                                              ; preds = %607, %589
  %591 = load i64, i64* %20, align 8, !dbg !3084
  %592 = load i64, i64* %36, align 8, !dbg !3085
  %593 = add i64 %591, %592, !dbg !3086
  %594 = load i64, i64* %14, align 8, !dbg !3087
  %595 = icmp ult i64 %593, %594, !dbg !3088
  br i1 %595, label %596, label %605, !dbg !3089

596:                                              ; preds = %590
  %597 = load i8*, i8** %13, align 8, !dbg !3090
  %598 = load i64, i64* %20, align 8, !dbg !3091
  %599 = load i64, i64* %36, align 8, !dbg !3092
  %600 = add i64 %598, %599, !dbg !3093
  %601 = getelementptr inbounds i8, i8* %597, i64 %600, !dbg !3090
  %602 = load i8, i8* %601, align 1, !dbg !3090
  %603 = sext i8 %602 to i32, !dbg !3090
  %604 = icmp ne i32 %603, 0, !dbg !3089
  br label %605

605:                                              ; preds = %596, %590
  %606 = phi i1 [ false, %590 ], [ %604, %596 ], !dbg !3094
  br i1 %606, label %607, label %610, !dbg !3083

607:                                              ; preds = %605
  %608 = load i64, i64* %36, align 8, !dbg !3095
  %609 = add i64 %608, 1, !dbg !3095
  store i64 %609, i64* %36, align 8, !dbg !3095
  br label %590, !dbg !3083, !llvm.loop !3096

610:                                              ; preds = %605
  br label %655, !dbg !3097

611:                                              ; preds = %586
  %612 = load i8, i8* %27, align 1, !dbg !3098
  %613 = trunc i8 %612 to i1, !dbg !3098
  br i1 %613, label %614, label %639, !dbg !3101

614:                                              ; preds = %611
  %615 = load i32, i32* %15, align 4, !dbg !3102
  %616 = icmp eq i32 %615, 2, !dbg !3103
  br i1 %616, label %617, label %639, !dbg !3104

617:                                              ; preds = %614
  call void @llvm.dbg.declare(metadata i64* %41, metadata !3105, metadata !DIExpression()), !dbg !3107
  store i64 1, i64* %41, align 8, !dbg !3108
  br label %618, !dbg !3110

618:                                              ; preds = %635, %617
  %619 = load i64, i64* %41, align 8, !dbg !3111
  %620 = load i64, i64* %40, align 8, !dbg !3113
  %621 = icmp ult i64 %619, %620, !dbg !3114
  br i1 %621, label %622, label %638, !dbg !3115

622:                                              ; preds = %618
  %623 = load i8*, i8** %13, align 8, !dbg !3116
  %624 = load i64, i64* %20, align 8, !dbg !3117
  %625 = load i64, i64* %36, align 8, !dbg !3118
  %626 = add i64 %624, %625, !dbg !3119
  %627 = load i64, i64* %41, align 8, !dbg !3120
  %628 = add i64 %626, %627, !dbg !3121
  %629 = getelementptr inbounds i8, i8* %623, i64 %628, !dbg !3116
  %630 = load i8, i8* %629, align 1, !dbg !3116
  %631 = sext i8 %630 to i32, !dbg !3116
  switch i32 %631, label %633 [
    i32 91, label %632
    i32 92, label %632
    i32 94, label %632
    i32 96, label %632
    i32 124, label %632
  ], !dbg !3122

632:                                              ; preds = %622, %622, %622, %622, %622
  br label %1086, !dbg !3123

633:                                              ; preds = %622
  br label %634, !dbg !3125

634:                                              ; preds = %633
  br label %635, !dbg !3126

635:                                              ; preds = %634
  %636 = load i64, i64* %41, align 8, !dbg !3127
  %637 = add i64 %636, 1, !dbg !3127
  store i64 %637, i64* %41, align 8, !dbg !3127
  br label %618, !dbg !3128, !llvm.loop !3129

638:                                              ; preds = %618
  br label %639, !dbg !3131

639:                                              ; preds = %638, %614, %611
  %640 = load i32, i32* %39, align 4, !dbg !3132
  %641 = call i32 @iswprint(i32 %640) #15, !dbg !3134
  %642 = icmp ne i32 %641, 0, !dbg !3134
  br i1 %642, label %644, label %643, !dbg !3135

643:                                              ; preds = %639
  store i8 0, i8* %37, align 1, !dbg !3136
  br label %644, !dbg !3137

644:                                              ; preds = %643, %639
  %645 = load i64, i64* %40, align 8, !dbg !3138
  %646 = load i64, i64* %36, align 8, !dbg !3139
  %647 = add i64 %646, %645, !dbg !3139
  store i64 %647, i64* %36, align 8, !dbg !3139
  br label %648

648:                                              ; preds = %644
  br label %649

649:                                              ; preds = %648
  br label %650

650:                                              ; preds = %649
  br label %651, !dbg !3140

651:                                              ; preds = %650
  %652 = call i32 @mbsinit(%struct.__mbstate_t* %38) #14, !dbg !3141
  %653 = icmp ne i32 %652, 0, !dbg !3142
  %654 = xor i1 %653, true, !dbg !3142
  br i1 %654, label %567, label %655, !dbg !3140, !llvm.loop !3143

655:                                              ; preds = %651, %610, %585, %581
  br label %656

656:                                              ; preds = %655, %547
  %657 = load i8, i8* %37, align 1, !dbg !3145
  %658 = trunc i8 %657 to i1, !dbg !3145
  %659 = zext i1 %658 to i8, !dbg !3146
  store i8 %659, i8* %35, align 1, !dbg !3146
  %660 = load i64, i64* %36, align 8, !dbg !3147
  %661 = icmp ult i64 1, %660, !dbg !3149
  br i1 %661, label %668, label %662, !dbg !3150

662:                                              ; preds = %656
  %663 = load i8, i8* %25, align 1, !dbg !3151
  %664 = trunc i8 %663 to i1, !dbg !3151
  br i1 %664, label %665, label %856, !dbg !3152

665:                                              ; preds = %662
  %666 = load i8, i8* %37, align 1, !dbg !3153
  %667 = trunc i8 %666 to i1, !dbg !3153
  br i1 %667, label %856, label %668, !dbg !3154

668:                                              ; preds = %665, %656
  call void @llvm.dbg.declare(metadata i64* %42, metadata !3155, metadata !DIExpression()), !dbg !3157
  %669 = load i64, i64* %20, align 8, !dbg !3158
  %670 = load i64, i64* %36, align 8, !dbg !3159
  %671 = add i64 %669, %670, !dbg !3160
  store i64 %671, i64* %42, align 8, !dbg !3157
  br label %672, !dbg !3161

672:                                              ; preds = %849, %668
  %673 = load i8, i8* %25, align 1, !dbg !3162
  %674 = trunc i8 %673 to i1, !dbg !3162
  br i1 %674, label %675, label %780, !dbg !3167

675:                                              ; preds = %672
  %676 = load i8, i8* %37, align 1, !dbg !3168
  %677 = trunc i8 %676 to i1, !dbg !3168
  br i1 %677, label %780, label %678, !dbg !3169

678:                                              ; preds = %675
  br label %679, !dbg !3170

679:                                              ; preds = %678
  %680 = load i8, i8* %27, align 1, !dbg !3172
  %681 = trunc i8 %680 to i1, !dbg !3172
  br i1 %681, label %682, label %683, !dbg !3175

682:                                              ; preds = %679
  br label %1086, !dbg !3172

683:                                              ; preds = %679
  store i8 1, i8* %34, align 1, !dbg !3175
  %684 = load i32, i32* %15, align 4, !dbg !3176
  %685 = icmp eq i32 %684, 2, !dbg !3176
  br i1 %685, label %686, label %726, !dbg !3176

686:                                              ; preds = %683
  %687 = load i8, i8* %28, align 1, !dbg !3176
  %688 = trunc i8 %687 to i1, !dbg !3176
  br i1 %688, label %726, label %689, !dbg !3175

689:                                              ; preds = %686
  br label %690, !dbg !3178

690:                                              ; preds = %689
  %691 = load i64, i64* %21, align 8, !dbg !3180
  %692 = load i64, i64* %12, align 8, !dbg !3180
  %693 = icmp ult i64 %691, %692, !dbg !3180
  br i1 %693, label %694, label %698, !dbg !3183

694:                                              ; preds = %690
  %695 = load i8*, i8** %11, align 8, !dbg !3180
  %696 = load i64, i64* %21, align 8, !dbg !3180
  %697 = getelementptr inbounds i8, i8* %695, i64 %696, !dbg !3180
  store i8 39, i8* %697, align 1, !dbg !3180
  br label %698, !dbg !3180

698:                                              ; preds = %694, %690
  %699 = load i64, i64* %21, align 8, !dbg !3183
  %700 = add i64 %699, 1, !dbg !3183
  store i64 %700, i64* %21, align 8, !dbg !3183
  br label %701, !dbg !3183

701:                                              ; preds = %698
  br label %702, !dbg !3178

702:                                              ; preds = %701
  %703 = load i64, i64* %21, align 8, !dbg !3184
  %704 = load i64, i64* %12, align 8, !dbg !3184
  %705 = icmp ult i64 %703, %704, !dbg !3184
  br i1 %705, label %706, label %710, !dbg !3187

706:                                              ; preds = %702
  %707 = load i8*, i8** %11, align 8, !dbg !3184
  %708 = load i64, i64* %21, align 8, !dbg !3184
  %709 = getelementptr inbounds i8, i8* %707, i64 %708, !dbg !3184
  store i8 36, i8* %709, align 1, !dbg !3184
  br label %710, !dbg !3184

710:                                              ; preds = %706, %702
  %711 = load i64, i64* %21, align 8, !dbg !3187
  %712 = add i64 %711, 1, !dbg !3187
  store i64 %712, i64* %21, align 8, !dbg !3187
  br label %713, !dbg !3187

713:                                              ; preds = %710
  br label %714, !dbg !3178

714:                                              ; preds = %713
  %715 = load i64, i64* %21, align 8, !dbg !3188
  %716 = load i64, i64* %12, align 8, !dbg !3188
  %717 = icmp ult i64 %715, %716, !dbg !3188
  br i1 %717, label %718, label %722, !dbg !3191

718:                                              ; preds = %714
  %719 = load i8*, i8** %11, align 8, !dbg !3188
  %720 = load i64, i64* %21, align 8, !dbg !3188
  %721 = getelementptr inbounds i8, i8* %719, i64 %720, !dbg !3188
  store i8 39, i8* %721, align 1, !dbg !3188
  br label %722, !dbg !3188

722:                                              ; preds = %718, %714
  %723 = load i64, i64* %21, align 8, !dbg !3191
  %724 = add i64 %723, 1, !dbg !3191
  store i64 %724, i64* %21, align 8, !dbg !3191
  br label %725, !dbg !3191

725:                                              ; preds = %722
  store i8 1, i8* %28, align 1, !dbg !3178
  br label %726, !dbg !3178

726:                                              ; preds = %725, %686, %683
  br label %727, !dbg !3175

727:                                              ; preds = %726
  %728 = load i64, i64* %21, align 8, !dbg !3192
  %729 = load i64, i64* %12, align 8, !dbg !3192
  %730 = icmp ult i64 %728, %729, !dbg !3192
  br i1 %730, label %731, label %735, !dbg !3195

731:                                              ; preds = %727
  %732 = load i8*, i8** %11, align 8, !dbg !3192
  %733 = load i64, i64* %21, align 8, !dbg !3192
  %734 = getelementptr inbounds i8, i8* %732, i64 %733, !dbg !3192
  store i8 92, i8* %734, align 1, !dbg !3192
  br label %735, !dbg !3192

735:                                              ; preds = %731, %727
  %736 = load i64, i64* %21, align 8, !dbg !3195
  %737 = add i64 %736, 1, !dbg !3195
  store i64 %737, i64* %21, align 8, !dbg !3195
  br label %738, !dbg !3195

738:                                              ; preds = %735
  br label %739, !dbg !3175

739:                                              ; preds = %738
  br label %740, !dbg !3196

740:                                              ; preds = %739
  %741 = load i64, i64* %21, align 8, !dbg !3197
  %742 = load i64, i64* %12, align 8, !dbg !3197
  %743 = icmp ult i64 %741, %742, !dbg !3197
  br i1 %743, label %744, label %753, !dbg !3200

744:                                              ; preds = %740
  %745 = load i8, i8* %31, align 1, !dbg !3197
  %746 = zext i8 %745 to i32, !dbg !3197
  %747 = ashr i32 %746, 6, !dbg !3197
  %748 = add nsw i32 48, %747, !dbg !3197
  %749 = trunc i32 %748 to i8, !dbg !3197
  %750 = load i8*, i8** %11, align 8, !dbg !3197
  %751 = load i64, i64* %21, align 8, !dbg !3197
  %752 = getelementptr inbounds i8, i8* %750, i64 %751, !dbg !3197
  store i8 %749, i8* %752, align 1, !dbg !3197
  br label %753, !dbg !3197

753:                                              ; preds = %744, %740
  %754 = load i64, i64* %21, align 8, !dbg !3200
  %755 = add i64 %754, 1, !dbg !3200
  store i64 %755, i64* %21, align 8, !dbg !3200
  br label %756, !dbg !3200

756:                                              ; preds = %753
  br label %757, !dbg !3201

757:                                              ; preds = %756
  %758 = load i64, i64* %21, align 8, !dbg !3202
  %759 = load i64, i64* %12, align 8, !dbg !3202
  %760 = icmp ult i64 %758, %759, !dbg !3202
  br i1 %760, label %761, label %771, !dbg !3205

761:                                              ; preds = %757
  %762 = load i8, i8* %31, align 1, !dbg !3202
  %763 = zext i8 %762 to i32, !dbg !3202
  %764 = ashr i32 %763, 3, !dbg !3202
  %765 = and i32 %764, 7, !dbg !3202
  %766 = add nsw i32 48, %765, !dbg !3202
  %767 = trunc i32 %766 to i8, !dbg !3202
  %768 = load i8*, i8** %11, align 8, !dbg !3202
  %769 = load i64, i64* %21, align 8, !dbg !3202
  %770 = getelementptr inbounds i8, i8* %768, i64 %769, !dbg !3202
  store i8 %767, i8* %770, align 1, !dbg !3202
  br label %771, !dbg !3202

771:                                              ; preds = %761, %757
  %772 = load i64, i64* %21, align 8, !dbg !3205
  %773 = add i64 %772, 1, !dbg !3205
  store i64 %773, i64* %21, align 8, !dbg !3205
  br label %774, !dbg !3205

774:                                              ; preds = %771
  %775 = load i8, i8* %31, align 1, !dbg !3206
  %776 = zext i8 %775 to i32, !dbg !3206
  %777 = and i32 %776, 7, !dbg !3207
  %778 = add nsw i32 48, %777, !dbg !3208
  %779 = trunc i32 %778 to i8, !dbg !3209
  store i8 %779, i8* %31, align 1, !dbg !3210
  br label %797, !dbg !3211

780:                                              ; preds = %675, %672
  %781 = load i8, i8* %33, align 1, !dbg !3212
  %782 = trunc i8 %781 to i1, !dbg !3212
  br i1 %782, label %783, label %796, !dbg !3214

783:                                              ; preds = %780
  br label %784, !dbg !3215

784:                                              ; preds = %783
  %785 = load i64, i64* %21, align 8, !dbg !3217
  %786 = load i64, i64* %12, align 8, !dbg !3217
  %787 = icmp ult i64 %785, %786, !dbg !3217
  br i1 %787, label %788, label %792, !dbg !3220

788:                                              ; preds = %784
  %789 = load i8*, i8** %11, align 8, !dbg !3217
  %790 = load i64, i64* %21, align 8, !dbg !3217
  %791 = getelementptr inbounds i8, i8* %789, i64 %790, !dbg !3217
  store i8 92, i8* %791, align 1, !dbg !3217
  br label %792, !dbg !3217

792:                                              ; preds = %788, %784
  %793 = load i64, i64* %21, align 8, !dbg !3220
  %794 = add i64 %793, 1, !dbg !3220
  store i64 %794, i64* %21, align 8, !dbg !3220
  br label %795, !dbg !3220

795:                                              ; preds = %792
  store i8 0, i8* %33, align 1, !dbg !3221
  br label %796, !dbg !3222

796:                                              ; preds = %795, %780
  br label %797

797:                                              ; preds = %796, %774
  %798 = load i64, i64* %42, align 8, !dbg !3223
  %799 = load i64, i64* %20, align 8, !dbg !3225
  %800 = add i64 %799, 1, !dbg !3226
  %801 = icmp ule i64 %798, %800, !dbg !3227
  br i1 %801, label %802, label %803, !dbg !3228

802:                                              ; preds = %797
  br label %855, !dbg !3229

803:                                              ; preds = %797
  br label %804, !dbg !3230

804:                                              ; preds = %803
  %805 = load i8, i8* %28, align 1, !dbg !3231
  %806 = trunc i8 %805 to i1, !dbg !3231
  br i1 %806, label %807, label %835, !dbg !3231

807:                                              ; preds = %804
  %808 = load i8, i8* %34, align 1, !dbg !3231
  %809 = trunc i8 %808 to i1, !dbg !3231
  br i1 %809, label %835, label %810, !dbg !3234

810:                                              ; preds = %807
  br label %811, !dbg !3235

811:                                              ; preds = %810
  %812 = load i64, i64* %21, align 8, !dbg !3237
  %813 = load i64, i64* %12, align 8, !dbg !3237
  %814 = icmp ult i64 %812, %813, !dbg !3237
  br i1 %814, label %815, label %819, !dbg !3240

815:                                              ; preds = %811
  %816 = load i8*, i8** %11, align 8, !dbg !3237
  %817 = load i64, i64* %21, align 8, !dbg !3237
  %818 = getelementptr inbounds i8, i8* %816, i64 %817, !dbg !3237
  store i8 39, i8* %818, align 1, !dbg !3237
  br label %819, !dbg !3237

819:                                              ; preds = %815, %811
  %820 = load i64, i64* %21, align 8, !dbg !3240
  %821 = add i64 %820, 1, !dbg !3240
  store i64 %821, i64* %21, align 8, !dbg !3240
  br label %822, !dbg !3240

822:                                              ; preds = %819
  br label %823, !dbg !3235

823:                                              ; preds = %822
  %824 = load i64, i64* %21, align 8, !dbg !3241
  %825 = load i64, i64* %12, align 8, !dbg !3241
  %826 = icmp ult i64 %824, %825, !dbg !3241
  br i1 %826, label %827, label %831, !dbg !3244

827:                                              ; preds = %823
  %828 = load i8*, i8** %11, align 8, !dbg !3241
  %829 = load i64, i64* %21, align 8, !dbg !3241
  %830 = getelementptr inbounds i8, i8* %828, i64 %829, !dbg !3241
  store i8 39, i8* %830, align 1, !dbg !3241
  br label %831, !dbg !3241

831:                                              ; preds = %827, %823
  %832 = load i64, i64* %21, align 8, !dbg !3244
  %833 = add i64 %832, 1, !dbg !3244
  store i64 %833, i64* %21, align 8, !dbg !3244
  br label %834, !dbg !3244

834:                                              ; preds = %831
  store i8 0, i8* %28, align 1, !dbg !3235
  br label %835, !dbg !3235

835:                                              ; preds = %834, %807, %804
  br label %836, !dbg !3234

836:                                              ; preds = %835
  br label %837, !dbg !3245

837:                                              ; preds = %836
  %838 = load i64, i64* %21, align 8, !dbg !3246
  %839 = load i64, i64* %12, align 8, !dbg !3246
  %840 = icmp ult i64 %838, %839, !dbg !3246
  br i1 %840, label %841, label %846, !dbg !3249

841:                                              ; preds = %837
  %842 = load i8, i8* %31, align 1, !dbg !3246
  %843 = load i8*, i8** %11, align 8, !dbg !3246
  %844 = load i64, i64* %21, align 8, !dbg !3246
  %845 = getelementptr inbounds i8, i8* %843, i64 %844, !dbg !3246
  store i8 %842, i8* %845, align 1, !dbg !3246
  br label %846, !dbg !3246

846:                                              ; preds = %841, %837
  %847 = load i64, i64* %21, align 8, !dbg !3249
  %848 = add i64 %847, 1, !dbg !3249
  store i64 %848, i64* %21, align 8, !dbg !3249
  br label %849, !dbg !3249

849:                                              ; preds = %846
  %850 = load i8*, i8** %13, align 8, !dbg !3250
  %851 = load i64, i64* %20, align 8, !dbg !3251
  %852 = add i64 %851, 1, !dbg !3251
  store i64 %852, i64* %20, align 8, !dbg !3251
  %853 = getelementptr inbounds i8, i8* %850, i64 %852, !dbg !3250
  %854 = load i8, i8* %853, align 1, !dbg !3250
  store i8 %854, i8* %31, align 1, !dbg !3252
  br label %672, !dbg !3253, !llvm.loop !3254

855:                                              ; preds = %802
  br label %950, !dbg !3257

856:                                              ; preds = %665, %662
  br label %857, !dbg !3258

857:                                              ; preds = %856, %543, %542, %489, %479, %474, %461, %420, %324
  %858 = load i8, i8* %25, align 1, !dbg !3259
  %859 = trunc i8 %858 to i1, !dbg !3259
  br i1 %859, label %860, label %863, !dbg !3261

860:                                              ; preds = %857
  %861 = load i32, i32* %15, align 4, !dbg !3262
  %862 = icmp ne i32 %861, 2, !dbg !3263
  br i1 %862, label %866, label %863, !dbg !3264

863:                                              ; preds = %860, %857
  %864 = load i8, i8* %27, align 1, !dbg !3265
  %865 = trunc i8 %864 to i1, !dbg !3265
  br i1 %865, label %866, label %883, !dbg !3266

866:                                              ; preds = %863, %860
  %867 = load i32*, i32** %17, align 8, !dbg !3267
  %868 = icmp ne i32* %867, null, !dbg !3267
  br i1 %868, label %869, label %883, !dbg !3268

869:                                              ; preds = %866
  %870 = load i32*, i32** %17, align 8, !dbg !3269
  %871 = load i8, i8* %31, align 1, !dbg !3270
  %872 = zext i8 %871 to i64, !dbg !3270
  %873 = udiv i64 %872, 32, !dbg !3271
  %874 = getelementptr inbounds i32, i32* %870, i64 %873, !dbg !3269
  %875 = load i32, i32* %874, align 4, !dbg !3269
  %876 = load i8, i8* %31, align 1, !dbg !3272
  %877 = zext i8 %876 to i64, !dbg !3272
  %878 = urem i64 %877, 32, !dbg !3273
  %879 = trunc i64 %878 to i32, !dbg !3274
  %880 = lshr i32 %875, %879, !dbg !3274
  %881 = and i32 %880, 1, !dbg !3275
  %882 = icmp ne i32 %881, 0, !dbg !3275
  br i1 %882, label %887, label %883, !dbg !3276

883:                                              ; preds = %869, %866, %863
  %884 = load i8, i8* %33, align 1, !dbg !3277
  %885 = trunc i8 %884 to i1, !dbg !3277
  br i1 %885, label %887, label %886, !dbg !3278

886:                                              ; preds = %883
  br label %950, !dbg !3279

887:                                              ; preds = %883, %869
  br label %888, !dbg !3277

888:                                              ; preds = %887, %459
  call void @llvm.dbg.label(metadata !3280), !dbg !3281
  br label %889, !dbg !3282

889:                                              ; preds = %888
  %890 = load i8, i8* %27, align 1, !dbg !3283
  %891 = trunc i8 %890 to i1, !dbg !3283
  br i1 %891, label %892, label %893, !dbg !3286

892:                                              ; preds = %889
  br label %1086, !dbg !3283

893:                                              ; preds = %889
  store i8 1, i8* %34, align 1, !dbg !3286
  %894 = load i32, i32* %15, align 4, !dbg !3287
  %895 = icmp eq i32 %894, 2, !dbg !3287
  br i1 %895, label %896, label %936, !dbg !3287

896:                                              ; preds = %893
  %897 = load i8, i8* %28, align 1, !dbg !3287
  %898 = trunc i8 %897 to i1, !dbg !3287
  br i1 %898, label %936, label %899, !dbg !3286

899:                                              ; preds = %896
  br label %900, !dbg !3289

900:                                              ; preds = %899
  %901 = load i64, i64* %21, align 8, !dbg !3291
  %902 = load i64, i64* %12, align 8, !dbg !3291
  %903 = icmp ult i64 %901, %902, !dbg !3291
  br i1 %903, label %904, label %908, !dbg !3294

904:                                              ; preds = %900
  %905 = load i8*, i8** %11, align 8, !dbg !3291
  %906 = load i64, i64* %21, align 8, !dbg !3291
  %907 = getelementptr inbounds i8, i8* %905, i64 %906, !dbg !3291
  store i8 39, i8* %907, align 1, !dbg !3291
  br label %908, !dbg !3291

908:                                              ; preds = %904, %900
  %909 = load i64, i64* %21, align 8, !dbg !3294
  %910 = add i64 %909, 1, !dbg !3294
  store i64 %910, i64* %21, align 8, !dbg !3294
  br label %911, !dbg !3294

911:                                              ; preds = %908
  br label %912, !dbg !3289

912:                                              ; preds = %911
  %913 = load i64, i64* %21, align 8, !dbg !3295
  %914 = load i64, i64* %12, align 8, !dbg !3295
  %915 = icmp ult i64 %913, %914, !dbg !3295
  br i1 %915, label %916, label %920, !dbg !3298

916:                                              ; preds = %912
  %917 = load i8*, i8** %11, align 8, !dbg !3295
  %918 = load i64, i64* %21, align 8, !dbg !3295
  %919 = getelementptr inbounds i8, i8* %917, i64 %918, !dbg !3295
  store i8 36, i8* %919, align 1, !dbg !3295
  br label %920, !dbg !3295

920:                                              ; preds = %916, %912
  %921 = load i64, i64* %21, align 8, !dbg !3298
  %922 = add i64 %921, 1, !dbg !3298
  store i64 %922, i64* %21, align 8, !dbg !3298
  br label %923, !dbg !3298

923:                                              ; preds = %920
  br label %924, !dbg !3289

924:                                              ; preds = %923
  %925 = load i64, i64* %21, align 8, !dbg !3299
  %926 = load i64, i64* %12, align 8, !dbg !3299
  %927 = icmp ult i64 %925, %926, !dbg !3299
  br i1 %927, label %928, label %932, !dbg !3302

928:                                              ; preds = %924
  %929 = load i8*, i8** %11, align 8, !dbg !3299
  %930 = load i64, i64* %21, align 8, !dbg !3299
  %931 = getelementptr inbounds i8, i8* %929, i64 %930, !dbg !3299
  store i8 39, i8* %931, align 1, !dbg !3299
  br label %932, !dbg !3299

932:                                              ; preds = %928, %924
  %933 = load i64, i64* %21, align 8, !dbg !3302
  %934 = add i64 %933, 1, !dbg !3302
  store i64 %934, i64* %21, align 8, !dbg !3302
  br label %935, !dbg !3302

935:                                              ; preds = %932
  store i8 1, i8* %28, align 1, !dbg !3289
  br label %936, !dbg !3289

936:                                              ; preds = %935, %896, %893
  br label %937, !dbg !3286

937:                                              ; preds = %936
  %938 = load i64, i64* %21, align 8, !dbg !3303
  %939 = load i64, i64* %12, align 8, !dbg !3303
  %940 = icmp ult i64 %938, %939, !dbg !3303
  br i1 %940, label %941, label %945, !dbg !3306

941:                                              ; preds = %937
  %942 = load i8*, i8** %11, align 8, !dbg !3303
  %943 = load i64, i64* %21, align 8, !dbg !3303
  %944 = getelementptr inbounds i8, i8* %942, i64 %943, !dbg !3303
  store i8 92, i8* %944, align 1, !dbg !3303
  br label %945, !dbg !3303

945:                                              ; preds = %941, %937
  %946 = load i64, i64* %21, align 8, !dbg !3306
  %947 = add i64 %946, 1, !dbg !3306
  store i64 %947, i64* %21, align 8, !dbg !3306
  br label %948, !dbg !3306

948:                                              ; preds = %945
  br label %949, !dbg !3286

949:                                              ; preds = %948
  br label %950, !dbg !3286

950:                                              ; preds = %949, %886, %855, %446, %436
  call void @llvm.dbg.label(metadata !3307), !dbg !3308
  br label %951, !dbg !3309

951:                                              ; preds = %950
  %952 = load i8, i8* %28, align 1, !dbg !3310
  %953 = trunc i8 %952 to i1, !dbg !3310
  br i1 %953, label %954, label %982, !dbg !3310

954:                                              ; preds = %951
  %955 = load i8, i8* %34, align 1, !dbg !3310
  %956 = trunc i8 %955 to i1, !dbg !3310
  br i1 %956, label %982, label %957, !dbg !3313

957:                                              ; preds = %954
  br label %958, !dbg !3314

958:                                              ; preds = %957
  %959 = load i64, i64* %21, align 8, !dbg !3316
  %960 = load i64, i64* %12, align 8, !dbg !3316
  %961 = icmp ult i64 %959, %960, !dbg !3316
  br i1 %961, label %962, label %966, !dbg !3319

962:                                              ; preds = %958
  %963 = load i8*, i8** %11, align 8, !dbg !3316
  %964 = load i64, i64* %21, align 8, !dbg !3316
  %965 = getelementptr inbounds i8, i8* %963, i64 %964, !dbg !3316
  store i8 39, i8* %965, align 1, !dbg !3316
  br label %966, !dbg !3316

966:                                              ; preds = %962, %958
  %967 = load i64, i64* %21, align 8, !dbg !3319
  %968 = add i64 %967, 1, !dbg !3319
  store i64 %968, i64* %21, align 8, !dbg !3319
  br label %969, !dbg !3319

969:                                              ; preds = %966
  br label %970, !dbg !3314

970:                                              ; preds = %969
  %971 = load i64, i64* %21, align 8, !dbg !3320
  %972 = load i64, i64* %12, align 8, !dbg !3320
  %973 = icmp ult i64 %971, %972, !dbg !3320
  br i1 %973, label %974, label %978, !dbg !3323

974:                                              ; preds = %970
  %975 = load i8*, i8** %11, align 8, !dbg !3320
  %976 = load i64, i64* %21, align 8, !dbg !3320
  %977 = getelementptr inbounds i8, i8* %975, i64 %976, !dbg !3320
  store i8 39, i8* %977, align 1, !dbg !3320
  br label %978, !dbg !3320

978:                                              ; preds = %974, %970
  %979 = load i64, i64* %21, align 8, !dbg !3323
  %980 = add i64 %979, 1, !dbg !3323
  store i64 %980, i64* %21, align 8, !dbg !3323
  br label %981, !dbg !3323

981:                                              ; preds = %978
  store i8 0, i8* %28, align 1, !dbg !3314
  br label %982, !dbg !3314

982:                                              ; preds = %981, %954, %951
  br label %983, !dbg !3313

983:                                              ; preds = %982
  br label %984, !dbg !3324

984:                                              ; preds = %983
  %985 = load i64, i64* %21, align 8, !dbg !3325
  %986 = load i64, i64* %12, align 8, !dbg !3325
  %987 = icmp ult i64 %985, %986, !dbg !3325
  br i1 %987, label %988, label %993, !dbg !3328

988:                                              ; preds = %984
  %989 = load i8, i8* %31, align 1, !dbg !3325
  %990 = load i8*, i8** %11, align 8, !dbg !3325
  %991 = load i64, i64* %21, align 8, !dbg !3325
  %992 = getelementptr inbounds i8, i8* %990, i64 %991, !dbg !3325
  store i8 %989, i8* %992, align 1, !dbg !3325
  br label %993, !dbg !3325

993:                                              ; preds = %988, %984
  %994 = load i64, i64* %21, align 8, !dbg !3328
  %995 = add i64 %994, 1, !dbg !3328
  store i64 %995, i64* %21, align 8, !dbg !3328
  br label %996, !dbg !3328

996:                                              ; preds = %993
  %997 = load i8, i8* %35, align 1, !dbg !3329
  %998 = trunc i8 %997 to i1, !dbg !3329
  br i1 %998, label %1000, label %999, !dbg !3331

999:                                              ; preds = %996
  store i8 0, i8* %30, align 1, !dbg !3332
  br label %1000, !dbg !3333

1000:                                             ; preds = %999, %996
  br label %1001, !dbg !3334

1001:                                             ; preds = %1000, %322
  %1002 = load i64, i64* %20, align 8, !dbg !3335
  %1003 = add i64 %1002, 1, !dbg !3335
  store i64 %1003, i64* %20, align 8, !dbg !3335
  br label %138, !dbg !3336, !llvm.loop !3337

1004:                                             ; preds = %154
  %1005 = load i64, i64* %21, align 8, !dbg !3339
  %1006 = icmp eq i64 %1005, 0, !dbg !3341
  br i1 %1006, label %1007, label %1014, !dbg !3342

1007:                                             ; preds = %1004
  %1008 = load i32, i32* %15, align 4, !dbg !3343
  %1009 = icmp eq i32 %1008, 2, !dbg !3344
  br i1 %1009, label %1010, label %1014, !dbg !3345

1010:                                             ; preds = %1007
  %1011 = load i8, i8* %27, align 1, !dbg !3346
  %1012 = trunc i8 %1011 to i1, !dbg !3346
  br i1 %1012, label %1013, label %1014, !dbg !3347

1013:                                             ; preds = %1010
  br label %1086, !dbg !3348

1014:                                             ; preds = %1010, %1007, %1004
  %1015 = load i32, i32* %15, align 4, !dbg !3349
  %1016 = icmp eq i32 %1015, 2, !dbg !3351
  br i1 %1016, label %1017, label %1046, !dbg !3352

1017:                                             ; preds = %1014
  %1018 = load i8, i8* %27, align 1, !dbg !3353
  %1019 = trunc i8 %1018 to i1, !dbg !3353
  br i1 %1019, label %1046, label %1020, !dbg !3354

1020:                                             ; preds = %1017
  %1021 = load i8, i8* %29, align 1, !dbg !3355
  %1022 = trunc i8 %1021 to i1, !dbg !3355
  br i1 %1022, label %1023, label %1046, !dbg !3356

1023:                                             ; preds = %1020
  %1024 = load i8, i8* %30, align 1, !dbg !3357
  %1025 = trunc i8 %1024 to i1, !dbg !3357
  br i1 %1025, label %1026, label %1036, !dbg !3360

1026:                                             ; preds = %1023
  %1027 = load i8*, i8** %11, align 8, !dbg !3361
  %1028 = load i64, i64* %22, align 8, !dbg !3362
  %1029 = load i8*, i8** %13, align 8, !dbg !3363
  %1030 = load i64, i64* %14, align 8, !dbg !3364
  %1031 = load i32, i32* %16, align 4, !dbg !3365
  %1032 = load i32*, i32** %17, align 8, !dbg !3366
  %1033 = load i8*, i8** %18, align 8, !dbg !3367
  %1034 = load i8*, i8** %19, align 8, !dbg !3368
  %1035 = call i64 @quotearg_buffer_restyled(i8* %1027, i64 %1028, i8* %1029, i64 %1030, i32 5, i32 %1031, i32* %1032, i8* %1033, i8* %1034), !dbg !3369
  store i64 %1035, i64* %10, align 8, !dbg !3370
  br label %1104, !dbg !3370

1036:                                             ; preds = %1023
  %1037 = load i64, i64* %12, align 8, !dbg !3371
  %1038 = icmp ne i64 %1037, 0, !dbg !3371
  br i1 %1038, label %1044, label %1039, !dbg !3373

1039:                                             ; preds = %1036
  %1040 = load i64, i64* %22, align 8, !dbg !3374
  %1041 = icmp ne i64 %1040, 0, !dbg !3374
  br i1 %1041, label %1042, label %1044, !dbg !3375

1042:                                             ; preds = %1039
  %1043 = load i64, i64* %22, align 8, !dbg !3376
  store i64 %1043, i64* %12, align 8, !dbg !3378
  store i64 0, i64* %21, align 8, !dbg !3379
  br label %50, !dbg !3380

1044:                                             ; preds = %1039, %1036
  br label %1045

1045:                                             ; preds = %1044
  br label %1046, !dbg !3381

1046:                                             ; preds = %1045, %1020, %1017, %1014
  %1047 = load i8*, i8** %23, align 8, !dbg !3382
  %1048 = icmp ne i8* %1047, null, !dbg !3382
  br i1 %1048, label %1049, label %1076, !dbg !3384

1049:                                             ; preds = %1046
  %1050 = load i8, i8* %27, align 1, !dbg !3385
  %1051 = trunc i8 %1050 to i1, !dbg !3385
  br i1 %1051, label %1076, label %1052, !dbg !3386

1052:                                             ; preds = %1049
  br label %1053, !dbg !3387

1053:                                             ; preds = %1072, %1052
  %1054 = load i8*, i8** %23, align 8, !dbg !3388
  %1055 = load i8, i8* %1054, align 1, !dbg !3391
  %1056 = icmp ne i8 %1055, 0, !dbg !3392
  br i1 %1056, label %1057, label %1075, !dbg !3392

1057:                                             ; preds = %1053
  br label %1058, !dbg !3393

1058:                                             ; preds = %1057
  %1059 = load i64, i64* %21, align 8, !dbg !3394
  %1060 = load i64, i64* %12, align 8, !dbg !3394
  %1061 = icmp ult i64 %1059, %1060, !dbg !3394
  br i1 %1061, label %1062, label %1068, !dbg !3397

1062:                                             ; preds = %1058
  %1063 = load i8*, i8** %23, align 8, !dbg !3394
  %1064 = load i8, i8* %1063, align 1, !dbg !3394
  %1065 = load i8*, i8** %11, align 8, !dbg !3394
  %1066 = load i64, i64* %21, align 8, !dbg !3394
  %1067 = getelementptr inbounds i8, i8* %1065, i64 %1066, !dbg !3394
  store i8 %1064, i8* %1067, align 1, !dbg !3394
  br label %1068, !dbg !3394

1068:                                             ; preds = %1062, %1058
  %1069 = load i64, i64* %21, align 8, !dbg !3397
  %1070 = add i64 %1069, 1, !dbg !3397
  store i64 %1070, i64* %21, align 8, !dbg !3397
  br label %1071, !dbg !3397

1071:                                             ; preds = %1068
  br label %1072, !dbg !3397

1072:                                             ; preds = %1071
  %1073 = load i8*, i8** %23, align 8, !dbg !3398
  %1074 = getelementptr inbounds i8, i8* %1073, i32 1, !dbg !3398
  store i8* %1074, i8** %23, align 8, !dbg !3398
  br label %1053, !dbg !3399, !llvm.loop !3400

1075:                                             ; preds = %1053
  br label %1076, !dbg !3401

1076:                                             ; preds = %1075, %1049, %1046
  %1077 = load i64, i64* %21, align 8, !dbg !3402
  %1078 = load i64, i64* %12, align 8, !dbg !3404
  %1079 = icmp ult i64 %1077, %1078, !dbg !3405
  br i1 %1079, label %1080, label %1084, !dbg !3406

1080:                                             ; preds = %1076
  %1081 = load i8*, i8** %11, align 8, !dbg !3407
  %1082 = load i64, i64* %21, align 8, !dbg !3408
  %1083 = getelementptr inbounds i8, i8* %1081, i64 %1082, !dbg !3407
  store i8 0, i8* %1083, align 1, !dbg !3409
  br label %1084, !dbg !3407

1084:                                             ; preds = %1080, %1076
  %1085 = load i64, i64* %21, align 8, !dbg !3410
  store i64 %1085, i64* %10, align 8, !dbg !3411
  br label %1104, !dbg !3411

1086:                                             ; preds = %1013, %892, %682, %632, %496, %488, %454, %435, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !3412), !dbg !3413
  %1087 = load i32, i32* %15, align 4, !dbg !3414
  %1088 = icmp eq i32 %1087, 2, !dbg !3416
  br i1 %1088, label %1089, label %1093, !dbg !3417

1089:                                             ; preds = %1086
  %1090 = load i8, i8* %25, align 1, !dbg !3418
  %1091 = trunc i8 %1090 to i1, !dbg !3418
  br i1 %1091, label %1092, label %1093, !dbg !3419

1092:                                             ; preds = %1089
  store i32 4, i32* %15, align 4, !dbg !3420
  br label %1093, !dbg !3421

1093:                                             ; preds = %1092, %1089, %1086
  %1094 = load i8*, i8** %11, align 8, !dbg !3422
  %1095 = load i64, i64* %12, align 8, !dbg !3423
  %1096 = load i8*, i8** %13, align 8, !dbg !3424
  %1097 = load i64, i64* %14, align 8, !dbg !3425
  %1098 = load i32, i32* %15, align 4, !dbg !3426
  %1099 = load i32, i32* %16, align 4, !dbg !3427
  %1100 = and i32 %1099, -3, !dbg !3428
  %1101 = load i8*, i8** %18, align 8, !dbg !3429
  %1102 = load i8*, i8** %19, align 8, !dbg !3430
  %1103 = call i64 @quotearg_buffer_restyled(i8* %1094, i64 %1095, i8* %1096, i64 %1097, i32 %1098, i32 %1100, i32* null, i8* %1101, i8* %1102), !dbg !3431
  store i64 %1103, i64* %10, align 8, !dbg !3432
  br label %1104, !dbg !3432

1104:                                             ; preds = %1093, %1084, %1026
  %1105 = load i64, i64* %10, align 8, !dbg !3433
  ret i64 %1105, !dbg !3433
}

; Function Attrs: nounwind
declare dso_local i64 @__ctype_get_mb_cur_max() #7

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* %0, i32 %1) #3 !dbg !3434 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3437, metadata !DIExpression()), !dbg !3438
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3439, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3441, metadata !DIExpression()), !dbg !3442
  %8 = load i8*, i8** %4, align 8, !dbg !3443
  store i8* %8, i8** %6, align 8, !dbg !3442
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3444, metadata !DIExpression()), !dbg !3445
  %9 = load i8*, i8** %6, align 8, !dbg !3446
  %10 = load i8*, i8** %4, align 8, !dbg !3448
  %11 = icmp ne i8* %9, %10, !dbg !3449
  br i1 %11, label %12, label %14, !dbg !3450

12:                                               ; preds = %2
  %13 = load i8*, i8** %6, align 8, !dbg !3451
  store i8* %13, i8** %3, align 8, !dbg !3452
  br label %44, !dbg !3452

14:                                               ; preds = %2
  %15 = call i8* @locale_charset(), !dbg !3453
  store i8* %15, i8** %7, align 8, !dbg !3454
  %16 = load i8*, i8** %7, align 8, !dbg !3455
  %17 = call i32 @c_strcasecmp(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13.122, i64 0, i64 0)) #14, !dbg !3455
  %18 = icmp eq i32 %17, 0, !dbg !3455
  br i1 %18, label %19, label %27, !dbg !3457

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8, !dbg !3458
  %21 = getelementptr inbounds i8, i8* %20, i64 0, !dbg !3458
  %22 = load i8, i8* %21, align 1, !dbg !3458
  %23 = sext i8 %22 to i32, !dbg !3458
  %24 = icmp eq i32 %23, 96, !dbg !3459
  %25 = zext i1 %24 to i64, !dbg !3458
  %26 = select i1 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.123, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.124, i64 0, i64 0), !dbg !3458
  store i8* %26, i8** %3, align 8, !dbg !3460
  br label %44, !dbg !3460

27:                                               ; preds = %14
  %28 = load i8*, i8** %7, align 8, !dbg !3461
  %29 = call i32 @c_strcasecmp(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16.125, i64 0, i64 0)) #14, !dbg !3461
  %30 = icmp eq i32 %29, 0, !dbg !3461
  br i1 %30, label %31, label %39, !dbg !3463

31:                                               ; preds = %27
  %32 = load i8*, i8** %4, align 8, !dbg !3464
  %33 = getelementptr inbounds i8, i8* %32, i64 0, !dbg !3464
  %34 = load i8, i8* %33, align 1, !dbg !3464
  %35 = sext i8 %34 to i32, !dbg !3464
  %36 = icmp eq i32 %35, 96, !dbg !3465
  %37 = zext i1 %36 to i64, !dbg !3464
  %38 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.126, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.127, i64 0, i64 0), !dbg !3464
  store i8* %38, i8** %3, align 8, !dbg !3466
  br label %44, !dbg !3466

39:                                               ; preds = %27
  %40 = load i32, i32* %5, align 4, !dbg !3467
  %41 = icmp eq i32 %40, 9, !dbg !3468
  %42 = zext i1 %41 to i64, !dbg !3467
  %43 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.119, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.121, i64 0, i64 0), !dbg !3467
  store i8* %43, i8** %3, align 8, !dbg !3469
  br label %44, !dbg !3469

44:                                               ; preds = %39, %31, %19, %12
  %45 = load i8*, i8** %3, align 8, !dbg !3470
  ret i8* %45, !dbg !3470
}

; Function Attrs: nounwind
declare dso_local i32 @iswprint(i32) #7

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @mbsinit(%struct.__mbstate_t*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) #3 !dbg !3471 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3474, metadata !DIExpression()), !dbg !3475
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3476, metadata !DIExpression()), !dbg !3477
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !3478, metadata !DIExpression()), !dbg !3479
  %7 = load i8*, i8** %4, align 8, !dbg !3480
  %8 = load i64, i64* %5, align 8, !dbg !3481
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !3482
  %10 = call i8* @quotearg_alloc_mem(i8* %7, i64 %8, i64* null, %struct.quoting_options* %9), !dbg !3483
  ret i8* %10, !dbg !3484
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) #3 !dbg !3485 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.quoting_options*, align 8
  %9 = alloca %struct.quoting_options*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3488, metadata !DIExpression()), !dbg !3489
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3490, metadata !DIExpression()), !dbg !3491
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3492, metadata !DIExpression()), !dbg !3493
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !3494, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !3496, metadata !DIExpression()), !dbg !3497
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3498
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !3498
  br i1 %15, label %16, label %18, !dbg !3498

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3499
  br label %19, !dbg !3498

18:                                               ; preds = %4
  br label %19, !dbg !3498

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !3498
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !3497
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3500, metadata !DIExpression()), !dbg !3501
  %21 = call i32* @__errno_location() #17, !dbg !3502
  %22 = load i32, i32* %21, align 4, !dbg !3502
  store i32 %22, i32* %10, align 4, !dbg !3501
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3503, metadata !DIExpression()), !dbg !3504
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3505
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !3506
  %25 = load i32, i32* %24, align 4, !dbg !3506
  %26 = load i64*, i64** %7, align 8, !dbg !3507
  %27 = icmp ne i64* %26, null, !dbg !3507
  %28 = zext i1 %27 to i64, !dbg !3507
  %29 = select i1 %27, i32 0, i32 1, !dbg !3507
  %30 = or i32 %25, %29, !dbg !3508
  store i32 %30, i32* %11, align 4, !dbg !3504
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3509, metadata !DIExpression()), !dbg !3510
  %31 = load i8*, i8** %5, align 8, !dbg !3511
  %32 = load i64, i64* %6, align 8, !dbg !3512
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3513
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !3514
  %35 = load i32, i32* %34, align 8, !dbg !3514
  %36 = load i32, i32* %11, align 4, !dbg !3515
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3516
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !3517
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !3516
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3518
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !3519
  %42 = load i8*, i8** %41, align 8, !dbg !3519
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3520
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !3521
  %45 = load i8*, i8** %44, align 8, !dbg !3521
  %46 = call i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %31, i64 %32, i32 %35, i32 %36, i32* %39, i8* %42, i8* %45), !dbg !3522
  %47 = add i64 %46, 1, !dbg !3523
  store i64 %47, i64* %12, align 8, !dbg !3510
  call void @llvm.dbg.declare(metadata i8** %13, metadata !3524, metadata !DIExpression()), !dbg !3525
  %48 = load i64, i64* %12, align 8, !dbg !3526
  %49 = call noalias i8* @xcharalloc(i64 %48), !dbg !3527
  store i8* %49, i8** %13, align 8, !dbg !3525
  %50 = load i8*, i8** %13, align 8, !dbg !3528
  %51 = load i64, i64* %12, align 8, !dbg !3529
  %52 = load i8*, i8** %5, align 8, !dbg !3530
  %53 = load i64, i64* %6, align 8, !dbg !3531
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3532
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !3533
  %56 = load i32, i32* %55, align 8, !dbg !3533
  %57 = load i32, i32* %11, align 4, !dbg !3534
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3535
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !3536
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !3535
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3537
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !3538
  %63 = load i8*, i8** %62, align 8, !dbg !3538
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3539
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !3540
  %66 = load i8*, i8** %65, align 8, !dbg !3540
  %67 = call i64 @quotearg_buffer_restyled(i8* %50, i64 %51, i8* %52, i64 %53, i32 %56, i32 %57, i32* %60, i8* %63, i8* %66), !dbg !3541
  %68 = load i32, i32* %10, align 4, !dbg !3542
  %69 = call i32* @__errno_location() #17, !dbg !3543
  store i32 %68, i32* %69, align 4, !dbg !3544
  %70 = load i64*, i64** %7, align 8, !dbg !3545
  %71 = icmp ne i64* %70, null, !dbg !3545
  br i1 %71, label %72, label %76, !dbg !3547

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !3548
  %74 = sub i64 %73, 1, !dbg !3549
  %75 = load i64*, i64** %7, align 8, !dbg !3550
  store i64 %74, i64* %75, align 8, !dbg !3551
  br label %76, !dbg !3552

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !3553
  ret i8* %77, !dbg !3554
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #3 !dbg !3555 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !3556, metadata !DIExpression()), !dbg !3557
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3558
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !3557
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3559, metadata !DIExpression()), !dbg !3560
  store i32 1, i32* %2, align 4, !dbg !3561
  br label %4, !dbg !3563

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !3564
  %6 = load i32, i32* @nslots, align 4, !dbg !3566
  %7 = icmp slt i32 %5, %6, !dbg !3567
  br i1 %7, label %8, label %18, !dbg !3568

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3569
  %10 = load i32, i32* %2, align 4, !dbg !3570
  %11 = sext i32 %10 to i64, !dbg !3569
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !3569
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !3571
  %14 = load i8*, i8** %13, align 8, !dbg !3571
  call void @free(i8* %14) #15, !dbg !3572
  br label %15, !dbg !3572

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !3573
  %17 = add nsw i32 %16, 1, !dbg !3573
  store i32 %17, i32* %2, align 4, !dbg !3573
  br label %4, !dbg !3574, !llvm.loop !3575

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3577
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !3577
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !3579
  %22 = load i8*, i8** %21, align 8, !dbg !3579
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3580
  br i1 %23, label %24, label %29, !dbg !3581

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3582
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !3582
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !3584
  %28 = load i8*, i8** %27, align 8, !dbg !3584
  call void @free(i8* %28) #15, !dbg !3585
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !3586
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !3587
  br label %29, !dbg !3588

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3589
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !3591
  br i1 %31, label %32, label %35, !dbg !3592

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3593
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !3593
  call void @free(i8* %34) #15, !dbg !3595
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3596
  br label %35, !dbg !3597

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !3598
  ret void, !dbg !3599
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) #3 !dbg !3600 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3603, metadata !DIExpression()), !dbg !3604
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3605, metadata !DIExpression()), !dbg !3606
  %5 = load i32, i32* %3, align 4, !dbg !3607
  %6 = load i8*, i8** %4, align 8, !dbg !3608
  %7 = call i8* @quotearg_n_options(i32 %5, i8* %6, i64 -1, %struct.quoting_options* @default_quoting_options), !dbg !3609
  ret i8* %7, !dbg !3610
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) #3 !dbg !3611 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.quoting_options*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.slotvec*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3614, metadata !DIExpression()), !dbg !3615
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3616, metadata !DIExpression()), !dbg !3617
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3618, metadata !DIExpression()), !dbg !3619
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !3620, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3622, metadata !DIExpression()), !dbg !3623
  %17 = call i32* @__errno_location() #17, !dbg !3624
  %18 = load i32, i32* %17, align 4, !dbg !3624
  store i32 %18, i32* %9, align 4, !dbg !3623
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !3625, metadata !DIExpression()), !dbg !3626
  %19 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3627
  store %struct.slotvec* %19, %struct.slotvec** %10, align 8, !dbg !3626
  %20 = load i32, i32* %5, align 4, !dbg !3628
  %21 = icmp slt i32 %20, 0, !dbg !3630
  br i1 %21, label %22, label %23, !dbg !3631

22:                                               ; preds = %4
  call void @abort() #13, !dbg !3632
  unreachable, !dbg !3632

23:                                               ; preds = %4
  %24 = load i32, i32* @nslots, align 4, !dbg !3633
  %25 = load i32, i32* %5, align 4, !dbg !3635
  %26 = icmp sle i32 %24, %25, !dbg !3636
  br i1 %26, label %27, label %69, !dbg !3637

27:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata i8* %11, metadata !3638, metadata !DIExpression()), !dbg !3640
  %28 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3641
  %29 = icmp eq %struct.slotvec* %28, @slotvec0, !dbg !3642
  %30 = zext i1 %29 to i8, !dbg !3640
  store i8 %30, i8* %11, align 1, !dbg !3640
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3643, metadata !DIExpression()), !dbg !3644
  store i32 2147483646, i32* %12, align 4, !dbg !3644
  %31 = load i32, i32* %12, align 4, !dbg !3645
  %32 = load i32, i32* %5, align 4, !dbg !3647
  %33 = icmp slt i32 %31, %32, !dbg !3648
  br i1 %33, label %34, label %35, !dbg !3649

34:                                               ; preds = %27
  call void @xalloc_die() #16, !dbg !3650
  unreachable, !dbg !3650

35:                                               ; preds = %27
  %36 = load i8, i8* %11, align 1, !dbg !3651
  %37 = trunc i8 %36 to i1, !dbg !3651
  br i1 %37, label %38, label %39, !dbg !3651

38:                                               ; preds = %35
  br label %41, !dbg !3651

39:                                               ; preds = %35
  %40 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3652
  br label %41, !dbg !3651

41:                                               ; preds = %39, %38
  %42 = phi %struct.slotvec* [ null, %38 ], [ %40, %39 ], !dbg !3651
  %43 = bitcast %struct.slotvec* %42 to i8*, !dbg !3651
  %44 = load i32, i32* %5, align 4, !dbg !3653
  %45 = add nsw i32 %44, 1, !dbg !3654
  %46 = sext i32 %45 to i64, !dbg !3655
  %47 = mul i64 %46, 16, !dbg !3656
  %48 = call i8* @xrealloc(i8* %43, i64 %47), !dbg !3657
  %49 = bitcast i8* %48 to %struct.slotvec*, !dbg !3657
  store %struct.slotvec* %49, %struct.slotvec** %10, align 8, !dbg !3658
  store %struct.slotvec* %49, %struct.slotvec** @slotvec, align 8, !dbg !3659
  %50 = load i8, i8* %11, align 1, !dbg !3660
  %51 = trunc i8 %50 to i1, !dbg !3660
  br i1 %51, label %52, label %55, !dbg !3662

52:                                               ; preds = %41
  %53 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3663
  %54 = bitcast %struct.slotvec* %53 to i8*, !dbg !3664
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3664
  br label %55, !dbg !3665

55:                                               ; preds = %52, %41
  %56 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3666
  %57 = load i32, i32* @nslots, align 4, !dbg !3667
  %58 = sext i32 %57 to i64, !dbg !3668
  %59 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %56, i64 %58, !dbg !3668
  %60 = bitcast %struct.slotvec* %59 to i8*, !dbg !3669
  %61 = load i32, i32* %5, align 4, !dbg !3670
  %62 = add nsw i32 %61, 1, !dbg !3671
  %63 = load i32, i32* @nslots, align 4, !dbg !3672
  %64 = sub nsw i32 %62, %63, !dbg !3673
  %65 = sext i32 %64 to i64, !dbg !3674
  %66 = mul i64 %65, 16, !dbg !3675
  call void @llvm.memset.p0i8.i64(i8* align 8 %60, i8 0, i64 %66, i1 false), !dbg !3669
  %67 = load i32, i32* %5, align 4, !dbg !3676
  %68 = add nsw i32 %67, 1, !dbg !3677
  store i32 %68, i32* @nslots, align 4, !dbg !3678
  br label %69, !dbg !3679

69:                                               ; preds = %55, %23
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3680, metadata !DIExpression()), !dbg !3682
  %70 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3683
  %71 = load i32, i32* %5, align 4, !dbg !3684
  %72 = sext i32 %71 to i64, !dbg !3683
  %73 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %70, i64 %72, !dbg !3683
  %74 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %73, i32 0, i32 0, !dbg !3685
  %75 = load i64, i64* %74, align 8, !dbg !3685
  store i64 %75, i64* %13, align 8, !dbg !3682
  call void @llvm.dbg.declare(metadata i8** %14, metadata !3686, metadata !DIExpression()), !dbg !3687
  %76 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3688
  %77 = load i32, i32* %5, align 4, !dbg !3689
  %78 = sext i32 %77 to i64, !dbg !3688
  %79 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %76, i64 %78, !dbg !3688
  %80 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %79, i32 0, i32 1, !dbg !3690
  %81 = load i8*, i8** %80, align 8, !dbg !3690
  store i8* %81, i8** %14, align 8, !dbg !3687
  call void @llvm.dbg.declare(metadata i32* %15, metadata !3691, metadata !DIExpression()), !dbg !3692
  %82 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3693
  %83 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %82, i32 0, i32 1, !dbg !3694
  %84 = load i32, i32* %83, align 4, !dbg !3694
  %85 = or i32 %84, 1, !dbg !3695
  store i32 %85, i32* %15, align 4, !dbg !3692
  call void @llvm.dbg.declare(metadata i64* %16, metadata !3696, metadata !DIExpression()), !dbg !3697
  %86 = load i8*, i8** %14, align 8, !dbg !3698
  %87 = load i64, i64* %13, align 8, !dbg !3699
  %88 = load i8*, i8** %6, align 8, !dbg !3700
  %89 = load i64, i64* %7, align 8, !dbg !3701
  %90 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3702
  %91 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %90, i32 0, i32 0, !dbg !3703
  %92 = load i32, i32* %91, align 8, !dbg !3703
  %93 = load i32, i32* %15, align 4, !dbg !3704
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3705
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 2, !dbg !3706
  %96 = getelementptr inbounds [8 x i32], [8 x i32]* %95, i64 0, i64 0, !dbg !3705
  %97 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3707
  %98 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %97, i32 0, i32 3, !dbg !3708
  %99 = load i8*, i8** %98, align 8, !dbg !3708
  %100 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3709
  %101 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %100, i32 0, i32 4, !dbg !3710
  %102 = load i8*, i8** %101, align 8, !dbg !3710
  %103 = call i64 @quotearg_buffer_restyled(i8* %86, i64 %87, i8* %88, i64 %89, i32 %92, i32 %93, i32* %96, i8* %99, i8* %102), !dbg !3711
  store i64 %103, i64* %16, align 8, !dbg !3697
  %104 = load i64, i64* %13, align 8, !dbg !3712
  %105 = load i64, i64* %16, align 8, !dbg !3714
  %106 = icmp ule i64 %104, %105, !dbg !3715
  br i1 %106, label %107, label %145, !dbg !3716

107:                                              ; preds = %69
  %108 = load i64, i64* %16, align 8, !dbg !3717
  %109 = add i64 %108, 1, !dbg !3719
  store i64 %109, i64* %13, align 8, !dbg !3720
  %110 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3721
  %111 = load i32, i32* %5, align 4, !dbg !3722
  %112 = sext i32 %111 to i64, !dbg !3721
  %113 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %110, i64 %112, !dbg !3721
  %114 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %113, i32 0, i32 0, !dbg !3723
  store i64 %109, i64* %114, align 8, !dbg !3724
  %115 = load i8*, i8** %14, align 8, !dbg !3725
  %116 = icmp ne i8* %115, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3727
  br i1 %116, label %117, label %119, !dbg !3728

117:                                              ; preds = %107
  %118 = load i8*, i8** %14, align 8, !dbg !3729
  call void @free(i8* %118) #15, !dbg !3730
  br label %119, !dbg !3730

119:                                              ; preds = %117, %107
  %120 = load i64, i64* %13, align 8, !dbg !3731
  %121 = call noalias i8* @xcharalloc(i64 %120), !dbg !3732
  store i8* %121, i8** %14, align 8, !dbg !3733
  %122 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3734
  %123 = load i32, i32* %5, align 4, !dbg !3735
  %124 = sext i32 %123 to i64, !dbg !3734
  %125 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %122, i64 %124, !dbg !3734
  %126 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %125, i32 0, i32 1, !dbg !3736
  store i8* %121, i8** %126, align 8, !dbg !3737
  %127 = load i8*, i8** %14, align 8, !dbg !3738
  %128 = load i64, i64* %13, align 8, !dbg !3739
  %129 = load i8*, i8** %6, align 8, !dbg !3740
  %130 = load i64, i64* %7, align 8, !dbg !3741
  %131 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3742
  %132 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %131, i32 0, i32 0, !dbg !3743
  %133 = load i32, i32* %132, align 8, !dbg !3743
  %134 = load i32, i32* %15, align 4, !dbg !3744
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3745
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 2, !dbg !3746
  %137 = getelementptr inbounds [8 x i32], [8 x i32]* %136, i64 0, i64 0, !dbg !3745
  %138 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3747
  %139 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %138, i32 0, i32 3, !dbg !3748
  %140 = load i8*, i8** %139, align 8, !dbg !3748
  %141 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3749
  %142 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %141, i32 0, i32 4, !dbg !3750
  %143 = load i8*, i8** %142, align 8, !dbg !3750
  %144 = call i64 @quotearg_buffer_restyled(i8* %127, i64 %128, i8* %129, i64 %130, i32 %133, i32 %134, i32* %137, i8* %140, i8* %143), !dbg !3751
  br label %145, !dbg !3752

145:                                              ; preds = %119, %69
  %146 = load i32, i32* %9, align 4, !dbg !3753
  %147 = call i32* @__errno_location() #17, !dbg !3754
  store i32 %146, i32* %147, align 4, !dbg !3755
  %148 = load i8*, i8** %14, align 8, !dbg !3756
  ret i8* %148, !dbg !3757
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) #3 !dbg !3758 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3761, metadata !DIExpression()), !dbg !3762
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3763, metadata !DIExpression()), !dbg !3764
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3765, metadata !DIExpression()), !dbg !3766
  %7 = load i32, i32* %4, align 4, !dbg !3767
  %8 = load i8*, i8** %5, align 8, !dbg !3768
  %9 = load i64, i64* %6, align 8, !dbg !3769
  %10 = call i8* @quotearg_n_options(i32 %7, i8* %8, i64 %9, %struct.quoting_options* @default_quoting_options), !dbg !3770
  ret i8* %10, !dbg !3771
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* %0) #3 !dbg !3772 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3775, metadata !DIExpression()), !dbg !3776
  %3 = load i8*, i8** %2, align 8, !dbg !3777
  %4 = call i8* @quotearg_n(i32 0, i8* %3), !dbg !3778
  ret i8* %4, !dbg !3779
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) #3 !dbg !3780 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3783, metadata !DIExpression()), !dbg !3784
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3785, metadata !DIExpression()), !dbg !3786
  %5 = load i8*, i8** %3, align 8, !dbg !3787
  %6 = load i64, i64* %4, align 8, !dbg !3788
  %7 = call i8* @quotearg_n_mem(i32 0, i8* %5, i64 %6), !dbg !3789
  ret i8* %7, !dbg !3790
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) #3 !dbg !3791 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3794, metadata !DIExpression()), !dbg !3795
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3796, metadata !DIExpression()), !dbg !3797
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3798, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3800, metadata !DIExpression()), !dbg !3801
  %8 = load i32, i32* %5, align 4, !dbg !3802
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 %8), !dbg !3803
  %9 = load i32, i32* %4, align 4, !dbg !3804
  %10 = load i8*, i8** %6, align 8, !dbg !3805
  %11 = call i8* @quotearg_n_options(i32 %9, i8* %10, i64 -1, %struct.quoting_options* %7), !dbg !3806
  ret i8* %11, !dbg !3807
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 %1) #3 !dbg !3808 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3811, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !3813, metadata !DIExpression()), !dbg !3814
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !3814
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !3814
  %5 = load i32, i32* %3, align 4, !dbg !3815
  %6 = icmp eq i32 %5, 10, !dbg !3817
  br i1 %6, label %7, label %8, !dbg !3818

7:                                                ; preds = %2
  call void @abort() #13, !dbg !3819
  unreachable, !dbg !3819

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !3820
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !3821
  store i32 %9, i32* %10, align 8, !dbg !3822
  ret void, !dbg !3823
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) #3 !dbg !3824 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3827, metadata !DIExpression()), !dbg !3828
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3829, metadata !DIExpression()), !dbg !3830
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3831, metadata !DIExpression()), !dbg !3832
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3833, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !3835, metadata !DIExpression()), !dbg !3836
  %10 = load i32, i32* %6, align 4, !dbg !3837
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 %10), !dbg !3838
  %11 = load i32, i32* %5, align 4, !dbg !3839
  %12 = load i8*, i8** %7, align 8, !dbg !3840
  %13 = load i64, i64* %8, align 8, !dbg !3841
  %14 = call i8* @quotearg_n_options(i32 %11, i8* %12, i64 %13, %struct.quoting_options* %9), !dbg !3842
  ret i8* %14, !dbg !3843
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) #3 !dbg !3844 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3847, metadata !DIExpression()), !dbg !3848
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3849, metadata !DIExpression()), !dbg !3850
  %5 = load i32, i32* %3, align 4, !dbg !3851
  %6 = load i8*, i8** %4, align 8, !dbg !3852
  %7 = call i8* @quotearg_n_style(i32 0, i32 %5, i8* %6), !dbg !3853
  ret i8* %7, !dbg !3854
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) #3 !dbg !3855 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3858, metadata !DIExpression()), !dbg !3859
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3860, metadata !DIExpression()), !dbg !3861
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3862, metadata !DIExpression()), !dbg !3863
  %7 = load i32, i32* %4, align 4, !dbg !3864
  %8 = load i8*, i8** %5, align 8, !dbg !3865
  %9 = load i64, i64* %6, align 8, !dbg !3866
  %10 = call i8* @quotearg_n_style_mem(i32 0, i32 %7, i8* %8, i64 %9), !dbg !3867
  ret i8* %10, !dbg !3868
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) #3 !dbg !3869 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3872, metadata !DIExpression()), !dbg !3873
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3874, metadata !DIExpression()), !dbg !3875
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3876, metadata !DIExpression()), !dbg !3877
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3878, metadata !DIExpression()), !dbg !3879
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3880
  %9 = load i8, i8* %6, align 1, !dbg !3881
  %10 = call i32 @set_char_quoting(%struct.quoting_options* %7, i8 signext %9, i32 1), !dbg !3882
  %11 = load i8*, i8** %4, align 8, !dbg !3883
  %12 = load i64, i64* %5, align 8, !dbg !3884
  %13 = call i8* @quotearg_n_options(i32 0, i8* %11, i64 %12, %struct.quoting_options* %7), !dbg !3885
  ret i8* %13, !dbg !3886
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) #3 !dbg !3887 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3890, metadata !DIExpression()), !dbg !3891
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3892, metadata !DIExpression()), !dbg !3893
  %5 = load i8*, i8** %3, align 8, !dbg !3894
  %6 = load i8, i8* %4, align 1, !dbg !3895
  %7 = call i8* @quotearg_char_mem(i8* %5, i64 -1, i8 signext %6), !dbg !3896
  ret i8* %7, !dbg !3897
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* %0) #3 !dbg !3898 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3899, metadata !DIExpression()), !dbg !3900
  %3 = load i8*, i8** %2, align 8, !dbg !3901
  %4 = call i8* @quotearg_char(i8* %3, i8 signext 58), !dbg !3902
  ret i8* %4, !dbg !3903
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) #3 !dbg !3904 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3905, metadata !DIExpression()), !dbg !3906
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3907, metadata !DIExpression()), !dbg !3908
  %5 = load i8*, i8** %3, align 8, !dbg !3909
  %6 = load i64, i64* %4, align 8, !dbg !3910
  %7 = call i8* @quotearg_char_mem(i8* %5, i64 %6, i8 signext 58), !dbg !3911
  ret i8* %7, !dbg !3912
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) #3 !dbg !3913 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3914, metadata !DIExpression()), !dbg !3915
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3916, metadata !DIExpression()), !dbg !3917
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3918, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3920, metadata !DIExpression()), !dbg !3921
  %9 = load i32, i32* %5, align 4, !dbg !3922
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 %9), !dbg !3923
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3923
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !3923
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !3923
  %12 = call i32 @set_char_quoting(%struct.quoting_options* %7, i8 signext 58, i32 1), !dbg !3924
  %13 = load i32, i32* %4, align 4, !dbg !3925
  %14 = load i8*, i8** %6, align 8, !dbg !3926
  %15 = call i8* @quotearg_n_options(i32 %13, i8* %14, i64 -1, %struct.quoting_options* %7), !dbg !3927
  ret i8* %15, !dbg !3928
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) #3 !dbg !3929 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3932, metadata !DIExpression()), !dbg !3933
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3934, metadata !DIExpression()), !dbg !3935
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3936, metadata !DIExpression()), !dbg !3937
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3938, metadata !DIExpression()), !dbg !3939
  %9 = load i32, i32* %5, align 4, !dbg !3940
  %10 = load i8*, i8** %6, align 8, !dbg !3941
  %11 = load i8*, i8** %7, align 8, !dbg !3942
  %12 = load i8*, i8** %8, align 8, !dbg !3943
  %13 = call i8* @quotearg_n_custom_mem(i32 %9, i8* %10, i8* %11, i8* %12, i64 -1), !dbg !3944
  ret i8* %13, !dbg !3945
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) #3 !dbg !3946 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3949, metadata !DIExpression()), !dbg !3950
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3951, metadata !DIExpression()), !dbg !3952
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3953, metadata !DIExpression()), !dbg !3954
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3955, metadata !DIExpression()), !dbg !3956
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3957, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !3959, metadata !DIExpression()), !dbg !3960
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !3961
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3961
  %13 = load i8*, i8** %7, align 8, !dbg !3962
  %14 = load i8*, i8** %8, align 8, !dbg !3963
  call void @set_custom_quoting(%struct.quoting_options* %11, i8* %13, i8* %14), !dbg !3964
  %15 = load i32, i32* %6, align 4, !dbg !3965
  %16 = load i8*, i8** %9, align 8, !dbg !3966
  %17 = load i64, i64* %10, align 8, !dbg !3967
  %18 = call i8* @quotearg_n_options(i32 %15, i8* %16, i64 %17, %struct.quoting_options* %11), !dbg !3968
  ret i8* %18, !dbg !3969
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) #3 !dbg !3970 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3973, metadata !DIExpression()), !dbg !3974
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3975, metadata !DIExpression()), !dbg !3976
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3977, metadata !DIExpression()), !dbg !3978
  %7 = load i8*, i8** %4, align 8, !dbg !3979
  %8 = load i8*, i8** %5, align 8, !dbg !3980
  %9 = load i8*, i8** %6, align 8, !dbg !3981
  %10 = call i8* @quotearg_n_custom(i32 0, i8* %7, i8* %8, i8* %9), !dbg !3982
  ret i8* %10, !dbg !3983
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) #3 !dbg !3984 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3987, metadata !DIExpression()), !dbg !3988
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3989, metadata !DIExpression()), !dbg !3990
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3991, metadata !DIExpression()), !dbg !3992
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3993, metadata !DIExpression()), !dbg !3994
  %9 = load i8*, i8** %5, align 8, !dbg !3995
  %10 = load i8*, i8** %6, align 8, !dbg !3996
  %11 = load i8*, i8** %7, align 8, !dbg !3997
  %12 = load i64, i64* %8, align 8, !dbg !3998
  %13 = call i8* @quotearg_n_custom_mem(i32 0, i8* %9, i8* %10, i8* %11, i64 %12), !dbg !3999
  ret i8* %13, !dbg !4000
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) #3 !dbg !4001 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4004, metadata !DIExpression()), !dbg !4005
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4006, metadata !DIExpression()), !dbg !4007
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4008, metadata !DIExpression()), !dbg !4009
  %7 = load i32, i32* %4, align 4, !dbg !4010
  %8 = load i8*, i8** %5, align 8, !dbg !4011
  %9 = load i64, i64* %6, align 8, !dbg !4012
  %10 = call i8* @quotearg_n_options(i32 %7, i8* %8, i64 %9, %struct.quoting_options* @quote_quoting_options), !dbg !4013
  ret i8* %10, !dbg !4014
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) #3 !dbg !4015 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4018, metadata !DIExpression()), !dbg !4019
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4020, metadata !DIExpression()), !dbg !4021
  %5 = load i8*, i8** %3, align 8, !dbg !4022
  %6 = load i64, i64* %4, align 8, !dbg !4023
  %7 = call i8* @quote_n_mem(i32 0, i8* %5, i64 %6), !dbg !4024
  ret i8* %7, !dbg !4025
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) #3 !dbg !4026 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4029, metadata !DIExpression()), !dbg !4030
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4031, metadata !DIExpression()), !dbg !4032
  %5 = load i32, i32* %3, align 4, !dbg !4033
  %6 = load i8*, i8** %4, align 8, !dbg !4034
  %7 = call i8* @quote_n_mem(i32 %5, i8* %6, i64 -1), !dbg !4035
  ret i8* %7, !dbg !4036
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* %0) #3 !dbg !4037 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4040, metadata !DIExpression()), !dbg !4041
  %3 = load i8*, i8** %2, align 8, !dbg !4042
  %4 = call i8* @quote_n(i32 0, i8* %3), !dbg !4043
  ret i8* %4, !dbg !4044
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** %4, i64 %5) #3 !dbg !4045 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !4082, metadata !DIExpression()), !dbg !4083
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4084, metadata !DIExpression()), !dbg !4085
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4086, metadata !DIExpression()), !dbg !4087
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !4088, metadata !DIExpression()), !dbg !4089
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !4090, metadata !DIExpression()), !dbg !4091
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !4092, metadata !DIExpression()), !dbg !4093
  %13 = load i8*, i8** %8, align 8, !dbg !4094
  %14 = icmp ne i8* %13, null, !dbg !4094
  br i1 %14, label %15, label %21, !dbg !4096

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4097
  %17 = load i8*, i8** %8, align 8, !dbg !4098
  %18 = load i8*, i8** %9, align 8, !dbg !4099
  %19 = load i8*, i8** %10, align 8, !dbg !4100
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.140, i64 0, i64 0), i8* %17, i8* %18, i8* %19), !dbg !4101
  br label %26, !dbg !4101

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4102
  %23 = load i8*, i8** %9, align 8, !dbg !4103
  %24 = load i8*, i8** %10, align 8, !dbg !4104
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.141, i64 0, i64 0), i8* %23, i8* %24), !dbg !4105
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4106
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.142, i64 0, i64 0), i32 2020), !dbg !4107
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4108
  %30 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.143, i64 0, i64 0), %struct._IO_FILE* %29), !dbg !4108
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4109
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.144, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.145, i64 0, i64 0)), !dbg !4110
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4111
  %34 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.143, i64 0, i64 0), %struct._IO_FILE* %33), !dbg !4111
  %35 = load i64, i64* %12, align 8, !dbg !4112
  switch i64 %35, label %199 [
    i64 0, label %36
    i64 1, label %37
    i64 2, label %43
    i64 3, label %52
    i64 4, label %64
    i64 5, label %79
    i64 6, label %97
    i64 7, label %118
    i64 8, label %142
    i64 9, label %169
  ], !dbg !4113

36:                                               ; preds = %26
  br label %229, !dbg !4114

37:                                               ; preds = %26
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4116
  %39 = load i8**, i8*** %11, align 8, !dbg !4117
  %40 = getelementptr inbounds i8*, i8** %39, i64 0, !dbg !4117
  %41 = load i8*, i8** %40, align 8, !dbg !4117
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.146, i64 0, i64 0), i8* %41), !dbg !4118
  br label %229, !dbg !4119

43:                                               ; preds = %26
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4120
  %45 = load i8**, i8*** %11, align 8, !dbg !4121
  %46 = getelementptr inbounds i8*, i8** %45, i64 0, !dbg !4121
  %47 = load i8*, i8** %46, align 8, !dbg !4121
  %48 = load i8**, i8*** %11, align 8, !dbg !4122
  %49 = getelementptr inbounds i8*, i8** %48, i64 1, !dbg !4122
  %50 = load i8*, i8** %49, align 8, !dbg !4122
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.147, i64 0, i64 0), i8* %47, i8* %50), !dbg !4123
  br label %229, !dbg !4124

52:                                               ; preds = %26
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4125
  %54 = load i8**, i8*** %11, align 8, !dbg !4126
  %55 = getelementptr inbounds i8*, i8** %54, i64 0, !dbg !4126
  %56 = load i8*, i8** %55, align 8, !dbg !4126
  %57 = load i8**, i8*** %11, align 8, !dbg !4127
  %58 = getelementptr inbounds i8*, i8** %57, i64 1, !dbg !4127
  %59 = load i8*, i8** %58, align 8, !dbg !4127
  %60 = load i8**, i8*** %11, align 8, !dbg !4128
  %61 = getelementptr inbounds i8*, i8** %60, i64 2, !dbg !4128
  %62 = load i8*, i8** %61, align 8, !dbg !4128
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.148, i64 0, i64 0), i8* %56, i8* %59, i8* %62), !dbg !4129
  br label %229, !dbg !4130

64:                                               ; preds = %26
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4131
  %66 = load i8**, i8*** %11, align 8, !dbg !4132
  %67 = getelementptr inbounds i8*, i8** %66, i64 0, !dbg !4132
  %68 = load i8*, i8** %67, align 8, !dbg !4132
  %69 = load i8**, i8*** %11, align 8, !dbg !4133
  %70 = getelementptr inbounds i8*, i8** %69, i64 1, !dbg !4133
  %71 = load i8*, i8** %70, align 8, !dbg !4133
  %72 = load i8**, i8*** %11, align 8, !dbg !4134
  %73 = getelementptr inbounds i8*, i8** %72, i64 2, !dbg !4134
  %74 = load i8*, i8** %73, align 8, !dbg !4134
  %75 = load i8**, i8*** %11, align 8, !dbg !4135
  %76 = getelementptr inbounds i8*, i8** %75, i64 3, !dbg !4135
  %77 = load i8*, i8** %76, align 8, !dbg !4135
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.149, i64 0, i64 0), i8* %68, i8* %71, i8* %74, i8* %77), !dbg !4136
  br label %229, !dbg !4137

79:                                               ; preds = %26
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4138
  %81 = load i8**, i8*** %11, align 8, !dbg !4139
  %82 = getelementptr inbounds i8*, i8** %81, i64 0, !dbg !4139
  %83 = load i8*, i8** %82, align 8, !dbg !4139
  %84 = load i8**, i8*** %11, align 8, !dbg !4140
  %85 = getelementptr inbounds i8*, i8** %84, i64 1, !dbg !4140
  %86 = load i8*, i8** %85, align 8, !dbg !4140
  %87 = load i8**, i8*** %11, align 8, !dbg !4141
  %88 = getelementptr inbounds i8*, i8** %87, i64 2, !dbg !4141
  %89 = load i8*, i8** %88, align 8, !dbg !4141
  %90 = load i8**, i8*** %11, align 8, !dbg !4142
  %91 = getelementptr inbounds i8*, i8** %90, i64 3, !dbg !4142
  %92 = load i8*, i8** %91, align 8, !dbg !4142
  %93 = load i8**, i8*** %11, align 8, !dbg !4143
  %94 = getelementptr inbounds i8*, i8** %93, i64 4, !dbg !4143
  %95 = load i8*, i8** %94, align 8, !dbg !4143
  %96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.150, i64 0, i64 0), i8* %83, i8* %86, i8* %89, i8* %92, i8* %95), !dbg !4144
  br label %229, !dbg !4145

97:                                               ; preds = %26
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4146
  %99 = load i8**, i8*** %11, align 8, !dbg !4147
  %100 = getelementptr inbounds i8*, i8** %99, i64 0, !dbg !4147
  %101 = load i8*, i8** %100, align 8, !dbg !4147
  %102 = load i8**, i8*** %11, align 8, !dbg !4148
  %103 = getelementptr inbounds i8*, i8** %102, i64 1, !dbg !4148
  %104 = load i8*, i8** %103, align 8, !dbg !4148
  %105 = load i8**, i8*** %11, align 8, !dbg !4149
  %106 = getelementptr inbounds i8*, i8** %105, i64 2, !dbg !4149
  %107 = load i8*, i8** %106, align 8, !dbg !4149
  %108 = load i8**, i8*** %11, align 8, !dbg !4150
  %109 = getelementptr inbounds i8*, i8** %108, i64 3, !dbg !4150
  %110 = load i8*, i8** %109, align 8, !dbg !4150
  %111 = load i8**, i8*** %11, align 8, !dbg !4151
  %112 = getelementptr inbounds i8*, i8** %111, i64 4, !dbg !4151
  %113 = load i8*, i8** %112, align 8, !dbg !4151
  %114 = load i8**, i8*** %11, align 8, !dbg !4152
  %115 = getelementptr inbounds i8*, i8** %114, i64 5, !dbg !4152
  %116 = load i8*, i8** %115, align 8, !dbg !4152
  %117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.151, i64 0, i64 0), i8* %101, i8* %104, i8* %107, i8* %110, i8* %113, i8* %116), !dbg !4153
  br label %229, !dbg !4154

118:                                              ; preds = %26
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4155
  %120 = load i8**, i8*** %11, align 8, !dbg !4156
  %121 = getelementptr inbounds i8*, i8** %120, i64 0, !dbg !4156
  %122 = load i8*, i8** %121, align 8, !dbg !4156
  %123 = load i8**, i8*** %11, align 8, !dbg !4157
  %124 = getelementptr inbounds i8*, i8** %123, i64 1, !dbg !4157
  %125 = load i8*, i8** %124, align 8, !dbg !4157
  %126 = load i8**, i8*** %11, align 8, !dbg !4158
  %127 = getelementptr inbounds i8*, i8** %126, i64 2, !dbg !4158
  %128 = load i8*, i8** %127, align 8, !dbg !4158
  %129 = load i8**, i8*** %11, align 8, !dbg !4159
  %130 = getelementptr inbounds i8*, i8** %129, i64 3, !dbg !4159
  %131 = load i8*, i8** %130, align 8, !dbg !4159
  %132 = load i8**, i8*** %11, align 8, !dbg !4160
  %133 = getelementptr inbounds i8*, i8** %132, i64 4, !dbg !4160
  %134 = load i8*, i8** %133, align 8, !dbg !4160
  %135 = load i8**, i8*** %11, align 8, !dbg !4161
  %136 = getelementptr inbounds i8*, i8** %135, i64 5, !dbg !4161
  %137 = load i8*, i8** %136, align 8, !dbg !4161
  %138 = load i8**, i8*** %11, align 8, !dbg !4162
  %139 = getelementptr inbounds i8*, i8** %138, i64 6, !dbg !4162
  %140 = load i8*, i8** %139, align 8, !dbg !4162
  %141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %119, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.152, i64 0, i64 0), i8* %122, i8* %125, i8* %128, i8* %131, i8* %134, i8* %137, i8* %140), !dbg !4163
  br label %229, !dbg !4164

142:                                              ; preds = %26
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4165
  %144 = load i8**, i8*** %11, align 8, !dbg !4166
  %145 = getelementptr inbounds i8*, i8** %144, i64 0, !dbg !4166
  %146 = load i8*, i8** %145, align 8, !dbg !4166
  %147 = load i8**, i8*** %11, align 8, !dbg !4167
  %148 = getelementptr inbounds i8*, i8** %147, i64 1, !dbg !4167
  %149 = load i8*, i8** %148, align 8, !dbg !4167
  %150 = load i8**, i8*** %11, align 8, !dbg !4168
  %151 = getelementptr inbounds i8*, i8** %150, i64 2, !dbg !4168
  %152 = load i8*, i8** %151, align 8, !dbg !4168
  %153 = load i8**, i8*** %11, align 8, !dbg !4169
  %154 = getelementptr inbounds i8*, i8** %153, i64 3, !dbg !4169
  %155 = load i8*, i8** %154, align 8, !dbg !4169
  %156 = load i8**, i8*** %11, align 8, !dbg !4170
  %157 = getelementptr inbounds i8*, i8** %156, i64 4, !dbg !4170
  %158 = load i8*, i8** %157, align 8, !dbg !4170
  %159 = load i8**, i8*** %11, align 8, !dbg !4171
  %160 = getelementptr inbounds i8*, i8** %159, i64 5, !dbg !4171
  %161 = load i8*, i8** %160, align 8, !dbg !4171
  %162 = load i8**, i8*** %11, align 8, !dbg !4172
  %163 = getelementptr inbounds i8*, i8** %162, i64 6, !dbg !4172
  %164 = load i8*, i8** %163, align 8, !dbg !4172
  %165 = load i8**, i8*** %11, align 8, !dbg !4173
  %166 = getelementptr inbounds i8*, i8** %165, i64 7, !dbg !4173
  %167 = load i8*, i8** %166, align 8, !dbg !4173
  %168 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %143, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.153, i64 0, i64 0), i8* %146, i8* %149, i8* %152, i8* %155, i8* %158, i8* %161, i8* %164, i8* %167), !dbg !4174
  br label %229, !dbg !4175

169:                                              ; preds = %26
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4176
  %171 = load i8**, i8*** %11, align 8, !dbg !4177
  %172 = getelementptr inbounds i8*, i8** %171, i64 0, !dbg !4177
  %173 = load i8*, i8** %172, align 8, !dbg !4177
  %174 = load i8**, i8*** %11, align 8, !dbg !4178
  %175 = getelementptr inbounds i8*, i8** %174, i64 1, !dbg !4178
  %176 = load i8*, i8** %175, align 8, !dbg !4178
  %177 = load i8**, i8*** %11, align 8, !dbg !4179
  %178 = getelementptr inbounds i8*, i8** %177, i64 2, !dbg !4179
  %179 = load i8*, i8** %178, align 8, !dbg !4179
  %180 = load i8**, i8*** %11, align 8, !dbg !4180
  %181 = getelementptr inbounds i8*, i8** %180, i64 3, !dbg !4180
  %182 = load i8*, i8** %181, align 8, !dbg !4180
  %183 = load i8**, i8*** %11, align 8, !dbg !4181
  %184 = getelementptr inbounds i8*, i8** %183, i64 4, !dbg !4181
  %185 = load i8*, i8** %184, align 8, !dbg !4181
  %186 = load i8**, i8*** %11, align 8, !dbg !4182
  %187 = getelementptr inbounds i8*, i8** %186, i64 5, !dbg !4182
  %188 = load i8*, i8** %187, align 8, !dbg !4182
  %189 = load i8**, i8*** %11, align 8, !dbg !4183
  %190 = getelementptr inbounds i8*, i8** %189, i64 6, !dbg !4183
  %191 = load i8*, i8** %190, align 8, !dbg !4183
  %192 = load i8**, i8*** %11, align 8, !dbg !4184
  %193 = getelementptr inbounds i8*, i8** %192, i64 7, !dbg !4184
  %194 = load i8*, i8** %193, align 8, !dbg !4184
  %195 = load i8**, i8*** %11, align 8, !dbg !4185
  %196 = getelementptr inbounds i8*, i8** %195, i64 8, !dbg !4185
  %197 = load i8*, i8** %196, align 8, !dbg !4185
  %198 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %170, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.154, i64 0, i64 0), i8* %173, i8* %176, i8* %179, i8* %182, i8* %185, i8* %188, i8* %191, i8* %194, i8* %197), !dbg !4186
  br label %229, !dbg !4187

199:                                              ; preds = %26
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4188
  %201 = load i8**, i8*** %11, align 8, !dbg !4189
  %202 = getelementptr inbounds i8*, i8** %201, i64 0, !dbg !4189
  %203 = load i8*, i8** %202, align 8, !dbg !4189
  %204 = load i8**, i8*** %11, align 8, !dbg !4190
  %205 = getelementptr inbounds i8*, i8** %204, i64 1, !dbg !4190
  %206 = load i8*, i8** %205, align 8, !dbg !4190
  %207 = load i8**, i8*** %11, align 8, !dbg !4191
  %208 = getelementptr inbounds i8*, i8** %207, i64 2, !dbg !4191
  %209 = load i8*, i8** %208, align 8, !dbg !4191
  %210 = load i8**, i8*** %11, align 8, !dbg !4192
  %211 = getelementptr inbounds i8*, i8** %210, i64 3, !dbg !4192
  %212 = load i8*, i8** %211, align 8, !dbg !4192
  %213 = load i8**, i8*** %11, align 8, !dbg !4193
  %214 = getelementptr inbounds i8*, i8** %213, i64 4, !dbg !4193
  %215 = load i8*, i8** %214, align 8, !dbg !4193
  %216 = load i8**, i8*** %11, align 8, !dbg !4194
  %217 = getelementptr inbounds i8*, i8** %216, i64 5, !dbg !4194
  %218 = load i8*, i8** %217, align 8, !dbg !4194
  %219 = load i8**, i8*** %11, align 8, !dbg !4195
  %220 = getelementptr inbounds i8*, i8** %219, i64 6, !dbg !4195
  %221 = load i8*, i8** %220, align 8, !dbg !4195
  %222 = load i8**, i8*** %11, align 8, !dbg !4196
  %223 = getelementptr inbounds i8*, i8** %222, i64 7, !dbg !4196
  %224 = load i8*, i8** %223, align 8, !dbg !4196
  %225 = load i8**, i8*** %11, align 8, !dbg !4197
  %226 = getelementptr inbounds i8*, i8** %225, i64 8, !dbg !4197
  %227 = load i8*, i8** %226, align 8, !dbg !4197
  %228 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %200, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.155, i64 0, i64 0), i8* %203, i8* %206, i8* %209, i8* %212, i8* %215, i8* %218, i8* %221, i8* %224, i8* %227), !dbg !4198
  br label %229, !dbg !4199

229:                                              ; preds = %199, %169, %142, %118, %97, %79, %64, %52, %43, %37, %36
  ret void, !dbg !4200
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** %4) #3 !dbg !4201 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !4204, metadata !DIExpression()), !dbg !4205
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4206, metadata !DIExpression()), !dbg !4207
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4208, metadata !DIExpression()), !dbg !4209
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4210, metadata !DIExpression()), !dbg !4211
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !4212, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.declare(metadata i64* %11, metadata !4214, metadata !DIExpression()), !dbg !4215
  store i64 0, i64* %11, align 8, !dbg !4216
  br label %12, !dbg !4218

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !4219
  %14 = load i64, i64* %11, align 8, !dbg !4221
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !4219
  %16 = load i8*, i8** %15, align 8, !dbg !4219
  %17 = icmp ne i8* %16, null, !dbg !4222
  br i1 %17, label %18, label %22, !dbg !4222

18:                                               ; preds = %12
  br label %19, !dbg !4222

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !4223
  %21 = add i64 %20, 1, !dbg !4223
  store i64 %21, i64* %11, align 8, !dbg !4223
  br label %12, !dbg !4224, !llvm.loop !4225

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !4227
  %24 = load i8*, i8** %7, align 8, !dbg !4228
  %25 = load i8*, i8** %8, align 8, !dbg !4229
  %26 = load i8*, i8** %9, align 8, !dbg !4230
  %27 = load i8**, i8*** %10, align 8, !dbg !4231
  %28 = load i64, i64* %11, align 8, !dbg !4232
  call void @version_etc_arn(%struct._IO_FILE* %23, i8* %24, i8* %25, i8* %26, i8** %27, i64 %28), !dbg !4233
  ret void, !dbg !4234
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* %4) #3 !dbg !4235 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.__va_list_tag*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [10 x i8*], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !4245, metadata !DIExpression()), !dbg !4246
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4247, metadata !DIExpression()), !dbg !4248
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4249, metadata !DIExpression()), !dbg !4250
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4251, metadata !DIExpression()), !dbg !4252
  store %struct.__va_list_tag* %4, %struct.__va_list_tag** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %10, metadata !4253, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.declare(metadata i64* %11, metadata !4255, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.declare(metadata [10 x i8*]* %12, metadata !4257, metadata !DIExpression()), !dbg !4259
  store i64 0, i64* %11, align 8, !dbg !4260
  br label %13, !dbg !4262

13:                                               ; preds = %41, %5
  %14 = load i64, i64* %11, align 8, !dbg !4263
  %15 = icmp ult i64 %14, 10, !dbg !4265
  br i1 %15, label %16, label %38, !dbg !4266

16:                                               ; preds = %13
  %17 = load %struct.__va_list_tag*, %struct.__va_list_tag** %10, align 8, !dbg !4267
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %17, i32 0, i32 0, !dbg !4267
  %19 = load i32, i32* %18, align 8, !dbg !4267
  %20 = icmp ule i32 %19, 40, !dbg !4267
  br i1 %20, label %21, label %27, !dbg !4267

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %17, i32 0, i32 3, !dbg !4267
  %23 = load i8*, i8** %22, align 8, !dbg !4267
  %24 = getelementptr i8, i8* %23, i32 %19, !dbg !4267
  %25 = bitcast i8* %24 to i8**, !dbg !4267
  %26 = add i32 %19, 8, !dbg !4267
  store i32 %26, i32* %18, align 8, !dbg !4267
  br label %32, !dbg !4267

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %17, i32 0, i32 2, !dbg !4267
  %29 = load i8*, i8** %28, align 8, !dbg !4267
  %30 = bitcast i8* %29 to i8**, !dbg !4267
  %31 = getelementptr i8, i8* %29, i32 8, !dbg !4267
  store i8* %31, i8** %28, align 8, !dbg !4267
  br label %32, !dbg !4267

32:                                               ; preds = %27, %21
  %33 = phi i8** [ %25, %21 ], [ %30, %27 ], !dbg !4267
  %34 = load i8*, i8** %33, align 8, !dbg !4267
  %35 = load i64, i64* %11, align 8, !dbg !4268
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %12, i64 0, i64 %35, !dbg !4269
  store i8* %34, i8** %36, align 8, !dbg !4270
  %37 = icmp ne i8* %34, null, !dbg !4271
  br label %38

38:                                               ; preds = %32, %13
  %39 = phi i1 [ false, %13 ], [ %37, %32 ], !dbg !4272
  br i1 %39, label %40, label %44, !dbg !4273

40:                                               ; preds = %38
  br label %41, !dbg !4273

41:                                               ; preds = %40
  %42 = load i64, i64* %11, align 8, !dbg !4274
  %43 = add i64 %42, 1, !dbg !4274
  store i64 %43, i64* %11, align 8, !dbg !4274
  br label %13, !dbg !4275, !llvm.loop !4276

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !4278
  %46 = load i8*, i8** %7, align 8, !dbg !4279
  %47 = load i8*, i8** %8, align 8, !dbg !4280
  %48 = load i8*, i8** %9, align 8, !dbg !4281
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %12, i64 0, i64 0, !dbg !4282
  %50 = load i64, i64* %11, align 8, !dbg !4283
  call void @version_etc_arn(%struct._IO_FILE* %45, i8* %46, i8* %47, i8* %48, i8** %49, i64 %50), !dbg !4284
  ret void, !dbg !4285
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) #3 !dbg !4286 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !4289, metadata !DIExpression()), !dbg !4290
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4291, metadata !DIExpression()), !dbg !4292
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4293, metadata !DIExpression()), !dbg !4294
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4295, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %9, metadata !4297, metadata !DIExpression()), !dbg !4303
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0, !dbg !4304
  %11 = bitcast %struct.__va_list_tag* %10 to i8*, !dbg !4304
  call void @llvm.va_start(i8* %11), !dbg !4304
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4305
  %13 = load i8*, i8** %6, align 8, !dbg !4306
  %14 = load i8*, i8** %7, align 8, !dbg !4307
  %15 = load i8*, i8** %8, align 8, !dbg !4308
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0, !dbg !4309
  call void @version_etc_va(%struct._IO_FILE* %12, i8* %13, i8* %14, i8* %15, %struct.__va_list_tag* %16), !dbg !4310
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0, !dbg !4311
  %18 = bitcast %struct.__va_list_tag* %17 to i8*, !dbg !4311
  call void @llvm.va_end(i8* %18), !dbg !4311
  ret void, !dbg !4312
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #12

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #12

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #3 !dbg !4313 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4314
  %2 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.143, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !4314
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.158, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.159, i64 0, i64 0)), !dbg !4315
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.160, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.161, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.162, i64 0, i64 0)), !dbg !4316
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.163, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.164, i64 0, i64 0)), !dbg !4317
  ret void, !dbg !4318
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) #3 !dbg !4319 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4322, metadata !DIExpression()), !dbg !4323
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4324, metadata !DIExpression()), !dbg !4325
  %5 = load i64, i64* %4, align 8, !dbg !4326
  %6 = udiv i64 9223372036854775807, %5, !dbg !4326
  %7 = load i64, i64* %3, align 8, !dbg !4326
  %8 = icmp ult i64 %6, %7, !dbg !4326
  br i1 %8, label %9, label %10, !dbg !4328

9:                                                ; preds = %2
  call void @xalloc_die() #16, !dbg !4329
  unreachable, !dbg !4329

10:                                               ; preds = %2
  %11 = load i64, i64* %3, align 8, !dbg !4330
  %12 = load i64, i64* %4, align 8, !dbg !4331
  %13 = mul i64 %11, %12, !dbg !4332
  %14 = call noalias i8* @xmalloc(i64 %13), !dbg !4333
  ret i8* %14, !dbg !4334
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @xmalloc(i64 %0) #3 !dbg !4335 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4338, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4340, metadata !DIExpression()), !dbg !4341
  %4 = load i64, i64* %2, align 8, !dbg !4342
  %5 = call noalias i8* @malloc(i64 %4) #15, !dbg !4343
  store i8* %5, i8** %3, align 8, !dbg !4341
  %6 = load i8*, i8** %3, align 8, !dbg !4344
  %7 = icmp ne i8* %6, null, !dbg !4344
  br i1 %7, label %12, label %8, !dbg !4346

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8, !dbg !4347
  %10 = icmp ne i64 %9, 0, !dbg !4348
  br i1 %10, label %11, label %12, !dbg !4349

11:                                               ; preds = %8
  call void @xalloc_die() #16, !dbg !4350
  unreachable, !dbg !4350

12:                                               ; preds = %8, %1
  %13 = load i8*, i8** %3, align 8, !dbg !4351
  ret i8* %13, !dbg !4352
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xnrealloc(i8* %0, i64 %1, i64 %2) #3 !dbg !4353 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4356, metadata !DIExpression()), !dbg !4357
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4358, metadata !DIExpression()), !dbg !4359
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4360, metadata !DIExpression()), !dbg !4361
  %7 = load i64, i64* %6, align 8, !dbg !4362
  %8 = udiv i64 9223372036854775807, %7, !dbg !4362
  %9 = load i64, i64* %5, align 8, !dbg !4362
  %10 = icmp ult i64 %8, %9, !dbg !4362
  br i1 %10, label %11, label %12, !dbg !4364

11:                                               ; preds = %3
  call void @xalloc_die() #16, !dbg !4365
  unreachable, !dbg !4365

12:                                               ; preds = %3
  %13 = load i8*, i8** %4, align 8, !dbg !4366
  %14 = load i64, i64* %5, align 8, !dbg !4367
  %15 = load i64, i64* %6, align 8, !dbg !4368
  %16 = mul i64 %14, %15, !dbg !4369
  %17 = call i8* @xrealloc(i8* %13, i64 %16), !dbg !4370
  ret i8* %17, !dbg !4371
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xrealloc(i8* %0, i64 %1) #3 !dbg !4372 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4375, metadata !DIExpression()), !dbg !4376
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4377, metadata !DIExpression()), !dbg !4378
  %6 = load i64, i64* %5, align 8, !dbg !4379
  %7 = icmp ne i64 %6, 0, !dbg !4379
  br i1 %7, label %13, label %8, !dbg !4381

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !4382
  %10 = icmp ne i8* %9, null, !dbg !4382
  br i1 %10, label %11, label %13, !dbg !4383

11:                                               ; preds = %8
  %12 = load i8*, i8** %4, align 8, !dbg !4384
  call void @free(i8* %12) #15, !dbg !4386
  store i8* null, i8** %3, align 8, !dbg !4387
  br label %25, !dbg !4387

13:                                               ; preds = %8, %2
  %14 = load i8*, i8** %4, align 8, !dbg !4388
  %15 = load i64, i64* %5, align 8, !dbg !4389
  %16 = call i8* @realloc(i8* %14, i64 %15) #15, !dbg !4390
  store i8* %16, i8** %4, align 8, !dbg !4391
  %17 = load i8*, i8** %4, align 8, !dbg !4392
  %18 = icmp ne i8* %17, null, !dbg !4392
  br i1 %18, label %23, label %19, !dbg !4394

19:                                               ; preds = %13
  %20 = load i64, i64* %5, align 8, !dbg !4395
  %21 = icmp ne i64 %20, 0, !dbg !4395
  br i1 %21, label %22, label %23, !dbg !4396

22:                                               ; preds = %19
  call void @xalloc_die() #16, !dbg !4397
  unreachable, !dbg !4397

23:                                               ; preds = %19, %13
  %24 = load i8*, i8** %4, align 8, !dbg !4398
  store i8* %24, i8** %3, align 8, !dbg !4399
  br label %25, !dbg !4399

25:                                               ; preds = %23, %11
  %26 = load i8*, i8** %3, align 8, !dbg !4400
  ret i8* %26, !dbg !4400
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @x2nrealloc(i8* %0, i64* %1, i64 %2) #3 !dbg !262 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4401, metadata !DIExpression()), !dbg !4402
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !4403, metadata !DIExpression()), !dbg !4404
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4405, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4407, metadata !DIExpression()), !dbg !4408
  %8 = load i64*, i64** %5, align 8, !dbg !4409
  %9 = load i64, i64* %8, align 8, !dbg !4410
  store i64 %9, i64* %7, align 8, !dbg !4408
  %10 = load i8*, i8** %4, align 8, !dbg !4411
  %11 = icmp ne i8* %10, null, !dbg !4411
  br i1 %11, label %32, label %12, !dbg !4413

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !4414
  %14 = icmp ne i64 %13, 0, !dbg !4414
  br i1 %14, label %25, label %15, !dbg !4417

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !4418
  %17 = udiv i64 128, %16, !dbg !4420
  store i64 %17, i64* %7, align 8, !dbg !4421
  %18 = load i64, i64* %7, align 8, !dbg !4422
  %19 = icmp ne i64 %18, 0, !dbg !4423
  %20 = xor i1 %19, true, !dbg !4423
  %21 = zext i1 %20 to i32, !dbg !4423
  %22 = sext i32 %21 to i64, !dbg !4423
  %23 = load i64, i64* %7, align 8, !dbg !4424
  %24 = add i64 %23, %22, !dbg !4424
  store i64 %24, i64* %7, align 8, !dbg !4424
  br label %25, !dbg !4425

25:                                               ; preds = %15, %12
  %26 = load i64, i64* %6, align 8, !dbg !4426
  %27 = udiv i64 9223372036854775807, %26, !dbg !4426
  %28 = load i64, i64* %7, align 8, !dbg !4426
  %29 = icmp ult i64 %27, %28, !dbg !4426
  br i1 %29, label %30, label %31, !dbg !4428

30:                                               ; preds = %25
  call void @xalloc_die() #16, !dbg !4429
  unreachable, !dbg !4429

31:                                               ; preds = %25
  br label %44, !dbg !4430

32:                                               ; preds = %3
  %33 = load i64, i64* %6, align 8, !dbg !4431
  %34 = udiv i64 6148914691236517204, %33, !dbg !4434
  %35 = load i64, i64* %7, align 8, !dbg !4435
  %36 = icmp ule i64 %34, %35, !dbg !4436
  br i1 %36, label %37, label %38, !dbg !4437

37:                                               ; preds = %32
  call void @xalloc_die() #16, !dbg !4438
  unreachable, !dbg !4438

38:                                               ; preds = %32
  %39 = load i64, i64* %7, align 8, !dbg !4439
  %40 = udiv i64 %39, 2, !dbg !4440
  %41 = add i64 %40, 1, !dbg !4441
  %42 = load i64, i64* %7, align 8, !dbg !4442
  %43 = add i64 %42, %41, !dbg !4442
  store i64 %43, i64* %7, align 8, !dbg !4442
  br label %44

44:                                               ; preds = %38, %31
  %45 = load i64, i64* %7, align 8, !dbg !4443
  %46 = load i64*, i64** %5, align 8, !dbg !4444
  store i64 %45, i64* %46, align 8, !dbg !4445
  %47 = load i8*, i8** %4, align 8, !dbg !4446
  %48 = load i64, i64* %7, align 8, !dbg !4447
  %49 = load i64, i64* %6, align 8, !dbg !4448
  %50 = mul i64 %48, %49, !dbg !4449
  %51 = call i8* @xrealloc(i8* %47, i64 %50), !dbg !4450
  ret i8* %51, !dbg !4451
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) #3 !dbg !4452 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4455, metadata !DIExpression()), !dbg !4456
  %3 = load i64, i64* %2, align 8, !dbg !4457
  %4 = call noalias i8* @xmalloc(i64 %3), !dbg !4457
  ret i8* %4, !dbg !4458
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @x2realloc(i8* %0, i64* %1) #3 !dbg !4459 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4462, metadata !DIExpression()), !dbg !4463
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4464, metadata !DIExpression()), !dbg !4465
  %5 = load i8*, i8** %3, align 8, !dbg !4466
  %6 = load i64*, i64** %4, align 8, !dbg !4467
  %7 = call i8* @x2nrealloc(i8* %5, i64* %6, i64 1), !dbg !4468
  ret i8* %7, !dbg !4469
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @xzalloc(i64 %0) #3 !dbg !4470 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4471, metadata !DIExpression()), !dbg !4472
  %3 = load i64, i64* %2, align 8, !dbg !4473
  %4 = call noalias i8* @xcalloc(i64 %3, i64 1), !dbg !4474
  ret i8* %4, !dbg !4475
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) #3 !dbg !4476 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4477, metadata !DIExpression()), !dbg !4478
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4479, metadata !DIExpression()), !dbg !4480
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4481, metadata !DIExpression()), !dbg !4482
  %6 = load i64, i64* %4, align 8, !dbg !4483
  %7 = udiv i64 9223372036854775807, %6, !dbg !4483
  %8 = load i64, i64* %3, align 8, !dbg !4483
  %9 = icmp ult i64 %7, %8, !dbg !4483
  br i1 %9, label %15, label %10, !dbg !4485

10:                                               ; preds = %2
  %11 = load i64, i64* %3, align 8, !dbg !4486
  %12 = load i64, i64* %4, align 8, !dbg !4487
  %13 = call noalias i8* @calloc(i64 %11, i64 %12) #15, !dbg !4488
  store i8* %13, i8** %5, align 8, !dbg !4489
  %14 = icmp ne i8* %13, null, !dbg !4489
  br i1 %14, label %16, label %15, !dbg !4490

15:                                               ; preds = %10, %2
  call void @xalloc_die() #16, !dbg !4491
  unreachable, !dbg !4491

16:                                               ; preds = %10
  %17 = load i8*, i8** %5, align 8, !dbg !4492
  ret i8* %17, !dbg !4493
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) #3 !dbg !4494 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4497, metadata !DIExpression()), !dbg !4498
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4499, metadata !DIExpression()), !dbg !4500
  %5 = load i64, i64* %4, align 8, !dbg !4501
  %6 = call noalias i8* @xmalloc(i64 %5), !dbg !4502
  %7 = load i8*, i8** %3, align 8, !dbg !4503
  %8 = load i64, i64* %4, align 8, !dbg !4504
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !4505
  ret i8* %6, !dbg !4506
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @xstrdup(i8* %0) #3 !dbg !4507 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4508, metadata !DIExpression()), !dbg !4509
  %3 = load i8*, i8** %2, align 8, !dbg !4510
  %4 = load i8*, i8** %2, align 8, !dbg !4511
  %5 = call i64 @strlen(i8* %4) #14, !dbg !4512
  %6 = add i64 %5, 1, !dbg !4513
  %7 = call i8* @xmemdup(i8* %3, i64 %6), !dbg !4514
  ret i8* %7, !dbg !4515
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !4516 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4517
  call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.177, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.178, i64 0, i64 0)), !dbg !4518
  call void @abort() #13, !dbg !4519
  unreachable, !dbg !4519
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xstrtoumax(i8* %0, i8** %1, i32 %2, i64* %3, i8* %4) #3 !dbg !4520 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4526, metadata !DIExpression()), !dbg !4527
  store i8** %1, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !4528, metadata !DIExpression()), !dbg !4529
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4530, metadata !DIExpression()), !dbg !4531
  store i64* %3, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !4532, metadata !DIExpression()), !dbg !4533
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !4534, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.declare(metadata i8** %12, metadata !4536, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.declare(metadata i8*** %13, metadata !4538, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.declare(metadata i64* %14, metadata !4540, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.declare(metadata i32* %15, metadata !4542, metadata !DIExpression()), !dbg !4543
  store i32 0, i32* %15, align 4, !dbg !4543
  %21 = load i32, i32* %9, align 4, !dbg !4544
  %22 = icmp sle i32 0, %21, !dbg !4544
  br i1 %22, label %23, label %27, !dbg !4544

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4, !dbg !4544
  %25 = icmp sle i32 %24, 36, !dbg !4544
  br i1 %25, label %26, label %27, !dbg !4547

26:                                               ; preds = %23
  br label %28, !dbg !4547

27:                                               ; preds = %23, %5
  call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.181, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.182, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #13, !dbg !4544
  unreachable, !dbg !4544

28:                                               ; preds = %26
  %29 = load i8**, i8*** %8, align 8, !dbg !4548
  %30 = icmp ne i8** %29, null, !dbg !4548
  br i1 %30, label %31, label %33, !dbg !4548

31:                                               ; preds = %28
  %32 = load i8**, i8*** %8, align 8, !dbg !4549
  br label %34, !dbg !4548

33:                                               ; preds = %28
  br label %34, !dbg !4548

34:                                               ; preds = %33, %31
  %35 = phi i8** [ %32, %31 ], [ %12, %33 ], !dbg !4548
  store i8** %35, i8*** %13, align 8, !dbg !4550
  %36 = call i32* @__errno_location() #17, !dbg !4551
  store i32 0, i32* %36, align 4, !dbg !4552
  call void @llvm.dbg.declare(metadata i8** %16, metadata !4553, metadata !DIExpression()), !dbg !4556
  %37 = load i8*, i8** %7, align 8, !dbg !4557
  store i8* %37, i8** %16, align 8, !dbg !4556
  call void @llvm.dbg.declare(metadata i8* %17, metadata !4558, metadata !DIExpression()), !dbg !4559
  %38 = load i8*, i8** %16, align 8, !dbg !4560
  %39 = load i8, i8* %38, align 1, !dbg !4561
  store i8 %39, i8* %17, align 1, !dbg !4559
  br label %40, !dbg !4562

40:                                               ; preds = %51, %34
  %41 = call i16** @__ctype_b_loc() #17, !dbg !4563
  %42 = load i16*, i16** %41, align 8, !dbg !4563
  %43 = load i8, i8* %17, align 1, !dbg !4563
  %44 = zext i8 %43 to i32, !dbg !4563
  %45 = sext i32 %44 to i64, !dbg !4563
  %46 = getelementptr inbounds i16, i16* %42, i64 %45, !dbg !4563
  %47 = load i16, i16* %46, align 2, !dbg !4563
  %48 = zext i16 %47 to i32, !dbg !4563
  %49 = and i32 %48, 8192, !dbg !4563
  %50 = icmp ne i32 %49, 0, !dbg !4562
  br i1 %50, label %51, label %55, !dbg !4562

51:                                               ; preds = %40
  %52 = load i8*, i8** %16, align 8, !dbg !4564
  %53 = getelementptr inbounds i8, i8* %52, i32 1, !dbg !4564
  store i8* %53, i8** %16, align 8, !dbg !4564
  %54 = load i8, i8* %53, align 1, !dbg !4565
  store i8 %54, i8* %17, align 1, !dbg !4566
  br label %40, !dbg !4562, !llvm.loop !4567

55:                                               ; preds = %40
  %56 = load i8, i8* %17, align 1, !dbg !4569
  %57 = zext i8 %56 to i32, !dbg !4569
  %58 = icmp eq i32 %57, 45, !dbg !4571
  br i1 %58, label %59, label %60, !dbg !4572

59:                                               ; preds = %55
  store i32 4, i32* %6, align 4, !dbg !4573
  br label %221, !dbg !4573

60:                                               ; preds = %55
  %61 = load i8*, i8** %7, align 8, !dbg !4574
  %62 = load i8**, i8*** %13, align 8, !dbg !4575
  %63 = load i32, i32* %9, align 4, !dbg !4576
  %64 = call i64 @strtoumax(i8* %61, i8** %62, i32 %63) #15, !dbg !4577
  store i64 %64, i64* %14, align 8, !dbg !4578
  %65 = load i8**, i8*** %13, align 8, !dbg !4579
  %66 = load i8*, i8** %65, align 8, !dbg !4581
  %67 = load i8*, i8** %7, align 8, !dbg !4582
  %68 = icmp eq i8* %66, %67, !dbg !4583
  br i1 %68, label %69, label %89, !dbg !4584

69:                                               ; preds = %60
  %70 = load i8*, i8** %11, align 8, !dbg !4585
  %71 = icmp ne i8* %70, null, !dbg !4585
  br i1 %71, label %72, label %87, !dbg !4588

72:                                               ; preds = %69
  %73 = load i8**, i8*** %13, align 8, !dbg !4589
  %74 = load i8*, i8** %73, align 8, !dbg !4590
  %75 = load i8, i8* %74, align 1, !dbg !4591
  %76 = sext i8 %75 to i32, !dbg !4591
  %77 = icmp ne i32 %76, 0, !dbg !4591
  br i1 %77, label %78, label %87, !dbg !4592

78:                                               ; preds = %72
  %79 = load i8*, i8** %11, align 8, !dbg !4593
  %80 = load i8**, i8*** %13, align 8, !dbg !4594
  %81 = load i8*, i8** %80, align 8, !dbg !4595
  %82 = load i8, i8* %81, align 1, !dbg !4596
  %83 = sext i8 %82 to i32, !dbg !4596
  %84 = call i8* @strchr(i8* %79, i32 %83) #14, !dbg !4597
  %85 = icmp ne i8* %84, null, !dbg !4597
  br i1 %85, label %86, label %87, !dbg !4598

86:                                               ; preds = %78
  store i64 1, i64* %14, align 8, !dbg !4599
  br label %88, !dbg !4600

87:                                               ; preds = %78, %72, %69
  store i32 4, i32* %6, align 4, !dbg !4601
  br label %221, !dbg !4601

88:                                               ; preds = %86
  br label %100, !dbg !4602

89:                                               ; preds = %60
  %90 = call i32* @__errno_location() #17, !dbg !4603
  %91 = load i32, i32* %90, align 4, !dbg !4603
  %92 = icmp ne i32 %91, 0, !dbg !4605
  br i1 %92, label %93, label %99, !dbg !4606

93:                                               ; preds = %89
  %94 = call i32* @__errno_location() #17, !dbg !4607
  %95 = load i32, i32* %94, align 4, !dbg !4607
  %96 = icmp ne i32 %95, 34, !dbg !4610
  br i1 %96, label %97, label %98, !dbg !4611

97:                                               ; preds = %93
  store i32 4, i32* %6, align 4, !dbg !4612
  br label %221, !dbg !4612

98:                                               ; preds = %93
  store i32 1, i32* %15, align 4, !dbg !4613
  br label %99, !dbg !4614

99:                                               ; preds = %98, %89
  br label %100

100:                                              ; preds = %99, %88
  %101 = load i8*, i8** %11, align 8, !dbg !4615
  %102 = icmp ne i8* %101, null, !dbg !4615
  br i1 %102, label %107, label %103, !dbg !4617

103:                                              ; preds = %100
  %104 = load i64, i64* %14, align 8, !dbg !4618
  %105 = load i64*, i64** %10, align 8, !dbg !4620
  store i64 %104, i64* %105, align 8, !dbg !4621
  %106 = load i32, i32* %15, align 4, !dbg !4622
  store i32 %106, i32* %6, align 4, !dbg !4623
  br label %221, !dbg !4623

107:                                              ; preds = %100
  %108 = load i8**, i8*** %13, align 8, !dbg !4624
  %109 = load i8*, i8** %108, align 8, !dbg !4626
  %110 = load i8, i8* %109, align 1, !dbg !4627
  %111 = sext i8 %110 to i32, !dbg !4627
  %112 = icmp ne i32 %111, 0, !dbg !4628
  br i1 %112, label %113, label %217, !dbg !4629

113:                                              ; preds = %107
  call void @llvm.dbg.declare(metadata i32* %18, metadata !4630, metadata !DIExpression()), !dbg !4632
  store i32 1024, i32* %18, align 4, !dbg !4632
  call void @llvm.dbg.declare(metadata i32* %19, metadata !4633, metadata !DIExpression()), !dbg !4634
  store i32 1, i32* %19, align 4, !dbg !4634
  call void @llvm.dbg.declare(metadata i32* %20, metadata !4635, metadata !DIExpression()), !dbg !4636
  %114 = load i8*, i8** %11, align 8, !dbg !4637
  %115 = load i8**, i8*** %13, align 8, !dbg !4639
  %116 = load i8*, i8** %115, align 8, !dbg !4640
  %117 = load i8, i8* %116, align 1, !dbg !4641
  %118 = sext i8 %117 to i32, !dbg !4641
  %119 = call i8* @strchr(i8* %114, i32 %118) #14, !dbg !4642
  %120 = icmp ne i8* %119, null, !dbg !4642
  br i1 %120, label %126, label %121, !dbg !4643

121:                                              ; preds = %113
  %122 = load i64, i64* %14, align 8, !dbg !4644
  %123 = load i64*, i64** %10, align 8, !dbg !4646
  store i64 %122, i64* %123, align 8, !dbg !4647
  %124 = load i32, i32* %15, align 4, !dbg !4648
  %125 = or i32 %124, 2, !dbg !4649
  store i32 %125, i32* %6, align 4, !dbg !4650
  br label %221, !dbg !4650

126:                                              ; preds = %113
  %127 = load i8**, i8*** %13, align 8, !dbg !4651
  %128 = load i8*, i8** %127, align 8, !dbg !4652
  %129 = load i8, i8* %128, align 1, !dbg !4653
  %130 = sext i8 %129 to i32, !dbg !4653
  switch i32 %130, label %159 [
    i32 69, label %131
    i32 71, label %131
    i32 103, label %131
    i32 107, label %131
    i32 75, label %131
    i32 77, label %131
    i32 109, label %131
    i32 80, label %131
    i32 84, label %131
    i32 116, label %131
    i32 89, label %131
    i32 90, label %131
  ], !dbg !4654

131:                                              ; preds = %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126
  %132 = load i8*, i8** %11, align 8, !dbg !4655
  %133 = call i8* @strchr(i8* %132, i32 48) #14, !dbg !4658
  %134 = icmp ne i8* %133, null, !dbg !4658
  br i1 %134, label %135, label %158, !dbg !4659

135:                                              ; preds = %131
  %136 = load i8**, i8*** %13, align 8, !dbg !4660
  %137 = getelementptr inbounds i8*, i8** %136, i64 0, !dbg !4660
  %138 = load i8*, i8** %137, align 8, !dbg !4660
  %139 = getelementptr inbounds i8, i8* %138, i64 1, !dbg !4660
  %140 = load i8, i8* %139, align 1, !dbg !4660
  %141 = sext i8 %140 to i32, !dbg !4660
  switch i32 %141, label %157 [
    i32 105, label %142
    i32 66, label %154
    i32 68, label %154
  ], !dbg !4661

142:                                              ; preds = %135
  %143 = load i8**, i8*** %13, align 8, !dbg !4662
  %144 = getelementptr inbounds i8*, i8** %143, i64 0, !dbg !4662
  %145 = load i8*, i8** %144, align 8, !dbg !4662
  %146 = getelementptr inbounds i8, i8* %145, i64 2, !dbg !4662
  %147 = load i8, i8* %146, align 1, !dbg !4662
  %148 = sext i8 %147 to i32, !dbg !4662
  %149 = icmp eq i32 %148, 66, !dbg !4665
  br i1 %149, label %150, label %153, !dbg !4666

150:                                              ; preds = %142
  %151 = load i32, i32* %19, align 4, !dbg !4667
  %152 = add nsw i32 %151, 2, !dbg !4667
  store i32 %152, i32* %19, align 4, !dbg !4667
  br label %153, !dbg !4668

153:                                              ; preds = %150, %142
  br label %157, !dbg !4669

154:                                              ; preds = %135, %135
  store i32 1000, i32* %18, align 4, !dbg !4670
  %155 = load i32, i32* %19, align 4, !dbg !4671
  %156 = add nsw i32 %155, 1, !dbg !4671
  store i32 %156, i32* %19, align 4, !dbg !4671
  br label %157, !dbg !4672

157:                                              ; preds = %135, %154, %153
  br label %158, !dbg !4673

158:                                              ; preds = %157, %131
  br label %159, !dbg !4674

159:                                              ; preds = %158, %126
  %160 = load i8**, i8*** %13, align 8, !dbg !4675
  %161 = load i8*, i8** %160, align 8, !dbg !4676
  %162 = load i8, i8* %161, align 1, !dbg !4677
  %163 = sext i8 %162 to i32, !dbg !4677
  switch i32 %163, label %195 [
    i32 98, label %164
    i32 66, label %166
    i32 99, label %168
    i32 69, label %169
    i32 71, label %172
    i32 103, label %172
    i32 107, label %175
    i32 75, label %175
    i32 77, label %178
    i32 109, label %178
    i32 80, label %181
    i32 84, label %184
    i32 116, label %184
    i32 119, label %187
    i32 89, label %189
    i32 90, label %192
  ], !dbg !4678

164:                                              ; preds = %159
  %165 = call i32 @bkm_scale(i64* %14, i32 512), !dbg !4679
  store i32 %165, i32* %20, align 4, !dbg !4681
  br label %200, !dbg !4682

166:                                              ; preds = %159
  %167 = call i32 @bkm_scale(i64* %14, i32 1024), !dbg !4683
  store i32 %167, i32* %20, align 4, !dbg !4684
  br label %200, !dbg !4685

168:                                              ; preds = %159
  store i32 0, i32* %20, align 4, !dbg !4686
  br label %200, !dbg !4687

169:                                              ; preds = %159
  %170 = load i32, i32* %18, align 4, !dbg !4688
  %171 = call i32 @bkm_scale_by_power(i64* %14, i32 %170, i32 6), !dbg !4689
  store i32 %171, i32* %20, align 4, !dbg !4690
  br label %200, !dbg !4691

172:                                              ; preds = %159, %159
  %173 = load i32, i32* %18, align 4, !dbg !4692
  %174 = call i32 @bkm_scale_by_power(i64* %14, i32 %173, i32 3), !dbg !4693
  store i32 %174, i32* %20, align 4, !dbg !4694
  br label %200, !dbg !4695

175:                                              ; preds = %159, %159
  %176 = load i32, i32* %18, align 4, !dbg !4696
  %177 = call i32 @bkm_scale_by_power(i64* %14, i32 %176, i32 1), !dbg !4697
  store i32 %177, i32* %20, align 4, !dbg !4698
  br label %200, !dbg !4699

178:                                              ; preds = %159, %159
  %179 = load i32, i32* %18, align 4, !dbg !4700
  %180 = call i32 @bkm_scale_by_power(i64* %14, i32 %179, i32 2), !dbg !4701
  store i32 %180, i32* %20, align 4, !dbg !4702
  br label %200, !dbg !4703

181:                                              ; preds = %159
  %182 = load i32, i32* %18, align 4, !dbg !4704
  %183 = call i32 @bkm_scale_by_power(i64* %14, i32 %182, i32 5), !dbg !4705
  store i32 %183, i32* %20, align 4, !dbg !4706
  br label %200, !dbg !4707

184:                                              ; preds = %159, %159
  %185 = load i32, i32* %18, align 4, !dbg !4708
  %186 = call i32 @bkm_scale_by_power(i64* %14, i32 %185, i32 4), !dbg !4709
  store i32 %186, i32* %20, align 4, !dbg !4710
  br label %200, !dbg !4711

187:                                              ; preds = %159
  %188 = call i32 @bkm_scale(i64* %14, i32 2), !dbg !4712
  store i32 %188, i32* %20, align 4, !dbg !4713
  br label %200, !dbg !4714

189:                                              ; preds = %159
  %190 = load i32, i32* %18, align 4, !dbg !4715
  %191 = call i32 @bkm_scale_by_power(i64* %14, i32 %190, i32 8), !dbg !4716
  store i32 %191, i32* %20, align 4, !dbg !4717
  br label %200, !dbg !4718

192:                                              ; preds = %159
  %193 = load i32, i32* %18, align 4, !dbg !4719
  %194 = call i32 @bkm_scale_by_power(i64* %14, i32 %193, i32 7), !dbg !4720
  store i32 %194, i32* %20, align 4, !dbg !4721
  br label %200, !dbg !4722

195:                                              ; preds = %159
  %196 = load i64, i64* %14, align 8, !dbg !4723
  %197 = load i64*, i64** %10, align 8, !dbg !4724
  store i64 %196, i64* %197, align 8, !dbg !4725
  %198 = load i32, i32* %15, align 4, !dbg !4726
  %199 = or i32 %198, 2, !dbg !4727
  store i32 %199, i32* %6, align 4, !dbg !4728
  br label %221, !dbg !4728

200:                                              ; preds = %192, %189, %187, %184, %181, %178, %175, %172, %169, %168, %166, %164
  %201 = load i32, i32* %20, align 4, !dbg !4729
  %202 = load i32, i32* %15, align 4, !dbg !4730
  %203 = or i32 %202, %201, !dbg !4730
  store i32 %203, i32* %15, align 4, !dbg !4730
  %204 = load i32, i32* %19, align 4, !dbg !4731
  %205 = load i8**, i8*** %13, align 8, !dbg !4732
  %206 = load i8*, i8** %205, align 8, !dbg !4733
  %207 = sext i32 %204 to i64, !dbg !4733
  %208 = getelementptr inbounds i8, i8* %206, i64 %207, !dbg !4733
  store i8* %208, i8** %205, align 8, !dbg !4733
  %209 = load i8**, i8*** %13, align 8, !dbg !4734
  %210 = load i8*, i8** %209, align 8, !dbg !4736
  %211 = load i8, i8* %210, align 1, !dbg !4737
  %212 = icmp ne i8 %211, 0, !dbg !4737
  br i1 %212, label %213, label %216, !dbg !4738

213:                                              ; preds = %200
  %214 = load i32, i32* %15, align 4, !dbg !4739
  %215 = or i32 %214, 2, !dbg !4739
  store i32 %215, i32* %15, align 4, !dbg !4739
  br label %216, !dbg !4740

216:                                              ; preds = %213, %200
  br label %217, !dbg !4741

217:                                              ; preds = %216, %107
  %218 = load i64, i64* %14, align 8, !dbg !4742
  %219 = load i64*, i64** %10, align 8, !dbg !4743
  store i64 %218, i64* %219, align 8, !dbg !4744
  %220 = load i32, i32* %15, align 4, !dbg !4745
  store i32 %220, i32* %6, align 4, !dbg !4746
  br label %221, !dbg !4746

221:                                              ; preds = %217, %195, %121, %103, %97, %87, %59
  %222 = load i32, i32* %6, align 4, !dbg !4747
  ret i32 %222, !dbg !4747
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind
declare dso_local i64 @strtoumax(i8*, i8**, i32) #7

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bkm_scale(i64* %0, i32 %1) #3 !dbg !4748 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4751, metadata !DIExpression()), !dbg !4752
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4753, metadata !DIExpression()), !dbg !4754
  %6 = load i32, i32* %5, align 4, !dbg !4755
  %7 = sext i32 %6 to i64, !dbg !4755
  %8 = udiv i64 -1, %7, !dbg !4757
  %9 = load i64*, i64** %4, align 8, !dbg !4758
  %10 = load i64, i64* %9, align 8, !dbg !4759
  %11 = icmp ult i64 %8, %10, !dbg !4760
  br i1 %11, label %12, label %14, !dbg !4761

12:                                               ; preds = %2
  %13 = load i64*, i64** %4, align 8, !dbg !4762
  store i64 -1, i64* %13, align 8, !dbg !4764
  store i32 1, i32* %3, align 4, !dbg !4765
  br label %20, !dbg !4765

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4, !dbg !4766
  %16 = sext i32 %15 to i64, !dbg !4766
  %17 = load i64*, i64** %4, align 8, !dbg !4767
  %18 = load i64, i64* %17, align 8, !dbg !4768
  %19 = mul i64 %18, %16, !dbg !4768
  store i64 %19, i64* %17, align 8, !dbg !4768
  store i32 0, i32* %3, align 4, !dbg !4769
  br label %20, !dbg !4769

20:                                               ; preds = %14, %12
  %21 = load i32, i32* %3, align 4, !dbg !4770
  ret i32 %21, !dbg !4770
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bkm_scale_by_power(i64* %0, i32 %1, i32 %2) #3 !dbg !4771 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4774, metadata !DIExpression()), !dbg !4775
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4776, metadata !DIExpression()), !dbg !4777
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4778, metadata !DIExpression()), !dbg !4779
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4780, metadata !DIExpression()), !dbg !4781
  store i32 0, i32* %7, align 4, !dbg !4781
  br label %8, !dbg !4782

8:                                                ; preds = %12, %3
  %9 = load i32, i32* %6, align 4, !dbg !4783
  %10 = add nsw i32 %9, -1, !dbg !4783
  store i32 %10, i32* %6, align 4, !dbg !4783
  %11 = icmp ne i32 %9, 0, !dbg !4782
  br i1 %11, label %12, label %18, !dbg !4782

12:                                               ; preds = %8
  %13 = load i64*, i64** %4, align 8, !dbg !4784
  %14 = load i32, i32* %5, align 4, !dbg !4785
  %15 = call i32 @bkm_scale(i64* %13, i32 %14), !dbg !4786
  %16 = load i32, i32* %7, align 4, !dbg !4787
  %17 = or i32 %16, %15, !dbg !4787
  store i32 %17, i32* %7, align 4, !dbg !4787
  br label %8, !dbg !4782, !llvm.loop !4788

18:                                               ; preds = %8
  %19 = load i32, i32* %7, align 4, !dbg !4790
  ret i32 %19, !dbg !4791
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) #3 !dbg !4792 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4829, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4831, metadata !DIExpression()), !dbg !4832
  store i32 0, i32* %4, align 4, !dbg !4832
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4833, metadata !DIExpression()), !dbg !4834
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4835, metadata !DIExpression()), !dbg !4836
  store i32 0, i32* %6, align 4, !dbg !4836
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4837
  %8 = call i32 @fileno(%struct._IO_FILE* %7) #15, !dbg !4838
  store i32 %8, i32* %5, align 4, !dbg !4839
  %9 = load i32, i32* %5, align 4, !dbg !4840
  %10 = icmp slt i32 %9, 0, !dbg !4842
  br i1 %10, label %11, label %14, !dbg !4843

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4844
  %13 = call i32 @fclose(%struct._IO_FILE* %12), !dbg !4845
  store i32 %13, i32* %2, align 4, !dbg !4846
  br label %40, !dbg !4846

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4847
  %16 = call i32 @__freading(%struct._IO_FILE* %15) #15, !dbg !4847
  %17 = icmp ne i32 %16, 0, !dbg !4847
  br i1 %17, label %18, label %23, !dbg !4849

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4850
  %20 = call i32 @fileno(%struct._IO_FILE* %19) #15, !dbg !4851
  %21 = call i64 @lseek(i32 %20, i64 0, i32 1) #15, !dbg !4852
  %22 = icmp ne i64 %21, -1, !dbg !4853
  br i1 %22, label %23, label %30, !dbg !4854

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4855
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* %24), !dbg !4856
  %26 = icmp ne i32 %25, 0, !dbg !4856
  br i1 %26, label %27, label %30, !dbg !4857

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #17, !dbg !4858
  %29 = load i32, i32* %28, align 4, !dbg !4858
  store i32 %29, i32* %4, align 4, !dbg !4859
  br label %30, !dbg !4860

30:                                               ; preds = %27, %23, %18
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4861
  %32 = call i32 @fclose(%struct._IO_FILE* %31), !dbg !4862
  store i32 %32, i32* %6, align 4, !dbg !4863
  %33 = load i32, i32* %4, align 4, !dbg !4864
  %34 = icmp ne i32 %33, 0, !dbg !4866
  br i1 %34, label %35, label %38, !dbg !4867

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !4868
  %37 = call i32* @__errno_location() #17, !dbg !4870
  store i32 %36, i32* %37, align 4, !dbg !4871
  store i32 -1, i32* %6, align 4, !dbg !4872
  br label %38, !dbg !4873

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !4874
  store i32 %39, i32* %2, align 4, !dbg !4875
  br label %40, !dbg !4875

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !4876
  ret i32 %41, !dbg !4876
}

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local i32 @__freading(%struct._IO_FILE*) #7

; Function Attrs: nounwind
declare dso_local i64 @lseek(i32, i64, i32) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) #3 !dbg !4877 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4914, metadata !DIExpression()), !dbg !4915
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4916
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !4918
  br i1 %5, label %10, label %6, !dbg !4919

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4920
  %8 = call i32 @__freading(%struct._IO_FILE* %7) #15, !dbg !4920
  %9 = icmp ne i32 %8, 0, !dbg !4920
  br i1 %9, label %13, label %10, !dbg !4921

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4922
  %12 = call i32 @fflush(%struct._IO_FILE* %11), !dbg !4923
  store i32 %12, i32* %2, align 4, !dbg !4924
  br label %17, !dbg !4924

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4925
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* %14), !dbg !4926
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4927
  %16 = call i32 @fflush(%struct._IO_FILE* %15), !dbg !4928
  store i32 %16, i32* %2, align 4, !dbg !4929
  br label %17, !dbg !4929

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !4930
  ret i32 %18, !dbg !4930
}

declare dso_local i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* %0) #3 !dbg !4931 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !4934, metadata !DIExpression()), !dbg !4935
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4936
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !4938
  %5 = load i32, i32* %4, align 8, !dbg !4938
  %6 = and i32 %5, 256, !dbg !4939
  %7 = icmp ne i32 %6, 0, !dbg !4939
  br i1 %7, label %8, label %11, !dbg !4940

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4941
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* %9, i64 0, i32 1), !dbg !4942
  br label %11, !dbg !4942

11:                                               ; preds = %8, %1
  ret void, !dbg !4943
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2) #3 !dbg !4944 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !4981, metadata !DIExpression()), !dbg !4982
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4983, metadata !DIExpression()), !dbg !4984
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4985, metadata !DIExpression()), !dbg !4986
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4987
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !4989
  %11 = load i8*, i8** %10, align 8, !dbg !4989
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4990
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !4991
  %14 = load i8*, i8** %13, align 8, !dbg !4991
  %15 = icmp eq i8* %11, %14, !dbg !4992
  br i1 %15, label %16, label %46, !dbg !4993

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4994
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !4995
  %19 = load i8*, i8** %18, align 8, !dbg !4995
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4996
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !4997
  %22 = load i8*, i8** %21, align 8, !dbg !4997
  %23 = icmp eq i8* %19, %22, !dbg !4998
  br i1 %23, label %24, label %46, !dbg !4999

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5000
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !5001
  %27 = load i8*, i8** %26, align 8, !dbg !5001
  %28 = icmp eq i8* %27, null, !dbg !5002
  br i1 %28, label %29, label %46, !dbg !5003

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !5004, metadata !DIExpression()), !dbg !5006
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5007
  %31 = call i32 @fileno(%struct._IO_FILE* %30) #15, !dbg !5008
  %32 = load i64, i64* %6, align 8, !dbg !5009
  %33 = load i32, i32* %7, align 4, !dbg !5010
  %34 = call i64 @lseek(i32 %31, i64 %32, i32 %33) #15, !dbg !5011
  store i64 %34, i64* %8, align 8, !dbg !5006
  %35 = load i64, i64* %8, align 8, !dbg !5012
  %36 = icmp eq i64 %35, -1, !dbg !5014
  br i1 %36, label %37, label %38, !dbg !5015

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !5016
  br label %51, !dbg !5016

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5018
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !5019
  %41 = load i32, i32* %40, align 8, !dbg !5020
  %42 = and i32 %41, -17, !dbg !5020
  store i32 %42, i32* %40, align 8, !dbg !5020
  %43 = load i64, i64* %8, align 8, !dbg !5021
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5022
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !5023
  store i64 %43, i64* %45, align 8, !dbg !5024
  store i32 0, i32* %4, align 4, !dbg !5025
  br label %51, !dbg !5025

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5026
  %48 = load i64, i64* %6, align 8, !dbg !5027
  %49 = load i32, i32* %7, align 4, !dbg !5028
  %50 = call i32 @fseeko(%struct._IO_FILE* %47, i64 %48, i32 %49), !dbg !5029
  store i32 %50, i32* %4, align 4, !dbg !5030
  br label %51, !dbg !5030

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !5031
  ret i32 %52, !dbg !5031
}

declare dso_local i32 @fseeko(%struct._IO_FILE*, i64, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) #3 !dbg !5032 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !5047, metadata !DIExpression()), !dbg !5048
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !5049, metadata !DIExpression()), !dbg !5050
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !5051, metadata !DIExpression()), !dbg !5052
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !5053, metadata !DIExpression()), !dbg !5054
  call void @llvm.dbg.declare(metadata i64* %10, metadata !5055, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.declare(metadata i32* %11, metadata !5057, metadata !DIExpression()), !dbg !5058
  %13 = load i32*, i32** %6, align 8, !dbg !5059
  %14 = icmp ne i32* %13, null, !dbg !5059
  br i1 %14, label %16, label %15, !dbg !5061

15:                                               ; preds = %4
  store i32* %11, i32** %6, align 8, !dbg !5062
  br label %16, !dbg !5063

16:                                               ; preds = %15, %4
  %17 = load i32*, i32** %6, align 8, !dbg !5064
  %18 = load i8*, i8** %7, align 8, !dbg !5065
  %19 = load i64, i64* %8, align 8, !dbg !5066
  %20 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !5067
  %21 = call i64 @mbrtowc(i32* %17, i8* %18, i64 %19, %struct.__mbstate_t* %20) #15, !dbg !5068
  store i64 %21, i64* %10, align 8, !dbg !5069
  %22 = load i64, i64* %10, align 8, !dbg !5070
  %23 = icmp ule i64 -2, %22, !dbg !5072
  br i1 %23, label %24, label %35, !dbg !5073

24:                                               ; preds = %16
  %25 = load i64, i64* %8, align 8, !dbg !5074
  %26 = icmp ne i64 %25, 0, !dbg !5075
  br i1 %26, label %27, label %35, !dbg !5076

27:                                               ; preds = %24
  %28 = call zeroext i1 @hard_locale(i32 0), !dbg !5077
  br i1 %28, label %35, label %29, !dbg !5078

29:                                               ; preds = %27
  call void @llvm.dbg.declare(metadata i8* %12, metadata !5079, metadata !DIExpression()), !dbg !5081
  %30 = load i8*, i8** %7, align 8, !dbg !5082
  %31 = load i8, i8* %30, align 1, !dbg !5083
  store i8 %31, i8* %12, align 1, !dbg !5081
  %32 = load i8, i8* %12, align 1, !dbg !5084
  %33 = zext i8 %32 to i32, !dbg !5084
  %34 = load i32*, i32** %6, align 8, !dbg !5085
  store i32 %33, i32* %34, align 4, !dbg !5086
  store i64 1, i64* %5, align 8, !dbg !5087
  br label %37, !dbg !5087

35:                                               ; preds = %27, %24, %16
  %36 = load i64, i64* %10, align 8, !dbg !5088
  store i64 %36, i64* %5, align 8, !dbg !5089
  br label %37, !dbg !5089

37:                                               ; preds = %35, %29
  %38 = load i64, i64* %5, align 8, !dbg !5090
  ret i64 %38, !dbg !5090
}

; Function Attrs: nounwind
declare dso_local i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) #7

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i32 @c_strcasecmp(i8* %0, i8* %1) #9 !dbg !5091 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5094, metadata !DIExpression()), !dbg !5095
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5096, metadata !DIExpression()), !dbg !5097
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5098, metadata !DIExpression()), !dbg !5099
  %10 = load i8*, i8** %4, align 8, !dbg !5100
  store i8* %10, i8** %6, align 8, !dbg !5099
  call void @llvm.dbg.declare(metadata i8** %7, metadata !5101, metadata !DIExpression()), !dbg !5102
  %11 = load i8*, i8** %5, align 8, !dbg !5103
  store i8* %11, i8** %7, align 8, !dbg !5102
  call void @llvm.dbg.declare(metadata i8* %8, metadata !5104, metadata !DIExpression()), !dbg !5105
  call void @llvm.dbg.declare(metadata i8* %9, metadata !5106, metadata !DIExpression()), !dbg !5107
  %12 = load i8*, i8** %6, align 8, !dbg !5108
  %13 = load i8*, i8** %7, align 8, !dbg !5110
  %14 = icmp eq i8* %12, %13, !dbg !5111
  br i1 %14, label %15, label %16, !dbg !5112

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !5113
  br label %49, !dbg !5113

16:                                               ; preds = %2
  br label %17, !dbg !5114

17:                                               ; preds = %37, %16
  %18 = load i8*, i8** %6, align 8, !dbg !5115
  %19 = load i8, i8* %18, align 1, !dbg !5117
  %20 = zext i8 %19 to i32, !dbg !5117
  %21 = call i32 @c_tolower(i32 %20), !dbg !5118
  %22 = trunc i32 %21 to i8, !dbg !5118
  store i8 %22, i8* %8, align 1, !dbg !5119
  %23 = load i8*, i8** %7, align 8, !dbg !5120
  %24 = load i8, i8* %23, align 1, !dbg !5121
  %25 = zext i8 %24 to i32, !dbg !5121
  %26 = call i32 @c_tolower(i32 %25), !dbg !5122
  %27 = trunc i32 %26 to i8, !dbg !5122
  store i8 %27, i8* %9, align 1, !dbg !5123
  %28 = load i8, i8* %8, align 1, !dbg !5124
  %29 = zext i8 %28 to i32, !dbg !5124
  %30 = icmp eq i32 %29, 0, !dbg !5126
  br i1 %30, label %31, label %32, !dbg !5127

31:                                               ; preds = %17
  br label %43, !dbg !5128

32:                                               ; preds = %17
  %33 = load i8*, i8** %6, align 8, !dbg !5129
  %34 = getelementptr inbounds i8, i8* %33, i32 1, !dbg !5129
  store i8* %34, i8** %6, align 8, !dbg !5129
  %35 = load i8*, i8** %7, align 8, !dbg !5130
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !5130
  store i8* %36, i8** %7, align 8, !dbg !5130
  br label %37, !dbg !5131

37:                                               ; preds = %32
  %38 = load i8, i8* %8, align 1, !dbg !5132
  %39 = zext i8 %38 to i32, !dbg !5132
  %40 = load i8, i8* %9, align 1, !dbg !5133
  %41 = zext i8 %40 to i32, !dbg !5133
  %42 = icmp eq i32 %39, %41, !dbg !5134
  br i1 %42, label %17, label %43, !dbg !5131, !llvm.loop !5135

43:                                               ; preds = %37, %31
  %44 = load i8, i8* %8, align 1, !dbg !5137
  %45 = zext i8 %44 to i32, !dbg !5137
  %46 = load i8, i8* %9, align 1, !dbg !5139
  %47 = zext i8 %46 to i32, !dbg !5139
  %48 = sub nsw i32 %45, %47, !dbg !5140
  store i32 %48, i32* %3, align 4, !dbg !5141
  br label %49, !dbg !5141

49:                                               ; preds = %43, %15
  %50 = load i32, i32* %3, align 4, !dbg !5142
  ret i32 %50, !dbg !5142
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) #3 !dbg !5143 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !5180, metadata !DIExpression()), !dbg !5181
  call void @llvm.dbg.declare(metadata i8* %4, metadata !5182, metadata !DIExpression()), !dbg !5184
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5185
  %8 = call i64 @__fpending(%struct._IO_FILE* %7) #15, !dbg !5186
  %9 = icmp ne i64 %8, 0, !dbg !5187
  %10 = zext i1 %9 to i8, !dbg !5184
  store i8 %10, i8* %4, align 1, !dbg !5184
  call void @llvm.dbg.declare(metadata i8* %5, metadata !5188, metadata !DIExpression()), !dbg !5189
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5190
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* %11) #15, !dbg !5190
  %13 = icmp ne i32 %12, 0, !dbg !5191
  %14 = zext i1 %13 to i8, !dbg !5189
  store i8 %14, i8* %5, align 1, !dbg !5189
  call void @llvm.dbg.declare(metadata i8* %6, metadata !5192, metadata !DIExpression()), !dbg !5193
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5194
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* %15), !dbg !5195
  %17 = icmp ne i32 %16, 0, !dbg !5196
  %18 = zext i1 %17 to i8, !dbg !5193
  store i8 %18, i8* %6, align 1, !dbg !5193
  %19 = load i8, i8* %5, align 1, !dbg !5197
  %20 = trunc i8 %19 to i1, !dbg !5197
  br i1 %20, label %31, label %21, !dbg !5199

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !5200
  %23 = trunc i8 %22 to i1, !dbg !5200
  br i1 %23, label %24, label %37, !dbg !5201

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !5202
  %26 = trunc i8 %25 to i1, !dbg !5202
  br i1 %26, label %31, label %27, !dbg !5203

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #17, !dbg !5204
  %29 = load i32, i32* %28, align 4, !dbg !5204
  %30 = icmp ne i32 %29, 9, !dbg !5205
  br i1 %30, label %31, label %37, !dbg !5206

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !5207
  %33 = trunc i8 %32 to i1, !dbg !5207
  br i1 %33, label %36, label %34, !dbg !5210

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #17, !dbg !5211
  store i32 0, i32* %35, align 4, !dbg !5212
  br label %36, !dbg !5211

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !5213
  br label %38, !dbg !5213

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !5214
  br label %38, !dbg !5214

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !5215
  ret i32 %39, !dbg !5215
}

; Function Attrs: nounwind
declare dso_local i64 @__fpending(%struct._IO_FILE*) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) #3 !dbg !5216 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 16
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5217, metadata !DIExpression()), !dbg !5218
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !5219, metadata !DIExpression()), !dbg !5223
  %5 = load i32, i32* %3, align 4, !dbg !5224
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !5226
  %7 = call i32 @setlocale_null_r(i32 %5, i8* %6, i64 257), !dbg !5227
  %8 = icmp ne i32 %7, 0, !dbg !5227
  br i1 %8, label %9, label %10, !dbg !5228

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5229
  br label %21, !dbg !5229

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !5230
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.197, i64 0, i64 0)) #14, !dbg !5231
  %13 = icmp eq i32 %12, 0, !dbg !5232
  br i1 %13, label %18, label %14, !dbg !5233

14:                                               ; preds = %10
  %15 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !5234
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.198, i64 0, i64 0)) #14, !dbg !5235
  %17 = icmp eq i32 %16, 0, !dbg !5236
  br label %18, !dbg !5233

18:                                               ; preds = %14, %10
  %19 = phi i1 [ true, %10 ], [ %17, %14 ]
  %20 = xor i1 %19, true, !dbg !5237
  store i1 %20, i1* %2, align 1, !dbg !5238
  br label %21, !dbg !5238

21:                                               ; preds = %18, %9
  %22 = load i1, i1* %2, align 1, !dbg !5239
  ret i1 %22, !dbg !5239
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @locale_charset() #3 !dbg !5240 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !5242, metadata !DIExpression()), !dbg !5243
  %2 = call i8* @nl_langinfo(i32 14) #15, !dbg !5244
  store i8* %2, i8** %1, align 8, !dbg !5245
  %3 = load i8*, i8** %1, align 8, !dbg !5246
  %4 = icmp eq i8* %3, null, !dbg !5248
  br i1 %4, label %5, label %6, !dbg !5249

5:                                                ; preds = %0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.201, i64 0, i64 0), i8** %1, align 8, !dbg !5250
  br label %6, !dbg !5251

6:                                                ; preds = %5, %0
  %7 = load i8*, i8** %1, align 8, !dbg !5252
  %8 = getelementptr inbounds i8, i8* %7, i64 0, !dbg !5252
  %9 = load i8, i8* %8, align 1, !dbg !5252
  %10 = sext i8 %9 to i32, !dbg !5252
  %11 = icmp eq i32 %10, 0, !dbg !5256
  br i1 %11, label %12, label %13, !dbg !5257

12:                                               ; preds = %6
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.202, i64 0, i64 0), i8** %1, align 8, !dbg !5258
  br label %13, !dbg !5259

13:                                               ; preds = %12, %6
  %14 = load i8*, i8** %1, align 8, !dbg !5260
  ret i8* %14, !dbg !5261
}

; Function Attrs: nounwind
declare dso_local i8* @nl_langinfo(i32) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) #3 !dbg !5262 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !5265, metadata !DIExpression()), !dbg !5266
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5267, metadata !DIExpression()), !dbg !5268
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5269, metadata !DIExpression()), !dbg !5270
  %7 = load i32, i32* %4, align 4, !dbg !5271
  %8 = load i8*, i8** %5, align 8, !dbg !5272
  %9 = load i64, i64* %6, align 8, !dbg !5273
  %10 = call i32 @setlocale_null_unlocked(i32 %7, i8* %8, i64 %9), !dbg !5274
  ret i32 %10, !dbg !5275
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setlocale_null_unlocked(i32 %0, i8* %1, i64 %2) #3 !dbg !5276 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5277, metadata !DIExpression()), !dbg !5278
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5279, metadata !DIExpression()), !dbg !5280
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5281, metadata !DIExpression()), !dbg !5282
  call void @llvm.dbg.declare(metadata i8** %8, metadata !5283, metadata !DIExpression()), !dbg !5284
  %10 = load i32, i32* %5, align 4, !dbg !5285
  %11 = call i8* @setlocale_null_androidfix(i32 %10), !dbg !5286
  store i8* %11, i8** %8, align 8, !dbg !5284
  %12 = load i8*, i8** %8, align 8, !dbg !5287
  %13 = icmp eq i8* %12, null, !dbg !5289
  br i1 %13, label %14, label %21, !dbg !5290

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !5291
  %16 = icmp ugt i64 %15, 0, !dbg !5294
  br i1 %16, label %17, label %20, !dbg !5295

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !5296
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !5296
  store i8 0, i8* %19, align 1, !dbg !5297
  br label %20, !dbg !5296

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !5298
  br label %45, !dbg !5298

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !5299, metadata !DIExpression()), !dbg !5301
  %22 = load i8*, i8** %8, align 8, !dbg !5302
  %23 = call i64 @strlen(i8* %22) #14, !dbg !5303
  store i64 %23, i64* %9, align 8, !dbg !5301
  %24 = load i64, i64* %9, align 8, !dbg !5304
  %25 = load i64, i64* %7, align 8, !dbg !5306
  %26 = icmp ult i64 %24, %25, !dbg !5307
  br i1 %26, label %27, label %32, !dbg !5308

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !5309
  %29 = load i8*, i8** %8, align 8, !dbg !5311
  %30 = load i64, i64* %9, align 8, !dbg !5312
  %31 = add i64 %30, 1, !dbg !5313
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !5314
  store i32 0, i32* %4, align 4, !dbg !5315
  br label %45, !dbg !5315

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !5316
  %34 = icmp ugt i64 %33, 0, !dbg !5319
  br i1 %34, label %35, label %44, !dbg !5320

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !5321
  %37 = load i8*, i8** %8, align 8, !dbg !5323
  %38 = load i64, i64* %7, align 8, !dbg !5324
  %39 = sub i64 %38, 1, !dbg !5325
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !5326
  %40 = load i8*, i8** %6, align 8, !dbg !5327
  %41 = load i64, i64* %7, align 8, !dbg !5328
  %42 = sub i64 %41, 1, !dbg !5329
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !5327
  store i8 0, i8* %43, align 1, !dbg !5330
  br label %44, !dbg !5331

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !5332
  br label %45, !dbg !5332

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !5333
  ret i32 %46, !dbg !5333
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @setlocale_null_androidfix(i32 %0) #3 !dbg !5334 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5337, metadata !DIExpression()), !dbg !5338
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5339, metadata !DIExpression()), !dbg !5340
  %4 = load i32, i32* %2, align 4, !dbg !5341
  %5 = call i8* @setlocale(i32 %4, i8* null) #15, !dbg !5342
  store i8* %5, i8** %3, align 8, !dbg !5340
  %6 = load i8*, i8** %3, align 8, !dbg !5343
  ret i8* %6, !dbg !5344
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 %0) #3 !dbg !5345 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5346, metadata !DIExpression()), !dbg !5347
  %3 = load i32, i32* %2, align 4, !dbg !5348
  %4 = call i8* @setlocale_null_androidfix(i32 %3), !dbg !5349
  ret i8* %4, !dbg !5350
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isalnum(i32 %0) #3 !dbg !5351 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5353, metadata !DIExpression()), !dbg !5354
  %4 = load i32, i32* %3, align 4, !dbg !5355
  switch i32 %4, label %6 [
    i32 48, label %5
    i32 49, label %5
    i32 50, label %5
    i32 51, label %5
    i32 52, label %5
    i32 53, label %5
    i32 54, label %5
    i32 55, label %5
    i32 56, label %5
    i32 57, label %5
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 103, label %5
    i32 104, label %5
    i32 105, label %5
    i32 106, label %5
    i32 107, label %5
    i32 108, label %5
    i32 109, label %5
    i32 110, label %5
    i32 111, label %5
    i32 112, label %5
    i32 113, label %5
    i32 114, label %5
    i32 115, label %5
    i32 116, label %5
    i32 117, label %5
    i32 118, label %5
    i32 119, label %5
    i32 120, label %5
    i32 121, label %5
    i32 122, label %5
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
    i32 71, label %5
    i32 72, label %5
    i32 73, label %5
    i32 74, label %5
    i32 75, label %5
    i32 76, label %5
    i32 77, label %5
    i32 78, label %5
    i32 79, label %5
    i32 80, label %5
    i32 81, label %5
    i32 82, label %5
    i32 83, label %5
    i32 84, label %5
    i32 85, label %5
    i32 86, label %5
    i32 87, label %5
    i32 88, label %5
    i32 89, label %5
    i32 90, label %5
  ], !dbg !5356

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !5357
  br label %7, !dbg !5357

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5359
  br label %7, !dbg !5359

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !5360
  ret i1 %8, !dbg !5360
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isalpha(i32 %0) #3 !dbg !5361 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5362, metadata !DIExpression()), !dbg !5363
  %4 = load i32, i32* %3, align 4, !dbg !5364
  switch i32 %4, label %6 [
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 103, label %5
    i32 104, label %5
    i32 105, label %5
    i32 106, label %5
    i32 107, label %5
    i32 108, label %5
    i32 109, label %5
    i32 110, label %5
    i32 111, label %5
    i32 112, label %5
    i32 113, label %5
    i32 114, label %5
    i32 115, label %5
    i32 116, label %5
    i32 117, label %5
    i32 118, label %5
    i32 119, label %5
    i32 120, label %5
    i32 121, label %5
    i32 122, label %5
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
    i32 71, label %5
    i32 72, label %5
    i32 73, label %5
    i32 74, label %5
    i32 75, label %5
    i32 76, label %5
    i32 77, label %5
    i32 78, label %5
    i32 79, label %5
    i32 80, label %5
    i32 81, label %5
    i32 82, label %5
    i32 83, label %5
    i32 84, label %5
    i32 85, label %5
    i32 86, label %5
    i32 87, label %5
    i32 88, label %5
    i32 89, label %5
    i32 90, label %5
  ], !dbg !5365

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !5366
  br label %7, !dbg !5366

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5368
  br label %7, !dbg !5368

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !5369
  ret i1 %8, !dbg !5369
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isascii(i32 %0) #3 !dbg !5370 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5371, metadata !DIExpression()), !dbg !5372
  %4 = load i32, i32* %3, align 4, !dbg !5373
  switch i32 %4, label %6 [
    i32 32, label %5
    i32 7, label %5
    i32 8, label %5
    i32 12, label %5
    i32 10, label %5
    i32 13, label %5
    i32 9, label %5
    i32 11, label %5
    i32 0, label %5
    i32 1, label %5
    i32 2, label %5
    i32 3, label %5
    i32 4, label %5
    i32 5, label %5
    i32 6, label %5
    i32 14, label %5
    i32 15, label %5
    i32 16, label %5
    i32 17, label %5
    i32 18, label %5
    i32 19, label %5
    i32 20, label %5
    i32 21, label %5
    i32 22, label %5
    i32 23, label %5
    i32 24, label %5
    i32 25, label %5
    i32 26, label %5
    i32 27, label %5
    i32 28, label %5
    i32 29, label %5
    i32 30, label %5
    i32 31, label %5
    i32 127, label %5
    i32 48, label %5
    i32 49, label %5
    i32 50, label %5
    i32 51, label %5
    i32 52, label %5
    i32 53, label %5
    i32 54, label %5
    i32 55, label %5
    i32 56, label %5
    i32 57, label %5
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 103, label %5
    i32 104, label %5
    i32 105, label %5
    i32 106, label %5
    i32 107, label %5
    i32 108, label %5
    i32 109, label %5
    i32 110, label %5
    i32 111, label %5
    i32 112, label %5
    i32 113, label %5
    i32 114, label %5
    i32 115, label %5
    i32 116, label %5
    i32 117, label %5
    i32 118, label %5
    i32 119, label %5
    i32 120, label %5
    i32 121, label %5
    i32 122, label %5
    i32 33, label %5
    i32 34, label %5
    i32 35, label %5
    i32 36, label %5
    i32 37, label %5
    i32 38, label %5
    i32 39, label %5
    i32 40, label %5
    i32 41, label %5
    i32 42, label %5
    i32 43, label %5
    i32 44, label %5
    i32 45, label %5
    i32 46, label %5
    i32 47, label %5
    i32 58, label %5
    i32 59, label %5
    i32 60, label %5
    i32 61, label %5
    i32 62, label %5
    i32 63, label %5
    i32 64, label %5
    i32 91, label %5
    i32 92, label %5
    i32 93, label %5
    i32 94, label %5
    i32 95, label %5
    i32 96, label %5
    i32 123, label %5
    i32 124, label %5
    i32 125, label %5
    i32 126, label %5
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
    i32 71, label %5
    i32 72, label %5
    i32 73, label %5
    i32 74, label %5
    i32 75, label %5
    i32 76, label %5
    i32 77, label %5
    i32 78, label %5
    i32 79, label %5
    i32 80, label %5
    i32 81, label %5
    i32 82, label %5
    i32 83, label %5
    i32 84, label %5
    i32 85, label %5
    i32 86, label %5
    i32 87, label %5
    i32 88, label %5
    i32 89, label %5
    i32 90, label %5
  ], !dbg !5374

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !5375
  br label %7, !dbg !5375

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5377
  br label %7, !dbg !5377

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !5378
  ret i1 %8, !dbg !5378
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isblank(i32 %0) #3 !dbg !5379 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5380, metadata !DIExpression()), !dbg !5381
  %3 = load i32, i32* %2, align 4, !dbg !5382
  %4 = icmp eq i32 %3, 32, !dbg !5383
  br i1 %4, label %8, label %5, !dbg !5384

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5385
  %7 = icmp eq i32 %6, 9, !dbg !5386
  br label %8, !dbg !5384

8:                                                ; preds = %5, %1
  %9 = phi i1 [ true, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !5387
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_iscntrl(i32 %0) #3 !dbg !5388 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5389, metadata !DIExpression()), !dbg !5390
  %4 = load i32, i32* %3, align 4, !dbg !5391
  switch i32 %4, label %6 [
    i32 7, label %5
    i32 8, label %5
    i32 12, label %5
    i32 10, label %5
    i32 13, label %5
    i32 9, label %5
    i32 11, label %5
    i32 0, label %5
    i32 1, label %5
    i32 2, label %5
    i32 3, label %5
    i32 4, label %5
    i32 5, label %5
    i32 6, label %5
    i32 14, label %5
    i32 15, label %5
    i32 16, label %5
    i32 17, label %5
    i32 18, label %5
    i32 19, label %5
    i32 20, label %5
    i32 21, label %5
    i32 22, label %5
    i32 23, label %5
    i32 24, label %5
    i32 25, label %5
    i32 26, label %5
    i32 27, label %5
    i32 28, label %5
    i32 29, label %5
    i32 30, label %5
    i32 31, label %5
    i32 127, label %5
  ], !dbg !5392

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !5393
  br label %7, !dbg !5393

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5395
  br label %7, !dbg !5395

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !5396
  ret i1 %8, !dbg !5396
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isdigit(i32 %0) #3 !dbg !5397 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5398, metadata !DIExpression()), !dbg !5399
  %4 = load i32, i32* %3, align 4, !dbg !5400
  switch i32 %4, label %6 [
    i32 48, label %5
    i32 49, label %5
    i32 50, label %5
    i32 51, label %5
    i32 52, label %5
    i32 53, label %5
    i32 54, label %5
    i32 55, label %5
    i32 56, label %5
    i32 57, label %5
  ], !dbg !5401

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !5402
  br label %7, !dbg !5402

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5404
  br label %7, !dbg !5404

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !5405
  ret i1 %8, !dbg !5405
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isgraph(i32 %0) #3 !dbg !5406 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5407, metadata !DIExpression()), !dbg !5408
  %4 = load i32, i32* %3, align 4, !dbg !5409
  switch i32 %4, label %6 [
    i32 48, label %5
    i32 49, label %5
    i32 50, label %5
    i32 51, label %5
    i32 52, label %5
    i32 53, label %5
    i32 54, label %5
    i32 55, label %5
    i32 56, label %5
    i32 57, label %5
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 103, label %5
    i32 104, label %5
    i32 105, label %5
    i32 106, label %5
    i32 107, label %5
    i32 108, label %5
    i32 109, label %5
    i32 110, label %5
    i32 111, label %5
    i32 112, label %5
    i32 113, label %5
    i32 114, label %5
    i32 115, label %5
    i32 116, label %5
    i32 117, label %5
    i32 118, label %5
    i32 119, label %5
    i32 120, label %5
    i32 121, label %5
    i32 122, label %5
    i32 33, label %5
    i32 34, label %5
    i32 35, label %5
    i32 36, label %5
    i32 37, label %5
    i32 38, label %5
    i32 39, label %5
    i32 40, label %5
    i32 41, label %5
    i32 42, label %5
    i32 43, label %5
    i32 44, label %5
    i32 45, label %5
    i32 46, label %5
    i32 47, label %5
    i32 58, label %5
    i32 59, label %5
    i32 60, label %5
    i32 61, label %5
    i32 62, label %5
    i32 63, label %5
    i32 64, label %5
    i32 91, label %5
    i32 92, label %5
    i32 93, label %5
    i32 94, label %5
    i32 95, label %5
    i32 96, label %5
    i32 123, label %5
    i32 124, label %5
    i32 125, label %5
    i32 126, label %5
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
    i32 71, label %5
    i32 72, label %5
    i32 73, label %5
    i32 74, label %5
    i32 75, label %5
    i32 76, label %5
    i32 77, label %5
    i32 78, label %5
    i32 79, label %5
    i32 80, label %5
    i32 81, label %5
    i32 82, label %5
    i32 83, label %5
    i32 84, label %5
    i32 85, label %5
    i32 86, label %5
    i32 87, label %5
    i32 88, label %5
    i32 89, label %5
    i32 90, label %5
  ], !dbg !5410

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !5411
  br label %7, !dbg !5411

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5413
  br label %7, !dbg !5413

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !5414
  ret i1 %8, !dbg !5414
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_islower(i32 %0) #3 !dbg !5415 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5416, metadata !DIExpression()), !dbg !5417
  %4 = load i32, i32* %3, align 4, !dbg !5418
  switch i32 %4, label %6 [
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 103, label %5
    i32 104, label %5
    i32 105, label %5
    i32 106, label %5
    i32 107, label %5
    i32 108, label %5
    i32 109, label %5
    i32 110, label %5
    i32 111, label %5
    i32 112, label %5
    i32 113, label %5
    i32 114, label %5
    i32 115, label %5
    i32 116, label %5
    i32 117, label %5
    i32 118, label %5
    i32 119, label %5
    i32 120, label %5
    i32 121, label %5
    i32 122, label %5
  ], !dbg !5419

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !5420
  br label %7, !dbg !5420

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5422
  br label %7, !dbg !5422

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !5423
  ret i1 %8, !dbg !5423
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isprint(i32 %0) #3 !dbg !5424 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5425, metadata !DIExpression()), !dbg !5426
  %4 = load i32, i32* %3, align 4, !dbg !5427
  switch i32 %4, label %6 [
    i32 32, label %5
    i32 48, label %5
    i32 49, label %5
    i32 50, label %5
    i32 51, label %5
    i32 52, label %5
    i32 53, label %5
    i32 54, label %5
    i32 55, label %5
    i32 56, label %5
    i32 57, label %5
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 103, label %5
    i32 104, label %5
    i32 105, label %5
    i32 106, label %5
    i32 107, label %5
    i32 108, label %5
    i32 109, label %5
    i32 110, label %5
    i32 111, label %5
    i32 112, label %5
    i32 113, label %5
    i32 114, label %5
    i32 115, label %5
    i32 116, label %5
    i32 117, label %5
    i32 118, label %5
    i32 119, label %5
    i32 120, label %5
    i32 121, label %5
    i32 122, label %5
    i32 33, label %5
    i32 34, label %5
    i32 35, label %5
    i32 36, label %5
    i32 37, label %5
    i32 38, label %5
    i32 39, label %5
    i32 40, label %5
    i32 41, label %5
    i32 42, label %5
    i32 43, label %5
    i32 44, label %5
    i32 45, label %5
    i32 46, label %5
    i32 47, label %5
    i32 58, label %5
    i32 59, label %5
    i32 60, label %5
    i32 61, label %5
    i32 62, label %5
    i32 63, label %5
    i32 64, label %5
    i32 91, label %5
    i32 92, label %5
    i32 93, label %5
    i32 94, label %5
    i32 95, label %5
    i32 96, label %5
    i32 123, label %5
    i32 124, label %5
    i32 125, label %5
    i32 126, label %5
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
    i32 71, label %5
    i32 72, label %5
    i32 73, label %5
    i32 74, label %5
    i32 75, label %5
    i32 76, label %5
    i32 77, label %5
    i32 78, label %5
    i32 79, label %5
    i32 80, label %5
    i32 81, label %5
    i32 82, label %5
    i32 83, label %5
    i32 84, label %5
    i32 85, label %5
    i32 86, label %5
    i32 87, label %5
    i32 88, label %5
    i32 89, label %5
    i32 90, label %5
  ], !dbg !5428

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !5429
  br label %7, !dbg !5429

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5431
  br label %7, !dbg !5431

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !5432
  ret i1 %8, !dbg !5432
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_ispunct(i32 %0) #3 !dbg !5433 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5434, metadata !DIExpression()), !dbg !5435
  %4 = load i32, i32* %3, align 4, !dbg !5436
  switch i32 %4, label %6 [
    i32 33, label %5
    i32 34, label %5
    i32 35, label %5
    i32 36, label %5
    i32 37, label %5
    i32 38, label %5
    i32 39, label %5
    i32 40, label %5
    i32 41, label %5
    i32 42, label %5
    i32 43, label %5
    i32 44, label %5
    i32 45, label %5
    i32 46, label %5
    i32 47, label %5
    i32 58, label %5
    i32 59, label %5
    i32 60, label %5
    i32 61, label %5
    i32 62, label %5
    i32 63, label %5
    i32 64, label %5
    i32 91, label %5
    i32 92, label %5
    i32 93, label %5
    i32 94, label %5
    i32 95, label %5
    i32 96, label %5
    i32 123, label %5
    i32 124, label %5
    i32 125, label %5
    i32 126, label %5
  ], !dbg !5437

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !5438
  br label %7, !dbg !5438

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5440
  br label %7, !dbg !5440

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !5441
  ret i1 %8, !dbg !5441
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isspace(i32 %0) #3 !dbg !5442 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5443, metadata !DIExpression()), !dbg !5444
  %4 = load i32, i32* %3, align 4, !dbg !5445
  switch i32 %4, label %6 [
    i32 32, label %5
    i32 9, label %5
    i32 10, label %5
    i32 11, label %5
    i32 12, label %5
    i32 13, label %5
  ], !dbg !5446

5:                                                ; preds = %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !5447
  br label %7, !dbg !5447

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5449
  br label %7, !dbg !5449

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !5450
  ret i1 %8, !dbg !5450
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isupper(i32 %0) #3 !dbg !5451 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5452, metadata !DIExpression()), !dbg !5453
  %4 = load i32, i32* %3, align 4, !dbg !5454
  switch i32 %4, label %6 [
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
    i32 71, label %5
    i32 72, label %5
    i32 73, label %5
    i32 74, label %5
    i32 75, label %5
    i32 76, label %5
    i32 77, label %5
    i32 78, label %5
    i32 79, label %5
    i32 80, label %5
    i32 81, label %5
    i32 82, label %5
    i32 83, label %5
    i32 84, label %5
    i32 85, label %5
    i32 86, label %5
    i32 87, label %5
    i32 88, label %5
    i32 89, label %5
    i32 90, label %5
  ], !dbg !5455

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !5456
  br label %7, !dbg !5456

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5458
  br label %7, !dbg !5458

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !5459
  ret i1 %8, !dbg !5459
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isxdigit(i32 %0) #3 !dbg !5460 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5461, metadata !DIExpression()), !dbg !5462
  %4 = load i32, i32* %3, align 4, !dbg !5463
  switch i32 %4, label %6 [
    i32 48, label %5
    i32 49, label %5
    i32 50, label %5
    i32 51, label %5
    i32 52, label %5
    i32 53, label %5
    i32 54, label %5
    i32 55, label %5
    i32 56, label %5
    i32 57, label %5
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
  ], !dbg !5464

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !5465
  br label %7, !dbg !5465

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5467
  br label %7, !dbg !5467

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !5468
  ret i1 %8, !dbg !5468
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_tolower(i32 %0) #3 !dbg !5469 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5472, metadata !DIExpression()), !dbg !5473
  %4 = load i32, i32* %3, align 4, !dbg !5474
  switch i32 %4, label %9 [
    i32 65, label %5
    i32 66, label %5
    i32 67, label %5
    i32 68, label %5
    i32 69, label %5
    i32 70, label %5
    i32 71, label %5
    i32 72, label %5
    i32 73, label %5
    i32 74, label %5
    i32 75, label %5
    i32 76, label %5
    i32 77, label %5
    i32 78, label %5
    i32 79, label %5
    i32 80, label %5
    i32 81, label %5
    i32 82, label %5
    i32 83, label %5
    i32 84, label %5
    i32 85, label %5
    i32 86, label %5
    i32 87, label %5
    i32 88, label %5
    i32 89, label %5
    i32 90, label %5
  ], !dbg !5475

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %6 = load i32, i32* %3, align 4, !dbg !5476
  %7 = sub nsw i32 %6, 65, !dbg !5478
  %8 = add nsw i32 %7, 97, !dbg !5479
  store i32 %8, i32* %2, align 4, !dbg !5480
  br label %11, !dbg !5480

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !5481
  store i32 %10, i32* %2, align 4, !dbg !5482
  br label %11, !dbg !5482

11:                                               ; preds = %9, %5
  %12 = load i32, i32* %2, align 4, !dbg !5483
  ret i32 %12, !dbg !5483
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_toupper(i32 %0) #3 !dbg !5484 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5485, metadata !DIExpression()), !dbg !5486
  %4 = load i32, i32* %3, align 4, !dbg !5487
  switch i32 %4, label %9 [
    i32 97, label %5
    i32 98, label %5
    i32 99, label %5
    i32 100, label %5
    i32 101, label %5
    i32 102, label %5
    i32 103, label %5
    i32 104, label %5
    i32 105, label %5
    i32 106, label %5
    i32 107, label %5
    i32 108, label %5
    i32 109, label %5
    i32 110, label %5
    i32 111, label %5
    i32 112, label %5
    i32 113, label %5
    i32 114, label %5
    i32 115, label %5
    i32 116, label %5
    i32 117, label %5
    i32 118, label %5
    i32 119, label %5
    i32 120, label %5
    i32 121, label %5
    i32 122, label %5
  ], !dbg !5488

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %6 = load i32, i32* %3, align 4, !dbg !5489
  %7 = sub nsw i32 %6, 97, !dbg !5491
  %8 = add nsw i32 %7, 65, !dbg !5492
  store i32 %8, i32* %2, align 4, !dbg !5493
  br label %11, !dbg !5493

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !5494
  store i32 %10, i32* %2, align 4, !dbg !5495
  br label %11, !dbg !5495

11:                                               ; preds = %9, %5
  %12 = load i32, i32* %2, align 4, !dbg !5496
  ret i32 %12, !dbg !5496
}

attributes #0 = { noinline noreturn nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noinline nounwind optnone readonly uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #12 = { nofree nosync nounwind willreturn }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2, !144, !150, !162, !170, !239, !242, !244, !246, !248, !176, !182, !250, !233, !257, !268, !270, !274, !276, !279, !281, !284, !290, !292, !294, !683, !685}
!llvm.ident = !{!687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687, !687}
!llvm.module.flags = !{!688, !689, !690}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "skip_chars", scope: !2, file: !3, line: 57, type: !79, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !73, globals: !87, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../src/uniq.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!4 = !{!5, !11, !15, !20, !28, !35, !49, !58}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Skip_field_option_type", file: !3, line: 469, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "SFO_NONE", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "SFO_OBSOLETE", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "SFO_NEW", value: 2, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "countmode", file: !3, line: 62, baseType: !6, size: 32, elements: !12)
!12 = !{!13, !14}
!13 = !DIEnumerator(name: "count_occurrences", value: 0, isUnsigned: true)
!14 = !DIEnumerator(name: "count_none", value: 1, isUnsigned: true)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "delimit_method", file: !3, line: 82, baseType: !6, size: 32, elements: !16)
!16 = !{!17, !18, !19}
!17 = !DIEnumerator(name: "DM_NONE", value: 0, isUnsigned: true)
!18 = !DIEnumerator(name: "DM_PREPEND", value: 1, isUnsigned: true)
!19 = !DIEnumerator(name: "DM_SEPARATE", value: 2, isUnsigned: true)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !21, line: 25, baseType: !6, size: 32, elements: !22)
!21 = !DIFile(filename: "../lib/xstrtol.h", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!22 = !{!23, !24, !25, !26, !27}
!23 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!25 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!26 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!27 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "grouping_method", file: !3, line: 107, baseType: !6, size: 32, elements: !29)
!29 = !{!30, !31, !32, !33, !34}
!30 = !DIEnumerator(name: "GM_NONE", value: 0, isUnsigned: true)
!31 = !DIEnumerator(name: "GM_PREPEND", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "GM_APPEND", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "GM_SEPARATE", value: 3, isUnsigned: true)
!34 = !DIEnumerator(name: "GM_BOTH", value: 4, isUnsigned: true)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !36, line: 32, baseType: !6, size: 32, elements: !37)
!36 = !DIFile(filename: "../lib/quotearg.h", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!38 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!39 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!40 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!41 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!42 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!43 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!44 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!45 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!46 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!47 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!48 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !50, line: 45, baseType: !6, size: 32, elements: !51)
!50 = !DIFile(filename: "../lib/fadvise.h", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!51 = !{!52, !53, !54, !55, !56, !57}
!52 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!53 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!54 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!55 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!56 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!57 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !59, line: 46, baseType: !6, size: 32, elements: !60)
!59 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!60 = !{!61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!61 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!62 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!63 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!64 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!65 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!66 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!67 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!68 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!69 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!70 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!71 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!72 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!73 = !{!74, !77, !78, !79, !82, !84, !85, !86}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !80, line: 46, baseType: !81)
!80 = !DIFile(filename: "LLVM_12.0_src/llvm-project/build/lib/clang/12.0.1/include/stddef.h", directory: "/nobackup")
!81 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!85 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!86 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!87 = !{!88, !0, !90, !92, !94, !97, !99, !101, !103, !105, !119, !125, !131, !133, !137}
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "skip_fields", scope: !2, file: !3, line: 54, type: !79, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "check_chars", scope: !2, file: !3, line: 60, type: !79, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "countmode", scope: !2, file: !3, line: 70, type: !11, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(name: "output_unique", scope: !2, file: !3, line: 75, type: !96, isLocal: true, isDefinition: true)
!96 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "output_first_repeated", scope: !2, file: !3, line: 76, type: !96, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "output_later_repeated", scope: !2, file: !3, line: 77, type: !96, isLocal: true, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "ignore_case", scope: !2, file: !3, line: 80, type: !96, isLocal: true, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "delimit_groups", scope: !2, file: !3, line: 105, type: !15, isLocal: true, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 142, type: !107, isLocal: true, isDefinition: true)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 3328, elements: !117)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !110, line: 50, size: 256, elements: !111)
!110 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "")
!111 = !{!112, !113, !114, !116}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !109, file: !110, line: 52, baseType: !74, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !109, file: !110, line: 55, baseType: !85, size: 32, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !109, file: !110, line: 56, baseType: !115, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !109, file: !110, line: 57, baseType: !85, size: 32, offset: 192)
!117 = !{!118}
!118 = !DISubrange(count: 13)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "delimit_method_map", scope: !2, file: !3, line: 99, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 96, elements: !123)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!123 = !{!124}
!124 = !DISubrange(count: 3)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "delimit_method_string", scope: !2, file: !3, line: 94, type: !127, isLocal: true, isDefinition: true)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 256, elements: !129)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!129 = !{!130}
!130 = !DISubrange(count: 4)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "grouping", scope: !2, file: !3, line: 135, type: !28, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "grouping_method_map", scope: !2, file: !3, line: 130, type: !135, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 128, elements: !129)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "grouping_method_string", scope: !2, file: !3, line: 125, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 320, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 5)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "Version", scope: !144, file: !145, line: 2, type: !74, isLocal: false, isDefinition: true)
!144 = distinct !DICompileUnit(language: DW_LANG_C99, file: !145, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, globals: !147, splitDebugInlining: false, nameTableKind: None)
!145 = !DIFile(filename: "src/version.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!146 = !{}
!147 = !{!142}
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "argmatch_die", scope: !150, file: !151, line: 67, type: !155, isLocal: false, isDefinition: true)
!150 = distinct !DICompileUnit(language: DW_LANG_C99, file: !151, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, retainedTypes: !153, globals: !154, splitDebugInlining: false, nameTableKind: None)
!151 = !DIFile(filename: "../lib/argmatch.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!152 = !{!35}
!153 = !{!77, !74}
!154 = !{!148}
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "argmatch_exit_fn", file: !156, line: 61, baseType: !157)
!156 = !DIFile(filename: "../lib/argmatch.h", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{null}
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "file_name", scope: !162, file: !163, line: 46, type: !74, isLocal: true, isDefinition: true)
!162 = distinct !DICompileUnit(language: DW_LANG_C99, file: !163, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, retainedTypes: !164, globals: !165, splitDebugInlining: false, nameTableKind: None)
!163 = !DIFile(filename: "../lib/closeout.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!164 = !{!74}
!165 = !{!160, !166}
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !162, file: !163, line: 56, type: !96, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "exit_failure", scope: !170, file: !171, line: 24, type: !173, isLocal: false, isDefinition: true)
!170 = distinct !DICompileUnit(language: DW_LANG_C99, file: !171, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, globals: !172, splitDebugInlining: false, nameTableKind: None)
!171 = !DIFile(filename: "../lib/exitfail.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!172 = !{!168}
!173 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !85)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "program_name", scope: !176, file: !177, line: 33, type: !74, isLocal: false, isDefinition: true)
!176 = distinct !DICompileUnit(language: DW_LANG_C99, file: !177, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, retainedTypes: !178, globals: !179, splitDebugInlining: false, nameTableKind: None)
!177 = !DIFile(filename: "../lib/progname.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!178 = !{!77, !84}
!179 = !{!174}
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !182, file: !183, line: 85, type: !228, isLocal: false, isDefinition: true)
!182 = distinct !DICompileUnit(language: DW_LANG_C99, file: !183, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !184, retainedTypes: !190, globals: !191, splitDebugInlining: false, nameTableKind: None)
!183 = !DIFile(filename: "../lib/quotearg.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!184 = !{!35, !185, !58}
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !36, line: 242, baseType: !6, size: 32, elements: !186)
!186 = !{!187, !188, !189}
!187 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!188 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!189 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!190 = !{!85, !86, !79, !74}
!191 = !{!180, !192, !198, !210, !212, !217, !224, !226}
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !182, file: !183, line: 101, type: !194, isLocal: false, isDefinition: true)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 320, elements: !196)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!196 = !{!197}
!197 = !DISubrange(count: 10)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !182, file: !183, line: 1052, type: !200, isLocal: false, isDefinition: true)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !183, line: 65, size: 448, elements: !201)
!201 = !{!202, !203, !204, !208, !209}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !200, file: !183, line: 68, baseType: !35, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !200, file: !183, line: 71, baseType: !85, size: 32, offset: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !200, file: !183, line: 75, baseType: !205, size: 256, offset: 64)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 8)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !200, file: !183, line: 78, baseType: !74, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !200, file: !183, line: 81, baseType: !74, size: 64, offset: 384)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !182, file: !183, line: 116, type: !200, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "slot0", scope: !182, file: !183, line: 842, type: !214, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 2048, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 256)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "slotvec", scope: !182, file: !183, line: 845, type: !219, isLocal: true, isDefinition: true)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !183, line: 834, size: 128, elements: !221)
!221 = !{!222, !223}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !220, file: !183, line: 836, baseType: !79, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !220, file: !183, line: 837, baseType: !84, size: 64, offset: 64)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(name: "nslots", scope: !182, file: !183, line: 843, type: !85, isLocal: true, isDefinition: true)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(name: "slotvec0", scope: !182, file: !183, line: 844, type: !220, isLocal: true, isDefinition: true)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 704, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 11)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !233, file: !234, line: 26, type: !236, isLocal: false, isDefinition: true)
!233 = distinct !DICompileUnit(language: DW_LANG_C99, file: !234, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, globals: !235, splitDebugInlining: false, nameTableKind: None)
!234 = !DIFile(filename: "../lib/version-etc-fsf.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!235 = !{!231}
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 376, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 47)
!239 = distinct !DICompileUnit(language: DW_LANG_C99, file: !240, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !241, splitDebugInlining: false, nameTableKind: None)
!240 = !DIFile(filename: "../lib/fadvise.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!241 = !{!49}
!242 = distinct !DICompileUnit(language: DW_LANG_C99, file: !243, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, splitDebugInlining: false, nameTableKind: None)
!243 = !DIFile(filename: "../lib/freopen-safer.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!244 = distinct !DICompileUnit(language: DW_LANG_C99, file: !245, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, splitDebugInlining: false, nameTableKind: None)
!245 = !DIFile(filename: "../lib/linebuffer.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!246 = distinct !DICompileUnit(language: DW_LANG_C99, file: !247, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, splitDebugInlining: false, nameTableKind: None)
!247 = !DIFile(filename: "../lib/memcasecmp.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!248 = distinct !DICompileUnit(language: DW_LANG_C99, file: !249, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, splitDebugInlining: false, nameTableKind: None)
!249 = !DIFile(filename: "../lib/posixver.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!250 = distinct !DICompileUnit(language: DW_LANG_C99, file: !251, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !252, retainedTypes: !256, splitDebugInlining: false, nameTableKind: None)
!251 = !DIFile(filename: "../lib/version-etc.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!252 = !{!253}
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !251, line: 40, baseType: !6, size: 32, elements: !254)
!254 = !{!255}
!255 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!256 = !{!74, !77}
!257 = distinct !DICompileUnit(language: DW_LANG_C99, file: !258, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !259, retainedTypes: !267, splitDebugInlining: false, nameTableKind: None)
!258 = !DIFile(filename: "../lib/xmalloc.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!259 = !{!260}
!260 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !262, file: !261, line: 186, baseType: !6, size: 32, elements: !265)
!261 = !DIFile(filename: "../lib/xalloc.h", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!262 = distinct !DISubprogram(name: "x2nrealloc", scope: !261, file: !261, line: 174, type: !263, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !257, retainedNodes: !146)
!263 = !DISubroutineType(types: !264)
!264 = !{!77, !77, !78, !79}
!265 = !{!266}
!266 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!267 = !{!79, !84, !77}
!268 = distinct !DICompileUnit(language: DW_LANG_C99, file: !269, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, retainedTypes: !164, splitDebugInlining: false, nameTableKind: None)
!269 = !DIFile(filename: "../lib/xalloc-die.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!270 = distinct !DICompileUnit(language: DW_LANG_C99, file: !271, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !272, retainedTypes: !273, splitDebugInlining: false, nameTableKind: None)
!271 = !DIFile(filename: "../lib/xstrtoumax.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!272 = !{!20, !58}
!273 = !{!85, !86}
!274 = distinct !DICompileUnit(language: DW_LANG_C99, file: !275, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, splitDebugInlining: false, nameTableKind: None)
!275 = !DIFile(filename: "../lib/fclose.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!276 = distinct !DICompileUnit(language: DW_LANG_C99, file: !277, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, retainedTypes: !278, splitDebugInlining: false, nameTableKind: None)
!277 = !DIFile(filename: "../lib/fflush.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!278 = !{!77}
!279 = distinct !DICompileUnit(language: DW_LANG_C99, file: !280, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, retainedTypes: !278, splitDebugInlining: false, nameTableKind: None)
!280 = !DIFile(filename: "../lib/fseeko.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!281 = distinct !DICompileUnit(language: DW_LANG_C99, file: !282, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, retainedTypes: !283, splitDebugInlining: false, nameTableKind: None)
!282 = !DIFile(filename: "../lib/mbrtowc.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!283 = !{!79}
!284 = distinct !DICompileUnit(language: DW_LANG_C99, file: !285, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, retainedTypes: !286, splitDebugInlining: false, nameTableKind: None)
!285 = !DIFile(filename: "../lib/c-strcasecmp.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!289 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!290 = distinct !DICompileUnit(language: DW_LANG_C99, file: !291, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, splitDebugInlining: false, nameTableKind: None)
!291 = !DIFile(filename: "../lib/close-stream.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!292 = distinct !DICompileUnit(language: DW_LANG_C99, file: !293, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, splitDebugInlining: false, nameTableKind: None)
!293 = !DIFile(filename: "../lib/hard-locale.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!294 = distinct !DICompileUnit(language: DW_LANG_C99, file: !295, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !296, retainedTypes: !278, splitDebugInlining: false, nameTableKind: None)
!295 = !DIFile(filename: "../lib/localcharset.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!296 = !{!297}
!297 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !298, line: 41, baseType: !6, size: 32, elements: !299)
!298 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!299 = !{!300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682}
!300 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!301 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!302 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!303 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!304 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!305 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!306 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!307 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!308 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!309 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!310 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!311 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!312 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!313 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!314 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!315 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!316 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!317 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!318 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!319 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!320 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!321 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!322 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!323 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!324 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!325 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!326 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!327 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!328 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!329 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!330 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!331 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!332 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!333 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!334 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!335 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!336 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!337 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!338 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!339 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!340 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!341 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!342 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!343 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!344 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!345 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!346 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!347 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!348 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!349 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!408 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!411 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!412 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!413 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!414 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!415 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!416 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!417 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!418 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!419 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!420 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!421 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!422 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!495 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!568 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!569 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!570 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!571 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!572 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!573 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!574 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!575 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!576 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!577 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!578 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!579 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!580 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!581 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!582 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!584 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!585 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!586 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!587 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!588 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!589 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!615 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!616 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!617 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!618 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!619 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!624 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!625 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!626 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!627 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!683 = distinct !DICompileUnit(language: DW_LANG_C99, file: !684, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, retainedTypes: !278, splitDebugInlining: false, nameTableKind: None)
!684 = !DIFile(filename: "../lib/setlocale_null.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!685 = distinct !DICompileUnit(language: DW_LANG_C99, file: !686, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, splitDebugInlining: false, nameTableKind: None)
!686 = !DIFile(filename: "../lib/c-ctype.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!687 = !{!"clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)"}
!688 = !{i32 7, !"Dwarf Version", i32 4}
!689 = !{i32 2, !"Debug Info Version", i32 3}
!690 = !{i32 1, !"wchar_size", i32 4}
!691 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 160, type: !692, scopeLine: 161, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!692 = !DISubroutineType(types: !693)
!693 = !{null, !85}
!694 = !DILocalVariable(name: "status", arg: 1, scope: !691, file: !3, line: 160, type: !85)
!695 = !DILocation(line: 160, column: 12, scope: !691)
!696 = !DILocation(line: 162, column: 7, scope: !697)
!697 = distinct !DILexicalBlock(scope: !691, file: !3, line: 162, column: 7)
!698 = !DILocation(line: 162, column: 14, scope: !697)
!699 = !DILocation(line: 162, column: 7, scope: !691)
!700 = !DILocation(line: 163, column: 5, scope: !697)
!701 = !DILocation(line: 163, column: 5, scope: !702)
!702 = distinct !DILexicalBlock(scope: !697, file: !3, line: 163, column: 5)
!703 = !DILocation(line: 169, column: 15, scope: !704)
!704 = distinct !DILexicalBlock(scope: !697, file: !3, line: 165, column: 5)
!705 = !DILocation(line: 166, column: 7, scope: !704)
!706 = !DILocation(line: 170, column: 7, scope: !704)
!707 = !DILocation(line: 177, column: 7, scope: !704)
!708 = !DILocation(line: 179, column: 6, scope: !704)
!709 = !DILocation(line: 183, column: 6, scope: !704)
!710 = !DILocation(line: 189, column: 6, scope: !704)
!711 = !DILocation(line: 192, column: 6, scope: !704)
!712 = !DILocation(line: 196, column: 6, scope: !704)
!713 = !DILocation(line: 201, column: 7, scope: !704)
!714 = !DILocation(line: 204, column: 6, scope: !704)
!715 = !DILocation(line: 207, column: 6, scope: !704)
!716 = !DILocation(line: 208, column: 6, scope: !704)
!717 = !DILocation(line: 209, column: 6, scope: !704)
!718 = !DILocation(line: 214, column: 6, scope: !704)
!719 = !DILocation(line: 219, column: 7, scope: !704)
!720 = !DILocation(line: 221, column: 9, scope: !691)
!721 = !DILocation(line: 221, column: 3, scope: !691)
!722 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !723, file: !723, line: 588, type: !158, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!723 = !DIFile(filename: "../src/system.h", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!724 = !DILocation(line: 590, column: 3, scope: !722)
!725 = !DILocation(line: 593, column: 1, scope: !722)
!726 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !723, file: !723, line: 634, type: !727, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!727 = !DISubroutineType(types: !728)
!728 = !{null, !74}
!729 = !DILocalVariable(name: "program", arg: 1, scope: !726, file: !723, line: 634, type: !74)
!730 = !DILocation(line: 634, column: 34, scope: !726)
!731 = !DILocalVariable(name: "infomap", scope: !726, file: !723, line: 636, type: !732)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !733, size: 896, elements: !738)
!733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !734)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !726, file: !723, line: 636, size: 128, elements: !735)
!735 = !{!736, !737}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !734, file: !723, line: 636, baseType: !74, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !734, file: !723, line: 636, baseType: !74, size: 64, offset: 64)
!738 = !{!739}
!739 = !DISubrange(count: 7)
!740 = !DILocation(line: 636, column: 67, scope: !726)
!741 = !DILocalVariable(name: "node", scope: !726, file: !723, line: 646, type: !74)
!742 = !DILocation(line: 646, column: 15, scope: !726)
!743 = !DILocation(line: 646, column: 22, scope: !726)
!744 = !DILocalVariable(name: "map_prog", scope: !726, file: !723, line: 647, type: !745)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!746 = !DILocation(line: 647, column: 25, scope: !726)
!747 = !DILocation(line: 647, column: 36, scope: !726)
!748 = !DILocation(line: 649, column: 3, scope: !726)
!749 = !DILocation(line: 649, column: 10, scope: !726)
!750 = !DILocation(line: 649, column: 20, scope: !726)
!751 = !DILocation(line: 649, column: 28, scope: !726)
!752 = !DILocation(line: 649, column: 33, scope: !726)
!753 = !DILocation(line: 649, column: 31, scope: !726)
!754 = !DILocation(line: 0, scope: !726)
!755 = !DILocation(line: 650, column: 13, scope: !726)
!756 = distinct !{!756, !748, !755, !757}
!757 = !{!"llvm.loop.mustprogress"}
!758 = !DILocation(line: 652, column: 7, scope: !759)
!759 = distinct !DILexicalBlock(scope: !726, file: !723, line: 652, column: 7)
!760 = !DILocation(line: 652, column: 17, scope: !759)
!761 = !DILocation(line: 652, column: 7, scope: !726)
!762 = !DILocation(line: 653, column: 12, scope: !759)
!763 = !DILocation(line: 653, column: 22, scope: !759)
!764 = !DILocation(line: 653, column: 10, scope: !759)
!765 = !DILocation(line: 653, column: 5, scope: !759)
!766 = !DILocation(line: 655, column: 3, scope: !726)
!767 = !DILocalVariable(name: "lc_messages", scope: !726, file: !723, line: 659, type: !74)
!768 = !DILocation(line: 659, column: 15, scope: !726)
!769 = !DILocation(line: 659, column: 29, scope: !726)
!770 = !DILocation(line: 660, column: 7, scope: !771)
!771 = distinct !DILexicalBlock(scope: !726, file: !723, line: 660, column: 7)
!772 = !DILocation(line: 660, column: 19, scope: !771)
!773 = !DILocation(line: 660, column: 22, scope: !771)
!774 = !DILocation(line: 660, column: 7, scope: !726)
!775 = !DILocation(line: 666, column: 7, scope: !776)
!776 = distinct !DILexicalBlock(scope: !771, file: !723, line: 661, column: 5)
!777 = !DILocation(line: 668, column: 5, scope: !776)
!778 = !DILocation(line: 670, column: 24, scope: !726)
!779 = !DILocation(line: 669, column: 3, scope: !726)
!780 = !DILocation(line: 672, column: 11, scope: !726)
!781 = !DILocation(line: 672, column: 17, scope: !726)
!782 = !DILocation(line: 672, column: 25, scope: !726)
!783 = !DILocation(line: 672, column: 22, scope: !726)
!784 = !DILocation(line: 671, column: 3, scope: !726)
!785 = !DILocation(line: 673, column: 1, scope: !726)
!786 = distinct !DISubprogram(name: "klee_dump_memory", scope: !3, file: !3, line: 477, type: !158, scopeLine: 477, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!787 = !DILocation(line: 477, column: 26, scope: !786)
!788 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 480, type: !789, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!789 = !DISubroutineType(types: !790)
!790 = !{!85, !85, !791}
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!792 = !DILocalVariable(name: "argc", arg: 1, scope: !788, file: !3, line: 480, type: !85)
!793 = !DILocation(line: 480, column: 11, scope: !788)
!794 = !DILocalVariable(name: "argv", arg: 2, scope: !788, file: !3, line: 480, type: !791)
!795 = !DILocation(line: 480, column: 24, scope: !788)
!796 = !DILocalVariable(name: "optc", scope: !788, file: !3, line: 482, type: !85)
!797 = !DILocation(line: 482, column: 7, scope: !788)
!798 = !DILocalVariable(name: "posixly_correct", scope: !788, file: !3, line: 483, type: !96)
!799 = !DILocation(line: 483, column: 8, scope: !788)
!800 = !DILocation(line: 483, column: 27, scope: !788)
!801 = !DILocation(line: 483, column: 54, scope: !788)
!802 = !DILocalVariable(name: "skip_field_option_type", scope: !788, file: !3, line: 484, type: !5)
!803 = !DILocation(line: 484, column: 31, scope: !788)
!804 = !DILocalVariable(name: "nfiles", scope: !788, file: !3, line: 485, type: !6)
!805 = !DILocation(line: 485, column: 16, scope: !788)
!806 = !DILocalVariable(name: "file", scope: !788, file: !3, line: 486, type: !807)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 128, elements: !808)
!808 = !{!809}
!809 = !DISubrange(count: 2)
!810 = !DILocation(line: 486, column: 15, scope: !788)
!811 = !DILocalVariable(name: "delimiter", scope: !788, file: !3, line: 487, type: !76)
!812 = !DILocation(line: 487, column: 8, scope: !788)
!813 = !DILocalVariable(name: "output_option_used", scope: !788, file: !3, line: 488, type: !96)
!814 = !DILocation(line: 488, column: 8, scope: !788)
!815 = !DILocation(line: 490, column: 13, scope: !788)
!816 = !DILocation(line: 490, column: 21, scope: !788)
!817 = !DILocation(line: 490, column: 3, scope: !788)
!818 = !DILocation(line: 490, column: 11, scope: !788)
!819 = !DILocation(line: 492, column: 21, scope: !788)
!820 = !DILocation(line: 492, column: 3, scope: !788)
!821 = !DILocation(line: 493, column: 3, scope: !788)
!822 = !DILocation(line: 497, column: 3, scope: !788)
!823 = !DILocation(line: 499, column: 14, scope: !788)
!824 = !DILocation(line: 500, column: 15, scope: !788)
!825 = !DILocation(line: 501, column: 15, scope: !788)
!826 = !DILocation(line: 502, column: 41, scope: !788)
!827 = !DILocation(line: 502, column: 17, scope: !788)
!828 = !DILocation(line: 503, column: 25, scope: !788)
!829 = !DILocation(line: 504, column: 13, scope: !788)
!830 = !DILocation(line: 505, column: 18, scope: !788)
!831 = !DILocation(line: 507, column: 3, scope: !788)
!832 = !DILocation(line: 513, column: 11, scope: !833)
!833 = distinct !DILexicalBlock(scope: !834, file: !3, line: 513, column: 11)
!834 = distinct !DILexicalBlock(scope: !788, file: !3, line: 508, column: 5)
!835 = !DILocation(line: 513, column: 16, scope: !833)
!836 = !DILocation(line: 514, column: 11, scope: !833)
!837 = !DILocation(line: 514, column: 15, scope: !833)
!838 = !DILocation(line: 514, column: 31, scope: !833)
!839 = !DILocation(line: 514, column: 34, scope: !833)
!840 = !DILocation(line: 514, column: 41, scope: !833)
!841 = !DILocation(line: 515, column: 11, scope: !833)
!842 = !DILocation(line: 515, column: 36, scope: !833)
!843 = !DILocation(line: 515, column: 42, scope: !833)
!844 = !DILocation(line: 515, column: 23, scope: !833)
!845 = !DILocation(line: 515, column: 21, scope: !833)
!846 = !DILocation(line: 517, column: 15, scope: !833)
!847 = !DILocation(line: 513, column: 11, scope: !834)
!848 = !DILocation(line: 519, column: 15, scope: !849)
!849 = distinct !DILexicalBlock(scope: !850, file: !3, line: 519, column: 15)
!850 = distinct !DILexicalBlock(scope: !833, file: !3, line: 518, column: 9)
!851 = !DILocation(line: 519, column: 23, scope: !849)
!852 = !DILocation(line: 519, column: 20, scope: !849)
!853 = !DILocation(line: 519, column: 15, scope: !850)
!854 = !DILocation(line: 520, column: 13, scope: !849)
!855 = !DILocation(line: 521, column: 15, scope: !856)
!856 = distinct !DILexicalBlock(scope: !850, file: !3, line: 521, column: 15)
!857 = !DILocation(line: 521, column: 22, scope: !856)
!858 = !DILocation(line: 521, column: 15, scope: !850)
!859 = !DILocation(line: 523, column: 58, scope: !860)
!860 = distinct !DILexicalBlock(scope: !856, file: !3, line: 522, column: 13)
!861 = !DILocation(line: 523, column: 63, scope: !860)
!862 = !DILocation(line: 523, column: 51, scope: !860)
!863 = !DILocation(line: 523, column: 15, scope: !860)
!864 = !DILocation(line: 524, column: 15, scope: !860)
!865 = !DILocation(line: 526, column: 28, scope: !850)
!866 = !DILocation(line: 526, column: 39, scope: !850)
!867 = !DILocation(line: 526, column: 22, scope: !850)
!868 = !DILocation(line: 526, column: 11, scope: !850)
!869 = !DILocation(line: 526, column: 26, scope: !850)
!870 = !DILocation(line: 527, column: 9, scope: !850)
!871 = !DILocation(line: 528, column: 20, scope: !833)
!872 = !DILocation(line: 528, column: 12, scope: !833)
!873 = !DILocalVariable(name: "size", scope: !874, file: !3, line: 532, type: !876)
!874 = distinct !DILexicalBlock(scope: !875, file: !3, line: 531, column: 11)
!875 = distinct !DILexicalBlock(scope: !833, file: !3, line: 529, column: 9)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !877, line: 102, baseType: !878)
!877 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !879, line: 73, baseType: !81)
!879 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!880 = !DILocation(line: 532, column: 23, scope: !874)
!881 = !DILocation(line: 533, column: 17, scope: !882)
!882 = distinct !DILexicalBlock(scope: !874, file: !3, line: 533, column: 17)
!883 = !DILocation(line: 533, column: 27, scope: !882)
!884 = !DILocation(line: 534, column: 17, scope: !882)
!885 = !DILocation(line: 534, column: 22, scope: !882)
!886 = !DILocation(line: 535, column: 17, scope: !882)
!887 = !DILocation(line: 535, column: 32, scope: !882)
!888 = !DILocation(line: 535, column: 20, scope: !882)
!889 = !DILocation(line: 535, column: 61, scope: !882)
!890 = !DILocation(line: 536, column: 17, scope: !882)
!891 = !DILocation(line: 536, column: 20, scope: !882)
!892 = !DILocation(line: 536, column: 25, scope: !882)
!893 = !DILocation(line: 533, column: 17, scope: !874)
!894 = !DILocation(line: 537, column: 28, scope: !882)
!895 = !DILocation(line: 537, column: 26, scope: !882)
!896 = !DILocation(line: 537, column: 15, scope: !882)
!897 = !DILocation(line: 538, column: 22, scope: !898)
!898 = distinct !DILexicalBlock(scope: !882, file: !3, line: 538, column: 22)
!899 = !DILocation(line: 538, column: 29, scope: !898)
!900 = !DILocation(line: 538, column: 22, scope: !882)
!901 = !DILocation(line: 540, column: 60, scope: !902)
!902 = distinct !DILexicalBlock(scope: !898, file: !3, line: 539, column: 15)
!903 = !DILocation(line: 540, column: 53, scope: !902)
!904 = !DILocation(line: 540, column: 17, scope: !902)
!905 = !DILocation(line: 541, column: 17, scope: !902)
!906 = !DILocation(line: 544, column: 32, scope: !898)
!907 = !DILocation(line: 544, column: 26, scope: !898)
!908 = !DILocation(line: 544, column: 15, scope: !898)
!909 = !DILocation(line: 544, column: 30, scope: !898)
!910 = !DILocation(line: 546, column: 11, scope: !875)
!911 = !DILocation(line: 559, column: 17, scope: !912)
!912 = distinct !DILexicalBlock(scope: !913, file: !3, line: 559, column: 17)
!913 = distinct !DILexicalBlock(scope: !875, file: !3, line: 558, column: 11)
!914 = !DILocation(line: 559, column: 40, scope: !912)
!915 = !DILocation(line: 559, column: 17, scope: !913)
!916 = !DILocation(line: 560, column: 27, scope: !912)
!917 = !DILocation(line: 560, column: 15, scope: !912)
!918 = !DILocation(line: 562, column: 18, scope: !919)
!919 = distinct !DILexicalBlock(scope: !913, file: !3, line: 562, column: 17)
!920 = !DILocation(line: 562, column: 17, scope: !913)
!921 = !DILocation(line: 563, column: 27, scope: !919)
!922 = !DILocation(line: 563, column: 15, scope: !919)
!923 = !DILocation(line: 565, column: 36, scope: !913)
!924 = !DILocation(line: 567, column: 11, scope: !875)
!925 = !DILocation(line: 570, column: 21, scope: !875)
!926 = !DILocation(line: 571, column: 30, scope: !875)
!927 = !DILocation(line: 573, column: 11, scope: !875)
!928 = !DILocation(line: 576, column: 25, scope: !875)
!929 = !DILocation(line: 577, column: 30, scope: !875)
!930 = !DILocation(line: 578, column: 11, scope: !875)
!931 = !DILocation(line: 581, column: 25, scope: !875)
!932 = !DILocation(line: 582, column: 33, scope: !875)
!933 = !DILocation(line: 583, column: 15, scope: !934)
!934 = distinct !DILexicalBlock(scope: !875, file: !3, line: 583, column: 15)
!935 = !DILocation(line: 583, column: 22, scope: !934)
!936 = !DILocation(line: 583, column: 15, scope: !875)
!937 = !DILocation(line: 584, column: 28, scope: !934)
!938 = !DILocation(line: 584, column: 13, scope: !934)
!939 = !DILocation(line: 586, column: 30, scope: !934)
!940 = !DILocation(line: 586, column: 28, scope: !934)
!941 = !DILocation(line: 589, column: 30, scope: !875)
!942 = !DILocation(line: 590, column: 11, scope: !875)
!943 = !DILocation(line: 593, column: 15, scope: !944)
!944 = distinct !DILexicalBlock(scope: !875, file: !3, line: 593, column: 15)
!945 = !DILocation(line: 593, column: 22, scope: !944)
!946 = !DILocation(line: 593, column: 15, scope: !875)
!947 = !DILocation(line: 594, column: 22, scope: !944)
!948 = !DILocation(line: 594, column: 13, scope: !944)
!949 = !DILocation(line: 596, column: 24, scope: !944)
!950 = !DILocation(line: 596, column: 22, scope: !944)
!951 = !DILocation(line: 599, column: 11, scope: !875)
!952 = !DILocation(line: 602, column: 34, scope: !875)
!953 = !DILocation(line: 603, column: 35, scope: !875)
!954 = !DILocation(line: 603, column: 25, scope: !875)
!955 = !DILocation(line: 603, column: 23, scope: !875)
!956 = !DILocation(line: 605, column: 11, scope: !875)
!957 = !DILocation(line: 608, column: 23, scope: !875)
!958 = !DILocation(line: 609, column: 11, scope: !875)
!959 = !DILocation(line: 612, column: 34, scope: !875)
!960 = !DILocation(line: 612, column: 24, scope: !875)
!961 = !DILocation(line: 612, column: 22, scope: !875)
!962 = !DILocation(line: 614, column: 11, scope: !875)
!963 = !DILocation(line: 617, column: 33, scope: !875)
!964 = !DILocation(line: 618, column: 30, scope: !875)
!965 = !DILocation(line: 619, column: 11, scope: !875)
!966 = !DILocation(line: 622, column: 35, scope: !875)
!967 = !DILocation(line: 622, column: 25, scope: !875)
!968 = !DILocation(line: 622, column: 23, scope: !875)
!969 = !DILocation(line: 624, column: 11, scope: !875)
!970 = !DILocation(line: 627, column: 21, scope: !875)
!971 = !DILocation(line: 628, column: 11, scope: !875)
!972 = !DILocation(line: 630, column: 9, scope: !875)
!973 = !DILocation(line: 632, column: 9, scope: !875)
!974 = !DILocation(line: 635, column: 11, scope: !875)
!975 = distinct !{!975, !831, !976}
!976 = !DILocation(line: 637, column: 5, scope: !788)
!977 = !DILocation(line: 638, column: 1, scope: !788)
!978 = !DILocation(line: 644, column: 7, scope: !979)
!979 = distinct !DILexicalBlock(scope: !788, file: !3, line: 644, column: 7)
!980 = !DILocation(line: 644, column: 16, scope: !979)
!981 = !DILocation(line: 644, column: 27, scope: !979)
!982 = !DILocation(line: 644, column: 30, scope: !979)
!983 = !DILocation(line: 644, column: 7, scope: !788)
!984 = !DILocation(line: 646, column: 7, scope: !985)
!985 = distinct !DILexicalBlock(scope: !979, file: !3, line: 645, column: 5)
!986 = !DILocation(line: 647, column: 7, scope: !985)
!987 = !DILocation(line: 650, column: 7, scope: !988)
!988 = distinct !DILexicalBlock(scope: !788, file: !3, line: 650, column: 7)
!989 = !DILocation(line: 650, column: 16, scope: !988)
!990 = !DILocation(line: 650, column: 27, scope: !988)
!991 = !DILocation(line: 650, column: 30, scope: !988)
!992 = !DILocation(line: 650, column: 40, scope: !988)
!993 = !DILocation(line: 650, column: 7, scope: !788)
!994 = !DILocation(line: 652, column: 7, scope: !995)
!995 = distinct !DILexicalBlock(scope: !988, file: !3, line: 651, column: 5)
!996 = !DILocation(line: 654, column: 7, scope: !995)
!997 = !DILocation(line: 657, column: 7, scope: !998)
!998 = distinct !DILexicalBlock(scope: !788, file: !3, line: 657, column: 7)
!999 = !DILocation(line: 657, column: 17, scope: !998)
!1000 = !DILocation(line: 657, column: 38, scope: !998)
!1001 = !DILocation(line: 657, column: 41, scope: !998)
!1002 = !DILocation(line: 657, column: 7, scope: !788)
!1003 = !DILocation(line: 659, column: 7, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !998, file: !3, line: 658, column: 5)
!1005 = !DILocation(line: 661, column: 7, scope: !1004)
!1006 = !DILocation(line: 664, column: 15, scope: !788)
!1007 = !DILocation(line: 664, column: 24, scope: !788)
!1008 = !DILocation(line: 664, column: 33, scope: !788)
!1009 = !DILocation(line: 664, column: 3, scope: !788)
!1010 = !DILocation(line: 666, column: 3, scope: !788)
!1011 = distinct !DISubprogram(name: "strict_posix2", scope: !3, file: !3, line: 225, type: !1012, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!96}
!1014 = !DILocalVariable(name: "posix_ver", scope: !1011, file: !3, line: 227, type: !85)
!1015 = !DILocation(line: 227, column: 7, scope: !1011)
!1016 = !DILocation(line: 227, column: 19, scope: !1011)
!1017 = !DILocation(line: 228, column: 20, scope: !1011)
!1018 = !DILocation(line: 228, column: 17, scope: !1011)
!1019 = !DILocation(line: 228, column: 30, scope: !1011)
!1020 = !DILocation(line: 228, column: 33, scope: !1011)
!1021 = !DILocation(line: 228, column: 43, scope: !1011)
!1022 = !DILocation(line: 0, scope: !1011)
!1023 = !DILocation(line: 228, column: 3, scope: !1011)
!1024 = distinct !DISubprogram(name: "size_opt", scope: !3, file: !3, line: 235, type: !1025, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!79, !74, !74}
!1027 = !DILocalVariable(name: "opt", arg: 1, scope: !1024, file: !3, line: 235, type: !74)
!1028 = !DILocation(line: 235, column: 23, scope: !1024)
!1029 = !DILocalVariable(name: "msgid", arg: 2, scope: !1024, file: !3, line: 235, type: !74)
!1030 = !DILocation(line: 235, column: 40, scope: !1024)
!1031 = !DILocalVariable(name: "size", scope: !1024, file: !3, line: 237, type: !876)
!1032 = !DILocation(line: 237, column: 13, scope: !1024)
!1033 = !DILocation(line: 239, column: 23, scope: !1024)
!1034 = !DILocation(line: 239, column: 11, scope: !1024)
!1035 = !DILocation(line: 239, column: 3, scope: !1024)
!1036 = !DILocation(line: 243, column: 7, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 240, column: 5)
!1038 = !DILocation(line: 246, column: 7, scope: !1037)
!1039 = !DILocation(line: 249, column: 10, scope: !1024)
!1040 = !DILocation(line: 249, column: 3, scope: !1024)
!1041 = distinct !DISubprogram(name: "check_file", scope: !3, file: !3, line: 320, type: !1042, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{null, !74, !74, !76}
!1044 = !DILocalVariable(name: "infile", arg: 1, scope: !1041, file: !3, line: 320, type: !74)
!1045 = !DILocation(line: 320, column: 25, scope: !1041)
!1046 = !DILocalVariable(name: "outfile", arg: 2, scope: !1041, file: !3, line: 320, type: !74)
!1047 = !DILocation(line: 320, column: 45, scope: !1041)
!1048 = !DILocalVariable(name: "delimiter", arg: 3, scope: !1041, file: !3, line: 320, type: !76)
!1049 = !DILocation(line: 320, column: 59, scope: !1041)
!1050 = !DILocalVariable(name: "lb1", scope: !1041, file: !3, line: 322, type: !1051)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !1052, line: 26, size: 192, elements: !1053)
!1052 = !DIFile(filename: "../lib/linebuffer.h", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!1053 = !{!1054, !1055, !1056}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1051, file: !1052, line: 28, baseType: !79, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1051, file: !1052, line: 29, baseType: !79, size: 64, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1051, file: !1052, line: 30, baseType: !84, size: 64, offset: 128)
!1057 = !DILocation(line: 322, column: 21, scope: !1041)
!1058 = !DILocalVariable(name: "lb2", scope: !1041, file: !3, line: 322, type: !1051)
!1059 = !DILocation(line: 322, column: 26, scope: !1041)
!1060 = !DILocalVariable(name: "thisline", scope: !1041, file: !3, line: 323, type: !1061)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1062 = !DILocation(line: 323, column: 22, scope: !1041)
!1063 = !DILocalVariable(name: "prevline", scope: !1041, file: !3, line: 323, type: !1061)
!1064 = !DILocation(line: 323, column: 33, scope: !1041)
!1065 = !DILocation(line: 325, column: 10, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 325, column: 7)
!1067 = !DILocation(line: 325, column: 30, scope: !1066)
!1068 = !DILocation(line: 325, column: 42, scope: !1066)
!1069 = !DILocation(line: 325, column: 55, scope: !1066)
!1070 = !DILocation(line: 325, column: 33, scope: !1066)
!1071 = !DILocation(line: 325, column: 7, scope: !1041)
!1072 = !DILocation(line: 326, column: 5, scope: !1066)
!1073 = !DILocation(line: 327, column: 10, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 327, column: 7)
!1075 = !DILocation(line: 327, column: 31, scope: !1074)
!1076 = !DILocation(line: 327, column: 43, scope: !1074)
!1077 = !DILocation(line: 327, column: 57, scope: !1074)
!1078 = !DILocation(line: 327, column: 34, scope: !1074)
!1079 = !DILocation(line: 327, column: 7, scope: !1041)
!1080 = !DILocation(line: 328, column: 5, scope: !1074)
!1081 = !DILocation(line: 330, column: 12, scope: !1041)
!1082 = !DILocation(line: 330, column: 3, scope: !1041)
!1083 = !DILocation(line: 332, column: 12, scope: !1041)
!1084 = !DILocation(line: 333, column: 12, scope: !1041)
!1085 = !DILocation(line: 335, column: 15, scope: !1041)
!1086 = !DILocation(line: 335, column: 3, scope: !1041)
!1087 = !DILocation(line: 336, column: 15, scope: !1041)
!1088 = !DILocation(line: 336, column: 3, scope: !1041)
!1089 = !DILocation(line: 353, column: 7, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 353, column: 7)
!1091 = !DILocation(line: 353, column: 21, scope: !1090)
!1092 = !DILocation(line: 353, column: 24, scope: !1090)
!1093 = !DILocation(line: 353, column: 46, scope: !1090)
!1094 = !DILocation(line: 353, column: 49, scope: !1090)
!1095 = !DILocation(line: 353, column: 59, scope: !1090)
!1096 = !DILocation(line: 353, column: 7, scope: !1041)
!1097 = !DILocalVariable(name: "prevfield", scope: !1098, file: !3, line: 355, type: !84)
!1098 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 354, column: 5)
!1099 = !DILocation(line: 355, column: 13, scope: !1098)
!1100 = !DILocalVariable(name: "prevlen", scope: !1098, file: !3, line: 356, type: !79)
!1101 = !DILocation(line: 356, column: 14, scope: !1098)
!1102 = !DILocalVariable(name: "first_group_printed", scope: !1098, file: !3, line: 357, type: !96)
!1103 = !DILocation(line: 357, column: 12, scope: !1098)
!1104 = !DILocation(line: 359, column: 7, scope: !1098)
!1105 = !DILocation(line: 359, column: 15, scope: !1098)
!1106 = !DILocation(line: 359, column: 14, scope: !1098)
!1107 = !DILocalVariable(name: "thisfield", scope: !1108, file: !3, line: 361, type: !84)
!1108 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 360, column: 9)
!1109 = !DILocation(line: 361, column: 17, scope: !1108)
!1110 = !DILocalVariable(name: "thislen", scope: !1108, file: !3, line: 362, type: !79)
!1111 = !DILocation(line: 362, column: 18, scope: !1108)
!1112 = !DILocalVariable(name: "new_group", scope: !1108, file: !3, line: 363, type: !96)
!1113 = !DILocation(line: 363, column: 16, scope: !1108)
!1114 = !DILocation(line: 365, column: 37, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 365, column: 15)
!1116 = !DILocation(line: 365, column: 47, scope: !1115)
!1117 = !DILocation(line: 365, column: 54, scope: !1115)
!1118 = !DILocation(line: 365, column: 15, scope: !1115)
!1119 = !DILocation(line: 365, column: 65, scope: !1115)
!1120 = !DILocation(line: 365, column: 15, scope: !1108)
!1121 = !DILocation(line: 366, column: 13, scope: !1115)
!1122 = !DILocation(line: 368, column: 35, scope: !1108)
!1123 = !DILocation(line: 368, column: 23, scope: !1108)
!1124 = !DILocation(line: 368, column: 21, scope: !1108)
!1125 = !DILocation(line: 369, column: 21, scope: !1108)
!1126 = !DILocation(line: 369, column: 31, scope: !1108)
!1127 = !DILocation(line: 369, column: 38, scope: !1108)
!1128 = !DILocation(line: 369, column: 45, scope: !1108)
!1129 = !DILocation(line: 369, column: 57, scope: !1108)
!1130 = !DILocation(line: 369, column: 67, scope: !1108)
!1131 = !DILocation(line: 369, column: 55, scope: !1108)
!1132 = !DILocation(line: 369, column: 42, scope: !1108)
!1133 = !DILocation(line: 369, column: 19, scope: !1108)
!1134 = !DILocation(line: 371, column: 24, scope: !1108)
!1135 = !DILocation(line: 371, column: 34, scope: !1108)
!1136 = !DILocation(line: 371, column: 41, scope: !1108)
!1137 = !DILocation(line: 372, column: 24, scope: !1108)
!1138 = !DILocation(line: 372, column: 38, scope: !1108)
!1139 = !DILocation(line: 372, column: 49, scope: !1108)
!1140 = !DILocation(line: 372, column: 60, scope: !1108)
!1141 = !DILocation(line: 372, column: 69, scope: !1108)
!1142 = !DILocation(line: 372, column: 27, scope: !1108)
!1143 = !DILocation(line: 371, column: 21, scope: !1108)
!1144 = !DILocation(line: 374, column: 15, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 374, column: 15)
!1146 = !DILocation(line: 374, column: 25, scope: !1145)
!1147 = !DILocation(line: 374, column: 28, scope: !1145)
!1148 = !DILocation(line: 374, column: 37, scope: !1145)
!1149 = !DILocation(line: 375, column: 15, scope: !1145)
!1150 = !DILocation(line: 375, column: 19, scope: !1145)
!1151 = !DILocation(line: 375, column: 28, scope: !1145)
!1152 = !DILocation(line: 375, column: 42, scope: !1145)
!1153 = !DILocation(line: 375, column: 45, scope: !1145)
!1154 = !DILocation(line: 375, column: 54, scope: !1145)
!1155 = !DILocation(line: 376, column: 19, scope: !1145)
!1156 = !DILocation(line: 376, column: 23, scope: !1145)
!1157 = !DILocation(line: 376, column: 43, scope: !1145)
!1158 = !DILocation(line: 376, column: 47, scope: !1145)
!1159 = !DILocation(line: 376, column: 56, scope: !1145)
!1160 = !DILocation(line: 377, column: 47, scope: !1145)
!1161 = !DILocation(line: 377, column: 50, scope: !1145)
!1162 = !DILocation(line: 377, column: 59, scope: !1145)
!1163 = !DILocation(line: 374, column: 15, scope: !1108)
!1164 = !DILocation(line: 378, column: 13, scope: !1145)
!1165 = !DILocation(line: 380, column: 15, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 380, column: 15)
!1167 = !DILocation(line: 380, column: 25, scope: !1166)
!1168 = !DILocation(line: 380, column: 28, scope: !1166)
!1169 = !DILocation(line: 380, column: 37, scope: !1166)
!1170 = !DILocation(line: 380, column: 15, scope: !1108)
!1171 = !DILocation(line: 382, column: 15, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 381, column: 13)
!1173 = !DILocation(line: 385, column: 15, scope: !1172)
!1174 = !DILocalVariable(name: "_tmp", scope: !1175, file: !3, line: 385, type: !1061)
!1175 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 385, column: 15)
!1176 = !DILocation(line: 385, column: 15, scope: !1175)
!1177 = !DILocation(line: 386, column: 27, scope: !1172)
!1178 = !DILocation(line: 386, column: 25, scope: !1172)
!1179 = !DILocation(line: 387, column: 25, scope: !1172)
!1180 = !DILocation(line: 387, column: 23, scope: !1172)
!1181 = !DILocation(line: 388, column: 35, scope: !1172)
!1182 = !DILocation(line: 389, column: 13, scope: !1172)
!1183 = distinct !{!1183, !1104, !1184, !757}
!1184 = !DILocation(line: 390, column: 9, scope: !1098)
!1185 = !DILocation(line: 391, column: 12, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 391, column: 11)
!1187 = !DILocation(line: 391, column: 21, scope: !1186)
!1188 = !DILocation(line: 391, column: 32, scope: !1186)
!1189 = !DILocation(line: 391, column: 35, scope: !1186)
!1190 = !DILocation(line: 391, column: 44, scope: !1186)
!1191 = !DILocation(line: 391, column: 58, scope: !1186)
!1192 = !DILocation(line: 391, column: 61, scope: !1186)
!1193 = !DILocation(line: 391, column: 11, scope: !1098)
!1194 = !DILocation(line: 392, column: 9, scope: !1186)
!1195 = !DILocation(line: 393, column: 5, scope: !1098)
!1196 = !DILocalVariable(name: "prevfield", scope: !1197, file: !3, line: 396, type: !84)
!1197 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 395, column: 5)
!1198 = !DILocation(line: 396, column: 13, scope: !1197)
!1199 = !DILocalVariable(name: "prevlen", scope: !1197, file: !3, line: 397, type: !79)
!1200 = !DILocation(line: 397, column: 14, scope: !1197)
!1201 = !DILocalVariable(name: "match_count", scope: !1197, file: !3, line: 398, type: !876)
!1202 = !DILocation(line: 398, column: 17, scope: !1197)
!1203 = !DILocalVariable(name: "first_delimiter", scope: !1197, file: !3, line: 399, type: !96)
!1204 = !DILocation(line: 399, column: 12, scope: !1197)
!1205 = !DILocation(line: 401, column: 33, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 401, column: 11)
!1207 = !DILocation(line: 401, column: 43, scope: !1206)
!1208 = !DILocation(line: 401, column: 50, scope: !1206)
!1209 = !DILocation(line: 401, column: 11, scope: !1206)
!1210 = !DILocation(line: 401, column: 61, scope: !1206)
!1211 = !DILocation(line: 401, column: 11, scope: !1197)
!1212 = !DILocation(line: 402, column: 9, scope: !1206)
!1213 = !DILocation(line: 403, column: 31, scope: !1197)
!1214 = !DILocation(line: 403, column: 19, scope: !1197)
!1215 = !DILocation(line: 403, column: 17, scope: !1197)
!1216 = !DILocation(line: 404, column: 17, scope: !1197)
!1217 = !DILocation(line: 404, column: 27, scope: !1197)
!1218 = !DILocation(line: 404, column: 34, scope: !1197)
!1219 = !DILocation(line: 404, column: 41, scope: !1197)
!1220 = !DILocation(line: 404, column: 53, scope: !1197)
!1221 = !DILocation(line: 404, column: 63, scope: !1197)
!1222 = !DILocation(line: 404, column: 51, scope: !1197)
!1223 = !DILocation(line: 404, column: 38, scope: !1197)
!1224 = !DILocation(line: 404, column: 15, scope: !1197)
!1225 = !DILocation(line: 406, column: 7, scope: !1197)
!1226 = !DILocation(line: 406, column: 15, scope: !1197)
!1227 = !DILocation(line: 406, column: 14, scope: !1197)
!1228 = !DILocalVariable(name: "match", scope: !1229, file: !3, line: 408, type: !96)
!1229 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 407, column: 9)
!1230 = !DILocation(line: 408, column: 16, scope: !1229)
!1231 = !DILocalVariable(name: "thisfield", scope: !1229, file: !3, line: 409, type: !84)
!1232 = !DILocation(line: 409, column: 17, scope: !1229)
!1233 = !DILocalVariable(name: "thislen", scope: !1229, file: !3, line: 410, type: !79)
!1234 = !DILocation(line: 410, column: 18, scope: !1229)
!1235 = !DILocation(line: 411, column: 37, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 411, column: 15)
!1237 = !DILocation(line: 411, column: 47, scope: !1236)
!1238 = !DILocation(line: 411, column: 54, scope: !1236)
!1239 = !DILocation(line: 411, column: 15, scope: !1236)
!1240 = !DILocation(line: 411, column: 65, scope: !1236)
!1241 = !DILocation(line: 411, column: 15, scope: !1229)
!1242 = !DILocation(line: 413, column: 19, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 413, column: 19)
!1244 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 412, column: 13)
!1245 = !DILocation(line: 413, column: 19, scope: !1244)
!1246 = !DILocation(line: 414, column: 17, scope: !1243)
!1247 = !DILocation(line: 415, column: 15, scope: !1244)
!1248 = !DILocation(line: 417, column: 35, scope: !1229)
!1249 = !DILocation(line: 417, column: 23, scope: !1229)
!1250 = !DILocation(line: 417, column: 21, scope: !1229)
!1251 = !DILocation(line: 418, column: 21, scope: !1229)
!1252 = !DILocation(line: 418, column: 31, scope: !1229)
!1253 = !DILocation(line: 418, column: 38, scope: !1229)
!1254 = !DILocation(line: 418, column: 45, scope: !1229)
!1255 = !DILocation(line: 418, column: 57, scope: !1229)
!1256 = !DILocation(line: 418, column: 67, scope: !1229)
!1257 = !DILocation(line: 418, column: 55, scope: !1229)
!1258 = !DILocation(line: 418, column: 42, scope: !1229)
!1259 = !DILocation(line: 418, column: 19, scope: !1229)
!1260 = !DILocation(line: 419, column: 31, scope: !1229)
!1261 = !DILocation(line: 419, column: 42, scope: !1229)
!1262 = !DILocation(line: 419, column: 53, scope: !1229)
!1263 = !DILocation(line: 419, column: 62, scope: !1229)
!1264 = !DILocation(line: 419, column: 20, scope: !1229)
!1265 = !DILocation(line: 419, column: 19, scope: !1229)
!1266 = !DILocation(line: 419, column: 17, scope: !1229)
!1267 = !DILocation(line: 420, column: 26, scope: !1229)
!1268 = !DILocation(line: 420, column: 23, scope: !1229)
!1269 = !DILocation(line: 422, column: 15, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 422, column: 15)
!1271 = !DILocation(line: 422, column: 27, scope: !1270)
!1272 = !DILocation(line: 422, column: 15, scope: !1229)
!1273 = !DILocation(line: 426, column: 26, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 423, column: 13)
!1275 = !DILocation(line: 427, column: 13, scope: !1274)
!1276 = !DILocation(line: 429, column: 15, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 429, column: 15)
!1278 = !DILocation(line: 429, column: 30, scope: !1277)
!1279 = !DILocation(line: 429, column: 15, scope: !1229)
!1280 = !DILocation(line: 431, column: 20, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 431, column: 19)
!1282 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 430, column: 13)
!1283 = !DILocation(line: 431, column: 19, scope: !1282)
!1284 = !DILocation(line: 433, column: 23, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 433, column: 23)
!1286 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 432, column: 17)
!1287 = !DILocation(line: 433, column: 23, scope: !1286)
!1288 = !DILocation(line: 434, column: 37, scope: !1285)
!1289 = !DILocation(line: 434, column: 21, scope: !1285)
!1290 = !DILocation(line: 435, column: 17, scope: !1286)
!1291 = !DILocation(line: 436, column: 24, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 436, column: 24)
!1293 = !DILocation(line: 436, column: 36, scope: !1292)
!1294 = !DILocation(line: 436, column: 24, scope: !1281)
!1295 = !DILocation(line: 438, column: 24, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 438, column: 23)
!1297 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 437, column: 17)
!1298 = !DILocation(line: 438, column: 39, scope: !1296)
!1299 = !DILocation(line: 439, column: 23, scope: !1296)
!1300 = !DILocation(line: 439, column: 27, scope: !1296)
!1301 = !DILocation(line: 439, column: 42, scope: !1296)
!1302 = !DILocation(line: 440, column: 27, scope: !1296)
!1303 = !DILocation(line: 440, column: 31, scope: !1296)
!1304 = !DILocation(line: 438, column: 23, scope: !1297)
!1305 = !DILocation(line: 441, column: 21, scope: !1296)
!1306 = !DILocation(line: 442, column: 17, scope: !1297)
!1307 = !DILocation(line: 443, column: 13, scope: !1282)
!1308 = !DILocation(line: 445, column: 16, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 445, column: 15)
!1310 = !DILocation(line: 445, column: 22, scope: !1309)
!1311 = !DILocation(line: 445, column: 25, scope: !1309)
!1312 = !DILocation(line: 445, column: 15, scope: !1229)
!1313 = !DILocation(line: 447, column: 26, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 446, column: 13)
!1315 = !DILocation(line: 447, column: 36, scope: !1314)
!1316 = !DILocation(line: 447, column: 43, scope: !1314)
!1317 = !DILocation(line: 447, column: 15, scope: !1314)
!1318 = !DILocation(line: 448, column: 15, scope: !1314)
!1319 = !DILocalVariable(name: "_tmp", scope: !1320, file: !3, line: 448, type: !1061)
!1320 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 448, column: 15)
!1321 = !DILocation(line: 448, column: 15, scope: !1320)
!1322 = !DILocation(line: 449, column: 27, scope: !1314)
!1323 = !DILocation(line: 449, column: 25, scope: !1314)
!1324 = !DILocation(line: 450, column: 25, scope: !1314)
!1325 = !DILocation(line: 450, column: 23, scope: !1314)
!1326 = !DILocation(line: 451, column: 20, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 451, column: 19)
!1328 = !DILocation(line: 451, column: 19, scope: !1314)
!1329 = !DILocation(line: 452, column: 29, scope: !1327)
!1330 = !DILocation(line: 452, column: 17, scope: !1327)
!1331 = !DILocation(line: 453, column: 13, scope: !1314)
!1332 = distinct !{!1332, !1225, !1333, !757}
!1333 = !DILocation(line: 454, column: 9, scope: !1197)
!1334 = !DILocation(line: 456, column: 18, scope: !1197)
!1335 = !DILocation(line: 456, column: 35, scope: !1197)
!1336 = !DILocation(line: 456, column: 7, scope: !1197)
!1337 = !DILocation(line: 353, column: 62, scope: !1090)
!1338 = !DILabel(scope: !1041, name: "closefiles", file: !3, line: 459)
!1339 = !DILocation(line: 459, column: 2, scope: !1041)
!1340 = !DILocation(line: 460, column: 7, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 460, column: 7)
!1342 = !DILocation(line: 460, column: 22, scope: !1341)
!1343 = !DILocation(line: 460, column: 33, scope: !1341)
!1344 = !DILocation(line: 460, column: 25, scope: !1341)
!1345 = !DILocation(line: 460, column: 40, scope: !1341)
!1346 = !DILocation(line: 460, column: 7, scope: !1041)
!1347 = !DILocation(line: 461, column: 5, scope: !1341)
!1348 = !DILocation(line: 465, column: 13, scope: !1041)
!1349 = !DILocation(line: 465, column: 3, scope: !1041)
!1350 = !DILocation(line: 466, column: 13, scope: !1041)
!1351 = !DILocation(line: 466, column: 3, scope: !1041)
!1352 = !DILocation(line: 467, column: 1, scope: !1041)
!1353 = distinct !DISubprogram(name: "find_field", scope: !3, file: !3, line: 256, type: !1354, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!84, !1356}
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1051)
!1358 = !DILocalVariable(name: "line", arg: 1, scope: !1353, file: !3, line: 256, type: !1356)
!1359 = !DILocation(line: 256, column: 38, scope: !1353)
!1360 = !DILocalVariable(name: "count", scope: !1353, file: !3, line: 258, type: !79)
!1361 = !DILocation(line: 258, column: 10, scope: !1353)
!1362 = !DILocalVariable(name: "lp", scope: !1353, file: !3, line: 259, type: !74)
!1363 = !DILocation(line: 259, column: 15, scope: !1353)
!1364 = !DILocation(line: 259, column: 20, scope: !1353)
!1365 = !DILocation(line: 259, column: 26, scope: !1353)
!1366 = !DILocalVariable(name: "size", scope: !1353, file: !3, line: 260, type: !79)
!1367 = !DILocation(line: 260, column: 10, scope: !1353)
!1368 = !DILocation(line: 260, column: 17, scope: !1353)
!1369 = !DILocation(line: 260, column: 23, scope: !1353)
!1370 = !DILocation(line: 260, column: 30, scope: !1353)
!1371 = !DILocalVariable(name: "i", scope: !1353, file: !3, line: 261, type: !79)
!1372 = !DILocation(line: 261, column: 10, scope: !1353)
!1373 = !DILocation(line: 263, column: 14, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 263, column: 3)
!1375 = !DILocation(line: 263, column: 8, scope: !1374)
!1376 = !DILocation(line: 263, column: 19, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 263, column: 3)
!1378 = !DILocation(line: 263, column: 27, scope: !1377)
!1379 = !DILocation(line: 263, column: 25, scope: !1377)
!1380 = !DILocation(line: 263, column: 39, scope: !1377)
!1381 = !DILocation(line: 263, column: 42, scope: !1377)
!1382 = !DILocation(line: 263, column: 46, scope: !1377)
!1383 = !DILocation(line: 263, column: 44, scope: !1377)
!1384 = !DILocation(line: 0, scope: !1377)
!1385 = !DILocation(line: 263, column: 3, scope: !1374)
!1386 = !DILocation(line: 265, column: 7, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 264, column: 5)
!1388 = !DILocation(line: 265, column: 14, scope: !1387)
!1389 = !DILocation(line: 265, column: 18, scope: !1387)
!1390 = !DILocation(line: 265, column: 16, scope: !1387)
!1391 = !DILocation(line: 265, column: 23, scope: !1387)
!1392 = !DILocation(line: 265, column: 37, scope: !1387)
!1393 = !DILocation(line: 265, column: 40, scope: !1387)
!1394 = !DILocation(line: 265, column: 26, scope: !1387)
!1395 = !DILocation(line: 0, scope: !1387)
!1396 = !DILocation(line: 266, column: 10, scope: !1387)
!1397 = distinct !{!1397, !1386, !1396, !757}
!1398 = !DILocation(line: 267, column: 7, scope: !1387)
!1399 = !DILocation(line: 267, column: 14, scope: !1387)
!1400 = !DILocation(line: 267, column: 18, scope: !1387)
!1401 = !DILocation(line: 267, column: 16, scope: !1387)
!1402 = !DILocation(line: 267, column: 23, scope: !1387)
!1403 = !DILocation(line: 267, column: 38, scope: !1387)
!1404 = !DILocation(line: 267, column: 41, scope: !1387)
!1405 = !DILocation(line: 267, column: 27, scope: !1387)
!1406 = !DILocation(line: 267, column: 26, scope: !1387)
!1407 = !DILocation(line: 268, column: 10, scope: !1387)
!1408 = distinct !{!1408, !1398, !1407, !757}
!1409 = !DILocation(line: 269, column: 5, scope: !1387)
!1410 = !DILocation(line: 263, column: 57, scope: !1377)
!1411 = !DILocation(line: 263, column: 3, scope: !1377)
!1412 = distinct !{!1412, !1385, !1413, !757}
!1413 = !DILocation(line: 269, column: 5, scope: !1374)
!1414 = !DILocation(line: 271, column: 8, scope: !1353)
!1415 = !DILocation(line: 271, column: 5, scope: !1353)
!1416 = !DILocation(line: 273, column: 10, scope: !1353)
!1417 = !DILocation(line: 273, column: 16, scope: !1353)
!1418 = !DILocation(line: 273, column: 25, scope: !1353)
!1419 = !DILocation(line: 273, column: 23, scope: !1353)
!1420 = !DILocation(line: 273, column: 3, scope: !1353)
!1421 = distinct !DISubprogram(name: "different", scope: !3, file: !3, line: 282, type: !1422, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!96, !84, !84, !79, !79}
!1424 = !DILocalVariable(name: "old", arg: 1, scope: !1421, file: !3, line: 282, type: !84)
!1425 = !DILocation(line: 282, column: 18, scope: !1421)
!1426 = !DILocalVariable(name: "new", arg: 2, scope: !1421, file: !3, line: 282, type: !84)
!1427 = !DILocation(line: 282, column: 29, scope: !1421)
!1428 = !DILocalVariable(name: "oldlen", arg: 3, scope: !1421, file: !3, line: 282, type: !79)
!1429 = !DILocation(line: 282, column: 41, scope: !1421)
!1430 = !DILocalVariable(name: "newlen", arg: 4, scope: !1421, file: !3, line: 282, type: !79)
!1431 = !DILocation(line: 282, column: 56, scope: !1421)
!1432 = !DILocation(line: 284, column: 7, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 284, column: 7)
!1434 = !DILocation(line: 284, column: 21, scope: !1433)
!1435 = !DILocation(line: 284, column: 19, scope: !1433)
!1436 = !DILocation(line: 284, column: 7, scope: !1421)
!1437 = !DILocation(line: 285, column: 14, scope: !1433)
!1438 = !DILocation(line: 285, column: 12, scope: !1433)
!1439 = !DILocation(line: 285, column: 5, scope: !1433)
!1440 = !DILocation(line: 286, column: 7, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 286, column: 7)
!1442 = !DILocation(line: 286, column: 21, scope: !1441)
!1443 = !DILocation(line: 286, column: 19, scope: !1441)
!1444 = !DILocation(line: 286, column: 7, scope: !1421)
!1445 = !DILocation(line: 287, column: 14, scope: !1441)
!1446 = !DILocation(line: 287, column: 12, scope: !1441)
!1447 = !DILocation(line: 287, column: 5, scope: !1441)
!1448 = !DILocation(line: 289, column: 7, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 289, column: 7)
!1450 = !DILocation(line: 289, column: 7, scope: !1421)
!1451 = !DILocation(line: 290, column: 12, scope: !1449)
!1452 = !DILocation(line: 290, column: 22, scope: !1449)
!1453 = !DILocation(line: 290, column: 19, scope: !1449)
!1454 = !DILocation(line: 290, column: 29, scope: !1449)
!1455 = !DILocation(line: 290, column: 44, scope: !1449)
!1456 = !DILocation(line: 290, column: 49, scope: !1449)
!1457 = !DILocation(line: 290, column: 54, scope: !1449)
!1458 = !DILocation(line: 290, column: 32, scope: !1449)
!1459 = !DILocation(line: 290, column: 5, scope: !1449)
!1460 = !DILocation(line: 292, column: 12, scope: !1449)
!1461 = !DILocation(line: 292, column: 22, scope: !1449)
!1462 = !DILocation(line: 292, column: 19, scope: !1449)
!1463 = !DILocation(line: 292, column: 29, scope: !1449)
!1464 = !DILocation(line: 292, column: 40, scope: !1449)
!1465 = !DILocation(line: 292, column: 45, scope: !1449)
!1466 = !DILocation(line: 292, column: 50, scope: !1449)
!1467 = !DILocation(line: 292, column: 32, scope: !1449)
!1468 = !DILocation(line: 292, column: 5, scope: !1449)
!1469 = !DILocation(line: 293, column: 1, scope: !1421)
!1470 = distinct !DISubprogram(name: "writeline", scope: !3, file: !3, line: 302, type: !1471, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{null, !1356, !96, !876}
!1473 = !DILocalVariable(name: "line", arg: 1, scope: !1470, file: !3, line: 302, type: !1356)
!1474 = !DILocation(line: 302, column: 37, scope: !1470)
!1475 = !DILocalVariable(name: "match", arg: 2, scope: !1470, file: !3, line: 303, type: !96)
!1476 = !DILocation(line: 303, column: 17, scope: !1470)
!1477 = !DILocalVariable(name: "linecount", arg: 3, scope: !1470, file: !3, line: 303, type: !876)
!1478 = !DILocation(line: 303, column: 34, scope: !1470)
!1479 = !DILocation(line: 305, column: 10, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 305, column: 7)
!1481 = !DILocation(line: 305, column: 20, scope: !1480)
!1482 = !DILocation(line: 305, column: 7, scope: !1470)
!1483 = !DILocation(line: 305, column: 27, scope: !1480)
!1484 = !DILocation(line: 306, column: 13, scope: !1480)
!1485 = !DILocation(line: 306, column: 21, scope: !1480)
!1486 = !DILocation(line: 306, column: 12, scope: !1480)
!1487 = !DILocation(line: 307, column: 12, scope: !1480)
!1488 = !DILocation(line: 308, column: 5, scope: !1480)
!1489 = !DILocation(line: 310, column: 7, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 310, column: 7)
!1491 = !DILocation(line: 310, column: 17, scope: !1490)
!1492 = !DILocation(line: 310, column: 7, scope: !1470)
!1493 = !DILocation(line: 311, column: 31, scope: !1490)
!1494 = !DILocation(line: 311, column: 41, scope: !1490)
!1495 = !DILocation(line: 311, column: 5, scope: !1490)
!1496 = !DILocation(line: 313, column: 3, scope: !1470)
!1497 = !DILocation(line: 314, column: 1, scope: !1470)
!1498 = distinct !DISubprogram(name: "field_sep", scope: !723, file: !723, line: 160, type: !1499, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!96, !289}
!1501 = !DILocalVariable(name: "ch", arg: 1, scope: !1498, file: !723, line: 160, type: !289)
!1502 = !DILocation(line: 160, column: 26, scope: !1498)
!1503 = !DILocation(line: 162, column: 10, scope: !1498)
!1504 = !DILocation(line: 162, column: 23, scope: !1498)
!1505 = !DILocation(line: 162, column: 26, scope: !1498)
!1506 = !DILocation(line: 162, column: 29, scope: !1498)
!1507 = !DILocation(line: 162, column: 3, scope: !1498)
!1508 = distinct !DISubprogram(name: "__argmatch_die", scope: !151, file: !151, line: 60, type: !158, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !150, retainedNodes: !146)
!1509 = !DILocation(line: 62, column: 3, scope: !1508)
!1510 = !DILocation(line: 63, column: 1, scope: !1508)
!1511 = distinct !DISubprogram(name: "argmatch", scope: !151, file: !151, line: 82, type: !1512, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !150, retainedNodes: !146)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!1514, !74, !1516, !82, !79}
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !80, line: 35, baseType: !1515)
!1515 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!1517 = !DILocalVariable(name: "arg", arg: 1, scope: !1511, file: !151, line: 82, type: !74)
!1518 = !DILocation(line: 82, column: 23, scope: !1511)
!1519 = !DILocalVariable(name: "arglist", arg: 2, scope: !1511, file: !151, line: 82, type: !1516)
!1520 = !DILocation(line: 82, column: 47, scope: !1511)
!1521 = !DILocalVariable(name: "vallist", arg: 3, scope: !1511, file: !151, line: 83, type: !82)
!1522 = !DILocation(line: 83, column: 23, scope: !1511)
!1523 = !DILocalVariable(name: "valsize", arg: 4, scope: !1511, file: !151, line: 83, type: !79)
!1524 = !DILocation(line: 83, column: 39, scope: !1511)
!1525 = !DILocalVariable(name: "i", scope: !1511, file: !151, line: 85, type: !79)
!1526 = !DILocation(line: 85, column: 10, scope: !1511)
!1527 = !DILocalVariable(name: "arglen", scope: !1511, file: !151, line: 86, type: !79)
!1528 = !DILocation(line: 86, column: 10, scope: !1511)
!1529 = !DILocalVariable(name: "matchind", scope: !1511, file: !151, line: 87, type: !1514)
!1530 = !DILocation(line: 87, column: 13, scope: !1511)
!1531 = !DILocalVariable(name: "ambiguous", scope: !1511, file: !151, line: 88, type: !96)
!1532 = !DILocation(line: 88, column: 8, scope: !1511)
!1533 = !DILocation(line: 90, column: 20, scope: !1511)
!1534 = !DILocation(line: 90, column: 12, scope: !1511)
!1535 = !DILocation(line: 90, column: 10, scope: !1511)
!1536 = !DILocation(line: 93, column: 10, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1511, file: !151, line: 93, column: 3)
!1538 = !DILocation(line: 93, column: 8, scope: !1537)
!1539 = !DILocation(line: 93, column: 15, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1537, file: !151, line: 93, column: 3)
!1541 = !DILocation(line: 93, column: 23, scope: !1540)
!1542 = !DILocation(line: 93, column: 3, scope: !1537)
!1543 = !DILocation(line: 95, column: 21, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !151, line: 95, column: 11)
!1545 = distinct !DILexicalBlock(scope: !1540, file: !151, line: 94, column: 5)
!1546 = !DILocation(line: 95, column: 29, scope: !1544)
!1547 = !DILocation(line: 95, column: 33, scope: !1544)
!1548 = !DILocation(line: 95, column: 38, scope: !1544)
!1549 = !DILocation(line: 95, column: 12, scope: !1544)
!1550 = !DILocation(line: 95, column: 11, scope: !1545)
!1551 = !DILocation(line: 97, column: 23, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !151, line: 97, column: 15)
!1553 = distinct !DILexicalBlock(scope: !1544, file: !151, line: 96, column: 9)
!1554 = !DILocation(line: 97, column: 31, scope: !1552)
!1555 = !DILocation(line: 97, column: 15, scope: !1552)
!1556 = !DILocation(line: 97, column: 38, scope: !1552)
!1557 = !DILocation(line: 97, column: 35, scope: !1552)
!1558 = !DILocation(line: 97, column: 15, scope: !1553)
!1559 = !DILocation(line: 99, column: 20, scope: !1552)
!1560 = !DILocation(line: 99, column: 13, scope: !1552)
!1561 = !DILocation(line: 100, column: 20, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1552, file: !151, line: 100, column: 20)
!1563 = !DILocation(line: 100, column: 29, scope: !1562)
!1564 = !DILocation(line: 100, column: 20, scope: !1552)
!1565 = !DILocation(line: 102, column: 24, scope: !1562)
!1566 = !DILocation(line: 102, column: 22, scope: !1562)
!1567 = !DILocation(line: 102, column: 13, scope: !1562)
!1568 = !DILocation(line: 106, column: 19, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !151, line: 106, column: 19)
!1570 = distinct !DILexicalBlock(scope: !1562, file: !151, line: 104, column: 13)
!1571 = !DILocation(line: 106, column: 27, scope: !1569)
!1572 = !DILocation(line: 107, column: 19, scope: !1569)
!1573 = !DILocation(line: 107, column: 45, scope: !1569)
!1574 = !DILocation(line: 107, column: 55, scope: !1569)
!1575 = !DILocation(line: 107, column: 65, scope: !1569)
!1576 = !DILocation(line: 107, column: 63, scope: !1569)
!1577 = !DILocation(line: 107, column: 53, scope: !1569)
!1578 = !DILocation(line: 108, column: 45, scope: !1569)
!1579 = !DILocation(line: 108, column: 55, scope: !1569)
!1580 = !DILocation(line: 108, column: 65, scope: !1569)
!1581 = !DILocation(line: 108, column: 63, scope: !1569)
!1582 = !DILocation(line: 108, column: 53, scope: !1569)
!1583 = !DILocation(line: 108, column: 68, scope: !1569)
!1584 = !DILocation(line: 107, column: 22, scope: !1569)
!1585 = !DILocation(line: 106, column: 19, scope: !1570)
!1586 = !DILocation(line: 112, column: 29, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1569, file: !151, line: 109, column: 17)
!1588 = !DILocation(line: 113, column: 17, scope: !1587)
!1589 = !DILocation(line: 115, column: 9, scope: !1553)
!1590 = !DILocation(line: 116, column: 5, scope: !1545)
!1591 = !DILocation(line: 93, column: 28, scope: !1540)
!1592 = !DILocation(line: 93, column: 3, scope: !1540)
!1593 = distinct !{!1593, !1542, !1594, !757}
!1594 = !DILocation(line: 116, column: 5, scope: !1537)
!1595 = !DILocation(line: 117, column: 7, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1511, file: !151, line: 117, column: 7)
!1597 = !DILocation(line: 117, column: 7, scope: !1511)
!1598 = !DILocation(line: 118, column: 5, scope: !1596)
!1599 = !DILocation(line: 120, column: 12, scope: !1596)
!1600 = !DILocation(line: 120, column: 5, scope: !1596)
!1601 = !DILocation(line: 121, column: 1, scope: !1511)
!1602 = distinct !DISubprogram(name: "argmatch_invalid", scope: !151, file: !151, line: 129, type: !1603, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !150, retainedNodes: !146)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{null, !74, !74, !1514}
!1605 = !DILocalVariable(name: "context", arg: 1, scope: !1602, file: !151, line: 129, type: !74)
!1606 = !DILocation(line: 129, column: 31, scope: !1602)
!1607 = !DILocalVariable(name: "value", arg: 2, scope: !1602, file: !151, line: 129, type: !74)
!1608 = !DILocation(line: 129, column: 52, scope: !1602)
!1609 = !DILocalVariable(name: "problem", arg: 3, scope: !1602, file: !151, line: 129, type: !1514)
!1610 = !DILocation(line: 129, column: 69, scope: !1602)
!1611 = !DILocalVariable(name: "format", scope: !1602, file: !151, line: 131, type: !74)
!1612 = !DILocation(line: 131, column: 15, scope: !1602)
!1613 = !DILocation(line: 131, column: 25, scope: !1602)
!1614 = !DILocation(line: 131, column: 33, scope: !1602)
!1615 = !DILocation(line: 135, column: 16, scope: !1602)
!1616 = !DILocation(line: 135, column: 69, scope: !1602)
!1617 = !DILocation(line: 135, column: 24, scope: !1602)
!1618 = !DILocation(line: 136, column: 22, scope: !1602)
!1619 = !DILocation(line: 136, column: 10, scope: !1602)
!1620 = !DILocation(line: 135, column: 3, scope: !1602)
!1621 = !DILocation(line: 137, column: 1, scope: !1602)
!1622 = distinct !DISubprogram(name: "argmatch_valid", scope: !151, file: !151, line: 144, type: !1623, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !150, retainedNodes: !146)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{null, !1516, !82, !79}
!1625 = !DILocalVariable(name: "arglist", arg: 1, scope: !1622, file: !151, line: 144, type: !1516)
!1626 = !DILocation(line: 144, column: 36, scope: !1622)
!1627 = !DILocalVariable(name: "vallist", arg: 2, scope: !1622, file: !151, line: 145, type: !82)
!1628 = !DILocation(line: 145, column: 29, scope: !1622)
!1629 = !DILocalVariable(name: "valsize", arg: 3, scope: !1622, file: !151, line: 145, type: !79)
!1630 = !DILocation(line: 145, column: 45, scope: !1622)
!1631 = !DILocalVariable(name: "i", scope: !1622, file: !151, line: 147, type: !79)
!1632 = !DILocation(line: 147, column: 10, scope: !1622)
!1633 = !DILocalVariable(name: "last_val", scope: !1622, file: !151, line: 148, type: !74)
!1634 = !DILocation(line: 148, column: 15, scope: !1622)
!1635 = !DILocation(line: 152, column: 3, scope: !1622)
!1636 = !DILocation(line: 153, column: 10, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1622, file: !151, line: 153, column: 3)
!1638 = !DILocation(line: 153, column: 8, scope: !1637)
!1639 = !DILocation(line: 153, column: 15, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1637, file: !151, line: 153, column: 3)
!1641 = !DILocation(line: 153, column: 23, scope: !1640)
!1642 = !DILocation(line: 153, column: 3, scope: !1637)
!1643 = !DILocation(line: 154, column: 10, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1640, file: !151, line: 154, column: 9)
!1645 = !DILocation(line: 154, column: 12, scope: !1644)
!1646 = !DILocation(line: 155, column: 9, scope: !1644)
!1647 = !DILocation(line: 155, column: 20, scope: !1644)
!1648 = !DILocation(line: 155, column: 45, scope: !1644)
!1649 = !DILocation(line: 155, column: 55, scope: !1644)
!1650 = !DILocation(line: 155, column: 65, scope: !1644)
!1651 = !DILocation(line: 155, column: 63, scope: !1644)
!1652 = !DILocation(line: 155, column: 53, scope: !1644)
!1653 = !DILocation(line: 155, column: 68, scope: !1644)
!1654 = !DILocation(line: 155, column: 12, scope: !1644)
!1655 = !DILocation(line: 154, column: 9, scope: !1640)
!1656 = !DILocation(line: 157, column: 18, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1644, file: !151, line: 156, column: 7)
!1658 = !DILocation(line: 157, column: 45, scope: !1657)
!1659 = !DILocation(line: 157, column: 53, scope: !1657)
!1660 = !DILocation(line: 157, column: 38, scope: !1657)
!1661 = !DILocation(line: 157, column: 9, scope: !1657)
!1662 = !DILocation(line: 158, column: 35, scope: !1657)
!1663 = !DILocation(line: 158, column: 45, scope: !1657)
!1664 = !DILocation(line: 158, column: 55, scope: !1657)
!1665 = !DILocation(line: 158, column: 53, scope: !1657)
!1666 = !DILocation(line: 158, column: 43, scope: !1657)
!1667 = !DILocation(line: 158, column: 18, scope: !1657)
!1668 = !DILocation(line: 159, column: 7, scope: !1657)
!1669 = !DILocation(line: 162, column: 18, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1644, file: !151, line: 161, column: 7)
!1671 = !DILocation(line: 162, column: 41, scope: !1670)
!1672 = !DILocation(line: 162, column: 49, scope: !1670)
!1673 = !DILocation(line: 162, column: 34, scope: !1670)
!1674 = !DILocation(line: 162, column: 9, scope: !1670)
!1675 = !DILocation(line: 155, column: 75, scope: !1644)
!1676 = !DILocation(line: 153, column: 28, scope: !1640)
!1677 = !DILocation(line: 153, column: 3, scope: !1640)
!1678 = distinct !{!1678, !1642, !1679, !757}
!1679 = !DILocation(line: 163, column: 7, scope: !1637)
!1680 = !DILocation(line: 164, column: 3, scope: !1622)
!1681 = !DILocation(line: 165, column: 1, scope: !1622)
!1682 = distinct !DISubprogram(name: "__xargmatch_internal", scope: !151, file: !151, line: 174, type: !1683, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !150, retainedNodes: !146)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!1514, !74, !74, !1516, !82, !79, !155}
!1685 = !DILocalVariable(name: "context", arg: 1, scope: !1682, file: !151, line: 174, type: !74)
!1686 = !DILocation(line: 174, column: 35, scope: !1682)
!1687 = !DILocalVariable(name: "arg", arg: 2, scope: !1682, file: !151, line: 175, type: !74)
!1688 = !DILocation(line: 175, column: 35, scope: !1682)
!1689 = !DILocalVariable(name: "arglist", arg: 3, scope: !1682, file: !151, line: 175, type: !1516)
!1690 = !DILocation(line: 175, column: 59, scope: !1682)
!1691 = !DILocalVariable(name: "vallist", arg: 4, scope: !1682, file: !151, line: 176, type: !82)
!1692 = !DILocation(line: 176, column: 35, scope: !1682)
!1693 = !DILocalVariable(name: "valsize", arg: 5, scope: !1682, file: !151, line: 176, type: !79)
!1694 = !DILocation(line: 176, column: 51, scope: !1682)
!1695 = !DILocalVariable(name: "exit_fn", arg: 6, scope: !1682, file: !151, line: 177, type: !155)
!1696 = !DILocation(line: 177, column: 40, scope: !1682)
!1697 = !DILocalVariable(name: "res", scope: !1682, file: !151, line: 179, type: !1514)
!1698 = !DILocation(line: 179, column: 13, scope: !1682)
!1699 = !DILocation(line: 179, column: 29, scope: !1682)
!1700 = !DILocation(line: 179, column: 34, scope: !1682)
!1701 = !DILocation(line: 179, column: 43, scope: !1682)
!1702 = !DILocation(line: 179, column: 52, scope: !1682)
!1703 = !DILocation(line: 179, column: 19, scope: !1682)
!1704 = !DILocation(line: 180, column: 7, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1682, file: !151, line: 180, column: 7)
!1706 = !DILocation(line: 180, column: 11, scope: !1705)
!1707 = !DILocation(line: 180, column: 7, scope: !1682)
!1708 = !DILocation(line: 182, column: 12, scope: !1705)
!1709 = !DILocation(line: 182, column: 5, scope: !1705)
!1710 = !DILocation(line: 185, column: 21, scope: !1682)
!1711 = !DILocation(line: 185, column: 30, scope: !1682)
!1712 = !DILocation(line: 185, column: 35, scope: !1682)
!1713 = !DILocation(line: 185, column: 3, scope: !1682)
!1714 = !DILocation(line: 186, column: 19, scope: !1682)
!1715 = !DILocation(line: 186, column: 28, scope: !1682)
!1716 = !DILocation(line: 186, column: 37, scope: !1682)
!1717 = !DILocation(line: 186, column: 3, scope: !1682)
!1718 = !DILocation(line: 187, column: 5, scope: !1682)
!1719 = !DILocation(line: 187, column: 3, scope: !1682)
!1720 = !DILocation(line: 189, column: 3, scope: !1682)
!1721 = !DILocation(line: 190, column: 1, scope: !1682)
!1722 = distinct !DISubprogram(name: "argmatch_to_argument", scope: !151, file: !151, line: 195, type: !1723, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !150, retainedNodes: !146)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!74, !82, !1516, !82, !79}
!1725 = !DILocalVariable(name: "value", arg: 1, scope: !1722, file: !151, line: 195, type: !82)
!1726 = !DILocation(line: 195, column: 35, scope: !1722)
!1727 = !DILocalVariable(name: "arglist", arg: 2, scope: !1722, file: !151, line: 196, type: !1516)
!1728 = !DILocation(line: 196, column: 42, scope: !1722)
!1729 = !DILocalVariable(name: "vallist", arg: 3, scope: !1722, file: !151, line: 197, type: !82)
!1730 = !DILocation(line: 197, column: 35, scope: !1722)
!1731 = !DILocalVariable(name: "valsize", arg: 4, scope: !1722, file: !151, line: 197, type: !79)
!1732 = !DILocation(line: 197, column: 51, scope: !1722)
!1733 = !DILocalVariable(name: "i", scope: !1722, file: !151, line: 199, type: !79)
!1734 = !DILocation(line: 199, column: 10, scope: !1722)
!1735 = !DILocation(line: 201, column: 10, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1722, file: !151, line: 201, column: 3)
!1737 = !DILocation(line: 201, column: 8, scope: !1736)
!1738 = !DILocation(line: 201, column: 15, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1736, file: !151, line: 201, column: 3)
!1740 = !DILocation(line: 201, column: 23, scope: !1739)
!1741 = !DILocation(line: 201, column: 3, scope: !1736)
!1742 = !DILocation(line: 202, column: 18, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1739, file: !151, line: 202, column: 9)
!1744 = !DILocation(line: 202, column: 40, scope: !1743)
!1745 = !DILocation(line: 202, column: 50, scope: !1743)
!1746 = !DILocation(line: 202, column: 60, scope: !1743)
!1747 = !DILocation(line: 202, column: 58, scope: !1743)
!1748 = !DILocation(line: 202, column: 48, scope: !1743)
!1749 = !DILocation(line: 202, column: 63, scope: !1743)
!1750 = !DILocation(line: 202, column: 10, scope: !1743)
!1751 = !DILocation(line: 202, column: 9, scope: !1739)
!1752 = !DILocation(line: 203, column: 14, scope: !1743)
!1753 = !DILocation(line: 203, column: 22, scope: !1743)
!1754 = !DILocation(line: 203, column: 7, scope: !1743)
!1755 = !DILocation(line: 202, column: 70, scope: !1743)
!1756 = !DILocation(line: 201, column: 28, scope: !1739)
!1757 = !DILocation(line: 201, column: 3, scope: !1739)
!1758 = distinct !{!1758, !1741, !1759, !757}
!1759 = !DILocation(line: 203, column: 23, scope: !1736)
!1760 = !DILocation(line: 204, column: 3, scope: !1722)
!1761 = !DILocation(line: 205, column: 1, scope: !1722)
!1762 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !163, file: !163, line: 51, type: !727, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !162, retainedNodes: !146)
!1763 = !DILocalVariable(name: "file", arg: 1, scope: !1762, file: !163, line: 51, type: !74)
!1764 = !DILocation(line: 51, column: 41, scope: !1762)
!1765 = !DILocation(line: 53, column: 15, scope: !1762)
!1766 = !DILocation(line: 53, column: 13, scope: !1762)
!1767 = !DILocation(line: 54, column: 1, scope: !1762)
!1768 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !163, file: !163, line: 88, type: !1769, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !162, retainedNodes: !146)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{null, !96}
!1771 = !DILocalVariable(name: "ignore", arg: 1, scope: !1768, file: !163, line: 88, type: !96)
!1772 = !DILocation(line: 88, column: 37, scope: !1768)
!1773 = !DILocation(line: 90, column: 18, scope: !1768)
!1774 = !DILocation(line: 90, column: 16, scope: !1768)
!1775 = !DILocation(line: 91, column: 1, scope: !1768)
!1776 = distinct !DISubprogram(name: "close_stdout", scope: !163, file: !163, line: 117, type: !158, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !162, retainedNodes: !146)
!1777 = !DILocation(line: 119, column: 21, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1776, file: !163, line: 119, column: 7)
!1779 = !DILocation(line: 119, column: 7, scope: !1778)
!1780 = !DILocation(line: 119, column: 29, scope: !1778)
!1781 = !DILocation(line: 120, column: 7, scope: !1778)
!1782 = !DILocation(line: 120, column: 12, scope: !1778)
!1783 = !DILocation(line: 120, column: 25, scope: !1778)
!1784 = !DILocation(line: 120, column: 28, scope: !1778)
!1785 = !DILocation(line: 120, column: 34, scope: !1778)
!1786 = !DILocation(line: 119, column: 7, scope: !1776)
!1787 = !DILocalVariable(name: "write_error", scope: !1788, file: !163, line: 122, type: !74)
!1788 = distinct !DILexicalBlock(scope: !1778, file: !163, line: 121, column: 5)
!1789 = !DILocation(line: 122, column: 19, scope: !1788)
!1790 = !DILocation(line: 123, column: 11, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1788, file: !163, line: 123, column: 11)
!1792 = !DILocation(line: 123, column: 11, scope: !1788)
!1793 = !DILocation(line: 124, column: 19, scope: !1791)
!1794 = !DILocation(line: 124, column: 52, scope: !1791)
!1795 = !DILocation(line: 124, column: 36, scope: !1791)
!1796 = !DILocation(line: 125, column: 16, scope: !1791)
!1797 = !DILocation(line: 124, column: 9, scope: !1791)
!1798 = !DILocation(line: 127, column: 19, scope: !1791)
!1799 = !DILocation(line: 127, column: 32, scope: !1791)
!1800 = !DILocation(line: 127, column: 9, scope: !1791)
!1801 = !DILocation(line: 129, column: 14, scope: !1788)
!1802 = !DILocation(line: 129, column: 7, scope: !1788)
!1803 = !DILocation(line: 134, column: 42, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1776, file: !163, line: 134, column: 7)
!1805 = !DILocation(line: 134, column: 28, scope: !1804)
!1806 = !DILocation(line: 134, column: 50, scope: !1804)
!1807 = !DILocation(line: 134, column: 7, scope: !1776)
!1808 = !DILocation(line: 135, column: 12, scope: !1804)
!1809 = !DILocation(line: 135, column: 5, scope: !1804)
!1810 = !DILocation(line: 136, column: 1, scope: !1776)
!1811 = distinct !DISubprogram(name: "fdadvise", scope: !240, file: !240, line: 31, type: !1812, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !146)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{null, !85, !1814, !1814, !1817}
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1815, line: 63, baseType: !1816)
!1815 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !879, line: 152, baseType: !1515)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !50, line: 52, baseType: !49)
!1818 = !DILocalVariable(name: "fd", arg: 1, scope: !1811, file: !240, line: 31, type: !85)
!1819 = !DILocation(line: 31, column: 15, scope: !1811)
!1820 = !DILocalVariable(name: "offset", arg: 2, scope: !1811, file: !240, line: 31, type: !1814)
!1821 = !DILocation(line: 31, column: 25, scope: !1811)
!1822 = !DILocalVariable(name: "len", arg: 3, scope: !1811, file: !240, line: 31, type: !1814)
!1823 = !DILocation(line: 31, column: 39, scope: !1811)
!1824 = !DILocalVariable(name: "advice", arg: 4, scope: !1811, file: !240, line: 31, type: !1817)
!1825 = !DILocation(line: 31, column: 54, scope: !1811)
!1826 = !DILocalVariable(name: "__x", scope: !1827, file: !240, line: 34, type: !85)
!1827 = distinct !DILexicalBlock(scope: !1811, file: !240, line: 34, column: 3)
!1828 = !DILocation(line: 34, column: 3, scope: !1827)
!1829 = !DILocation(line: 36, column: 1, scope: !1811)
!1830 = distinct !DISubprogram(name: "fadvise", scope: !240, file: !240, line: 39, type: !1831, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !146)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{null, !1833, !1817}
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1835, line: 7, baseType: !1836)
!1835 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1837, line: 49, size: 1728, elements: !1838)
!1837 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1838 = !{!1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1854, !1856, !1857, !1858, !1859, !1860, !1862, !1866, !1869, !1871, !1874, !1877, !1878, !1879, !1880, !1881}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1836, file: !1837, line: 51, baseType: !85, size: 32)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1836, file: !1837, line: 54, baseType: !84, size: 64, offset: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1836, file: !1837, line: 55, baseType: !84, size: 64, offset: 128)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1836, file: !1837, line: 56, baseType: !84, size: 64, offset: 192)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1836, file: !1837, line: 57, baseType: !84, size: 64, offset: 256)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1836, file: !1837, line: 58, baseType: !84, size: 64, offset: 320)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1836, file: !1837, line: 59, baseType: !84, size: 64, offset: 384)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1836, file: !1837, line: 60, baseType: !84, size: 64, offset: 448)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1836, file: !1837, line: 61, baseType: !84, size: 64, offset: 512)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1836, file: !1837, line: 64, baseType: !84, size: 64, offset: 576)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1836, file: !1837, line: 65, baseType: !84, size: 64, offset: 640)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1836, file: !1837, line: 66, baseType: !84, size: 64, offset: 704)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1836, file: !1837, line: 68, baseType: !1852, size: 64, offset: 768)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1837, line: 36, flags: DIFlagFwdDecl)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1836, file: !1837, line: 70, baseType: !1855, size: 64, offset: 832)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1836, file: !1837, line: 72, baseType: !85, size: 32, offset: 896)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1836, file: !1837, line: 73, baseType: !85, size: 32, offset: 928)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1836, file: !1837, line: 74, baseType: !1816, size: 64, offset: 960)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1836, file: !1837, line: 77, baseType: !86, size: 16, offset: 1024)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1836, file: !1837, line: 78, baseType: !1861, size: 8, offset: 1040)
!1861 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1836, file: !1837, line: 79, baseType: !1863, size: 8, offset: 1048)
!1863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 8, elements: !1864)
!1864 = !{!1865}
!1865 = !DISubrange(count: 1)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1836, file: !1837, line: 81, baseType: !1867, size: 64, offset: 1088)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1837, line: 43, baseType: null)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1836, file: !1837, line: 89, baseType: !1870, size: 64, offset: 1152)
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !879, line: 153, baseType: !1515)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1836, file: !1837, line: 91, baseType: !1872, size: 64, offset: 1216)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1837, line: 37, flags: DIFlagFwdDecl)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1836, file: !1837, line: 92, baseType: !1875, size: 64, offset: 1280)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1837, line: 38, flags: DIFlagFwdDecl)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1836, file: !1837, line: 93, baseType: !1855, size: 64, offset: 1344)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1836, file: !1837, line: 94, baseType: !77, size: 64, offset: 1408)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1836, file: !1837, line: 95, baseType: !79, size: 64, offset: 1472)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1836, file: !1837, line: 96, baseType: !85, size: 32, offset: 1536)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1836, file: !1837, line: 98, baseType: !1882, size: 160, offset: 1568)
!1882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 160, elements: !1883)
!1883 = !{!1884}
!1884 = !DISubrange(count: 20)
!1885 = !DILocalVariable(name: "fp", arg: 1, scope: !1830, file: !240, line: 39, type: !1833)
!1886 = !DILocation(line: 39, column: 16, scope: !1830)
!1887 = !DILocalVariable(name: "advice", arg: 2, scope: !1830, file: !240, line: 39, type: !1817)
!1888 = !DILocation(line: 39, column: 30, scope: !1830)
!1889 = !DILocation(line: 41, column: 7, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1830, file: !240, line: 41, column: 7)
!1891 = !DILocation(line: 41, column: 7, scope: !1830)
!1892 = !DILocation(line: 42, column: 23, scope: !1890)
!1893 = !DILocation(line: 42, column: 15, scope: !1890)
!1894 = !DILocation(line: 42, column: 34, scope: !1890)
!1895 = !DILocation(line: 42, column: 5, scope: !1890)
!1896 = !DILocation(line: 43, column: 1, scope: !1830)
!1897 = distinct !DISubprogram(name: "freopen_safer", scope: !243, file: !243, line: 62, type: !1898, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !146)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!1900, !74, !74, !1900}
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1835, line: 7, baseType: !1902)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1837, line: 49, size: 1728, elements: !1903)
!1903 = !{!1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1902, file: !1837, line: 51, baseType: !85, size: 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1902, file: !1837, line: 54, baseType: !84, size: 64, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1902, file: !1837, line: 55, baseType: !84, size: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1902, file: !1837, line: 56, baseType: !84, size: 64, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1902, file: !1837, line: 57, baseType: !84, size: 64, offset: 256)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1902, file: !1837, line: 58, baseType: !84, size: 64, offset: 320)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1902, file: !1837, line: 59, baseType: !84, size: 64, offset: 384)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1902, file: !1837, line: 60, baseType: !84, size: 64, offset: 448)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1902, file: !1837, line: 61, baseType: !84, size: 64, offset: 512)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1902, file: !1837, line: 64, baseType: !84, size: 64, offset: 576)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1902, file: !1837, line: 65, baseType: !84, size: 64, offset: 640)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1902, file: !1837, line: 66, baseType: !84, size: 64, offset: 704)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1902, file: !1837, line: 68, baseType: !1852, size: 64, offset: 768)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1902, file: !1837, line: 70, baseType: !1918, size: 64, offset: 832)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1902, file: !1837, line: 72, baseType: !85, size: 32, offset: 896)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1902, file: !1837, line: 73, baseType: !85, size: 32, offset: 928)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1902, file: !1837, line: 74, baseType: !1816, size: 64, offset: 960)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1902, file: !1837, line: 77, baseType: !86, size: 16, offset: 1024)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1902, file: !1837, line: 78, baseType: !1861, size: 8, offset: 1040)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1902, file: !1837, line: 79, baseType: !1863, size: 8, offset: 1048)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1902, file: !1837, line: 81, baseType: !1867, size: 64, offset: 1088)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1902, file: !1837, line: 89, baseType: !1870, size: 64, offset: 1152)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1902, file: !1837, line: 91, baseType: !1872, size: 64, offset: 1216)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1902, file: !1837, line: 92, baseType: !1875, size: 64, offset: 1280)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1902, file: !1837, line: 93, baseType: !1918, size: 64, offset: 1344)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1902, file: !1837, line: 94, baseType: !77, size: 64, offset: 1408)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1902, file: !1837, line: 95, baseType: !79, size: 64, offset: 1472)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1902, file: !1837, line: 96, baseType: !85, size: 32, offset: 1536)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1902, file: !1837, line: 98, baseType: !1882, size: 160, offset: 1568)
!1934 = !DILocalVariable(name: "name", arg: 1, scope: !1897, file: !243, line: 62, type: !74)
!1935 = !DILocation(line: 62, column: 28, scope: !1897)
!1936 = !DILocalVariable(name: "mode", arg: 2, scope: !1897, file: !243, line: 62, type: !74)
!1937 = !DILocation(line: 62, column: 46, scope: !1897)
!1938 = !DILocalVariable(name: "f", arg: 3, scope: !1897, file: !243, line: 62, type: !1900)
!1939 = !DILocation(line: 62, column: 58, scope: !1897)
!1940 = !DILocalVariable(name: "protect_in", scope: !1897, file: !243, line: 70, type: !96)
!1941 = !DILocation(line: 70, column: 8, scope: !1897)
!1942 = !DILocalVariable(name: "protect_out", scope: !1897, file: !243, line: 71, type: !96)
!1943 = !DILocation(line: 71, column: 8, scope: !1897)
!1944 = !DILocalVariable(name: "protect_err", scope: !1897, file: !243, line: 72, type: !96)
!1945 = !DILocation(line: 72, column: 8, scope: !1897)
!1946 = !DILocalVariable(name: "saved_errno", scope: !1897, file: !243, line: 73, type: !85)
!1947 = !DILocation(line: 73, column: 7, scope: !1897)
!1948 = !DILocation(line: 75, column: 19, scope: !1897)
!1949 = !DILocation(line: 75, column: 11, scope: !1897)
!1950 = !DILocation(line: 75, column: 3, scope: !1897)
!1951 = !DILocation(line: 78, column: 11, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !243, line: 78, column: 11)
!1953 = distinct !DILexicalBlock(scope: !1897, file: !243, line: 76, column: 5)
!1954 = !DILocation(line: 78, column: 47, scope: !1952)
!1955 = !DILocation(line: 78, column: 11, scope: !1953)
!1956 = !DILocation(line: 79, column: 21, scope: !1952)
!1957 = !DILocation(line: 79, column: 9, scope: !1952)
!1958 = !DILocation(line: 80, column: 7, scope: !1953)
!1959 = !DILocation(line: 82, column: 11, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1953, file: !243, line: 82, column: 11)
!1961 = !DILocation(line: 82, column: 47, scope: !1960)
!1962 = !DILocation(line: 82, column: 11, scope: !1953)
!1963 = !DILocation(line: 83, column: 21, scope: !1960)
!1964 = !DILocation(line: 83, column: 9, scope: !1960)
!1965 = !DILocation(line: 84, column: 7, scope: !1953)
!1966 = !DILocation(line: 86, column: 11, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1953, file: !243, line: 86, column: 11)
!1968 = !DILocation(line: 86, column: 45, scope: !1967)
!1969 = !DILocation(line: 86, column: 11, scope: !1953)
!1970 = !DILocation(line: 87, column: 20, scope: !1967)
!1971 = !DILocation(line: 87, column: 9, scope: !1967)
!1972 = !DILocation(line: 88, column: 7, scope: !1953)
!1973 = !DILocation(line: 91, column: 7, scope: !1953)
!1974 = !DILocation(line: 93, column: 7, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1897, file: !243, line: 93, column: 7)
!1976 = !DILocation(line: 93, column: 18, scope: !1975)
!1977 = !DILocation(line: 93, column: 22, scope: !1975)
!1978 = !DILocation(line: 93, column: 7, scope: !1897)
!1979 = !DILocation(line: 94, column: 7, scope: !1975)
!1980 = !DILocation(line: 94, column: 5, scope: !1975)
!1981 = !DILocation(line: 95, column: 12, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1975, file: !243, line: 95, column: 12)
!1983 = !DILocation(line: 95, column: 24, scope: !1982)
!1984 = !DILocation(line: 95, column: 28, scope: !1982)
!1985 = !DILocation(line: 95, column: 12, scope: !1975)
!1986 = !DILocation(line: 96, column: 7, scope: !1982)
!1987 = !DILocation(line: 96, column: 5, scope: !1982)
!1988 = !DILocation(line: 97, column: 12, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1982, file: !243, line: 97, column: 12)
!1990 = !DILocation(line: 97, column: 24, scope: !1989)
!1991 = !DILocation(line: 97, column: 28, scope: !1989)
!1992 = !DILocation(line: 97, column: 12, scope: !1982)
!1993 = !DILocation(line: 98, column: 7, scope: !1989)
!1994 = !DILocation(line: 98, column: 5, scope: !1989)
!1995 = !DILocation(line: 100, column: 18, scope: !1989)
!1996 = !DILocation(line: 100, column: 24, scope: !1989)
!1997 = !DILocation(line: 100, column: 30, scope: !1989)
!1998 = !DILocation(line: 100, column: 9, scope: !1989)
!1999 = !DILocation(line: 100, column: 7, scope: !1989)
!2000 = !DILocation(line: 101, column: 17, scope: !1897)
!2001 = !DILocation(line: 101, column: 15, scope: !1897)
!2002 = !DILocation(line: 102, column: 7, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1897, file: !243, line: 102, column: 7)
!2004 = !DILocation(line: 102, column: 7, scope: !1897)
!2005 = !DILocation(line: 103, column: 5, scope: !2003)
!2006 = !DILocation(line: 104, column: 7, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1897, file: !243, line: 104, column: 7)
!2008 = !DILocation(line: 104, column: 7, scope: !1897)
!2009 = !DILocation(line: 105, column: 5, scope: !2007)
!2010 = !DILocation(line: 106, column: 7, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1897, file: !243, line: 106, column: 7)
!2012 = !DILocation(line: 106, column: 7, scope: !1897)
!2013 = !DILocation(line: 107, column: 5, scope: !2011)
!2014 = !DILocation(line: 108, column: 8, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1897, file: !243, line: 108, column: 7)
!2016 = !DILocation(line: 108, column: 7, scope: !1897)
!2017 = !DILocation(line: 109, column: 13, scope: !2015)
!2018 = !DILocation(line: 109, column: 5, scope: !2015)
!2019 = !DILocation(line: 109, column: 11, scope: !2015)
!2020 = !DILocation(line: 110, column: 10, scope: !1897)
!2021 = !DILocation(line: 110, column: 3, scope: !1897)
!2022 = distinct !DISubprogram(name: "protect_fd", scope: !243, file: !243, line: 40, type: !2023, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !242, retainedNodes: !146)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!96, !85}
!2025 = !DILocalVariable(name: "fd", arg: 1, scope: !2022, file: !243, line: 40, type: !85)
!2026 = !DILocation(line: 40, column: 17, scope: !2022)
!2027 = !DILocalVariable(name: "value", scope: !2022, file: !243, line: 42, type: !85)
!2028 = !DILocation(line: 42, column: 7, scope: !2022)
!2029 = !DILocation(line: 42, column: 15, scope: !2022)
!2030 = !DILocation(line: 43, column: 7, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2022, file: !243, line: 43, column: 7)
!2032 = !DILocation(line: 43, column: 16, scope: !2031)
!2033 = !DILocation(line: 43, column: 13, scope: !2031)
!2034 = !DILocation(line: 43, column: 7, scope: !2022)
!2035 = !DILocation(line: 45, column: 16, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !243, line: 45, column: 11)
!2037 = distinct !DILexicalBlock(scope: !2031, file: !243, line: 44, column: 5)
!2038 = !DILocation(line: 45, column: 13, scope: !2036)
!2039 = !DILocation(line: 45, column: 11, scope: !2037)
!2040 = !DILocation(line: 47, column: 18, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2036, file: !243, line: 46, column: 9)
!2042 = !DILocation(line: 47, column: 11, scope: !2041)
!2043 = !DILocation(line: 48, column: 11, scope: !2041)
!2044 = !DILocation(line: 48, column: 17, scope: !2041)
!2045 = !DILocation(line: 49, column: 9, scope: !2041)
!2046 = !DILocation(line: 50, column: 7, scope: !2037)
!2047 = !DILocation(line: 52, column: 3, scope: !2022)
!2048 = !DILocation(line: 53, column: 1, scope: !2022)
!2049 = distinct !DISubprogram(name: "initbuffer", scope: !245, file: !245, line: 37, type: !2050, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !244, retainedNodes: !146)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{null, !2052}
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !1052, line: 26, size: 192, elements: !2054)
!2054 = !{!2055, !2056, !2057}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2053, file: !1052, line: 28, baseType: !79, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2053, file: !1052, line: 29, baseType: !79, size: 64, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2053, file: !1052, line: 30, baseType: !84, size: 64, offset: 128)
!2058 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2049, file: !245, line: 37, type: !2052)
!2059 = !DILocation(line: 37, column: 32, scope: !2049)
!2060 = !DILocation(line: 39, column: 11, scope: !2049)
!2061 = !DILocation(line: 39, column: 3, scope: !2049)
!2062 = !DILocation(line: 40, column: 1, scope: !2049)
!2063 = distinct !DISubprogram(name: "readlinebuffer", scope: !245, file: !245, line: 43, type: !2064, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !244, retainedNodes: !146)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!2052, !2052, !2066}
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1835, line: 7, baseType: !2068)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1837, line: 49, size: 1728, elements: !2069)
!2069 = !{!2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2068, file: !1837, line: 51, baseType: !85, size: 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2068, file: !1837, line: 54, baseType: !84, size: 64, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2068, file: !1837, line: 55, baseType: !84, size: 64, offset: 128)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2068, file: !1837, line: 56, baseType: !84, size: 64, offset: 192)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2068, file: !1837, line: 57, baseType: !84, size: 64, offset: 256)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2068, file: !1837, line: 58, baseType: !84, size: 64, offset: 320)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2068, file: !1837, line: 59, baseType: !84, size: 64, offset: 384)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2068, file: !1837, line: 60, baseType: !84, size: 64, offset: 448)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2068, file: !1837, line: 61, baseType: !84, size: 64, offset: 512)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2068, file: !1837, line: 64, baseType: !84, size: 64, offset: 576)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2068, file: !1837, line: 65, baseType: !84, size: 64, offset: 640)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2068, file: !1837, line: 66, baseType: !84, size: 64, offset: 704)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2068, file: !1837, line: 68, baseType: !1852, size: 64, offset: 768)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2068, file: !1837, line: 70, baseType: !2084, size: 64, offset: 832)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2068, file: !1837, line: 72, baseType: !85, size: 32, offset: 896)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2068, file: !1837, line: 73, baseType: !85, size: 32, offset: 928)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2068, file: !1837, line: 74, baseType: !1816, size: 64, offset: 960)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2068, file: !1837, line: 77, baseType: !86, size: 16, offset: 1024)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2068, file: !1837, line: 78, baseType: !1861, size: 8, offset: 1040)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2068, file: !1837, line: 79, baseType: !1863, size: 8, offset: 1048)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2068, file: !1837, line: 81, baseType: !1867, size: 64, offset: 1088)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2068, file: !1837, line: 89, baseType: !1870, size: 64, offset: 1152)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2068, file: !1837, line: 91, baseType: !1872, size: 64, offset: 1216)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2068, file: !1837, line: 92, baseType: !1875, size: 64, offset: 1280)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2068, file: !1837, line: 93, baseType: !2084, size: 64, offset: 1344)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2068, file: !1837, line: 94, baseType: !77, size: 64, offset: 1408)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2068, file: !1837, line: 95, baseType: !79, size: 64, offset: 1472)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2068, file: !1837, line: 96, baseType: !85, size: 32, offset: 1536)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2068, file: !1837, line: 98, baseType: !1882, size: 160, offset: 1568)
!2100 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2063, file: !245, line: 43, type: !2052)
!2101 = !DILocation(line: 43, column: 36, scope: !2063)
!2102 = !DILocalVariable(name: "stream", arg: 2, scope: !2063, file: !245, line: 43, type: !2066)
!2103 = !DILocation(line: 43, column: 54, scope: !2063)
!2104 = !DILocation(line: 45, column: 32, scope: !2063)
!2105 = !DILocation(line: 45, column: 44, scope: !2063)
!2106 = !DILocation(line: 45, column: 10, scope: !2063)
!2107 = !DILocation(line: 45, column: 3, scope: !2063)
!2108 = distinct !DISubprogram(name: "readlinebuffer_delim", scope: !245, file: !245, line: 59, type: !2109, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !244, retainedNodes: !146)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!2052, !2052, !2066, !76}
!2111 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2108, file: !245, line: 59, type: !2052)
!2112 = !DILocation(line: 59, column: 42, scope: !2108)
!2113 = !DILocalVariable(name: "stream", arg: 2, scope: !2108, file: !245, line: 59, type: !2066)
!2114 = !DILocation(line: 59, column: 60, scope: !2108)
!2115 = !DILocalVariable(name: "delimiter", arg: 3, scope: !2108, file: !245, line: 60, type: !76)
!2116 = !DILocation(line: 60, column: 28, scope: !2108)
!2117 = !DILocalVariable(name: "c", scope: !2108, file: !245, line: 62, type: !85)
!2118 = !DILocation(line: 62, column: 7, scope: !2108)
!2119 = !DILocalVariable(name: "buffer", scope: !2108, file: !245, line: 63, type: !84)
!2120 = !DILocation(line: 63, column: 9, scope: !2108)
!2121 = !DILocation(line: 63, column: 18, scope: !2108)
!2122 = !DILocation(line: 63, column: 30, scope: !2108)
!2123 = !DILocalVariable(name: "p", scope: !2108, file: !245, line: 64, type: !84)
!2124 = !DILocation(line: 64, column: 9, scope: !2108)
!2125 = !DILocation(line: 64, column: 13, scope: !2108)
!2126 = !DILocation(line: 64, column: 25, scope: !2108)
!2127 = !DILocalVariable(name: "end", scope: !2108, file: !245, line: 65, type: !84)
!2128 = !DILocation(line: 65, column: 9, scope: !2108)
!2129 = !DILocation(line: 65, column: 15, scope: !2108)
!2130 = !DILocation(line: 65, column: 24, scope: !2108)
!2131 = !DILocation(line: 65, column: 36, scope: !2108)
!2132 = !DILocation(line: 65, column: 22, scope: !2108)
!2133 = !DILocation(line: 67, column: 7, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2108, file: !245, line: 67, column: 7)
!2135 = !DILocation(line: 67, column: 7, scope: !2108)
!2136 = !DILocation(line: 68, column: 5, scope: !2134)
!2137 = !DILocation(line: 70, column: 3, scope: !2108)
!2138 = !DILocation(line: 72, column: 11, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2108, file: !245, line: 71, column: 5)
!2140 = !DILocation(line: 72, column: 9, scope: !2139)
!2141 = !DILocation(line: 73, column: 11, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2139, file: !245, line: 73, column: 11)
!2143 = !DILocation(line: 73, column: 13, scope: !2142)
!2144 = !DILocation(line: 73, column: 11, scope: !2139)
!2145 = !DILocation(line: 75, column: 15, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !245, line: 75, column: 15)
!2147 = distinct !DILexicalBlock(scope: !2142, file: !245, line: 74, column: 9)
!2148 = !DILocation(line: 75, column: 20, scope: !2146)
!2149 = !DILocation(line: 75, column: 17, scope: !2146)
!2150 = !DILocation(line: 75, column: 27, scope: !2146)
!2151 = !DILocation(line: 75, column: 30, scope: !2146)
!2152 = !DILocation(line: 75, column: 15, scope: !2147)
!2153 = !DILocation(line: 76, column: 13, scope: !2146)
!2154 = !DILocation(line: 77, column: 15, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2147, file: !245, line: 77, column: 15)
!2156 = !DILocation(line: 77, column: 24, scope: !2155)
!2157 = !DILocation(line: 77, column: 21, scope: !2155)
!2158 = !DILocation(line: 77, column: 15, scope: !2147)
!2159 = !DILocation(line: 78, column: 13, scope: !2155)
!2160 = !DILocation(line: 79, column: 15, scope: !2147)
!2161 = !DILocation(line: 79, column: 13, scope: !2147)
!2162 = !DILocation(line: 80, column: 9, scope: !2147)
!2163 = !DILocation(line: 81, column: 11, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2139, file: !245, line: 81, column: 11)
!2165 = !DILocation(line: 81, column: 16, scope: !2164)
!2166 = !DILocation(line: 81, column: 13, scope: !2164)
!2167 = !DILocation(line: 81, column: 11, scope: !2139)
!2168 = !DILocalVariable(name: "oldsize", scope: !2169, file: !245, line: 83, type: !79)
!2169 = distinct !DILexicalBlock(scope: !2164, file: !245, line: 82, column: 9)
!2170 = !DILocation(line: 83, column: 18, scope: !2169)
!2171 = !DILocation(line: 83, column: 28, scope: !2169)
!2172 = !DILocation(line: 83, column: 40, scope: !2169)
!2173 = !DILocation(line: 84, column: 31, scope: !2169)
!2174 = !DILocation(line: 84, column: 40, scope: !2169)
!2175 = !DILocation(line: 84, column: 52, scope: !2169)
!2176 = !DILocation(line: 84, column: 20, scope: !2169)
!2177 = !DILocation(line: 84, column: 18, scope: !2169)
!2178 = !DILocation(line: 85, column: 15, scope: !2169)
!2179 = !DILocation(line: 85, column: 24, scope: !2169)
!2180 = !DILocation(line: 85, column: 22, scope: !2169)
!2181 = !DILocation(line: 85, column: 13, scope: !2169)
!2182 = !DILocation(line: 86, column: 32, scope: !2169)
!2183 = !DILocation(line: 86, column: 11, scope: !2169)
!2184 = !DILocation(line: 86, column: 23, scope: !2169)
!2185 = !DILocation(line: 86, column: 30, scope: !2169)
!2186 = !DILocation(line: 87, column: 17, scope: !2169)
!2187 = !DILocation(line: 87, column: 26, scope: !2169)
!2188 = !DILocation(line: 87, column: 38, scope: !2169)
!2189 = !DILocation(line: 87, column: 24, scope: !2169)
!2190 = !DILocation(line: 87, column: 15, scope: !2169)
!2191 = !DILocation(line: 88, column: 9, scope: !2169)
!2192 = !DILocation(line: 89, column: 14, scope: !2139)
!2193 = !DILocation(line: 89, column: 9, scope: !2139)
!2194 = !DILocation(line: 89, column: 12, scope: !2139)
!2195 = !DILocation(line: 90, column: 5, scope: !2139)
!2196 = !DILocation(line: 91, column: 10, scope: !2108)
!2197 = !DILocation(line: 91, column: 15, scope: !2108)
!2198 = !DILocation(line: 91, column: 12, scope: !2108)
!2199 = distinct !{!2199, !2137, !2200, !757}
!2200 = !DILocation(line: 91, column: 24, scope: !2108)
!2201 = !DILocation(line: 93, column: 24, scope: !2108)
!2202 = !DILocation(line: 93, column: 28, scope: !2108)
!2203 = !DILocation(line: 93, column: 26, scope: !2108)
!2204 = !DILocation(line: 93, column: 3, scope: !2108)
!2205 = !DILocation(line: 93, column: 15, scope: !2108)
!2206 = !DILocation(line: 93, column: 22, scope: !2108)
!2207 = !DILocation(line: 94, column: 10, scope: !2108)
!2208 = !DILocation(line: 94, column: 3, scope: !2108)
!2209 = !DILocation(line: 95, column: 1, scope: !2108)
!2210 = distinct !DISubprogram(name: "freebuffer", scope: !245, file: !245, line: 100, type: !2050, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !244, retainedNodes: !146)
!2211 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2210, file: !245, line: 100, type: !2052)
!2212 = !DILocation(line: 100, column: 32, scope: !2210)
!2213 = !DILocation(line: 102, column: 9, scope: !2210)
!2214 = !DILocation(line: 102, column: 21, scope: !2210)
!2215 = !DILocation(line: 102, column: 3, scope: !2210)
!2216 = !DILocation(line: 103, column: 1, scope: !2210)
!2217 = distinct !DISubprogram(name: "memcasecmp", scope: !247, file: !247, line: 32, type: !2218, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !246, retainedNodes: !146)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!85, !82, !82, !79}
!2220 = !DILocalVariable(name: "vs1", arg: 1, scope: !2217, file: !247, line: 32, type: !82)
!2221 = !DILocation(line: 32, column: 25, scope: !2217)
!2222 = !DILocalVariable(name: "vs2", arg: 2, scope: !2217, file: !247, line: 32, type: !82)
!2223 = !DILocation(line: 32, column: 42, scope: !2217)
!2224 = !DILocalVariable(name: "n", arg: 3, scope: !2217, file: !247, line: 32, type: !79)
!2225 = !DILocation(line: 32, column: 54, scope: !2217)
!2226 = !DILocalVariable(name: "i", scope: !2217, file: !247, line: 34, type: !79)
!2227 = !DILocation(line: 34, column: 10, scope: !2217)
!2228 = !DILocalVariable(name: "s1", scope: !2217, file: !247, line: 35, type: !74)
!2229 = !DILocation(line: 35, column: 15, scope: !2217)
!2230 = !DILocation(line: 35, column: 20, scope: !2217)
!2231 = !DILocalVariable(name: "s2", scope: !2217, file: !247, line: 36, type: !74)
!2232 = !DILocation(line: 36, column: 15, scope: !2217)
!2233 = !DILocation(line: 36, column: 20, scope: !2217)
!2234 = !DILocation(line: 37, column: 10, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2217, file: !247, line: 37, column: 3)
!2236 = !DILocation(line: 37, column: 8, scope: !2235)
!2237 = !DILocation(line: 37, column: 15, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2235, file: !247, line: 37, column: 3)
!2239 = !DILocation(line: 37, column: 19, scope: !2238)
!2240 = !DILocation(line: 37, column: 17, scope: !2238)
!2241 = !DILocation(line: 37, column: 3, scope: !2235)
!2242 = !DILocalVariable(name: "u1", scope: !2243, file: !247, line: 39, type: !289)
!2243 = distinct !DILexicalBlock(scope: !2238, file: !247, line: 38, column: 5)
!2244 = !DILocation(line: 39, column: 21, scope: !2243)
!2245 = !DILocation(line: 39, column: 26, scope: !2243)
!2246 = !DILocation(line: 39, column: 29, scope: !2243)
!2247 = !DILocalVariable(name: "u2", scope: !2243, file: !247, line: 40, type: !289)
!2248 = !DILocation(line: 40, column: 21, scope: !2243)
!2249 = !DILocation(line: 40, column: 26, scope: !2243)
!2250 = !DILocation(line: 40, column: 29, scope: !2243)
!2251 = !DILocalVariable(name: "U1", scope: !2243, file: !247, line: 41, type: !85)
!2252 = !DILocation(line: 41, column: 11, scope: !2243)
!2253 = !DILocation(line: 41, column: 25, scope: !2243)
!2254 = !DILocation(line: 41, column: 16, scope: !2243)
!2255 = !DILocalVariable(name: "U2", scope: !2243, file: !247, line: 42, type: !85)
!2256 = !DILocation(line: 42, column: 11, scope: !2243)
!2257 = !DILocation(line: 42, column: 25, scope: !2243)
!2258 = !DILocation(line: 42, column: 16, scope: !2243)
!2259 = !DILocalVariable(name: "diff", scope: !2243, file: !247, line: 43, type: !85)
!2260 = !DILocation(line: 43, column: 11, scope: !2243)
!2261 = !DILocation(line: 43, column: 42, scope: !2243)
!2262 = !DILocation(line: 43, column: 47, scope: !2243)
!2263 = !DILocation(line: 43, column: 45, scope: !2243)
!2264 = !DILocation(line: 45, column: 11, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2243, file: !247, line: 45, column: 11)
!2266 = !DILocation(line: 45, column: 11, scope: !2243)
!2267 = !DILocation(line: 46, column: 16, scope: !2265)
!2268 = !DILocation(line: 46, column: 9, scope: !2265)
!2269 = !DILocation(line: 47, column: 5, scope: !2243)
!2270 = !DILocation(line: 37, column: 23, scope: !2238)
!2271 = !DILocation(line: 37, column: 3, scope: !2238)
!2272 = distinct !{!2272, !2241, !2273, !757}
!2273 = !DILocation(line: 47, column: 5, scope: !2235)
!2274 = !DILocation(line: 48, column: 3, scope: !2217)
!2275 = !DILocation(line: 49, column: 1, scope: !2217)
!2276 = distinct !DISubprogram(name: "posix2_version", scope: !249, file: !249, line: 40, type: !2277, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !248, retainedNodes: !146)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!85}
!2279 = !DILocalVariable(name: "v", scope: !2276, file: !249, line: 42, type: !1515)
!2280 = !DILocation(line: 42, column: 12, scope: !2276)
!2281 = !DILocalVariable(name: "s", scope: !2276, file: !249, line: 43, type: !74)
!2282 = !DILocation(line: 43, column: 15, scope: !2276)
!2283 = !DILocation(line: 43, column: 19, scope: !2276)
!2284 = !DILocation(line: 45, column: 7, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2276, file: !249, line: 45, column: 7)
!2286 = !DILocation(line: 45, column: 9, scope: !2285)
!2287 = !DILocation(line: 45, column: 13, scope: !2285)
!2288 = !DILocation(line: 45, column: 12, scope: !2285)
!2289 = !DILocation(line: 45, column: 7, scope: !2276)
!2290 = !DILocalVariable(name: "e", scope: !2291, file: !249, line: 47, type: !84)
!2291 = distinct !DILexicalBlock(scope: !2285, file: !249, line: 46, column: 5)
!2292 = !DILocation(line: 47, column: 13, scope: !2291)
!2293 = !DILocalVariable(name: "i", scope: !2291, file: !249, line: 48, type: !1515)
!2294 = !DILocation(line: 48, column: 16, scope: !2291)
!2295 = !DILocation(line: 48, column: 28, scope: !2291)
!2296 = !DILocation(line: 48, column: 20, scope: !2291)
!2297 = !DILocation(line: 49, column: 14, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2291, file: !249, line: 49, column: 11)
!2299 = !DILocation(line: 49, column: 13, scope: !2298)
!2300 = !DILocation(line: 49, column: 11, scope: !2291)
!2301 = !DILocation(line: 50, column: 13, scope: !2298)
!2302 = !DILocation(line: 50, column: 11, scope: !2298)
!2303 = !DILocation(line: 50, column: 9, scope: !2298)
!2304 = !DILocation(line: 51, column: 5, scope: !2291)
!2305 = !DILocation(line: 53, column: 10, scope: !2276)
!2306 = !DILocation(line: 53, column: 12, scope: !2276)
!2307 = !DILocation(line: 53, column: 34, scope: !2276)
!2308 = !DILocation(line: 53, column: 36, scope: !2276)
!2309 = !DILocation(line: 53, column: 48, scope: !2276)
!2310 = !DILocation(line: 53, column: 3, scope: !2276)
!2311 = distinct !DISubprogram(name: "set_program_name", scope: !177, file: !177, line: 39, type: !727, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !176, retainedNodes: !146)
!2312 = !DILocalVariable(name: "argv0", arg: 1, scope: !2311, file: !177, line: 39, type: !74)
!2313 = !DILocation(line: 39, column: 31, scope: !2311)
!2314 = !DILocalVariable(name: "slash", scope: !2311, file: !177, line: 46, type: !74)
!2315 = !DILocation(line: 46, column: 15, scope: !2311)
!2316 = !DILocalVariable(name: "base", scope: !2311, file: !177, line: 47, type: !74)
!2317 = !DILocation(line: 47, column: 15, scope: !2311)
!2318 = !DILocation(line: 51, column: 7, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2311, file: !177, line: 51, column: 7)
!2320 = !DILocation(line: 51, column: 13, scope: !2319)
!2321 = !DILocation(line: 51, column: 7, scope: !2311)
!2322 = !DILocation(line: 55, column: 14, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2319, file: !177, line: 52, column: 5)
!2324 = !DILocation(line: 54, column: 7, scope: !2323)
!2325 = !DILocation(line: 56, column: 7, scope: !2323)
!2326 = !DILocation(line: 59, column: 20, scope: !2311)
!2327 = !DILocation(line: 59, column: 11, scope: !2311)
!2328 = !DILocation(line: 59, column: 9, scope: !2311)
!2329 = !DILocation(line: 60, column: 11, scope: !2311)
!2330 = !DILocation(line: 60, column: 17, scope: !2311)
!2331 = !DILocation(line: 60, column: 27, scope: !2311)
!2332 = !DILocation(line: 60, column: 33, scope: !2311)
!2333 = !DILocation(line: 60, column: 39, scope: !2311)
!2334 = !DILocation(line: 60, column: 8, scope: !2311)
!2335 = !DILocation(line: 61, column: 7, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2311, file: !177, line: 61, column: 7)
!2337 = !DILocation(line: 61, column: 14, scope: !2336)
!2338 = !DILocation(line: 61, column: 12, scope: !2336)
!2339 = !DILocation(line: 61, column: 20, scope: !2336)
!2340 = !DILocation(line: 61, column: 25, scope: !2336)
!2341 = !DILocation(line: 61, column: 37, scope: !2336)
!2342 = !DILocation(line: 61, column: 42, scope: !2336)
!2343 = !DILocation(line: 61, column: 28, scope: !2336)
!2344 = !DILocation(line: 61, column: 61, scope: !2336)
!2345 = !DILocation(line: 61, column: 7, scope: !2311)
!2346 = !DILocation(line: 63, column: 15, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2336, file: !177, line: 62, column: 5)
!2348 = !DILocation(line: 63, column: 13, scope: !2347)
!2349 = !DILocation(line: 64, column: 20, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2347, file: !177, line: 64, column: 11)
!2351 = !DILocation(line: 64, column: 11, scope: !2350)
!2352 = !DILocation(line: 64, column: 36, scope: !2350)
!2353 = !DILocation(line: 64, column: 11, scope: !2347)
!2354 = !DILocation(line: 66, column: 19, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2350, file: !177, line: 65, column: 9)
!2356 = !DILocation(line: 66, column: 24, scope: !2355)
!2357 = !DILocation(line: 66, column: 17, scope: !2355)
!2358 = !DILocation(line: 70, column: 52, scope: !2355)
!2359 = !DILocation(line: 70, column: 41, scope: !2355)
!2360 = !DILocation(line: 72, column: 9, scope: !2355)
!2361 = !DILocation(line: 73, column: 5, scope: !2347)
!2362 = !DILocation(line: 84, column: 18, scope: !2311)
!2363 = !DILocation(line: 84, column: 16, scope: !2311)
!2364 = !DILocation(line: 90, column: 38, scope: !2311)
!2365 = !DILocation(line: 90, column: 27, scope: !2311)
!2366 = !DILocation(line: 92, column: 1, scope: !2311)
!2367 = distinct !DISubprogram(name: "clone_quoting_options", scope: !183, file: !183, line: 122, type: !2368, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!2370, !2370}
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!2371 = !DILocalVariable(name: "o", arg: 1, scope: !2367, file: !183, line: 122, type: !2370)
!2372 = !DILocation(line: 122, column: 48, scope: !2367)
!2373 = !DILocalVariable(name: "e", scope: !2367, file: !183, line: 124, type: !85)
!2374 = !DILocation(line: 124, column: 7, scope: !2367)
!2375 = !DILocation(line: 124, column: 11, scope: !2367)
!2376 = !DILocalVariable(name: "p", scope: !2367, file: !183, line: 125, type: !2370)
!2377 = !DILocation(line: 125, column: 27, scope: !2367)
!2378 = !DILocation(line: 125, column: 40, scope: !2367)
!2379 = !DILocation(line: 125, column: 44, scope: !2367)
!2380 = !DILocation(line: 125, column: 31, scope: !2367)
!2381 = !DILocation(line: 127, column: 11, scope: !2367)
!2382 = !DILocation(line: 127, column: 3, scope: !2367)
!2383 = !DILocation(line: 127, column: 9, scope: !2367)
!2384 = !DILocation(line: 128, column: 10, scope: !2367)
!2385 = !DILocation(line: 128, column: 3, scope: !2367)
!2386 = distinct !DISubprogram(name: "get_quoting_style", scope: !183, file: !183, line: 133, type: !2387, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!35, !2389}
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!2391 = !DILocalVariable(name: "o", arg: 1, scope: !2386, file: !183, line: 133, type: !2389)
!2392 = !DILocation(line: 133, column: 50, scope: !2386)
!2393 = !DILocation(line: 135, column: 11, scope: !2386)
!2394 = !DILocation(line: 135, column: 15, scope: !2386)
!2395 = !DILocation(line: 135, column: 46, scope: !2386)
!2396 = !DILocation(line: 135, column: 3, scope: !2386)
!2397 = distinct !DISubprogram(name: "set_quoting_style", scope: !183, file: !183, line: 141, type: !2398, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{null, !2370, !35}
!2400 = !DILocalVariable(name: "o", arg: 1, scope: !2397, file: !183, line: 141, type: !2370)
!2401 = !DILocation(line: 141, column: 44, scope: !2397)
!2402 = !DILocalVariable(name: "s", arg: 2, scope: !2397, file: !183, line: 141, type: !35)
!2403 = !DILocation(line: 141, column: 66, scope: !2397)
!2404 = !DILocation(line: 143, column: 47, scope: !2397)
!2405 = !DILocation(line: 143, column: 4, scope: !2397)
!2406 = !DILocation(line: 143, column: 8, scope: !2397)
!2407 = !DILocation(line: 143, column: 39, scope: !2397)
!2408 = !DILocation(line: 143, column: 45, scope: !2397)
!2409 = !DILocation(line: 144, column: 1, scope: !2397)
!2410 = distinct !DISubprogram(name: "set_char_quoting", scope: !183, file: !183, line: 152, type: !2411, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!85, !2370, !76, !85}
!2413 = !DILocalVariable(name: "o", arg: 1, scope: !2410, file: !183, line: 152, type: !2370)
!2414 = !DILocation(line: 152, column: 43, scope: !2410)
!2415 = !DILocalVariable(name: "c", arg: 2, scope: !2410, file: !183, line: 152, type: !76)
!2416 = !DILocation(line: 152, column: 51, scope: !2410)
!2417 = !DILocalVariable(name: "i", arg: 3, scope: !2410, file: !183, line: 152, type: !85)
!2418 = !DILocation(line: 152, column: 58, scope: !2410)
!2419 = !DILocalVariable(name: "uc", scope: !2410, file: !183, line: 154, type: !289)
!2420 = !DILocation(line: 154, column: 17, scope: !2410)
!2421 = !DILocation(line: 154, column: 22, scope: !2410)
!2422 = !DILocalVariable(name: "p", scope: !2410, file: !183, line: 155, type: !2423)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!2424 = !DILocation(line: 155, column: 17, scope: !2410)
!2425 = !DILocation(line: 156, column: 6, scope: !2410)
!2426 = !DILocation(line: 156, column: 10, scope: !2410)
!2427 = !DILocation(line: 156, column: 41, scope: !2410)
!2428 = !DILocation(line: 156, column: 5, scope: !2410)
!2429 = !DILocation(line: 156, column: 59, scope: !2410)
!2430 = !DILocation(line: 156, column: 62, scope: !2410)
!2431 = !DILocation(line: 156, column: 57, scope: !2410)
!2432 = !DILocalVariable(name: "shift", scope: !2410, file: !183, line: 157, type: !85)
!2433 = !DILocation(line: 157, column: 7, scope: !2410)
!2434 = !DILocation(line: 157, column: 15, scope: !2410)
!2435 = !DILocation(line: 157, column: 18, scope: !2410)
!2436 = !DILocalVariable(name: "r", scope: !2410, file: !183, line: 158, type: !85)
!2437 = !DILocation(line: 158, column: 7, scope: !2410)
!2438 = !DILocation(line: 158, column: 13, scope: !2410)
!2439 = !DILocation(line: 158, column: 12, scope: !2410)
!2440 = !DILocation(line: 158, column: 18, scope: !2410)
!2441 = !DILocation(line: 158, column: 15, scope: !2410)
!2442 = !DILocation(line: 158, column: 25, scope: !2410)
!2443 = !DILocation(line: 159, column: 11, scope: !2410)
!2444 = !DILocation(line: 159, column: 13, scope: !2410)
!2445 = !DILocation(line: 159, column: 20, scope: !2410)
!2446 = !DILocation(line: 159, column: 18, scope: !2410)
!2447 = !DILocation(line: 159, column: 26, scope: !2410)
!2448 = !DILocation(line: 159, column: 23, scope: !2410)
!2449 = !DILocation(line: 159, column: 4, scope: !2410)
!2450 = !DILocation(line: 159, column: 6, scope: !2410)
!2451 = !DILocation(line: 160, column: 10, scope: !2410)
!2452 = !DILocation(line: 160, column: 3, scope: !2410)
!2453 = distinct !DISubprogram(name: "set_quoting_flags", scope: !183, file: !183, line: 168, type: !2454, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!85, !2370, !85}
!2456 = !DILocalVariable(name: "o", arg: 1, scope: !2453, file: !183, line: 168, type: !2370)
!2457 = !DILocation(line: 168, column: 44, scope: !2453)
!2458 = !DILocalVariable(name: "i", arg: 2, scope: !2453, file: !183, line: 168, type: !85)
!2459 = !DILocation(line: 168, column: 51, scope: !2453)
!2460 = !DILocalVariable(name: "r", scope: !2453, file: !183, line: 170, type: !85)
!2461 = !DILocation(line: 170, column: 7, scope: !2453)
!2462 = !DILocation(line: 171, column: 8, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2453, file: !183, line: 171, column: 7)
!2464 = !DILocation(line: 171, column: 7, scope: !2453)
!2465 = !DILocation(line: 172, column: 7, scope: !2463)
!2466 = !DILocation(line: 172, column: 5, scope: !2463)
!2467 = !DILocation(line: 173, column: 7, scope: !2453)
!2468 = !DILocation(line: 173, column: 10, scope: !2453)
!2469 = !DILocation(line: 173, column: 5, scope: !2453)
!2470 = !DILocation(line: 174, column: 14, scope: !2453)
!2471 = !DILocation(line: 174, column: 3, scope: !2453)
!2472 = !DILocation(line: 174, column: 6, scope: !2453)
!2473 = !DILocation(line: 174, column: 12, scope: !2453)
!2474 = !DILocation(line: 175, column: 10, scope: !2453)
!2475 = !DILocation(line: 175, column: 3, scope: !2453)
!2476 = distinct !DISubprogram(name: "set_custom_quoting", scope: !183, file: !183, line: 179, type: !2477, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{null, !2370, !74, !74}
!2479 = !DILocalVariable(name: "o", arg: 1, scope: !2476, file: !183, line: 179, type: !2370)
!2480 = !DILocation(line: 179, column: 45, scope: !2476)
!2481 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2476, file: !183, line: 180, type: !74)
!2482 = !DILocation(line: 180, column: 33, scope: !2476)
!2483 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2476, file: !183, line: 180, type: !74)
!2484 = !DILocation(line: 180, column: 57, scope: !2476)
!2485 = !DILocation(line: 182, column: 8, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2476, file: !183, line: 182, column: 7)
!2487 = !DILocation(line: 182, column: 7, scope: !2476)
!2488 = !DILocation(line: 183, column: 7, scope: !2486)
!2489 = !DILocation(line: 183, column: 5, scope: !2486)
!2490 = !DILocation(line: 184, column: 3, scope: !2476)
!2491 = !DILocation(line: 184, column: 6, scope: !2476)
!2492 = !DILocation(line: 184, column: 12, scope: !2476)
!2493 = !DILocation(line: 185, column: 8, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2476, file: !183, line: 185, column: 7)
!2495 = !DILocation(line: 185, column: 19, scope: !2494)
!2496 = !DILocation(line: 185, column: 23, scope: !2494)
!2497 = !DILocation(line: 185, column: 7, scope: !2476)
!2498 = !DILocation(line: 186, column: 5, scope: !2494)
!2499 = !DILocation(line: 187, column: 19, scope: !2476)
!2500 = !DILocation(line: 187, column: 3, scope: !2476)
!2501 = !DILocation(line: 187, column: 6, scope: !2476)
!2502 = !DILocation(line: 187, column: 17, scope: !2476)
!2503 = !DILocation(line: 188, column: 20, scope: !2476)
!2504 = !DILocation(line: 188, column: 3, scope: !2476)
!2505 = !DILocation(line: 188, column: 6, scope: !2476)
!2506 = !DILocation(line: 188, column: 18, scope: !2476)
!2507 = !DILocation(line: 189, column: 1, scope: !2476)
!2508 = distinct !DISubprogram(name: "quotearg_buffer", scope: !183, file: !183, line: 784, type: !2509, scopeLine: 787, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!79, !84, !79, !74, !79, !2389}
!2511 = !DILocalVariable(name: "buffer", arg: 1, scope: !2508, file: !183, line: 784, type: !84)
!2512 = !DILocation(line: 784, column: 24, scope: !2508)
!2513 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2508, file: !183, line: 784, type: !79)
!2514 = !DILocation(line: 784, column: 39, scope: !2508)
!2515 = !DILocalVariable(name: "arg", arg: 3, scope: !2508, file: !183, line: 785, type: !74)
!2516 = !DILocation(line: 785, column: 30, scope: !2508)
!2517 = !DILocalVariable(name: "argsize", arg: 4, scope: !2508, file: !183, line: 785, type: !79)
!2518 = !DILocation(line: 785, column: 42, scope: !2508)
!2519 = !DILocalVariable(name: "o", arg: 5, scope: !2508, file: !183, line: 786, type: !2389)
!2520 = !DILocation(line: 786, column: 48, scope: !2508)
!2521 = !DILocalVariable(name: "p", scope: !2508, file: !183, line: 788, type: !2389)
!2522 = !DILocation(line: 788, column: 33, scope: !2508)
!2523 = !DILocation(line: 788, column: 37, scope: !2508)
!2524 = !DILocation(line: 788, column: 41, scope: !2508)
!2525 = !DILocalVariable(name: "e", scope: !2508, file: !183, line: 789, type: !85)
!2526 = !DILocation(line: 789, column: 7, scope: !2508)
!2527 = !DILocation(line: 789, column: 11, scope: !2508)
!2528 = !DILocalVariable(name: "r", scope: !2508, file: !183, line: 790, type: !79)
!2529 = !DILocation(line: 790, column: 10, scope: !2508)
!2530 = !DILocation(line: 790, column: 40, scope: !2508)
!2531 = !DILocation(line: 790, column: 48, scope: !2508)
!2532 = !DILocation(line: 790, column: 60, scope: !2508)
!2533 = !DILocation(line: 790, column: 65, scope: !2508)
!2534 = !DILocation(line: 791, column: 40, scope: !2508)
!2535 = !DILocation(line: 791, column: 43, scope: !2508)
!2536 = !DILocation(line: 791, column: 50, scope: !2508)
!2537 = !DILocation(line: 791, column: 53, scope: !2508)
!2538 = !DILocation(line: 791, column: 60, scope: !2508)
!2539 = !DILocation(line: 791, column: 63, scope: !2508)
!2540 = !DILocation(line: 792, column: 40, scope: !2508)
!2541 = !DILocation(line: 792, column: 43, scope: !2508)
!2542 = !DILocation(line: 792, column: 55, scope: !2508)
!2543 = !DILocation(line: 792, column: 58, scope: !2508)
!2544 = !DILocation(line: 790, column: 14, scope: !2508)
!2545 = !DILocation(line: 793, column: 11, scope: !2508)
!2546 = !DILocation(line: 793, column: 3, scope: !2508)
!2547 = !DILocation(line: 793, column: 9, scope: !2508)
!2548 = !DILocation(line: 794, column: 10, scope: !2508)
!2549 = !DILocation(line: 794, column: 3, scope: !2508)
!2550 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !183, file: !183, line: 256, type: !2551, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !182, retainedNodes: !146)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!79, !84, !79, !74, !79, !35, !85, !2553, !74, !74}
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!2555 = !DILocalVariable(name: "buffer", arg: 1, scope: !2550, file: !183, line: 256, type: !84)
!2556 = !DILocation(line: 256, column: 33, scope: !2550)
!2557 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2550, file: !183, line: 256, type: !79)
!2558 = !DILocation(line: 256, column: 48, scope: !2550)
!2559 = !DILocalVariable(name: "arg", arg: 3, scope: !2550, file: !183, line: 257, type: !74)
!2560 = !DILocation(line: 257, column: 39, scope: !2550)
!2561 = !DILocalVariable(name: "argsize", arg: 4, scope: !2550, file: !183, line: 257, type: !79)
!2562 = !DILocation(line: 257, column: 51, scope: !2550)
!2563 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2550, file: !183, line: 258, type: !35)
!2564 = !DILocation(line: 258, column: 46, scope: !2550)
!2565 = !DILocalVariable(name: "flags", arg: 6, scope: !2550, file: !183, line: 258, type: !85)
!2566 = !DILocation(line: 258, column: 65, scope: !2550)
!2567 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2550, file: !183, line: 259, type: !2553)
!2568 = !DILocation(line: 259, column: 47, scope: !2550)
!2569 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2550, file: !183, line: 260, type: !74)
!2570 = !DILocation(line: 260, column: 39, scope: !2550)
!2571 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2550, file: !183, line: 261, type: !74)
!2572 = !DILocation(line: 261, column: 39, scope: !2550)
!2573 = !DILocalVariable(name: "i", scope: !2550, file: !183, line: 263, type: !79)
!2574 = !DILocation(line: 263, column: 10, scope: !2550)
!2575 = !DILocalVariable(name: "len", scope: !2550, file: !183, line: 264, type: !79)
!2576 = !DILocation(line: 264, column: 10, scope: !2550)
!2577 = !DILocalVariable(name: "orig_buffersize", scope: !2550, file: !183, line: 265, type: !79)
!2578 = !DILocation(line: 265, column: 10, scope: !2550)
!2579 = !DILocalVariable(name: "quote_string", scope: !2550, file: !183, line: 266, type: !74)
!2580 = !DILocation(line: 266, column: 15, scope: !2550)
!2581 = !DILocalVariable(name: "quote_string_len", scope: !2550, file: !183, line: 267, type: !79)
!2582 = !DILocation(line: 267, column: 10, scope: !2550)
!2583 = !DILocalVariable(name: "backslash_escapes", scope: !2550, file: !183, line: 268, type: !96)
!2584 = !DILocation(line: 268, column: 8, scope: !2550)
!2585 = !DILocalVariable(name: "unibyte_locale", scope: !2550, file: !183, line: 269, type: !96)
!2586 = !DILocation(line: 269, column: 8, scope: !2550)
!2587 = !DILocation(line: 269, column: 25, scope: !2550)
!2588 = !DILocation(line: 269, column: 36, scope: !2550)
!2589 = !DILocalVariable(name: "elide_outer_quotes", scope: !2550, file: !183, line: 270, type: !96)
!2590 = !DILocation(line: 270, column: 8, scope: !2550)
!2591 = !DILocation(line: 270, column: 30, scope: !2550)
!2592 = !DILocation(line: 270, column: 36, scope: !2550)
!2593 = !DILocation(line: 270, column: 61, scope: !2550)
!2594 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2550, file: !183, line: 271, type: !96)
!2595 = !DILocation(line: 271, column: 8, scope: !2550)
!2596 = !DILocalVariable(name: "encountered_single_quote", scope: !2550, file: !183, line: 272, type: !96)
!2597 = !DILocation(line: 272, column: 8, scope: !2550)
!2598 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2550, file: !183, line: 273, type: !96)
!2599 = !DILocation(line: 273, column: 8, scope: !2550)
!2600 = !DILocation(line: 273, column: 3, scope: !2550)
!2601 = !DILabel(scope: !2550, name: "process_input", file: !183, line: 314)
!2602 = !DILocation(line: 314, column: 2, scope: !2550)
!2603 = !DILocation(line: 316, column: 11, scope: !2550)
!2604 = !DILocation(line: 316, column: 3, scope: !2550)
!2605 = !DILocation(line: 319, column: 21, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2550, file: !183, line: 317, column: 5)
!2607 = !DILocation(line: 320, column: 26, scope: !2606)
!2608 = !DILocation(line: 321, column: 7, scope: !2606)
!2609 = !DILocation(line: 323, column: 12, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2606, file: !183, line: 323, column: 11)
!2611 = !DILocation(line: 323, column: 11, scope: !2606)
!2612 = !DILocation(line: 324, column: 9, scope: !2610)
!2613 = !DILocation(line: 324, column: 9, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !183, line: 324, column: 9)
!2615 = distinct !DILexicalBlock(scope: !2610, file: !183, line: 324, column: 9)
!2616 = !DILocation(line: 324, column: 9, scope: !2615)
!2617 = !DILocation(line: 325, column: 25, scope: !2606)
!2618 = !DILocation(line: 326, column: 20, scope: !2606)
!2619 = !DILocation(line: 327, column: 24, scope: !2606)
!2620 = !DILocation(line: 328, column: 7, scope: !2606)
!2621 = !DILocation(line: 331, column: 25, scope: !2606)
!2622 = !DILocation(line: 332, column: 26, scope: !2606)
!2623 = !DILocation(line: 333, column: 7, scope: !2606)
!2624 = !DILocation(line: 339, column: 13, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !183, line: 339, column: 13)
!2626 = distinct !DILexicalBlock(scope: !2606, file: !183, line: 338, column: 7)
!2627 = !DILocation(line: 339, column: 27, scope: !2625)
!2628 = !DILocation(line: 339, column: 13, scope: !2626)
!2629 = !DILocation(line: 362, column: 50, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2625, file: !183, line: 340, column: 11)
!2631 = !DILocation(line: 362, column: 26, scope: !2630)
!2632 = !DILocation(line: 362, column: 24, scope: !2630)
!2633 = !DILocation(line: 363, column: 51, scope: !2630)
!2634 = !DILocation(line: 363, column: 27, scope: !2630)
!2635 = !DILocation(line: 363, column: 25, scope: !2630)
!2636 = !DILocation(line: 364, column: 11, scope: !2630)
!2637 = !DILocation(line: 365, column: 14, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2626, file: !183, line: 365, column: 13)
!2639 = !DILocation(line: 365, column: 13, scope: !2626)
!2640 = !DILocation(line: 366, column: 31, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2638, file: !183, line: 366, column: 11)
!2642 = !DILocation(line: 366, column: 29, scope: !2641)
!2643 = !DILocation(line: 366, column: 16, scope: !2641)
!2644 = !DILocation(line: 366, column: 44, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2641, file: !183, line: 366, column: 11)
!2646 = !DILocation(line: 366, column: 43, scope: !2645)
!2647 = !DILocation(line: 366, column: 11, scope: !2641)
!2648 = !DILocation(line: 367, column: 13, scope: !2645)
!2649 = !DILocation(line: 367, column: 13, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !183, line: 367, column: 13)
!2651 = distinct !DILexicalBlock(scope: !2645, file: !183, line: 367, column: 13)
!2652 = !DILocation(line: 367, column: 13, scope: !2651)
!2653 = !DILocation(line: 366, column: 70, scope: !2645)
!2654 = !DILocation(line: 366, column: 11, scope: !2645)
!2655 = distinct !{!2655, !2647, !2656, !757}
!2656 = !DILocation(line: 367, column: 13, scope: !2641)
!2657 = !DILocation(line: 368, column: 27, scope: !2626)
!2658 = !DILocation(line: 369, column: 24, scope: !2626)
!2659 = !DILocation(line: 369, column: 22, scope: !2626)
!2660 = !DILocation(line: 370, column: 36, scope: !2626)
!2661 = !DILocation(line: 370, column: 28, scope: !2626)
!2662 = !DILocation(line: 370, column: 26, scope: !2626)
!2663 = !DILocation(line: 372, column: 7, scope: !2606)
!2664 = !DILocation(line: 375, column: 25, scope: !2606)
!2665 = !DILocation(line: 376, column: 7, scope: !2606)
!2666 = !DILocation(line: 378, column: 26, scope: !2606)
!2667 = !DILocation(line: 379, column: 7, scope: !2606)
!2668 = !DILocation(line: 381, column: 12, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2606, file: !183, line: 381, column: 11)
!2670 = !DILocation(line: 381, column: 11, scope: !2606)
!2671 = !DILocation(line: 382, column: 27, scope: !2669)
!2672 = !DILocation(line: 382, column: 9, scope: !2669)
!2673 = !DILocation(line: 383, column: 7, scope: !2606)
!2674 = !DILocation(line: 385, column: 21, scope: !2606)
!2675 = !DILocation(line: 386, column: 12, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2606, file: !183, line: 386, column: 11)
!2677 = !DILocation(line: 386, column: 11, scope: !2606)
!2678 = !DILocation(line: 387, column: 9, scope: !2676)
!2679 = !DILocation(line: 387, column: 9, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2681, file: !183, line: 387, column: 9)
!2681 = distinct !DILexicalBlock(scope: !2676, file: !183, line: 387, column: 9)
!2682 = !DILocation(line: 387, column: 9, scope: !2681)
!2683 = !DILocation(line: 388, column: 20, scope: !2606)
!2684 = !DILocation(line: 389, column: 24, scope: !2606)
!2685 = !DILocation(line: 390, column: 7, scope: !2606)
!2686 = !DILocation(line: 393, column: 26, scope: !2606)
!2687 = !DILocation(line: 394, column: 7, scope: !2606)
!2688 = !DILocation(line: 397, column: 7, scope: !2606)
!2689 = !DILocation(line: 400, column: 10, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2550, file: !183, line: 400, column: 3)
!2691 = !DILocation(line: 400, column: 8, scope: !2690)
!2692 = !DILocation(line: 400, column: 19, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2690, file: !183, line: 400, column: 3)
!2694 = !DILocation(line: 400, column: 27, scope: !2693)
!2695 = !DILocation(line: 400, column: 41, scope: !2693)
!2696 = !DILocation(line: 400, column: 45, scope: !2693)
!2697 = !DILocation(line: 400, column: 48, scope: !2693)
!2698 = !DILocation(line: 400, column: 58, scope: !2693)
!2699 = !DILocation(line: 400, column: 63, scope: !2693)
!2700 = !DILocation(line: 400, column: 60, scope: !2693)
!2701 = !DILocation(line: 400, column: 16, scope: !2693)
!2702 = !DILocation(line: 400, column: 3, scope: !2690)
!2703 = !DILocalVariable(name: "c", scope: !2704, file: !183, line: 402, type: !289)
!2704 = distinct !DILexicalBlock(scope: !2693, file: !183, line: 401, column: 5)
!2705 = !DILocation(line: 402, column: 21, scope: !2704)
!2706 = !DILocalVariable(name: "esc", scope: !2704, file: !183, line: 403, type: !289)
!2707 = !DILocation(line: 403, column: 21, scope: !2704)
!2708 = !DILocalVariable(name: "is_right_quote", scope: !2704, file: !183, line: 404, type: !96)
!2709 = !DILocation(line: 404, column: 12, scope: !2704)
!2710 = !DILocalVariable(name: "escaping", scope: !2704, file: !183, line: 405, type: !96)
!2711 = !DILocation(line: 405, column: 12, scope: !2704)
!2712 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2704, file: !183, line: 406, type: !96)
!2713 = !DILocation(line: 406, column: 12, scope: !2704)
!2714 = !DILocation(line: 408, column: 11, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2704, file: !183, line: 408, column: 11)
!2716 = !DILocation(line: 409, column: 11, scope: !2715)
!2717 = !DILocation(line: 409, column: 14, scope: !2715)
!2718 = !DILocation(line: 409, column: 28, scope: !2715)
!2719 = !DILocation(line: 410, column: 11, scope: !2715)
!2720 = !DILocation(line: 410, column: 14, scope: !2715)
!2721 = !DILocation(line: 411, column: 11, scope: !2715)
!2722 = !DILocation(line: 411, column: 15, scope: !2715)
!2723 = !DILocation(line: 411, column: 19, scope: !2715)
!2724 = !DILocation(line: 411, column: 17, scope: !2715)
!2725 = !DILocation(line: 412, column: 19, scope: !2715)
!2726 = !DILocation(line: 412, column: 27, scope: !2715)
!2727 = !DILocation(line: 412, column: 39, scope: !2715)
!2728 = !DILocation(line: 412, column: 46, scope: !2715)
!2729 = !DILocation(line: 412, column: 44, scope: !2715)
!2730 = !DILocation(line: 416, column: 40, scope: !2715)
!2731 = !DILocation(line: 416, column: 32, scope: !2715)
!2732 = !DILocation(line: 416, column: 30, scope: !2715)
!2733 = !DILocation(line: 416, column: 48, scope: !2715)
!2734 = !DILocation(line: 412, column: 15, scope: !2715)
!2735 = !DILocation(line: 417, column: 11, scope: !2715)
!2736 = !DILocation(line: 417, column: 22, scope: !2715)
!2737 = !DILocation(line: 417, column: 28, scope: !2715)
!2738 = !DILocation(line: 417, column: 26, scope: !2715)
!2739 = !DILocation(line: 417, column: 31, scope: !2715)
!2740 = !DILocation(line: 417, column: 45, scope: !2715)
!2741 = !DILocation(line: 417, column: 14, scope: !2715)
!2742 = !DILocation(line: 417, column: 63, scope: !2715)
!2743 = !DILocation(line: 408, column: 11, scope: !2704)
!2744 = !DILocation(line: 419, column: 15, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !183, line: 419, column: 15)
!2746 = distinct !DILexicalBlock(scope: !2715, file: !183, line: 418, column: 9)
!2747 = !DILocation(line: 419, column: 15, scope: !2746)
!2748 = !DILocation(line: 420, column: 13, scope: !2745)
!2749 = !DILocation(line: 421, column: 26, scope: !2746)
!2750 = !DILocation(line: 422, column: 9, scope: !2746)
!2751 = !DILocation(line: 424, column: 11, scope: !2704)
!2752 = !DILocation(line: 424, column: 15, scope: !2704)
!2753 = !DILocation(line: 424, column: 9, scope: !2704)
!2754 = !DILocation(line: 425, column: 15, scope: !2704)
!2755 = !DILocation(line: 425, column: 7, scope: !2704)
!2756 = !DILocation(line: 428, column: 15, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !183, line: 428, column: 15)
!2758 = distinct !DILexicalBlock(scope: !2704, file: !183, line: 426, column: 9)
!2759 = !DILocation(line: 428, column: 15, scope: !2758)
!2760 = !DILocation(line: 430, column: 15, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2757, file: !183, line: 429, column: 13)
!2762 = !DILocation(line: 430, column: 15, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !183, line: 430, column: 15)
!2764 = distinct !DILexicalBlock(scope: !2761, file: !183, line: 430, column: 15)
!2765 = !DILocation(line: 430, column: 15, scope: !2764)
!2766 = !DILocation(line: 430, column: 15, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2764, file: !183, line: 430, column: 15)
!2768 = !DILocation(line: 430, column: 15, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2767, file: !183, line: 430, column: 15)
!2770 = !DILocation(line: 430, column: 15, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !183, line: 430, column: 15)
!2772 = distinct !DILexicalBlock(scope: !2769, file: !183, line: 430, column: 15)
!2773 = !DILocation(line: 430, column: 15, scope: !2772)
!2774 = !DILocation(line: 430, column: 15, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !183, line: 430, column: 15)
!2776 = distinct !DILexicalBlock(scope: !2769, file: !183, line: 430, column: 15)
!2777 = !DILocation(line: 430, column: 15, scope: !2776)
!2778 = !DILocation(line: 430, column: 15, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !183, line: 430, column: 15)
!2780 = distinct !DILexicalBlock(scope: !2769, file: !183, line: 430, column: 15)
!2781 = !DILocation(line: 430, column: 15, scope: !2780)
!2782 = !DILocation(line: 430, column: 15, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !183, line: 430, column: 15)
!2784 = distinct !DILexicalBlock(scope: !2764, file: !183, line: 430, column: 15)
!2785 = !DILocation(line: 430, column: 15, scope: !2784)
!2786 = !DILocation(line: 437, column: 19, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2761, file: !183, line: 437, column: 19)
!2788 = !DILocation(line: 437, column: 33, scope: !2787)
!2789 = !DILocation(line: 438, column: 19, scope: !2787)
!2790 = !DILocation(line: 438, column: 22, scope: !2787)
!2791 = !DILocation(line: 438, column: 24, scope: !2787)
!2792 = !DILocation(line: 438, column: 30, scope: !2787)
!2793 = !DILocation(line: 438, column: 28, scope: !2787)
!2794 = !DILocation(line: 438, column: 38, scope: !2787)
!2795 = !DILocation(line: 438, column: 48, scope: !2787)
!2796 = !DILocation(line: 438, column: 52, scope: !2787)
!2797 = !DILocation(line: 438, column: 54, scope: !2787)
!2798 = !DILocation(line: 438, column: 45, scope: !2787)
!2799 = !DILocation(line: 438, column: 59, scope: !2787)
!2800 = !DILocation(line: 438, column: 62, scope: !2787)
!2801 = !DILocation(line: 438, column: 66, scope: !2787)
!2802 = !DILocation(line: 438, column: 68, scope: !2787)
!2803 = !DILocation(line: 438, column: 73, scope: !2787)
!2804 = !DILocation(line: 437, column: 19, scope: !2761)
!2805 = !DILocation(line: 440, column: 19, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2787, file: !183, line: 439, column: 17)
!2807 = !DILocation(line: 440, column: 19, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2809, file: !183, line: 440, column: 19)
!2809 = distinct !DILexicalBlock(scope: !2806, file: !183, line: 440, column: 19)
!2810 = !DILocation(line: 440, column: 19, scope: !2809)
!2811 = !DILocation(line: 441, column: 19, scope: !2806)
!2812 = !DILocation(line: 441, column: 19, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2814, file: !183, line: 441, column: 19)
!2814 = distinct !DILexicalBlock(scope: !2806, file: !183, line: 441, column: 19)
!2815 = !DILocation(line: 441, column: 19, scope: !2814)
!2816 = !DILocation(line: 442, column: 17, scope: !2806)
!2817 = !DILocation(line: 443, column: 17, scope: !2761)
!2818 = !DILocation(line: 448, column: 13, scope: !2761)
!2819 = !DILocation(line: 449, column: 20, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2757, file: !183, line: 449, column: 20)
!2821 = !DILocation(line: 449, column: 26, scope: !2820)
!2822 = !DILocation(line: 449, column: 20, scope: !2757)
!2823 = !DILocation(line: 450, column: 13, scope: !2820)
!2824 = !DILocation(line: 451, column: 11, scope: !2758)
!2825 = !DILocation(line: 454, column: 19, scope: !2758)
!2826 = !DILocation(line: 454, column: 11, scope: !2758)
!2827 = !DILocation(line: 457, column: 19, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !183, line: 457, column: 19)
!2829 = distinct !DILexicalBlock(scope: !2758, file: !183, line: 455, column: 13)
!2830 = !DILocation(line: 457, column: 19, scope: !2829)
!2831 = !DILocation(line: 458, column: 17, scope: !2828)
!2832 = !DILocation(line: 459, column: 15, scope: !2829)
!2833 = !DILocation(line: 462, column: 20, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2829, file: !183, line: 462, column: 19)
!2835 = !DILocation(line: 462, column: 26, scope: !2834)
!2836 = !DILocation(line: 463, column: 19, scope: !2834)
!2837 = !DILocation(line: 463, column: 22, scope: !2834)
!2838 = !DILocation(line: 463, column: 24, scope: !2834)
!2839 = !DILocation(line: 463, column: 30, scope: !2834)
!2840 = !DILocation(line: 463, column: 28, scope: !2834)
!2841 = !DILocation(line: 463, column: 38, scope: !2834)
!2842 = !DILocation(line: 463, column: 41, scope: !2834)
!2843 = !DILocation(line: 463, column: 45, scope: !2834)
!2844 = !DILocation(line: 463, column: 47, scope: !2834)
!2845 = !DILocation(line: 463, column: 52, scope: !2834)
!2846 = !DILocation(line: 462, column: 19, scope: !2829)
!2847 = !DILocation(line: 464, column: 25, scope: !2834)
!2848 = !DILocation(line: 464, column: 29, scope: !2834)
!2849 = !DILocation(line: 464, column: 31, scope: !2834)
!2850 = !DILocation(line: 464, column: 17, scope: !2834)
!2851 = !DILocation(line: 471, column: 25, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !183, line: 471, column: 25)
!2853 = distinct !DILexicalBlock(scope: !2834, file: !183, line: 465, column: 19)
!2854 = !DILocation(line: 471, column: 25, scope: !2853)
!2855 = !DILocation(line: 472, column: 23, scope: !2852)
!2856 = !DILocation(line: 473, column: 25, scope: !2853)
!2857 = !DILocation(line: 473, column: 29, scope: !2853)
!2858 = !DILocation(line: 473, column: 31, scope: !2853)
!2859 = !DILocation(line: 473, column: 23, scope: !2853)
!2860 = !DILocation(line: 474, column: 23, scope: !2853)
!2861 = !DILocation(line: 475, column: 21, scope: !2853)
!2862 = !DILocation(line: 475, column: 21, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2864, file: !183, line: 475, column: 21)
!2864 = distinct !DILexicalBlock(scope: !2853, file: !183, line: 475, column: 21)
!2865 = !DILocation(line: 475, column: 21, scope: !2864)
!2866 = !DILocation(line: 476, column: 21, scope: !2853)
!2867 = !DILocation(line: 476, column: 21, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2869, file: !183, line: 476, column: 21)
!2869 = distinct !DILexicalBlock(scope: !2853, file: !183, line: 476, column: 21)
!2870 = !DILocation(line: 476, column: 21, scope: !2869)
!2871 = !DILocation(line: 477, column: 21, scope: !2853)
!2872 = !DILocation(line: 477, column: 21, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2874, file: !183, line: 477, column: 21)
!2874 = distinct !DILexicalBlock(scope: !2853, file: !183, line: 477, column: 21)
!2875 = !DILocation(line: 477, column: 21, scope: !2874)
!2876 = !DILocation(line: 478, column: 21, scope: !2853)
!2877 = !DILocation(line: 478, column: 21, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2879, file: !183, line: 478, column: 21)
!2879 = distinct !DILexicalBlock(scope: !2853, file: !183, line: 478, column: 21)
!2880 = !DILocation(line: 478, column: 21, scope: !2879)
!2881 = !DILocation(line: 479, column: 21, scope: !2853)
!2882 = !DILocation(line: 482, column: 21, scope: !2853)
!2883 = !DILocation(line: 483, column: 19, scope: !2853)
!2884 = !DILocation(line: 484, column: 15, scope: !2829)
!2885 = !DILocation(line: 487, column: 15, scope: !2829)
!2886 = !DILocation(line: 489, column: 11, scope: !2758)
!2887 = !DILocation(line: 491, column: 24, scope: !2758)
!2888 = !DILocation(line: 491, column: 31, scope: !2758)
!2889 = !DILocation(line: 492, column: 24, scope: !2758)
!2890 = !DILocation(line: 492, column: 31, scope: !2758)
!2891 = !DILocation(line: 493, column: 24, scope: !2758)
!2892 = !DILocation(line: 493, column: 31, scope: !2758)
!2893 = !DILocation(line: 494, column: 24, scope: !2758)
!2894 = !DILocation(line: 494, column: 31, scope: !2758)
!2895 = !DILocation(line: 495, column: 24, scope: !2758)
!2896 = !DILocation(line: 495, column: 31, scope: !2758)
!2897 = !DILocation(line: 496, column: 24, scope: !2758)
!2898 = !DILocation(line: 496, column: 31, scope: !2758)
!2899 = !DILocation(line: 497, column: 24, scope: !2758)
!2900 = !DILocation(line: 497, column: 31, scope: !2758)
!2901 = !DILocation(line: 498, column: 26, scope: !2758)
!2902 = !DILocation(line: 498, column: 24, scope: !2758)
!2903 = !DILocation(line: 500, column: 15, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2758, file: !183, line: 500, column: 15)
!2905 = !DILocation(line: 500, column: 29, scope: !2904)
!2906 = !DILocation(line: 500, column: 15, scope: !2758)
!2907 = !DILocation(line: 502, column: 19, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2909, file: !183, line: 502, column: 19)
!2909 = distinct !DILexicalBlock(scope: !2904, file: !183, line: 501, column: 13)
!2910 = !DILocation(line: 502, column: 19, scope: !2909)
!2911 = !DILocation(line: 503, column: 17, scope: !2908)
!2912 = !DILocation(line: 504, column: 15, scope: !2909)
!2913 = !DILocation(line: 509, column: 15, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2758, file: !183, line: 509, column: 15)
!2915 = !DILocation(line: 509, column: 33, scope: !2914)
!2916 = !DILocation(line: 509, column: 36, scope: !2914)
!2917 = !DILocation(line: 509, column: 55, scope: !2914)
!2918 = !DILocation(line: 509, column: 58, scope: !2914)
!2919 = !DILocation(line: 509, column: 15, scope: !2758)
!2920 = !DILocation(line: 510, column: 13, scope: !2914)
!2921 = !DILabel(scope: !2758, name: "c_and_shell_escape", file: !183, line: 512)
!2922 = !DILocation(line: 512, column: 9, scope: !2758)
!2923 = !DILocation(line: 513, column: 15, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2758, file: !183, line: 513, column: 15)
!2925 = !DILocation(line: 513, column: 29, scope: !2924)
!2926 = !DILocation(line: 514, column: 15, scope: !2924)
!2927 = !DILocation(line: 514, column: 18, scope: !2924)
!2928 = !DILocation(line: 513, column: 15, scope: !2758)
!2929 = !DILocation(line: 515, column: 13, scope: !2924)
!2930 = !DILabel(scope: !2758, name: "c_escape", file: !183, line: 517)
!2931 = !DILocation(line: 517, column: 9, scope: !2758)
!2932 = !DILocation(line: 518, column: 15, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2758, file: !183, line: 518, column: 15)
!2934 = !DILocation(line: 518, column: 15, scope: !2758)
!2935 = !DILocation(line: 520, column: 19, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2933, file: !183, line: 519, column: 13)
!2937 = !DILocation(line: 520, column: 17, scope: !2936)
!2938 = !DILocation(line: 521, column: 15, scope: !2936)
!2939 = !DILocation(line: 523, column: 11, scope: !2758)
!2940 = !DILocation(line: 526, column: 18, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2758, file: !183, line: 526, column: 15)
!2942 = !DILocation(line: 526, column: 26, scope: !2941)
!2943 = !DILocation(line: 526, column: 15, scope: !2758)
!2944 = !DILocation(line: 526, column: 40, scope: !2941)
!2945 = !DILocation(line: 526, column: 47, scope: !2941)
!2946 = !DILocation(line: 526, column: 57, scope: !2941)
!2947 = !DILocation(line: 526, column: 65, scope: !2941)
!2948 = !DILocation(line: 527, column: 13, scope: !2941)
!2949 = !DILocation(line: 528, column: 11, scope: !2758)
!2950 = !DILocation(line: 530, column: 15, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2758, file: !183, line: 530, column: 15)
!2952 = !DILocation(line: 530, column: 17, scope: !2951)
!2953 = !DILocation(line: 530, column: 15, scope: !2758)
!2954 = !DILocation(line: 531, column: 13, scope: !2951)
!2955 = !DILocation(line: 532, column: 11, scope: !2758)
!2956 = !DILocation(line: 534, column: 36, scope: !2758)
!2957 = !DILocation(line: 535, column: 11, scope: !2758)
!2958 = !DILocation(line: 548, column: 15, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2758, file: !183, line: 548, column: 15)
!2960 = !DILocation(line: 548, column: 29, scope: !2959)
!2961 = !DILocation(line: 549, column: 15, scope: !2959)
!2962 = !DILocation(line: 549, column: 18, scope: !2959)
!2963 = !DILocation(line: 548, column: 15, scope: !2758)
!2964 = !DILocation(line: 550, column: 13, scope: !2959)
!2965 = !DILocation(line: 551, column: 11, scope: !2758)
!2966 = !DILocation(line: 554, column: 36, scope: !2758)
!2967 = !DILocation(line: 555, column: 36, scope: !2758)
!2968 = !DILocation(line: 556, column: 15, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2758, file: !183, line: 556, column: 15)
!2970 = !DILocation(line: 556, column: 29, scope: !2969)
!2971 = !DILocation(line: 556, column: 15, scope: !2758)
!2972 = !DILocation(line: 558, column: 19, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !183, line: 558, column: 19)
!2974 = distinct !DILexicalBlock(scope: !2969, file: !183, line: 557, column: 13)
!2975 = !DILocation(line: 558, column: 19, scope: !2974)
!2976 = !DILocation(line: 559, column: 17, scope: !2973)
!2977 = !DILocation(line: 561, column: 19, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2974, file: !183, line: 561, column: 19)
!2979 = !DILocation(line: 561, column: 30, scope: !2978)
!2980 = !DILocation(line: 561, column: 35, scope: !2978)
!2981 = !DILocation(line: 561, column: 19, scope: !2974)
!2982 = !DILocation(line: 566, column: 37, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2978, file: !183, line: 562, column: 17)
!2984 = !DILocation(line: 566, column: 35, scope: !2983)
!2985 = !DILocation(line: 567, column: 30, scope: !2983)
!2986 = !DILocation(line: 568, column: 17, scope: !2983)
!2987 = !DILocation(line: 570, column: 15, scope: !2974)
!2988 = !DILocation(line: 570, column: 15, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !183, line: 570, column: 15)
!2990 = distinct !DILexicalBlock(scope: !2974, file: !183, line: 570, column: 15)
!2991 = !DILocation(line: 570, column: 15, scope: !2990)
!2992 = !DILocation(line: 571, column: 15, scope: !2974)
!2993 = !DILocation(line: 571, column: 15, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2995, file: !183, line: 571, column: 15)
!2995 = distinct !DILexicalBlock(scope: !2974, file: !183, line: 571, column: 15)
!2996 = !DILocation(line: 571, column: 15, scope: !2995)
!2997 = !DILocation(line: 572, column: 15, scope: !2974)
!2998 = !DILocation(line: 572, column: 15, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !3000, file: !183, line: 572, column: 15)
!3000 = distinct !DILexicalBlock(scope: !2974, file: !183, line: 572, column: 15)
!3001 = !DILocation(line: 572, column: 15, scope: !3000)
!3002 = !DILocation(line: 573, column: 40, scope: !2974)
!3003 = !DILocation(line: 574, column: 13, scope: !2974)
!3004 = !DILocation(line: 575, column: 11, scope: !2758)
!3005 = !DILocation(line: 599, column: 36, scope: !2758)
!3006 = !DILocation(line: 600, column: 11, scope: !2758)
!3007 = !DILocalVariable(name: "m", scope: !3008, file: !183, line: 610, type: !79)
!3008 = distinct !DILexicalBlock(scope: !2758, file: !183, line: 608, column: 11)
!3009 = !DILocation(line: 610, column: 20, scope: !3008)
!3010 = !DILocalVariable(name: "printable", scope: !3008, file: !183, line: 612, type: !96)
!3011 = !DILocation(line: 612, column: 18, scope: !3008)
!3012 = !DILocation(line: 614, column: 17, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3008, file: !183, line: 614, column: 17)
!3014 = !DILocation(line: 614, column: 17, scope: !3008)
!3015 = !DILocation(line: 616, column: 19, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3013, file: !183, line: 615, column: 15)
!3017 = !DILocation(line: 617, column: 29, scope: !3016)
!3018 = !DILocation(line: 617, column: 41, scope: !3016)
!3019 = !DILocation(line: 617, column: 27, scope: !3016)
!3020 = !DILocation(line: 618, column: 15, scope: !3016)
!3021 = !DILocalVariable(name: "mbstate", scope: !3022, file: !183, line: 621, type: !3023)
!3022 = distinct !DILexicalBlock(scope: !3013, file: !183, line: 620, column: 15)
!3023 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !3024, line: 6, baseType: !3025)
!3024 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "")
!3025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !3026, line: 21, baseType: !3027)
!3026 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "")
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3026, line: 13, size: 64, elements: !3028)
!3028 = !{!3029, !3030}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3027, file: !3026, line: 15, baseType: !85, size: 32)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3027, file: !3026, line: 20, baseType: !3031, size: 32, offset: 32)
!3031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3027, file: !3026, line: 16, size: 32, elements: !3032)
!3032 = !{!3033, !3034}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3031, file: !3026, line: 18, baseType: !6, size: 32)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3031, file: !3026, line: 19, baseType: !3035, size: 32)
!3035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 32, elements: !129)
!3036 = !DILocation(line: 621, column: 27, scope: !3022)
!3037 = !DILocation(line: 622, column: 17, scope: !3022)
!3038 = !DILocation(line: 624, column: 19, scope: !3022)
!3039 = !DILocation(line: 625, column: 27, scope: !3022)
!3040 = !DILocation(line: 626, column: 21, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3022, file: !183, line: 626, column: 21)
!3042 = !DILocation(line: 626, column: 29, scope: !3041)
!3043 = !DILocation(line: 626, column: 21, scope: !3022)
!3044 = !DILocation(line: 627, column: 37, scope: !3041)
!3045 = !DILocation(line: 627, column: 29, scope: !3041)
!3046 = !DILocation(line: 627, column: 27, scope: !3041)
!3047 = !DILocation(line: 627, column: 19, scope: !3041)
!3048 = !DILocation(line: 629, column: 17, scope: !3022)
!3049 = !DILocalVariable(name: "w", scope: !3050, file: !183, line: 631, type: !3051)
!3050 = distinct !DILexicalBlock(scope: !3022, file: !183, line: 630, column: 19)
!3051 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !80, line: 74, baseType: !85)
!3052 = !DILocation(line: 631, column: 29, scope: !3050)
!3053 = !DILocalVariable(name: "bytes", scope: !3050, file: !183, line: 632, type: !79)
!3054 = !DILocation(line: 632, column: 28, scope: !3050)
!3055 = !DILocation(line: 632, column: 50, scope: !3050)
!3056 = !DILocation(line: 632, column: 54, scope: !3050)
!3057 = !DILocation(line: 632, column: 58, scope: !3050)
!3058 = !DILocation(line: 632, column: 56, scope: !3050)
!3059 = !DILocation(line: 633, column: 45, scope: !3050)
!3060 = !DILocation(line: 633, column: 56, scope: !3050)
!3061 = !DILocation(line: 633, column: 60, scope: !3050)
!3062 = !DILocation(line: 633, column: 58, scope: !3050)
!3063 = !DILocation(line: 633, column: 53, scope: !3050)
!3064 = !DILocation(line: 632, column: 36, scope: !3050)
!3065 = !DILocation(line: 634, column: 25, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3050, file: !183, line: 634, column: 25)
!3067 = !DILocation(line: 634, column: 31, scope: !3066)
!3068 = !DILocation(line: 634, column: 25, scope: !3050)
!3069 = !DILocation(line: 635, column: 23, scope: !3066)
!3070 = !DILocation(line: 636, column: 30, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3066, file: !183, line: 636, column: 30)
!3072 = !DILocation(line: 636, column: 36, scope: !3071)
!3073 = !DILocation(line: 636, column: 30, scope: !3066)
!3074 = !DILocation(line: 638, column: 35, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3071, file: !183, line: 637, column: 23)
!3076 = !DILocation(line: 639, column: 25, scope: !3075)
!3077 = !DILocation(line: 641, column: 30, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3071, file: !183, line: 641, column: 30)
!3079 = !DILocation(line: 641, column: 36, scope: !3078)
!3080 = !DILocation(line: 641, column: 30, scope: !3071)
!3081 = !DILocation(line: 643, column: 35, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3078, file: !183, line: 642, column: 23)
!3083 = !DILocation(line: 644, column: 25, scope: !3082)
!3084 = !DILocation(line: 644, column: 32, scope: !3082)
!3085 = !DILocation(line: 644, column: 36, scope: !3082)
!3086 = !DILocation(line: 644, column: 34, scope: !3082)
!3087 = !DILocation(line: 644, column: 40, scope: !3082)
!3088 = !DILocation(line: 644, column: 38, scope: !3082)
!3089 = !DILocation(line: 644, column: 48, scope: !3082)
!3090 = !DILocation(line: 644, column: 51, scope: !3082)
!3091 = !DILocation(line: 644, column: 55, scope: !3082)
!3092 = !DILocation(line: 644, column: 59, scope: !3082)
!3093 = !DILocation(line: 644, column: 57, scope: !3082)
!3094 = !DILocation(line: 0, scope: !3082)
!3095 = !DILocation(line: 645, column: 28, scope: !3082)
!3096 = distinct !{!3096, !3083, !3095, !757}
!3097 = !DILocation(line: 646, column: 25, scope: !3082)
!3098 = !DILocation(line: 654, column: 44, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !183, line: 654, column: 29)
!3100 = distinct !DILexicalBlock(scope: !3078, file: !183, line: 649, column: 23)
!3101 = !DILocation(line: 655, column: 29, scope: !3099)
!3102 = !DILocation(line: 655, column: 32, scope: !3099)
!3103 = !DILocation(line: 655, column: 46, scope: !3099)
!3104 = !DILocation(line: 654, column: 29, scope: !3100)
!3105 = !DILocalVariable(name: "j", scope: !3106, file: !183, line: 657, type: !79)
!3106 = distinct !DILexicalBlock(scope: !3099, file: !183, line: 656, column: 27)
!3107 = !DILocation(line: 657, column: 36, scope: !3106)
!3108 = !DILocation(line: 658, column: 36, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3106, file: !183, line: 658, column: 29)
!3110 = !DILocation(line: 658, column: 34, scope: !3109)
!3111 = !DILocation(line: 658, column: 41, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3109, file: !183, line: 658, column: 29)
!3113 = !DILocation(line: 658, column: 45, scope: !3112)
!3114 = !DILocation(line: 658, column: 43, scope: !3112)
!3115 = !DILocation(line: 658, column: 29, scope: !3109)
!3116 = !DILocation(line: 659, column: 39, scope: !3112)
!3117 = !DILocation(line: 659, column: 43, scope: !3112)
!3118 = !DILocation(line: 659, column: 47, scope: !3112)
!3119 = !DILocation(line: 659, column: 45, scope: !3112)
!3120 = !DILocation(line: 659, column: 51, scope: !3112)
!3121 = !DILocation(line: 659, column: 49, scope: !3112)
!3122 = !DILocation(line: 659, column: 31, scope: !3112)
!3123 = !DILocation(line: 663, column: 35, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3112, file: !183, line: 660, column: 33)
!3125 = !DILocation(line: 666, column: 35, scope: !3124)
!3126 = !DILocation(line: 667, column: 33, scope: !3124)
!3127 = !DILocation(line: 658, column: 53, scope: !3112)
!3128 = !DILocation(line: 658, column: 29, scope: !3112)
!3129 = distinct !{!3129, !3115, !3130, !757}
!3130 = !DILocation(line: 667, column: 33, scope: !3109)
!3131 = !DILocation(line: 668, column: 27, scope: !3106)
!3132 = !DILocation(line: 670, column: 41, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3100, file: !183, line: 670, column: 29)
!3134 = !DILocation(line: 670, column: 31, scope: !3133)
!3135 = !DILocation(line: 670, column: 29, scope: !3100)
!3136 = !DILocation(line: 671, column: 37, scope: !3133)
!3137 = !DILocation(line: 671, column: 27, scope: !3133)
!3138 = !DILocation(line: 672, column: 30, scope: !3100)
!3139 = !DILocation(line: 672, column: 27, scope: !3100)
!3140 = !DILocation(line: 674, column: 19, scope: !3050)
!3141 = !DILocation(line: 675, column: 26, scope: !3022)
!3142 = !DILocation(line: 675, column: 24, scope: !3022)
!3143 = distinct !{!3143, !3048, !3144, !757}
!3144 = !DILocation(line: 675, column: 44, scope: !3022)
!3145 = !DILocation(line: 678, column: 40, scope: !3008)
!3146 = !DILocation(line: 678, column: 38, scope: !3008)
!3147 = !DILocation(line: 680, column: 21, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3008, file: !183, line: 680, column: 17)
!3149 = !DILocation(line: 680, column: 19, scope: !3148)
!3150 = !DILocation(line: 680, column: 23, scope: !3148)
!3151 = !DILocation(line: 680, column: 27, scope: !3148)
!3152 = !DILocation(line: 680, column: 45, scope: !3148)
!3153 = !DILocation(line: 680, column: 50, scope: !3148)
!3154 = !DILocation(line: 680, column: 17, scope: !3008)
!3155 = !DILocalVariable(name: "ilim", scope: !3156, file: !183, line: 684, type: !79)
!3156 = distinct !DILexicalBlock(scope: !3148, file: !183, line: 681, column: 15)
!3157 = !DILocation(line: 684, column: 24, scope: !3156)
!3158 = !DILocation(line: 684, column: 31, scope: !3156)
!3159 = !DILocation(line: 684, column: 35, scope: !3156)
!3160 = !DILocation(line: 684, column: 33, scope: !3156)
!3161 = !DILocation(line: 686, column: 17, scope: !3156)
!3162 = !DILocation(line: 688, column: 25, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3164, file: !183, line: 688, column: 25)
!3164 = distinct !DILexicalBlock(scope: !3165, file: !183, line: 687, column: 19)
!3165 = distinct !DILexicalBlock(scope: !3166, file: !183, line: 686, column: 17)
!3166 = distinct !DILexicalBlock(scope: !3156, file: !183, line: 686, column: 17)
!3167 = !DILocation(line: 688, column: 43, scope: !3163)
!3168 = !DILocation(line: 688, column: 48, scope: !3163)
!3169 = !DILocation(line: 688, column: 25, scope: !3164)
!3170 = !DILocation(line: 690, column: 25, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3163, file: !183, line: 689, column: 23)
!3172 = !DILocation(line: 690, column: 25, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3174, file: !183, line: 690, column: 25)
!3174 = distinct !DILexicalBlock(scope: !3171, file: !183, line: 690, column: 25)
!3175 = !DILocation(line: 690, column: 25, scope: !3174)
!3176 = !DILocation(line: 690, column: 25, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3174, file: !183, line: 690, column: 25)
!3178 = !DILocation(line: 690, column: 25, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3177, file: !183, line: 690, column: 25)
!3180 = !DILocation(line: 690, column: 25, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !183, line: 690, column: 25)
!3182 = distinct !DILexicalBlock(scope: !3179, file: !183, line: 690, column: 25)
!3183 = !DILocation(line: 690, column: 25, scope: !3182)
!3184 = !DILocation(line: 690, column: 25, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3186, file: !183, line: 690, column: 25)
!3186 = distinct !DILexicalBlock(scope: !3179, file: !183, line: 690, column: 25)
!3187 = !DILocation(line: 690, column: 25, scope: !3186)
!3188 = !DILocation(line: 690, column: 25, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !183, line: 690, column: 25)
!3190 = distinct !DILexicalBlock(scope: !3179, file: !183, line: 690, column: 25)
!3191 = !DILocation(line: 690, column: 25, scope: !3190)
!3192 = !DILocation(line: 690, column: 25, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !183, line: 690, column: 25)
!3194 = distinct !DILexicalBlock(scope: !3174, file: !183, line: 690, column: 25)
!3195 = !DILocation(line: 690, column: 25, scope: !3194)
!3196 = !DILocation(line: 691, column: 25, scope: !3171)
!3197 = !DILocation(line: 691, column: 25, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3199, file: !183, line: 691, column: 25)
!3199 = distinct !DILexicalBlock(scope: !3171, file: !183, line: 691, column: 25)
!3200 = !DILocation(line: 691, column: 25, scope: !3199)
!3201 = !DILocation(line: 692, column: 25, scope: !3171)
!3202 = !DILocation(line: 692, column: 25, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3204, file: !183, line: 692, column: 25)
!3204 = distinct !DILexicalBlock(scope: !3171, file: !183, line: 692, column: 25)
!3205 = !DILocation(line: 692, column: 25, scope: !3204)
!3206 = !DILocation(line: 693, column: 36, scope: !3171)
!3207 = !DILocation(line: 693, column: 38, scope: !3171)
!3208 = !DILocation(line: 693, column: 33, scope: !3171)
!3209 = !DILocation(line: 693, column: 29, scope: !3171)
!3210 = !DILocation(line: 693, column: 27, scope: !3171)
!3211 = !DILocation(line: 694, column: 23, scope: !3171)
!3212 = !DILocation(line: 695, column: 30, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3163, file: !183, line: 695, column: 30)
!3214 = !DILocation(line: 695, column: 30, scope: !3163)
!3215 = !DILocation(line: 697, column: 25, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3213, file: !183, line: 696, column: 23)
!3217 = !DILocation(line: 697, column: 25, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3219, file: !183, line: 697, column: 25)
!3219 = distinct !DILexicalBlock(scope: !3216, file: !183, line: 697, column: 25)
!3220 = !DILocation(line: 697, column: 25, scope: !3219)
!3221 = !DILocation(line: 698, column: 40, scope: !3216)
!3222 = !DILocation(line: 699, column: 23, scope: !3216)
!3223 = !DILocation(line: 700, column: 25, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3164, file: !183, line: 700, column: 25)
!3225 = !DILocation(line: 700, column: 33, scope: !3224)
!3226 = !DILocation(line: 700, column: 35, scope: !3224)
!3227 = !DILocation(line: 700, column: 30, scope: !3224)
!3228 = !DILocation(line: 700, column: 25, scope: !3164)
!3229 = !DILocation(line: 701, column: 23, scope: !3224)
!3230 = !DILocation(line: 702, column: 21, scope: !3164)
!3231 = !DILocation(line: 702, column: 21, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !183, line: 702, column: 21)
!3233 = distinct !DILexicalBlock(scope: !3164, file: !183, line: 702, column: 21)
!3234 = !DILocation(line: 702, column: 21, scope: !3233)
!3235 = !DILocation(line: 702, column: 21, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3232, file: !183, line: 702, column: 21)
!3237 = !DILocation(line: 702, column: 21, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3239, file: !183, line: 702, column: 21)
!3239 = distinct !DILexicalBlock(scope: !3236, file: !183, line: 702, column: 21)
!3240 = !DILocation(line: 702, column: 21, scope: !3239)
!3241 = !DILocation(line: 702, column: 21, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3243, file: !183, line: 702, column: 21)
!3243 = distinct !DILexicalBlock(scope: !3236, file: !183, line: 702, column: 21)
!3244 = !DILocation(line: 702, column: 21, scope: !3243)
!3245 = !DILocation(line: 703, column: 21, scope: !3164)
!3246 = !DILocation(line: 703, column: 21, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3248, file: !183, line: 703, column: 21)
!3248 = distinct !DILexicalBlock(scope: !3164, file: !183, line: 703, column: 21)
!3249 = !DILocation(line: 703, column: 21, scope: !3248)
!3250 = !DILocation(line: 704, column: 25, scope: !3164)
!3251 = !DILocation(line: 704, column: 29, scope: !3164)
!3252 = !DILocation(line: 704, column: 23, scope: !3164)
!3253 = !DILocation(line: 686, column: 17, scope: !3165)
!3254 = distinct !{!3254, !3255, !3256}
!3255 = !DILocation(line: 686, column: 17, scope: !3166)
!3256 = !DILocation(line: 705, column: 19, scope: !3166)
!3257 = !DILocation(line: 707, column: 17, scope: !3156)
!3258 = !DILocation(line: 710, column: 9, scope: !2758)
!3259 = !DILocation(line: 712, column: 16, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !2704, file: !183, line: 712, column: 11)
!3261 = !DILocation(line: 712, column: 34, scope: !3260)
!3262 = !DILocation(line: 712, column: 37, scope: !3260)
!3263 = !DILocation(line: 712, column: 51, scope: !3260)
!3264 = !DILocation(line: 713, column: 15, scope: !3260)
!3265 = !DILocation(line: 713, column: 18, scope: !3260)
!3266 = !DILocation(line: 714, column: 14, scope: !3260)
!3267 = !DILocation(line: 714, column: 17, scope: !3260)
!3268 = !DILocation(line: 715, column: 14, scope: !3260)
!3269 = !DILocation(line: 715, column: 17, scope: !3260)
!3270 = !DILocation(line: 715, column: 33, scope: !3260)
!3271 = !DILocation(line: 715, column: 35, scope: !3260)
!3272 = !DILocation(line: 715, column: 51, scope: !3260)
!3273 = !DILocation(line: 715, column: 53, scope: !3260)
!3274 = !DILocation(line: 715, column: 47, scope: !3260)
!3275 = !DILocation(line: 715, column: 65, scope: !3260)
!3276 = !DILocation(line: 716, column: 11, scope: !3260)
!3277 = !DILocation(line: 716, column: 15, scope: !3260)
!3278 = !DILocation(line: 712, column: 11, scope: !2704)
!3279 = !DILocation(line: 717, column: 9, scope: !3260)
!3280 = !DILabel(scope: !2704, name: "store_escape", file: !183, line: 719)
!3281 = !DILocation(line: 719, column: 5, scope: !2704)
!3282 = !DILocation(line: 720, column: 7, scope: !2704)
!3283 = !DILocation(line: 720, column: 7, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3285, file: !183, line: 720, column: 7)
!3285 = distinct !DILexicalBlock(scope: !2704, file: !183, line: 720, column: 7)
!3286 = !DILocation(line: 720, column: 7, scope: !3285)
!3287 = !DILocation(line: 720, column: 7, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3285, file: !183, line: 720, column: 7)
!3289 = !DILocation(line: 720, column: 7, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3288, file: !183, line: 720, column: 7)
!3291 = !DILocation(line: 720, column: 7, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3293, file: !183, line: 720, column: 7)
!3293 = distinct !DILexicalBlock(scope: !3290, file: !183, line: 720, column: 7)
!3294 = !DILocation(line: 720, column: 7, scope: !3293)
!3295 = !DILocation(line: 720, column: 7, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3297, file: !183, line: 720, column: 7)
!3297 = distinct !DILexicalBlock(scope: !3290, file: !183, line: 720, column: 7)
!3298 = !DILocation(line: 720, column: 7, scope: !3297)
!3299 = !DILocation(line: 720, column: 7, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3301, file: !183, line: 720, column: 7)
!3301 = distinct !DILexicalBlock(scope: !3290, file: !183, line: 720, column: 7)
!3302 = !DILocation(line: 720, column: 7, scope: !3301)
!3303 = !DILocation(line: 720, column: 7, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3305, file: !183, line: 720, column: 7)
!3305 = distinct !DILexicalBlock(scope: !3285, file: !183, line: 720, column: 7)
!3306 = !DILocation(line: 720, column: 7, scope: !3305)
!3307 = !DILabel(scope: !2704, name: "store_c", file: !183, line: 722)
!3308 = !DILocation(line: 722, column: 5, scope: !2704)
!3309 = !DILocation(line: 723, column: 7, scope: !2704)
!3310 = !DILocation(line: 723, column: 7, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3312, file: !183, line: 723, column: 7)
!3312 = distinct !DILexicalBlock(scope: !2704, file: !183, line: 723, column: 7)
!3313 = !DILocation(line: 723, column: 7, scope: !3312)
!3314 = !DILocation(line: 723, column: 7, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3311, file: !183, line: 723, column: 7)
!3316 = !DILocation(line: 723, column: 7, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3318, file: !183, line: 723, column: 7)
!3318 = distinct !DILexicalBlock(scope: !3315, file: !183, line: 723, column: 7)
!3319 = !DILocation(line: 723, column: 7, scope: !3318)
!3320 = !DILocation(line: 723, column: 7, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3322, file: !183, line: 723, column: 7)
!3322 = distinct !DILexicalBlock(scope: !3315, file: !183, line: 723, column: 7)
!3323 = !DILocation(line: 723, column: 7, scope: !3322)
!3324 = !DILocation(line: 724, column: 7, scope: !2704)
!3325 = !DILocation(line: 724, column: 7, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3327, file: !183, line: 724, column: 7)
!3327 = distinct !DILexicalBlock(scope: !2704, file: !183, line: 724, column: 7)
!3328 = !DILocation(line: 724, column: 7, scope: !3327)
!3329 = !DILocation(line: 726, column: 13, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !2704, file: !183, line: 726, column: 11)
!3331 = !DILocation(line: 726, column: 11, scope: !2704)
!3332 = !DILocation(line: 727, column: 38, scope: !3330)
!3333 = !DILocation(line: 727, column: 9, scope: !3330)
!3334 = !DILocation(line: 728, column: 5, scope: !2704)
!3335 = !DILocation(line: 400, column: 75, scope: !2693)
!3336 = !DILocation(line: 400, column: 3, scope: !2693)
!3337 = distinct !{!3337, !2702, !3338, !757}
!3338 = !DILocation(line: 728, column: 5, scope: !2690)
!3339 = !DILocation(line: 730, column: 7, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !2550, file: !183, line: 730, column: 7)
!3341 = !DILocation(line: 730, column: 11, scope: !3340)
!3342 = !DILocation(line: 730, column: 16, scope: !3340)
!3343 = !DILocation(line: 730, column: 19, scope: !3340)
!3344 = !DILocation(line: 730, column: 33, scope: !3340)
!3345 = !DILocation(line: 731, column: 7, scope: !3340)
!3346 = !DILocation(line: 731, column: 10, scope: !3340)
!3347 = !DILocation(line: 730, column: 7, scope: !2550)
!3348 = !DILocation(line: 732, column: 5, scope: !3340)
!3349 = !DILocation(line: 738, column: 7, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !2550, file: !183, line: 738, column: 7)
!3351 = !DILocation(line: 738, column: 21, scope: !3350)
!3352 = !DILocation(line: 738, column: 51, scope: !3350)
!3353 = !DILocation(line: 738, column: 56, scope: !3350)
!3354 = !DILocation(line: 739, column: 7, scope: !3350)
!3355 = !DILocation(line: 739, column: 10, scope: !3350)
!3356 = !DILocation(line: 738, column: 7, scope: !2550)
!3357 = !DILocation(line: 741, column: 11, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3359, file: !183, line: 741, column: 11)
!3359 = distinct !DILexicalBlock(scope: !3350, file: !183, line: 740, column: 5)
!3360 = !DILocation(line: 741, column: 11, scope: !3359)
!3361 = !DILocation(line: 742, column: 42, scope: !3358)
!3362 = !DILocation(line: 742, column: 50, scope: !3358)
!3363 = !DILocation(line: 742, column: 67, scope: !3358)
!3364 = !DILocation(line: 742, column: 72, scope: !3358)
!3365 = !DILocation(line: 744, column: 42, scope: !3358)
!3366 = !DILocation(line: 744, column: 49, scope: !3358)
!3367 = !DILocation(line: 745, column: 42, scope: !3358)
!3368 = !DILocation(line: 745, column: 54, scope: !3358)
!3369 = !DILocation(line: 742, column: 16, scope: !3358)
!3370 = !DILocation(line: 742, column: 9, scope: !3358)
!3371 = !DILocation(line: 746, column: 18, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3358, file: !183, line: 746, column: 16)
!3373 = !DILocation(line: 746, column: 29, scope: !3372)
!3374 = !DILocation(line: 746, column: 32, scope: !3372)
!3375 = !DILocation(line: 746, column: 16, scope: !3358)
!3376 = !DILocation(line: 749, column: 24, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3372, file: !183, line: 747, column: 9)
!3378 = !DILocation(line: 749, column: 22, scope: !3377)
!3379 = !DILocation(line: 750, column: 15, scope: !3377)
!3380 = !DILocation(line: 751, column: 11, scope: !3377)
!3381 = !DILocation(line: 753, column: 5, scope: !3359)
!3382 = !DILocation(line: 755, column: 7, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !2550, file: !183, line: 755, column: 7)
!3384 = !DILocation(line: 755, column: 20, scope: !3383)
!3385 = !DILocation(line: 755, column: 24, scope: !3383)
!3386 = !DILocation(line: 755, column: 7, scope: !2550)
!3387 = !DILocation(line: 756, column: 5, scope: !3383)
!3388 = !DILocation(line: 756, column: 13, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3390, file: !183, line: 756, column: 5)
!3390 = distinct !DILexicalBlock(scope: !3383, file: !183, line: 756, column: 5)
!3391 = !DILocation(line: 756, column: 12, scope: !3389)
!3392 = !DILocation(line: 756, column: 5, scope: !3390)
!3393 = !DILocation(line: 757, column: 7, scope: !3389)
!3394 = !DILocation(line: 757, column: 7, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3396, file: !183, line: 757, column: 7)
!3396 = distinct !DILexicalBlock(scope: !3389, file: !183, line: 757, column: 7)
!3397 = !DILocation(line: 757, column: 7, scope: !3396)
!3398 = !DILocation(line: 756, column: 39, scope: !3389)
!3399 = !DILocation(line: 756, column: 5, scope: !3389)
!3400 = distinct !{!3400, !3392, !3401, !757}
!3401 = !DILocation(line: 757, column: 7, scope: !3390)
!3402 = !DILocation(line: 759, column: 7, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !2550, file: !183, line: 759, column: 7)
!3404 = !DILocation(line: 759, column: 13, scope: !3403)
!3405 = !DILocation(line: 759, column: 11, scope: !3403)
!3406 = !DILocation(line: 759, column: 7, scope: !2550)
!3407 = !DILocation(line: 760, column: 5, scope: !3403)
!3408 = !DILocation(line: 760, column: 12, scope: !3403)
!3409 = !DILocation(line: 760, column: 17, scope: !3403)
!3410 = !DILocation(line: 761, column: 10, scope: !2550)
!3411 = !DILocation(line: 761, column: 3, scope: !2550)
!3412 = !DILabel(scope: !2550, name: "force_outer_quoting_style", file: !183, line: 763)
!3413 = !DILocation(line: 763, column: 2, scope: !2550)
!3414 = !DILocation(line: 766, column: 7, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !2550, file: !183, line: 766, column: 7)
!3416 = !DILocation(line: 766, column: 21, scope: !3415)
!3417 = !DILocation(line: 766, column: 51, scope: !3415)
!3418 = !DILocation(line: 766, column: 54, scope: !3415)
!3419 = !DILocation(line: 766, column: 7, scope: !2550)
!3420 = !DILocation(line: 767, column: 19, scope: !3415)
!3421 = !DILocation(line: 767, column: 5, scope: !3415)
!3422 = !DILocation(line: 768, column: 36, scope: !2550)
!3423 = !DILocation(line: 768, column: 44, scope: !2550)
!3424 = !DILocation(line: 768, column: 56, scope: !2550)
!3425 = !DILocation(line: 768, column: 61, scope: !2550)
!3426 = !DILocation(line: 769, column: 36, scope: !2550)
!3427 = !DILocation(line: 770, column: 36, scope: !2550)
!3428 = !DILocation(line: 770, column: 42, scope: !2550)
!3429 = !DILocation(line: 771, column: 36, scope: !2550)
!3430 = !DILocation(line: 771, column: 48, scope: !2550)
!3431 = !DILocation(line: 768, column: 10, scope: !2550)
!3432 = !DILocation(line: 768, column: 3, scope: !2550)
!3433 = !DILocation(line: 772, column: 1, scope: !2550)
!3434 = distinct !DISubprogram(name: "gettext_quote", scope: !183, file: !183, line: 207, type: !3435, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !182, retainedNodes: !146)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!74, !74, !35}
!3437 = !DILocalVariable(name: "msgid", arg: 1, scope: !3434, file: !183, line: 207, type: !74)
!3438 = !DILocation(line: 207, column: 28, scope: !3434)
!3439 = !DILocalVariable(name: "s", arg: 2, scope: !3434, file: !183, line: 207, type: !35)
!3440 = !DILocation(line: 207, column: 54, scope: !3434)
!3441 = !DILocalVariable(name: "translation", scope: !3434, file: !183, line: 209, type: !74)
!3442 = !DILocation(line: 209, column: 15, scope: !3434)
!3443 = !DILocation(line: 209, column: 29, scope: !3434)
!3444 = !DILocalVariable(name: "locale_code", scope: !3434, file: !183, line: 210, type: !74)
!3445 = !DILocation(line: 210, column: 15, scope: !3434)
!3446 = !DILocation(line: 212, column: 7, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3434, file: !183, line: 212, column: 7)
!3448 = !DILocation(line: 212, column: 22, scope: !3447)
!3449 = !DILocation(line: 212, column: 19, scope: !3447)
!3450 = !DILocation(line: 212, column: 7, scope: !3434)
!3451 = !DILocation(line: 213, column: 12, scope: !3447)
!3452 = !DILocation(line: 213, column: 5, scope: !3447)
!3453 = !DILocation(line: 233, column: 17, scope: !3434)
!3454 = !DILocation(line: 233, column: 15, scope: !3434)
!3455 = !DILocation(line: 234, column: 7, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3434, file: !183, line: 234, column: 7)
!3457 = !DILocation(line: 234, column: 7, scope: !3434)
!3458 = !DILocation(line: 235, column: 12, scope: !3456)
!3459 = !DILocation(line: 235, column: 21, scope: !3456)
!3460 = !DILocation(line: 235, column: 5, scope: !3456)
!3461 = !DILocation(line: 236, column: 7, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3434, file: !183, line: 236, column: 7)
!3463 = !DILocation(line: 236, column: 7, scope: !3434)
!3464 = !DILocation(line: 237, column: 12, scope: !3462)
!3465 = !DILocation(line: 237, column: 21, scope: !3462)
!3466 = !DILocation(line: 237, column: 5, scope: !3462)
!3467 = !DILocation(line: 239, column: 11, scope: !3434)
!3468 = !DILocation(line: 239, column: 13, scope: !3434)
!3469 = !DILocation(line: 239, column: 3, scope: !3434)
!3470 = !DILocation(line: 240, column: 1, scope: !3434)
!3471 = distinct !DISubprogram(name: "quotearg_alloc", scope: !183, file: !183, line: 799, type: !3472, scopeLine: 801, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!84, !74, !79, !2389}
!3474 = !DILocalVariable(name: "arg", arg: 1, scope: !3471, file: !183, line: 799, type: !74)
!3475 = !DILocation(line: 799, column: 29, scope: !3471)
!3476 = !DILocalVariable(name: "argsize", arg: 2, scope: !3471, file: !183, line: 799, type: !79)
!3477 = !DILocation(line: 799, column: 41, scope: !3471)
!3478 = !DILocalVariable(name: "o", arg: 3, scope: !3471, file: !183, line: 800, type: !2389)
!3479 = !DILocation(line: 800, column: 47, scope: !3471)
!3480 = !DILocation(line: 802, column: 30, scope: !3471)
!3481 = !DILocation(line: 802, column: 35, scope: !3471)
!3482 = !DILocation(line: 802, column: 50, scope: !3471)
!3483 = !DILocation(line: 802, column: 10, scope: !3471)
!3484 = !DILocation(line: 802, column: 3, scope: !3471)
!3485 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !183, file: !183, line: 812, type: !3486, scopeLine: 814, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!84, !74, !79, !78, !2389}
!3488 = !DILocalVariable(name: "arg", arg: 1, scope: !3485, file: !183, line: 812, type: !74)
!3489 = !DILocation(line: 812, column: 33, scope: !3485)
!3490 = !DILocalVariable(name: "argsize", arg: 2, scope: !3485, file: !183, line: 812, type: !79)
!3491 = !DILocation(line: 812, column: 45, scope: !3485)
!3492 = !DILocalVariable(name: "size", arg: 3, scope: !3485, file: !183, line: 812, type: !78)
!3493 = !DILocation(line: 812, column: 62, scope: !3485)
!3494 = !DILocalVariable(name: "o", arg: 4, scope: !3485, file: !183, line: 813, type: !2389)
!3495 = !DILocation(line: 813, column: 51, scope: !3485)
!3496 = !DILocalVariable(name: "p", scope: !3485, file: !183, line: 815, type: !2389)
!3497 = !DILocation(line: 815, column: 33, scope: !3485)
!3498 = !DILocation(line: 815, column: 37, scope: !3485)
!3499 = !DILocation(line: 815, column: 41, scope: !3485)
!3500 = !DILocalVariable(name: "e", scope: !3485, file: !183, line: 816, type: !85)
!3501 = !DILocation(line: 816, column: 7, scope: !3485)
!3502 = !DILocation(line: 816, column: 11, scope: !3485)
!3503 = !DILocalVariable(name: "flags", scope: !3485, file: !183, line: 818, type: !85)
!3504 = !DILocation(line: 818, column: 7, scope: !3485)
!3505 = !DILocation(line: 818, column: 15, scope: !3485)
!3506 = !DILocation(line: 818, column: 18, scope: !3485)
!3507 = !DILocation(line: 818, column: 27, scope: !3485)
!3508 = !DILocation(line: 818, column: 24, scope: !3485)
!3509 = !DILocalVariable(name: "bufsize", scope: !3485, file: !183, line: 819, type: !79)
!3510 = !DILocation(line: 819, column: 10, scope: !3485)
!3511 = !DILocation(line: 819, column: 52, scope: !3485)
!3512 = !DILocation(line: 819, column: 57, scope: !3485)
!3513 = !DILocation(line: 819, column: 66, scope: !3485)
!3514 = !DILocation(line: 819, column: 69, scope: !3485)
!3515 = !DILocation(line: 820, column: 46, scope: !3485)
!3516 = !DILocation(line: 820, column: 53, scope: !3485)
!3517 = !DILocation(line: 820, column: 56, scope: !3485)
!3518 = !DILocation(line: 821, column: 46, scope: !3485)
!3519 = !DILocation(line: 821, column: 49, scope: !3485)
!3520 = !DILocation(line: 822, column: 46, scope: !3485)
!3521 = !DILocation(line: 822, column: 49, scope: !3485)
!3522 = !DILocation(line: 819, column: 20, scope: !3485)
!3523 = !DILocation(line: 822, column: 62, scope: !3485)
!3524 = !DILocalVariable(name: "buf", scope: !3485, file: !183, line: 823, type: !84)
!3525 = !DILocation(line: 823, column: 9, scope: !3485)
!3526 = !DILocation(line: 823, column: 27, scope: !3485)
!3527 = !DILocation(line: 823, column: 15, scope: !3485)
!3528 = !DILocation(line: 824, column: 29, scope: !3485)
!3529 = !DILocation(line: 824, column: 34, scope: !3485)
!3530 = !DILocation(line: 824, column: 43, scope: !3485)
!3531 = !DILocation(line: 824, column: 48, scope: !3485)
!3532 = !DILocation(line: 824, column: 57, scope: !3485)
!3533 = !DILocation(line: 824, column: 60, scope: !3485)
!3534 = !DILocation(line: 824, column: 67, scope: !3485)
!3535 = !DILocation(line: 825, column: 29, scope: !3485)
!3536 = !DILocation(line: 825, column: 32, scope: !3485)
!3537 = !DILocation(line: 826, column: 29, scope: !3485)
!3538 = !DILocation(line: 826, column: 32, scope: !3485)
!3539 = !DILocation(line: 826, column: 44, scope: !3485)
!3540 = !DILocation(line: 826, column: 47, scope: !3485)
!3541 = !DILocation(line: 824, column: 3, scope: !3485)
!3542 = !DILocation(line: 827, column: 11, scope: !3485)
!3543 = !DILocation(line: 827, column: 3, scope: !3485)
!3544 = !DILocation(line: 827, column: 9, scope: !3485)
!3545 = !DILocation(line: 828, column: 7, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3485, file: !183, line: 828, column: 7)
!3547 = !DILocation(line: 828, column: 7, scope: !3485)
!3548 = !DILocation(line: 829, column: 13, scope: !3546)
!3549 = !DILocation(line: 829, column: 21, scope: !3546)
!3550 = !DILocation(line: 829, column: 6, scope: !3546)
!3551 = !DILocation(line: 829, column: 11, scope: !3546)
!3552 = !DILocation(line: 829, column: 5, scope: !3546)
!3553 = !DILocation(line: 830, column: 10, scope: !3485)
!3554 = !DILocation(line: 830, column: 3, scope: !3485)
!3555 = distinct !DISubprogram(name: "quotearg_free", scope: !183, file: !183, line: 848, type: !158, scopeLine: 849, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!3556 = !DILocalVariable(name: "sv", scope: !3555, file: !183, line: 850, type: !219)
!3557 = !DILocation(line: 850, column: 19, scope: !3555)
!3558 = !DILocation(line: 850, column: 24, scope: !3555)
!3559 = !DILocalVariable(name: "i", scope: !3555, file: !183, line: 851, type: !85)
!3560 = !DILocation(line: 851, column: 7, scope: !3555)
!3561 = !DILocation(line: 852, column: 10, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3555, file: !183, line: 852, column: 3)
!3563 = !DILocation(line: 852, column: 8, scope: !3562)
!3564 = !DILocation(line: 852, column: 15, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3562, file: !183, line: 852, column: 3)
!3566 = !DILocation(line: 852, column: 19, scope: !3565)
!3567 = !DILocation(line: 852, column: 17, scope: !3565)
!3568 = !DILocation(line: 852, column: 3, scope: !3562)
!3569 = !DILocation(line: 853, column: 11, scope: !3565)
!3570 = !DILocation(line: 853, column: 14, scope: !3565)
!3571 = !DILocation(line: 853, column: 17, scope: !3565)
!3572 = !DILocation(line: 853, column: 5, scope: !3565)
!3573 = !DILocation(line: 852, column: 28, scope: !3565)
!3574 = !DILocation(line: 852, column: 3, scope: !3565)
!3575 = distinct !{!3575, !3568, !3576, !757}
!3576 = !DILocation(line: 853, column: 20, scope: !3562)
!3577 = !DILocation(line: 854, column: 7, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3555, file: !183, line: 854, column: 7)
!3579 = !DILocation(line: 854, column: 13, scope: !3578)
!3580 = !DILocation(line: 854, column: 17, scope: !3578)
!3581 = !DILocation(line: 854, column: 7, scope: !3555)
!3582 = !DILocation(line: 856, column: 13, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3578, file: !183, line: 855, column: 5)
!3584 = !DILocation(line: 856, column: 19, scope: !3583)
!3585 = !DILocation(line: 856, column: 7, scope: !3583)
!3586 = !DILocation(line: 857, column: 21, scope: !3583)
!3587 = !DILocation(line: 858, column: 20, scope: !3583)
!3588 = !DILocation(line: 859, column: 5, scope: !3583)
!3589 = !DILocation(line: 860, column: 7, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3555, file: !183, line: 860, column: 7)
!3591 = !DILocation(line: 860, column: 10, scope: !3590)
!3592 = !DILocation(line: 860, column: 7, scope: !3555)
!3593 = !DILocation(line: 862, column: 13, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3590, file: !183, line: 861, column: 5)
!3595 = !DILocation(line: 862, column: 7, scope: !3594)
!3596 = !DILocation(line: 863, column: 15, scope: !3594)
!3597 = !DILocation(line: 864, column: 5, scope: !3594)
!3598 = !DILocation(line: 865, column: 10, scope: !3555)
!3599 = !DILocation(line: 866, column: 1, scope: !3555)
!3600 = distinct !DISubprogram(name: "quotearg_n", scope: !183, file: !183, line: 931, type: !3601, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!84, !85, !74}
!3603 = !DILocalVariable(name: "n", arg: 1, scope: !3600, file: !183, line: 931, type: !85)
!3604 = !DILocation(line: 931, column: 17, scope: !3600)
!3605 = !DILocalVariable(name: "arg", arg: 2, scope: !3600, file: !183, line: 931, type: !74)
!3606 = !DILocation(line: 931, column: 32, scope: !3600)
!3607 = !DILocation(line: 933, column: 30, scope: !3600)
!3608 = !DILocation(line: 933, column: 33, scope: !3600)
!3609 = !DILocation(line: 933, column: 10, scope: !3600)
!3610 = !DILocation(line: 933, column: 3, scope: !3600)
!3611 = distinct !DISubprogram(name: "quotearg_n_options", scope: !183, file: !183, line: 877, type: !3612, scopeLine: 879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !182, retainedNodes: !146)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!84, !85, !74, !79, !2389}
!3614 = !DILocalVariable(name: "n", arg: 1, scope: !3611, file: !183, line: 877, type: !85)
!3615 = !DILocation(line: 877, column: 25, scope: !3611)
!3616 = !DILocalVariable(name: "arg", arg: 2, scope: !3611, file: !183, line: 877, type: !74)
!3617 = !DILocation(line: 877, column: 40, scope: !3611)
!3618 = !DILocalVariable(name: "argsize", arg: 3, scope: !3611, file: !183, line: 877, type: !79)
!3619 = !DILocation(line: 877, column: 52, scope: !3611)
!3620 = !DILocalVariable(name: "options", arg: 4, scope: !3611, file: !183, line: 878, type: !2389)
!3621 = !DILocation(line: 878, column: 51, scope: !3611)
!3622 = !DILocalVariable(name: "e", scope: !3611, file: !183, line: 880, type: !85)
!3623 = !DILocation(line: 880, column: 7, scope: !3611)
!3624 = !DILocation(line: 880, column: 11, scope: !3611)
!3625 = !DILocalVariable(name: "sv", scope: !3611, file: !183, line: 882, type: !219)
!3626 = !DILocation(line: 882, column: 19, scope: !3611)
!3627 = !DILocation(line: 882, column: 24, scope: !3611)
!3628 = !DILocation(line: 884, column: 7, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3611, file: !183, line: 884, column: 7)
!3630 = !DILocation(line: 884, column: 9, scope: !3629)
!3631 = !DILocation(line: 884, column: 7, scope: !3611)
!3632 = !DILocation(line: 885, column: 5, scope: !3629)
!3633 = !DILocation(line: 887, column: 7, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3611, file: !183, line: 887, column: 7)
!3635 = !DILocation(line: 887, column: 17, scope: !3634)
!3636 = !DILocation(line: 887, column: 14, scope: !3634)
!3637 = !DILocation(line: 887, column: 7, scope: !3611)
!3638 = !DILocalVariable(name: "preallocated", scope: !3639, file: !183, line: 889, type: !96)
!3639 = distinct !DILexicalBlock(scope: !3634, file: !183, line: 888, column: 5)
!3640 = !DILocation(line: 889, column: 12, scope: !3639)
!3641 = !DILocation(line: 889, column: 28, scope: !3639)
!3642 = !DILocation(line: 889, column: 31, scope: !3639)
!3643 = !DILocalVariable(name: "nmax", scope: !3639, file: !183, line: 890, type: !85)
!3644 = !DILocation(line: 890, column: 11, scope: !3639)
!3645 = !DILocation(line: 892, column: 11, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3639, file: !183, line: 892, column: 11)
!3647 = !DILocation(line: 892, column: 18, scope: !3646)
!3648 = !DILocation(line: 892, column: 16, scope: !3646)
!3649 = !DILocation(line: 892, column: 11, scope: !3639)
!3650 = !DILocation(line: 893, column: 9, scope: !3646)
!3651 = !DILocation(line: 895, column: 32, scope: !3639)
!3652 = !DILocation(line: 895, column: 54, scope: !3639)
!3653 = !DILocation(line: 895, column: 59, scope: !3639)
!3654 = !DILocation(line: 895, column: 61, scope: !3639)
!3655 = !DILocation(line: 895, column: 58, scope: !3639)
!3656 = !DILocation(line: 895, column: 66, scope: !3639)
!3657 = !DILocation(line: 895, column: 22, scope: !3639)
!3658 = !DILocation(line: 895, column: 20, scope: !3639)
!3659 = !DILocation(line: 895, column: 15, scope: !3639)
!3660 = !DILocation(line: 896, column: 11, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3639, file: !183, line: 896, column: 11)
!3662 = !DILocation(line: 896, column: 11, scope: !3639)
!3663 = !DILocation(line: 897, column: 10, scope: !3661)
!3664 = !DILocation(line: 897, column: 15, scope: !3661)
!3665 = !DILocation(line: 897, column: 9, scope: !3661)
!3666 = !DILocation(line: 898, column: 15, scope: !3639)
!3667 = !DILocation(line: 898, column: 20, scope: !3639)
!3668 = !DILocation(line: 898, column: 18, scope: !3639)
!3669 = !DILocation(line: 898, column: 7, scope: !3639)
!3670 = !DILocation(line: 898, column: 32, scope: !3639)
!3671 = !DILocation(line: 898, column: 34, scope: !3639)
!3672 = !DILocation(line: 898, column: 40, scope: !3639)
!3673 = !DILocation(line: 898, column: 38, scope: !3639)
!3674 = !DILocation(line: 898, column: 31, scope: !3639)
!3675 = !DILocation(line: 898, column: 48, scope: !3639)
!3676 = !DILocation(line: 899, column: 16, scope: !3639)
!3677 = !DILocation(line: 899, column: 18, scope: !3639)
!3678 = !DILocation(line: 899, column: 14, scope: !3639)
!3679 = !DILocation(line: 900, column: 5, scope: !3639)
!3680 = !DILocalVariable(name: "size", scope: !3681, file: !183, line: 903, type: !79)
!3681 = distinct !DILexicalBlock(scope: !3611, file: !183, line: 902, column: 3)
!3682 = !DILocation(line: 903, column: 12, scope: !3681)
!3683 = !DILocation(line: 903, column: 19, scope: !3681)
!3684 = !DILocation(line: 903, column: 22, scope: !3681)
!3685 = !DILocation(line: 903, column: 25, scope: !3681)
!3686 = !DILocalVariable(name: "val", scope: !3681, file: !183, line: 904, type: !84)
!3687 = !DILocation(line: 904, column: 11, scope: !3681)
!3688 = !DILocation(line: 904, column: 17, scope: !3681)
!3689 = !DILocation(line: 904, column: 20, scope: !3681)
!3690 = !DILocation(line: 904, column: 23, scope: !3681)
!3691 = !DILocalVariable(name: "flags", scope: !3681, file: !183, line: 906, type: !85)
!3692 = !DILocation(line: 906, column: 9, scope: !3681)
!3693 = !DILocation(line: 906, column: 17, scope: !3681)
!3694 = !DILocation(line: 906, column: 26, scope: !3681)
!3695 = !DILocation(line: 906, column: 32, scope: !3681)
!3696 = !DILocalVariable(name: "qsize", scope: !3681, file: !183, line: 907, type: !79)
!3697 = !DILocation(line: 907, column: 12, scope: !3681)
!3698 = !DILocation(line: 907, column: 46, scope: !3681)
!3699 = !DILocation(line: 907, column: 51, scope: !3681)
!3700 = !DILocation(line: 907, column: 57, scope: !3681)
!3701 = !DILocation(line: 907, column: 62, scope: !3681)
!3702 = !DILocation(line: 908, column: 46, scope: !3681)
!3703 = !DILocation(line: 908, column: 55, scope: !3681)
!3704 = !DILocation(line: 908, column: 62, scope: !3681)
!3705 = !DILocation(line: 909, column: 46, scope: !3681)
!3706 = !DILocation(line: 909, column: 55, scope: !3681)
!3707 = !DILocation(line: 910, column: 46, scope: !3681)
!3708 = !DILocation(line: 910, column: 55, scope: !3681)
!3709 = !DILocation(line: 911, column: 46, scope: !3681)
!3710 = !DILocation(line: 911, column: 55, scope: !3681)
!3711 = !DILocation(line: 907, column: 20, scope: !3681)
!3712 = !DILocation(line: 913, column: 9, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3681, file: !183, line: 913, column: 9)
!3714 = !DILocation(line: 913, column: 17, scope: !3713)
!3715 = !DILocation(line: 913, column: 14, scope: !3713)
!3716 = !DILocation(line: 913, column: 9, scope: !3681)
!3717 = !DILocation(line: 915, column: 29, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3713, file: !183, line: 914, column: 7)
!3719 = !DILocation(line: 915, column: 35, scope: !3718)
!3720 = !DILocation(line: 915, column: 27, scope: !3718)
!3721 = !DILocation(line: 915, column: 9, scope: !3718)
!3722 = !DILocation(line: 915, column: 12, scope: !3718)
!3723 = !DILocation(line: 915, column: 15, scope: !3718)
!3724 = !DILocation(line: 915, column: 20, scope: !3718)
!3725 = !DILocation(line: 916, column: 13, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3718, file: !183, line: 916, column: 13)
!3727 = !DILocation(line: 916, column: 17, scope: !3726)
!3728 = !DILocation(line: 916, column: 13, scope: !3718)
!3729 = !DILocation(line: 917, column: 17, scope: !3726)
!3730 = !DILocation(line: 917, column: 11, scope: !3726)
!3731 = !DILocation(line: 918, column: 39, scope: !3718)
!3732 = !DILocation(line: 918, column: 27, scope: !3718)
!3733 = !DILocation(line: 918, column: 25, scope: !3718)
!3734 = !DILocation(line: 918, column: 9, scope: !3718)
!3735 = !DILocation(line: 918, column: 12, scope: !3718)
!3736 = !DILocation(line: 918, column: 15, scope: !3718)
!3737 = !DILocation(line: 918, column: 19, scope: !3718)
!3738 = !DILocation(line: 919, column: 35, scope: !3718)
!3739 = !DILocation(line: 919, column: 40, scope: !3718)
!3740 = !DILocation(line: 919, column: 46, scope: !3718)
!3741 = !DILocation(line: 919, column: 51, scope: !3718)
!3742 = !DILocation(line: 919, column: 60, scope: !3718)
!3743 = !DILocation(line: 919, column: 69, scope: !3718)
!3744 = !DILocation(line: 920, column: 35, scope: !3718)
!3745 = !DILocation(line: 920, column: 42, scope: !3718)
!3746 = !DILocation(line: 920, column: 51, scope: !3718)
!3747 = !DILocation(line: 921, column: 35, scope: !3718)
!3748 = !DILocation(line: 921, column: 44, scope: !3718)
!3749 = !DILocation(line: 922, column: 35, scope: !3718)
!3750 = !DILocation(line: 922, column: 44, scope: !3718)
!3751 = !DILocation(line: 919, column: 9, scope: !3718)
!3752 = !DILocation(line: 923, column: 7, scope: !3718)
!3753 = !DILocation(line: 925, column: 13, scope: !3681)
!3754 = !DILocation(line: 925, column: 5, scope: !3681)
!3755 = !DILocation(line: 925, column: 11, scope: !3681)
!3756 = !DILocation(line: 926, column: 12, scope: !3681)
!3757 = !DILocation(line: 926, column: 5, scope: !3681)
!3758 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !183, file: !183, line: 937, type: !3759, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!84, !85, !74, !79}
!3761 = !DILocalVariable(name: "n", arg: 1, scope: !3758, file: !183, line: 937, type: !85)
!3762 = !DILocation(line: 937, column: 21, scope: !3758)
!3763 = !DILocalVariable(name: "arg", arg: 2, scope: !3758, file: !183, line: 937, type: !74)
!3764 = !DILocation(line: 937, column: 36, scope: !3758)
!3765 = !DILocalVariable(name: "argsize", arg: 3, scope: !3758, file: !183, line: 937, type: !79)
!3766 = !DILocation(line: 937, column: 48, scope: !3758)
!3767 = !DILocation(line: 939, column: 30, scope: !3758)
!3768 = !DILocation(line: 939, column: 33, scope: !3758)
!3769 = !DILocation(line: 939, column: 38, scope: !3758)
!3770 = !DILocation(line: 939, column: 10, scope: !3758)
!3771 = !DILocation(line: 939, column: 3, scope: !3758)
!3772 = distinct !DISubprogram(name: "quotearg", scope: !183, file: !183, line: 943, type: !3773, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!84, !74}
!3775 = !DILocalVariable(name: "arg", arg: 1, scope: !3772, file: !183, line: 943, type: !74)
!3776 = !DILocation(line: 943, column: 23, scope: !3772)
!3777 = !DILocation(line: 945, column: 25, scope: !3772)
!3778 = !DILocation(line: 945, column: 10, scope: !3772)
!3779 = !DILocation(line: 945, column: 3, scope: !3772)
!3780 = distinct !DISubprogram(name: "quotearg_mem", scope: !183, file: !183, line: 949, type: !3781, scopeLine: 950, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!84, !74, !79}
!3783 = !DILocalVariable(name: "arg", arg: 1, scope: !3780, file: !183, line: 949, type: !74)
!3784 = !DILocation(line: 949, column: 27, scope: !3780)
!3785 = !DILocalVariable(name: "argsize", arg: 2, scope: !3780, file: !183, line: 949, type: !79)
!3786 = !DILocation(line: 949, column: 39, scope: !3780)
!3787 = !DILocation(line: 951, column: 29, scope: !3780)
!3788 = !DILocation(line: 951, column: 34, scope: !3780)
!3789 = !DILocation(line: 951, column: 10, scope: !3780)
!3790 = !DILocation(line: 951, column: 3, scope: !3780)
!3791 = distinct !DISubprogram(name: "quotearg_n_style", scope: !183, file: !183, line: 955, type: !3792, scopeLine: 956, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!84, !85, !35, !74}
!3794 = !DILocalVariable(name: "n", arg: 1, scope: !3791, file: !183, line: 955, type: !85)
!3795 = !DILocation(line: 955, column: 23, scope: !3791)
!3796 = !DILocalVariable(name: "s", arg: 2, scope: !3791, file: !183, line: 955, type: !35)
!3797 = !DILocation(line: 955, column: 45, scope: !3791)
!3798 = !DILocalVariable(name: "arg", arg: 3, scope: !3791, file: !183, line: 955, type: !74)
!3799 = !DILocation(line: 955, column: 60, scope: !3791)
!3800 = !DILocalVariable(name: "o", scope: !3791, file: !183, line: 957, type: !2390)
!3801 = !DILocation(line: 957, column: 32, scope: !3791)
!3802 = !DILocation(line: 957, column: 64, scope: !3791)
!3803 = !DILocation(line: 957, column: 36, scope: !3791)
!3804 = !DILocation(line: 958, column: 30, scope: !3791)
!3805 = !DILocation(line: 958, column: 33, scope: !3791)
!3806 = !DILocation(line: 958, column: 10, scope: !3791)
!3807 = !DILocation(line: 958, column: 3, scope: !3791)
!3808 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !183, file: !183, line: 193, type: !3809, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !182, retainedNodes: !146)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!200, !35}
!3811 = !DILocalVariable(name: "style", arg: 1, scope: !3808, file: !183, line: 193, type: !35)
!3812 = !DILocation(line: 193, column: 48, scope: !3808)
!3813 = !DILocalVariable(name: "o", scope: !3808, file: !183, line: 195, type: !200)
!3814 = !DILocation(line: 195, column: 26, scope: !3808)
!3815 = !DILocation(line: 196, column: 7, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3808, file: !183, line: 196, column: 7)
!3817 = !DILocation(line: 196, column: 13, scope: !3816)
!3818 = !DILocation(line: 196, column: 7, scope: !3808)
!3819 = !DILocation(line: 197, column: 5, scope: !3816)
!3820 = !DILocation(line: 198, column: 13, scope: !3808)
!3821 = !DILocation(line: 198, column: 5, scope: !3808)
!3822 = !DILocation(line: 198, column: 11, scope: !3808)
!3823 = !DILocation(line: 199, column: 3, scope: !3808)
!3824 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !183, file: !183, line: 962, type: !3825, scopeLine: 964, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!84, !85, !35, !74, !79}
!3827 = !DILocalVariable(name: "n", arg: 1, scope: !3824, file: !183, line: 962, type: !85)
!3828 = !DILocation(line: 962, column: 27, scope: !3824)
!3829 = !DILocalVariable(name: "s", arg: 2, scope: !3824, file: !183, line: 962, type: !35)
!3830 = !DILocation(line: 962, column: 49, scope: !3824)
!3831 = !DILocalVariable(name: "arg", arg: 3, scope: !3824, file: !183, line: 963, type: !74)
!3832 = !DILocation(line: 963, column: 35, scope: !3824)
!3833 = !DILocalVariable(name: "argsize", arg: 4, scope: !3824, file: !183, line: 963, type: !79)
!3834 = !DILocation(line: 963, column: 47, scope: !3824)
!3835 = !DILocalVariable(name: "o", scope: !3824, file: !183, line: 965, type: !2390)
!3836 = !DILocation(line: 965, column: 32, scope: !3824)
!3837 = !DILocation(line: 965, column: 64, scope: !3824)
!3838 = !DILocation(line: 965, column: 36, scope: !3824)
!3839 = !DILocation(line: 966, column: 30, scope: !3824)
!3840 = !DILocation(line: 966, column: 33, scope: !3824)
!3841 = !DILocation(line: 966, column: 38, scope: !3824)
!3842 = !DILocation(line: 966, column: 10, scope: !3824)
!3843 = !DILocation(line: 966, column: 3, scope: !3824)
!3844 = distinct !DISubprogram(name: "quotearg_style", scope: !183, file: !183, line: 970, type: !3845, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!84, !35, !74}
!3847 = !DILocalVariable(name: "s", arg: 1, scope: !3844, file: !183, line: 970, type: !35)
!3848 = !DILocation(line: 970, column: 36, scope: !3844)
!3849 = !DILocalVariable(name: "arg", arg: 2, scope: !3844, file: !183, line: 970, type: !74)
!3850 = !DILocation(line: 970, column: 51, scope: !3844)
!3851 = !DILocation(line: 972, column: 31, scope: !3844)
!3852 = !DILocation(line: 972, column: 34, scope: !3844)
!3853 = !DILocation(line: 972, column: 10, scope: !3844)
!3854 = !DILocation(line: 972, column: 3, scope: !3844)
!3855 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !183, file: !183, line: 976, type: !3856, scopeLine: 977, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!84, !35, !74, !79}
!3858 = !DILocalVariable(name: "s", arg: 1, scope: !3855, file: !183, line: 976, type: !35)
!3859 = !DILocation(line: 976, column: 40, scope: !3855)
!3860 = !DILocalVariable(name: "arg", arg: 2, scope: !3855, file: !183, line: 976, type: !74)
!3861 = !DILocation(line: 976, column: 55, scope: !3855)
!3862 = !DILocalVariable(name: "argsize", arg: 3, scope: !3855, file: !183, line: 976, type: !79)
!3863 = !DILocation(line: 976, column: 67, scope: !3855)
!3864 = !DILocation(line: 978, column: 35, scope: !3855)
!3865 = !DILocation(line: 978, column: 38, scope: !3855)
!3866 = !DILocation(line: 978, column: 43, scope: !3855)
!3867 = !DILocation(line: 978, column: 10, scope: !3855)
!3868 = !DILocation(line: 978, column: 3, scope: !3855)
!3869 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !183, file: !183, line: 982, type: !3870, scopeLine: 983, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!84, !74, !79, !76}
!3872 = !DILocalVariable(name: "arg", arg: 1, scope: !3869, file: !183, line: 982, type: !74)
!3873 = !DILocation(line: 982, column: 32, scope: !3869)
!3874 = !DILocalVariable(name: "argsize", arg: 2, scope: !3869, file: !183, line: 982, type: !79)
!3875 = !DILocation(line: 982, column: 44, scope: !3869)
!3876 = !DILocalVariable(name: "ch", arg: 3, scope: !3869, file: !183, line: 982, type: !76)
!3877 = !DILocation(line: 982, column: 58, scope: !3869)
!3878 = !DILocalVariable(name: "options", scope: !3869, file: !183, line: 984, type: !200)
!3879 = !DILocation(line: 984, column: 26, scope: !3869)
!3880 = !DILocation(line: 985, column: 13, scope: !3869)
!3881 = !DILocation(line: 986, column: 31, scope: !3869)
!3882 = !DILocation(line: 986, column: 3, scope: !3869)
!3883 = !DILocation(line: 987, column: 33, scope: !3869)
!3884 = !DILocation(line: 987, column: 38, scope: !3869)
!3885 = !DILocation(line: 987, column: 10, scope: !3869)
!3886 = !DILocation(line: 987, column: 3, scope: !3869)
!3887 = distinct !DISubprogram(name: "quotearg_char", scope: !183, file: !183, line: 991, type: !3888, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!84, !74, !76}
!3890 = !DILocalVariable(name: "arg", arg: 1, scope: !3887, file: !183, line: 991, type: !74)
!3891 = !DILocation(line: 991, column: 28, scope: !3887)
!3892 = !DILocalVariable(name: "ch", arg: 2, scope: !3887, file: !183, line: 991, type: !76)
!3893 = !DILocation(line: 991, column: 38, scope: !3887)
!3894 = !DILocation(line: 993, column: 29, scope: !3887)
!3895 = !DILocation(line: 993, column: 44, scope: !3887)
!3896 = !DILocation(line: 993, column: 10, scope: !3887)
!3897 = !DILocation(line: 993, column: 3, scope: !3887)
!3898 = distinct !DISubprogram(name: "quotearg_colon", scope: !183, file: !183, line: 997, type: !3773, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!3899 = !DILocalVariable(name: "arg", arg: 1, scope: !3898, file: !183, line: 997, type: !74)
!3900 = !DILocation(line: 997, column: 29, scope: !3898)
!3901 = !DILocation(line: 999, column: 25, scope: !3898)
!3902 = !DILocation(line: 999, column: 10, scope: !3898)
!3903 = !DILocation(line: 999, column: 3, scope: !3898)
!3904 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !183, file: !183, line: 1003, type: !3781, scopeLine: 1004, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!3905 = !DILocalVariable(name: "arg", arg: 1, scope: !3904, file: !183, line: 1003, type: !74)
!3906 = !DILocation(line: 1003, column: 33, scope: !3904)
!3907 = !DILocalVariable(name: "argsize", arg: 2, scope: !3904, file: !183, line: 1003, type: !79)
!3908 = !DILocation(line: 1003, column: 45, scope: !3904)
!3909 = !DILocation(line: 1005, column: 29, scope: !3904)
!3910 = !DILocation(line: 1005, column: 34, scope: !3904)
!3911 = !DILocation(line: 1005, column: 10, scope: !3904)
!3912 = !DILocation(line: 1005, column: 3, scope: !3904)
!3913 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !183, file: !183, line: 1009, type: !3792, scopeLine: 1010, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!3914 = !DILocalVariable(name: "n", arg: 1, scope: !3913, file: !183, line: 1009, type: !85)
!3915 = !DILocation(line: 1009, column: 29, scope: !3913)
!3916 = !DILocalVariable(name: "s", arg: 2, scope: !3913, file: !183, line: 1009, type: !35)
!3917 = !DILocation(line: 1009, column: 51, scope: !3913)
!3918 = !DILocalVariable(name: "arg", arg: 3, scope: !3913, file: !183, line: 1009, type: !74)
!3919 = !DILocation(line: 1009, column: 66, scope: !3913)
!3920 = !DILocalVariable(name: "options", scope: !3913, file: !183, line: 1011, type: !200)
!3921 = !DILocation(line: 1011, column: 26, scope: !3913)
!3922 = !DILocation(line: 1012, column: 41, scope: !3913)
!3923 = !DILocation(line: 1012, column: 13, scope: !3913)
!3924 = !DILocation(line: 1013, column: 3, scope: !3913)
!3925 = !DILocation(line: 1014, column: 30, scope: !3913)
!3926 = !DILocation(line: 1014, column: 33, scope: !3913)
!3927 = !DILocation(line: 1014, column: 10, scope: !3913)
!3928 = !DILocation(line: 1014, column: 3, scope: !3913)
!3929 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !183, file: !183, line: 1018, type: !3930, scopeLine: 1020, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!84, !85, !74, !74, !74}
!3932 = !DILocalVariable(name: "n", arg: 1, scope: !3929, file: !183, line: 1018, type: !85)
!3933 = !DILocation(line: 1018, column: 24, scope: !3929)
!3934 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3929, file: !183, line: 1018, type: !74)
!3935 = !DILocation(line: 1018, column: 39, scope: !3929)
!3936 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3929, file: !183, line: 1019, type: !74)
!3937 = !DILocation(line: 1019, column: 32, scope: !3929)
!3938 = !DILocalVariable(name: "arg", arg: 4, scope: !3929, file: !183, line: 1019, type: !74)
!3939 = !DILocation(line: 1019, column: 57, scope: !3929)
!3940 = !DILocation(line: 1021, column: 33, scope: !3929)
!3941 = !DILocation(line: 1021, column: 36, scope: !3929)
!3942 = !DILocation(line: 1021, column: 48, scope: !3929)
!3943 = !DILocation(line: 1021, column: 61, scope: !3929)
!3944 = !DILocation(line: 1021, column: 10, scope: !3929)
!3945 = !DILocation(line: 1021, column: 3, scope: !3929)
!3946 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !183, file: !183, line: 1026, type: !3947, scopeLine: 1029, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!84, !85, !74, !74, !74, !79}
!3949 = !DILocalVariable(name: "n", arg: 1, scope: !3946, file: !183, line: 1026, type: !85)
!3950 = !DILocation(line: 1026, column: 28, scope: !3946)
!3951 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3946, file: !183, line: 1026, type: !74)
!3952 = !DILocation(line: 1026, column: 43, scope: !3946)
!3953 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3946, file: !183, line: 1027, type: !74)
!3954 = !DILocation(line: 1027, column: 36, scope: !3946)
!3955 = !DILocalVariable(name: "arg", arg: 4, scope: !3946, file: !183, line: 1028, type: !74)
!3956 = !DILocation(line: 1028, column: 36, scope: !3946)
!3957 = !DILocalVariable(name: "argsize", arg: 5, scope: !3946, file: !183, line: 1028, type: !79)
!3958 = !DILocation(line: 1028, column: 48, scope: !3946)
!3959 = !DILocalVariable(name: "o", scope: !3946, file: !183, line: 1030, type: !200)
!3960 = !DILocation(line: 1030, column: 26, scope: !3946)
!3961 = !DILocation(line: 1030, column: 30, scope: !3946)
!3962 = !DILocation(line: 1031, column: 27, scope: !3946)
!3963 = !DILocation(line: 1031, column: 39, scope: !3946)
!3964 = !DILocation(line: 1031, column: 3, scope: !3946)
!3965 = !DILocation(line: 1032, column: 30, scope: !3946)
!3966 = !DILocation(line: 1032, column: 33, scope: !3946)
!3967 = !DILocation(line: 1032, column: 38, scope: !3946)
!3968 = !DILocation(line: 1032, column: 10, scope: !3946)
!3969 = !DILocation(line: 1032, column: 3, scope: !3946)
!3970 = distinct !DISubprogram(name: "quotearg_custom", scope: !183, file: !183, line: 1036, type: !3971, scopeLine: 1038, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!84, !74, !74, !74}
!3973 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3970, file: !183, line: 1036, type: !74)
!3974 = !DILocation(line: 1036, column: 30, scope: !3970)
!3975 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3970, file: !183, line: 1036, type: !74)
!3976 = !DILocation(line: 1036, column: 54, scope: !3970)
!3977 = !DILocalVariable(name: "arg", arg: 3, scope: !3970, file: !183, line: 1037, type: !74)
!3978 = !DILocation(line: 1037, column: 30, scope: !3970)
!3979 = !DILocation(line: 1039, column: 32, scope: !3970)
!3980 = !DILocation(line: 1039, column: 44, scope: !3970)
!3981 = !DILocation(line: 1039, column: 57, scope: !3970)
!3982 = !DILocation(line: 1039, column: 10, scope: !3970)
!3983 = !DILocation(line: 1039, column: 3, scope: !3970)
!3984 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !183, file: !183, line: 1043, type: !3985, scopeLine: 1045, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!84, !74, !74, !74, !79}
!3987 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3984, file: !183, line: 1043, type: !74)
!3988 = !DILocation(line: 1043, column: 34, scope: !3984)
!3989 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3984, file: !183, line: 1043, type: !74)
!3990 = !DILocation(line: 1043, column: 58, scope: !3984)
!3991 = !DILocalVariable(name: "arg", arg: 3, scope: !3984, file: !183, line: 1044, type: !74)
!3992 = !DILocation(line: 1044, column: 34, scope: !3984)
!3993 = !DILocalVariable(name: "argsize", arg: 4, scope: !3984, file: !183, line: 1044, type: !79)
!3994 = !DILocation(line: 1044, column: 46, scope: !3984)
!3995 = !DILocation(line: 1046, column: 36, scope: !3984)
!3996 = !DILocation(line: 1046, column: 48, scope: !3984)
!3997 = !DILocation(line: 1046, column: 61, scope: !3984)
!3998 = !DILocation(line: 1047, column: 33, scope: !3984)
!3999 = !DILocation(line: 1046, column: 10, scope: !3984)
!4000 = !DILocation(line: 1046, column: 3, scope: !3984)
!4001 = distinct !DISubprogram(name: "quote_n_mem", scope: !183, file: !183, line: 1061, type: !4002, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!74, !85, !74, !79}
!4004 = !DILocalVariable(name: "n", arg: 1, scope: !4001, file: !183, line: 1061, type: !85)
!4005 = !DILocation(line: 1061, column: 18, scope: !4001)
!4006 = !DILocalVariable(name: "arg", arg: 2, scope: !4001, file: !183, line: 1061, type: !74)
!4007 = !DILocation(line: 1061, column: 33, scope: !4001)
!4008 = !DILocalVariable(name: "argsize", arg: 3, scope: !4001, file: !183, line: 1061, type: !79)
!4009 = !DILocation(line: 1061, column: 45, scope: !4001)
!4010 = !DILocation(line: 1063, column: 30, scope: !4001)
!4011 = !DILocation(line: 1063, column: 33, scope: !4001)
!4012 = !DILocation(line: 1063, column: 38, scope: !4001)
!4013 = !DILocation(line: 1063, column: 10, scope: !4001)
!4014 = !DILocation(line: 1063, column: 3, scope: !4001)
!4015 = distinct !DISubprogram(name: "quote_mem", scope: !183, file: !183, line: 1067, type: !4016, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!74, !74, !79}
!4018 = !DILocalVariable(name: "arg", arg: 1, scope: !4015, file: !183, line: 1067, type: !74)
!4019 = !DILocation(line: 1067, column: 24, scope: !4015)
!4020 = !DILocalVariable(name: "argsize", arg: 2, scope: !4015, file: !183, line: 1067, type: !79)
!4021 = !DILocation(line: 1067, column: 36, scope: !4015)
!4022 = !DILocation(line: 1069, column: 26, scope: !4015)
!4023 = !DILocation(line: 1069, column: 31, scope: !4015)
!4024 = !DILocation(line: 1069, column: 10, scope: !4015)
!4025 = !DILocation(line: 1069, column: 3, scope: !4015)
!4026 = distinct !DISubprogram(name: "quote_n", scope: !183, file: !183, line: 1073, type: !4027, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!74, !85, !74}
!4029 = !DILocalVariable(name: "n", arg: 1, scope: !4026, file: !183, line: 1073, type: !85)
!4030 = !DILocation(line: 1073, column: 14, scope: !4026)
!4031 = !DILocalVariable(name: "arg", arg: 2, scope: !4026, file: !183, line: 1073, type: !74)
!4032 = !DILocation(line: 1073, column: 29, scope: !4026)
!4033 = !DILocation(line: 1075, column: 23, scope: !4026)
!4034 = !DILocation(line: 1075, column: 26, scope: !4026)
!4035 = !DILocation(line: 1075, column: 10, scope: !4026)
!4036 = !DILocation(line: 1075, column: 3, scope: !4026)
!4037 = distinct !DISubprogram(name: "quote", scope: !183, file: !183, line: 1079, type: !4038, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !146)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!74, !74}
!4040 = !DILocalVariable(name: "arg", arg: 1, scope: !4037, file: !183, line: 1079, type: !74)
!4041 = !DILocation(line: 1079, column: 20, scope: !4037)
!4042 = !DILocation(line: 1081, column: 22, scope: !4037)
!4043 = !DILocation(line: 1081, column: 10, scope: !4037)
!4044 = !DILocation(line: 1081, column: 3, scope: !4037)
!4045 = distinct !DISubprogram(name: "version_etc_arn", scope: !251, file: !251, line: 61, type: !4046, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !146)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{null, !4048, !74, !74, !74, !1516, !79}
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1835, line: 7, baseType: !4050)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1837, line: 49, size: 1728, elements: !4051)
!4051 = !{!4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4050, file: !1837, line: 51, baseType: !85, size: 32)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4050, file: !1837, line: 54, baseType: !84, size: 64, offset: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4050, file: !1837, line: 55, baseType: !84, size: 64, offset: 128)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4050, file: !1837, line: 56, baseType: !84, size: 64, offset: 192)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4050, file: !1837, line: 57, baseType: !84, size: 64, offset: 256)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4050, file: !1837, line: 58, baseType: !84, size: 64, offset: 320)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4050, file: !1837, line: 59, baseType: !84, size: 64, offset: 384)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4050, file: !1837, line: 60, baseType: !84, size: 64, offset: 448)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4050, file: !1837, line: 61, baseType: !84, size: 64, offset: 512)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4050, file: !1837, line: 64, baseType: !84, size: 64, offset: 576)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4050, file: !1837, line: 65, baseType: !84, size: 64, offset: 640)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4050, file: !1837, line: 66, baseType: !84, size: 64, offset: 704)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4050, file: !1837, line: 68, baseType: !1852, size: 64, offset: 768)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4050, file: !1837, line: 70, baseType: !4066, size: 64, offset: 832)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4050, file: !1837, line: 72, baseType: !85, size: 32, offset: 896)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4050, file: !1837, line: 73, baseType: !85, size: 32, offset: 928)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4050, file: !1837, line: 74, baseType: !1816, size: 64, offset: 960)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4050, file: !1837, line: 77, baseType: !86, size: 16, offset: 1024)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4050, file: !1837, line: 78, baseType: !1861, size: 8, offset: 1040)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4050, file: !1837, line: 79, baseType: !1863, size: 8, offset: 1048)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4050, file: !1837, line: 81, baseType: !1867, size: 64, offset: 1088)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4050, file: !1837, line: 89, baseType: !1870, size: 64, offset: 1152)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4050, file: !1837, line: 91, baseType: !1872, size: 64, offset: 1216)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4050, file: !1837, line: 92, baseType: !1875, size: 64, offset: 1280)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4050, file: !1837, line: 93, baseType: !4066, size: 64, offset: 1344)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4050, file: !1837, line: 94, baseType: !77, size: 64, offset: 1408)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4050, file: !1837, line: 95, baseType: !79, size: 64, offset: 1472)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4050, file: !1837, line: 96, baseType: !85, size: 32, offset: 1536)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4050, file: !1837, line: 98, baseType: !1882, size: 160, offset: 1568)
!4082 = !DILocalVariable(name: "stream", arg: 1, scope: !4045, file: !251, line: 61, type: !4048)
!4083 = !DILocation(line: 61, column: 24, scope: !4045)
!4084 = !DILocalVariable(name: "command_name", arg: 2, scope: !4045, file: !251, line: 62, type: !74)
!4085 = !DILocation(line: 62, column: 30, scope: !4045)
!4086 = !DILocalVariable(name: "package", arg: 3, scope: !4045, file: !251, line: 62, type: !74)
!4087 = !DILocation(line: 62, column: 56, scope: !4045)
!4088 = !DILocalVariable(name: "version", arg: 4, scope: !4045, file: !251, line: 63, type: !74)
!4089 = !DILocation(line: 63, column: 30, scope: !4045)
!4090 = !DILocalVariable(name: "authors", arg: 5, scope: !4045, file: !251, line: 64, type: !1516)
!4091 = !DILocation(line: 64, column: 39, scope: !4045)
!4092 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4045, file: !251, line: 64, type: !79)
!4093 = !DILocation(line: 64, column: 55, scope: !4045)
!4094 = !DILocation(line: 66, column: 7, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4045, file: !251, line: 66, column: 7)
!4096 = !DILocation(line: 66, column: 7, scope: !4045)
!4097 = !DILocation(line: 67, column: 14, scope: !4095)
!4098 = !DILocation(line: 67, column: 38, scope: !4095)
!4099 = !DILocation(line: 67, column: 52, scope: !4095)
!4100 = !DILocation(line: 67, column: 61, scope: !4095)
!4101 = !DILocation(line: 67, column: 5, scope: !4095)
!4102 = !DILocation(line: 69, column: 14, scope: !4095)
!4103 = !DILocation(line: 69, column: 33, scope: !4095)
!4104 = !DILocation(line: 69, column: 42, scope: !4095)
!4105 = !DILocation(line: 69, column: 5, scope: !4095)
!4106 = !DILocation(line: 83, column: 12, scope: !4045)
!4107 = !DILocation(line: 83, column: 3, scope: !4045)
!4108 = !DILocation(line: 85, column: 3, scope: !4045)
!4109 = !DILocation(line: 88, column: 12, scope: !4045)
!4110 = !DILocation(line: 88, column: 3, scope: !4045)
!4111 = !DILocation(line: 95, column: 3, scope: !4045)
!4112 = !DILocation(line: 97, column: 11, scope: !4045)
!4113 = !DILocation(line: 97, column: 3, scope: !4045)
!4114 = !DILocation(line: 102, column: 7, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4045, file: !251, line: 98, column: 5)
!4116 = !DILocation(line: 105, column: 16, scope: !4115)
!4117 = !DILocation(line: 105, column: 47, scope: !4115)
!4118 = !DILocation(line: 105, column: 7, scope: !4115)
!4119 = !DILocation(line: 106, column: 7, scope: !4115)
!4120 = !DILocation(line: 109, column: 16, scope: !4115)
!4121 = !DILocation(line: 109, column: 54, scope: !4115)
!4122 = !DILocation(line: 109, column: 66, scope: !4115)
!4123 = !DILocation(line: 109, column: 7, scope: !4115)
!4124 = !DILocation(line: 110, column: 7, scope: !4115)
!4125 = !DILocation(line: 113, column: 16, scope: !4115)
!4126 = !DILocation(line: 114, column: 16, scope: !4115)
!4127 = !DILocation(line: 114, column: 28, scope: !4115)
!4128 = !DILocation(line: 114, column: 40, scope: !4115)
!4129 = !DILocation(line: 113, column: 7, scope: !4115)
!4130 = !DILocation(line: 115, column: 7, scope: !4115)
!4131 = !DILocation(line: 120, column: 16, scope: !4115)
!4132 = !DILocation(line: 121, column: 16, scope: !4115)
!4133 = !DILocation(line: 121, column: 28, scope: !4115)
!4134 = !DILocation(line: 121, column: 40, scope: !4115)
!4135 = !DILocation(line: 121, column: 52, scope: !4115)
!4136 = !DILocation(line: 120, column: 7, scope: !4115)
!4137 = !DILocation(line: 122, column: 7, scope: !4115)
!4138 = !DILocation(line: 127, column: 16, scope: !4115)
!4139 = !DILocation(line: 128, column: 16, scope: !4115)
!4140 = !DILocation(line: 128, column: 28, scope: !4115)
!4141 = !DILocation(line: 128, column: 40, scope: !4115)
!4142 = !DILocation(line: 128, column: 52, scope: !4115)
!4143 = !DILocation(line: 128, column: 64, scope: !4115)
!4144 = !DILocation(line: 127, column: 7, scope: !4115)
!4145 = !DILocation(line: 129, column: 7, scope: !4115)
!4146 = !DILocation(line: 134, column: 16, scope: !4115)
!4147 = !DILocation(line: 135, column: 16, scope: !4115)
!4148 = !DILocation(line: 135, column: 28, scope: !4115)
!4149 = !DILocation(line: 135, column: 40, scope: !4115)
!4150 = !DILocation(line: 135, column: 52, scope: !4115)
!4151 = !DILocation(line: 135, column: 64, scope: !4115)
!4152 = !DILocation(line: 136, column: 16, scope: !4115)
!4153 = !DILocation(line: 134, column: 7, scope: !4115)
!4154 = !DILocation(line: 137, column: 7, scope: !4115)
!4155 = !DILocation(line: 142, column: 16, scope: !4115)
!4156 = !DILocation(line: 143, column: 16, scope: !4115)
!4157 = !DILocation(line: 143, column: 28, scope: !4115)
!4158 = !DILocation(line: 143, column: 40, scope: !4115)
!4159 = !DILocation(line: 143, column: 52, scope: !4115)
!4160 = !DILocation(line: 143, column: 64, scope: !4115)
!4161 = !DILocation(line: 144, column: 16, scope: !4115)
!4162 = !DILocation(line: 144, column: 28, scope: !4115)
!4163 = !DILocation(line: 142, column: 7, scope: !4115)
!4164 = !DILocation(line: 145, column: 7, scope: !4115)
!4165 = !DILocation(line: 150, column: 16, scope: !4115)
!4166 = !DILocation(line: 152, column: 17, scope: !4115)
!4167 = !DILocation(line: 152, column: 29, scope: !4115)
!4168 = !DILocation(line: 152, column: 41, scope: !4115)
!4169 = !DILocation(line: 152, column: 53, scope: !4115)
!4170 = !DILocation(line: 152, column: 65, scope: !4115)
!4171 = !DILocation(line: 153, column: 17, scope: !4115)
!4172 = !DILocation(line: 153, column: 29, scope: !4115)
!4173 = !DILocation(line: 153, column: 41, scope: !4115)
!4174 = !DILocation(line: 150, column: 7, scope: !4115)
!4175 = !DILocation(line: 154, column: 7, scope: !4115)
!4176 = !DILocation(line: 159, column: 16, scope: !4115)
!4177 = !DILocation(line: 161, column: 16, scope: !4115)
!4178 = !DILocation(line: 161, column: 28, scope: !4115)
!4179 = !DILocation(line: 161, column: 40, scope: !4115)
!4180 = !DILocation(line: 161, column: 52, scope: !4115)
!4181 = !DILocation(line: 161, column: 64, scope: !4115)
!4182 = !DILocation(line: 162, column: 16, scope: !4115)
!4183 = !DILocation(line: 162, column: 28, scope: !4115)
!4184 = !DILocation(line: 162, column: 40, scope: !4115)
!4185 = !DILocation(line: 162, column: 52, scope: !4115)
!4186 = !DILocation(line: 159, column: 7, scope: !4115)
!4187 = !DILocation(line: 163, column: 7, scope: !4115)
!4188 = !DILocation(line: 170, column: 16, scope: !4115)
!4189 = !DILocation(line: 172, column: 17, scope: !4115)
!4190 = !DILocation(line: 172, column: 29, scope: !4115)
!4191 = !DILocation(line: 172, column: 41, scope: !4115)
!4192 = !DILocation(line: 172, column: 53, scope: !4115)
!4193 = !DILocation(line: 172, column: 65, scope: !4115)
!4194 = !DILocation(line: 173, column: 17, scope: !4115)
!4195 = !DILocation(line: 173, column: 29, scope: !4115)
!4196 = !DILocation(line: 173, column: 41, scope: !4115)
!4197 = !DILocation(line: 173, column: 53, scope: !4115)
!4198 = !DILocation(line: 170, column: 7, scope: !4115)
!4199 = !DILocation(line: 174, column: 7, scope: !4115)
!4200 = !DILocation(line: 176, column: 1, scope: !4045)
!4201 = distinct !DISubprogram(name: "version_etc_ar", scope: !251, file: !251, line: 183, type: !4202, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !146)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{null, !4048, !74, !74, !74, !1516}
!4204 = !DILocalVariable(name: "stream", arg: 1, scope: !4201, file: !251, line: 183, type: !4048)
!4205 = !DILocation(line: 183, column: 23, scope: !4201)
!4206 = !DILocalVariable(name: "command_name", arg: 2, scope: !4201, file: !251, line: 184, type: !74)
!4207 = !DILocation(line: 184, column: 29, scope: !4201)
!4208 = !DILocalVariable(name: "package", arg: 3, scope: !4201, file: !251, line: 184, type: !74)
!4209 = !DILocation(line: 184, column: 55, scope: !4201)
!4210 = !DILocalVariable(name: "version", arg: 4, scope: !4201, file: !251, line: 185, type: !74)
!4211 = !DILocation(line: 185, column: 29, scope: !4201)
!4212 = !DILocalVariable(name: "authors", arg: 5, scope: !4201, file: !251, line: 185, type: !1516)
!4213 = !DILocation(line: 185, column: 59, scope: !4201)
!4214 = !DILocalVariable(name: "n_authors", scope: !4201, file: !251, line: 187, type: !79)
!4215 = !DILocation(line: 187, column: 10, scope: !4201)
!4216 = !DILocation(line: 189, column: 18, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4201, file: !251, line: 189, column: 3)
!4218 = !DILocation(line: 189, column: 8, scope: !4217)
!4219 = !DILocation(line: 189, column: 23, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4217, file: !251, line: 189, column: 3)
!4221 = !DILocation(line: 189, column: 31, scope: !4220)
!4222 = !DILocation(line: 189, column: 3, scope: !4217)
!4223 = !DILocation(line: 189, column: 52, scope: !4220)
!4224 = !DILocation(line: 189, column: 3, scope: !4220)
!4225 = distinct !{!4225, !4222, !4226, !757}
!4226 = !DILocation(line: 190, column: 5, scope: !4217)
!4227 = !DILocation(line: 191, column: 20, scope: !4201)
!4228 = !DILocation(line: 191, column: 28, scope: !4201)
!4229 = !DILocation(line: 191, column: 42, scope: !4201)
!4230 = !DILocation(line: 191, column: 51, scope: !4201)
!4231 = !DILocation(line: 191, column: 60, scope: !4201)
!4232 = !DILocation(line: 191, column: 69, scope: !4201)
!4233 = !DILocation(line: 191, column: 3, scope: !4201)
!4234 = !DILocation(line: 192, column: 1, scope: !4201)
!4235 = distinct !DISubprogram(name: "version_etc_va", scope: !251, file: !251, line: 199, type: !4236, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !146)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{null, !4048, !74, !74, !74, !4238}
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4240)
!4240 = !{!4241, !4242, !4243, !4244}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4239, file: !251, line: 192, baseType: !6, size: 32)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4239, file: !251, line: 192, baseType: !6, size: 32, offset: 32)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4239, file: !251, line: 192, baseType: !77, size: 64, offset: 64)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4239, file: !251, line: 192, baseType: !77, size: 64, offset: 128)
!4245 = !DILocalVariable(name: "stream", arg: 1, scope: !4235, file: !251, line: 199, type: !4048)
!4246 = !DILocation(line: 199, column: 23, scope: !4235)
!4247 = !DILocalVariable(name: "command_name", arg: 2, scope: !4235, file: !251, line: 200, type: !74)
!4248 = !DILocation(line: 200, column: 29, scope: !4235)
!4249 = !DILocalVariable(name: "package", arg: 3, scope: !4235, file: !251, line: 200, type: !74)
!4250 = !DILocation(line: 200, column: 55, scope: !4235)
!4251 = !DILocalVariable(name: "version", arg: 4, scope: !4235, file: !251, line: 201, type: !74)
!4252 = !DILocation(line: 201, column: 29, scope: !4235)
!4253 = !DILocalVariable(name: "authors", arg: 5, scope: !4235, file: !251, line: 201, type: !4238)
!4254 = !DILocation(line: 201, column: 46, scope: !4235)
!4255 = !DILocalVariable(name: "n_authors", scope: !4235, file: !251, line: 203, type: !79)
!4256 = !DILocation(line: 203, column: 10, scope: !4235)
!4257 = !DILocalVariable(name: "authtab", scope: !4235, file: !251, line: 204, type: !4258)
!4258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 640, elements: !196)
!4259 = !DILocation(line: 204, column: 15, scope: !4235)
!4260 = !DILocation(line: 206, column: 18, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4235, file: !251, line: 206, column: 3)
!4262 = !DILocation(line: 206, column: 8, scope: !4261)
!4263 = !DILocation(line: 207, column: 8, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4261, file: !251, line: 206, column: 3)
!4265 = !DILocation(line: 207, column: 18, scope: !4264)
!4266 = !DILocation(line: 208, column: 10, scope: !4264)
!4267 = !DILocation(line: 208, column: 35, scope: !4264)
!4268 = !DILocation(line: 208, column: 22, scope: !4264)
!4269 = !DILocation(line: 208, column: 14, scope: !4264)
!4270 = !DILocation(line: 208, column: 33, scope: !4264)
!4271 = !DILocation(line: 208, column: 67, scope: !4264)
!4272 = !DILocation(line: 0, scope: !4264)
!4273 = !DILocation(line: 206, column: 3, scope: !4261)
!4274 = !DILocation(line: 209, column: 17, scope: !4264)
!4275 = !DILocation(line: 206, column: 3, scope: !4264)
!4276 = distinct !{!4276, !4273, !4277, !757}
!4277 = !DILocation(line: 210, column: 5, scope: !4261)
!4278 = !DILocation(line: 211, column: 20, scope: !4235)
!4279 = !DILocation(line: 211, column: 28, scope: !4235)
!4280 = !DILocation(line: 211, column: 42, scope: !4235)
!4281 = !DILocation(line: 211, column: 51, scope: !4235)
!4282 = !DILocation(line: 212, column: 20, scope: !4235)
!4283 = !DILocation(line: 212, column: 29, scope: !4235)
!4284 = !DILocation(line: 211, column: 3, scope: !4235)
!4285 = !DILocation(line: 213, column: 1, scope: !4235)
!4286 = distinct !DISubprogram(name: "version_etc", scope: !251, file: !251, line: 230, type: !4287, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !146)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{null, !4048, !74, !74, !74, null}
!4289 = !DILocalVariable(name: "stream", arg: 1, scope: !4286, file: !251, line: 230, type: !4048)
!4290 = !DILocation(line: 230, column: 20, scope: !4286)
!4291 = !DILocalVariable(name: "command_name", arg: 2, scope: !4286, file: !251, line: 231, type: !74)
!4292 = !DILocation(line: 231, column: 26, scope: !4286)
!4293 = !DILocalVariable(name: "package", arg: 3, scope: !4286, file: !251, line: 231, type: !74)
!4294 = !DILocation(line: 231, column: 52, scope: !4286)
!4295 = !DILocalVariable(name: "version", arg: 4, scope: !4286, file: !251, line: 232, type: !74)
!4296 = !DILocation(line: 232, column: 26, scope: !4286)
!4297 = !DILocalVariable(name: "authors", scope: !4286, file: !251, line: 234, type: !4298)
!4298 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1815, line: 52, baseType: !4299)
!4299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4300, line: 32, baseType: !4301)
!4300 = !DIFile(filename: "LLVM_12.0_src/llvm-project/build/lib/clang/12.0.1/include/stdarg.h", directory: "/nobackup")
!4301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !251, baseType: !4302)
!4302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4239, size: 192, elements: !1864)
!4303 = !DILocation(line: 234, column: 11, scope: !4286)
!4304 = !DILocation(line: 236, column: 3, scope: !4286)
!4305 = !DILocation(line: 237, column: 19, scope: !4286)
!4306 = !DILocation(line: 237, column: 27, scope: !4286)
!4307 = !DILocation(line: 237, column: 41, scope: !4286)
!4308 = !DILocation(line: 237, column: 50, scope: !4286)
!4309 = !DILocation(line: 237, column: 59, scope: !4286)
!4310 = !DILocation(line: 237, column: 3, scope: !4286)
!4311 = !DILocation(line: 238, column: 3, scope: !4286)
!4312 = !DILocation(line: 239, column: 1, scope: !4286)
!4313 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !251, file: !251, line: 242, type: !158, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !146)
!4314 = !DILocation(line: 244, column: 3, scope: !4313)
!4315 = !DILocation(line: 249, column: 3, scope: !4313)
!4316 = !DILocation(line: 255, column: 3, scope: !4313)
!4317 = !DILocation(line: 260, column: 3, scope: !4313)
!4318 = !DILocation(line: 262, column: 1, scope: !4313)
!4319 = distinct !DISubprogram(name: "xnmalloc", scope: !261, file: !261, line: 99, type: !4320, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !257, retainedNodes: !146)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{!77, !79, !79}
!4322 = !DILocalVariable(name: "n", arg: 1, scope: !4319, file: !261, line: 99, type: !79)
!4323 = !DILocation(line: 99, column: 18, scope: !4319)
!4324 = !DILocalVariable(name: "s", arg: 2, scope: !4319, file: !261, line: 99, type: !79)
!4325 = !DILocation(line: 99, column: 28, scope: !4319)
!4326 = !DILocation(line: 101, column: 7, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4319, file: !261, line: 101, column: 7)
!4328 = !DILocation(line: 101, column: 7, scope: !4319)
!4329 = !DILocation(line: 102, column: 5, scope: !4327)
!4330 = !DILocation(line: 103, column: 19, scope: !4319)
!4331 = !DILocation(line: 103, column: 23, scope: !4319)
!4332 = !DILocation(line: 103, column: 21, scope: !4319)
!4333 = !DILocation(line: 103, column: 10, scope: !4319)
!4334 = !DILocation(line: 103, column: 3, scope: !4319)
!4335 = distinct !DISubprogram(name: "xmalloc", scope: !258, file: !258, line: 39, type: !4336, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !257, retainedNodes: !146)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!77, !79}
!4338 = !DILocalVariable(name: "n", arg: 1, scope: !4335, file: !258, line: 39, type: !79)
!4339 = !DILocation(line: 39, column: 17, scope: !4335)
!4340 = !DILocalVariable(name: "p", scope: !4335, file: !258, line: 41, type: !77)
!4341 = !DILocation(line: 41, column: 9, scope: !4335)
!4342 = !DILocation(line: 41, column: 21, scope: !4335)
!4343 = !DILocation(line: 41, column: 13, scope: !4335)
!4344 = !DILocation(line: 42, column: 8, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4335, file: !258, line: 42, column: 7)
!4346 = !DILocation(line: 42, column: 10, scope: !4345)
!4347 = !DILocation(line: 42, column: 13, scope: !4345)
!4348 = !DILocation(line: 42, column: 15, scope: !4345)
!4349 = !DILocation(line: 42, column: 7, scope: !4335)
!4350 = !DILocation(line: 43, column: 5, scope: !4345)
!4351 = !DILocation(line: 44, column: 10, scope: !4335)
!4352 = !DILocation(line: 44, column: 3, scope: !4335)
!4353 = distinct !DISubprogram(name: "xnrealloc", scope: !261, file: !261, line: 112, type: !4354, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !257, retainedNodes: !146)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{!77, !77, !79, !79}
!4356 = !DILocalVariable(name: "p", arg: 1, scope: !4353, file: !261, line: 112, type: !77)
!4357 = !DILocation(line: 112, column: 18, scope: !4353)
!4358 = !DILocalVariable(name: "n", arg: 2, scope: !4353, file: !261, line: 112, type: !79)
!4359 = !DILocation(line: 112, column: 28, scope: !4353)
!4360 = !DILocalVariable(name: "s", arg: 3, scope: !4353, file: !261, line: 112, type: !79)
!4361 = !DILocation(line: 112, column: 38, scope: !4353)
!4362 = !DILocation(line: 114, column: 7, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4353, file: !261, line: 114, column: 7)
!4364 = !DILocation(line: 114, column: 7, scope: !4353)
!4365 = !DILocation(line: 115, column: 5, scope: !4363)
!4366 = !DILocation(line: 116, column: 20, scope: !4353)
!4367 = !DILocation(line: 116, column: 23, scope: !4353)
!4368 = !DILocation(line: 116, column: 27, scope: !4353)
!4369 = !DILocation(line: 116, column: 25, scope: !4353)
!4370 = !DILocation(line: 116, column: 10, scope: !4353)
!4371 = !DILocation(line: 116, column: 3, scope: !4353)
!4372 = distinct !DISubprogram(name: "xrealloc", scope: !258, file: !258, line: 51, type: !4373, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !257, retainedNodes: !146)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{!77, !77, !79}
!4375 = !DILocalVariable(name: "p", arg: 1, scope: !4372, file: !258, line: 51, type: !77)
!4376 = !DILocation(line: 51, column: 17, scope: !4372)
!4377 = !DILocalVariable(name: "n", arg: 2, scope: !4372, file: !258, line: 51, type: !79)
!4378 = !DILocation(line: 51, column: 27, scope: !4372)
!4379 = !DILocation(line: 53, column: 8, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4372, file: !258, line: 53, column: 7)
!4381 = !DILocation(line: 53, column: 10, scope: !4380)
!4382 = !DILocation(line: 53, column: 13, scope: !4380)
!4383 = !DILocation(line: 53, column: 7, scope: !4372)
!4384 = !DILocation(line: 57, column: 13, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4380, file: !258, line: 54, column: 5)
!4386 = !DILocation(line: 57, column: 7, scope: !4385)
!4387 = !DILocation(line: 58, column: 7, scope: !4385)
!4388 = !DILocation(line: 61, column: 16, scope: !4372)
!4389 = !DILocation(line: 61, column: 19, scope: !4372)
!4390 = !DILocation(line: 61, column: 7, scope: !4372)
!4391 = !DILocation(line: 61, column: 5, scope: !4372)
!4392 = !DILocation(line: 62, column: 8, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4372, file: !258, line: 62, column: 7)
!4394 = !DILocation(line: 62, column: 10, scope: !4393)
!4395 = !DILocation(line: 62, column: 13, scope: !4393)
!4396 = !DILocation(line: 62, column: 7, scope: !4372)
!4397 = !DILocation(line: 63, column: 5, scope: !4393)
!4398 = !DILocation(line: 64, column: 10, scope: !4372)
!4399 = !DILocation(line: 64, column: 3, scope: !4372)
!4400 = !DILocation(line: 65, column: 1, scope: !4372)
!4401 = !DILocalVariable(name: "p", arg: 1, scope: !262, file: !261, line: 174, type: !77)
!4402 = !DILocation(line: 174, column: 19, scope: !262)
!4403 = !DILocalVariable(name: "pn", arg: 2, scope: !262, file: !261, line: 174, type: !78)
!4404 = !DILocation(line: 174, column: 30, scope: !262)
!4405 = !DILocalVariable(name: "s", arg: 3, scope: !262, file: !261, line: 174, type: !79)
!4406 = !DILocation(line: 174, column: 41, scope: !262)
!4407 = !DILocalVariable(name: "n", scope: !262, file: !261, line: 176, type: !79)
!4408 = !DILocation(line: 176, column: 10, scope: !262)
!4409 = !DILocation(line: 176, column: 15, scope: !262)
!4410 = !DILocation(line: 176, column: 14, scope: !262)
!4411 = !DILocation(line: 178, column: 9, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !262, file: !261, line: 178, column: 7)
!4413 = !DILocation(line: 178, column: 7, scope: !262)
!4414 = !DILocation(line: 180, column: 13, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4416, file: !261, line: 180, column: 11)
!4416 = distinct !DILexicalBlock(scope: !4412, file: !261, line: 179, column: 5)
!4417 = !DILocation(line: 180, column: 11, scope: !4416)
!4418 = !DILocation(line: 188, column: 32, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4415, file: !261, line: 181, column: 9)
!4420 = !DILocation(line: 188, column: 30, scope: !4419)
!4421 = !DILocation(line: 188, column: 13, scope: !4419)
!4422 = !DILocation(line: 189, column: 17, scope: !4419)
!4423 = !DILocation(line: 189, column: 16, scope: !4419)
!4424 = !DILocation(line: 189, column: 13, scope: !4419)
!4425 = !DILocation(line: 190, column: 9, scope: !4419)
!4426 = !DILocation(line: 191, column: 11, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4416, file: !261, line: 191, column: 11)
!4428 = !DILocation(line: 191, column: 11, scope: !4416)
!4429 = !DILocation(line: 192, column: 9, scope: !4427)
!4430 = !DILocation(line: 193, column: 5, scope: !4416)
!4431 = !DILocation(line: 200, column: 71, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4433, file: !261, line: 200, column: 11)
!4433 = distinct !DILexicalBlock(scope: !4412, file: !261, line: 195, column: 5)
!4434 = !DILocation(line: 200, column: 69, scope: !4432)
!4435 = !DILocation(line: 201, column: 14, scope: !4432)
!4436 = !DILocation(line: 201, column: 11, scope: !4432)
!4437 = !DILocation(line: 200, column: 11, scope: !4433)
!4438 = !DILocation(line: 202, column: 9, scope: !4432)
!4439 = !DILocation(line: 203, column: 12, scope: !4433)
!4440 = !DILocation(line: 203, column: 14, scope: !4433)
!4441 = !DILocation(line: 203, column: 18, scope: !4433)
!4442 = !DILocation(line: 203, column: 9, scope: !4433)
!4443 = !DILocation(line: 206, column: 9, scope: !262)
!4444 = !DILocation(line: 206, column: 4, scope: !262)
!4445 = !DILocation(line: 206, column: 7, scope: !262)
!4446 = !DILocation(line: 207, column: 20, scope: !262)
!4447 = !DILocation(line: 207, column: 23, scope: !262)
!4448 = !DILocation(line: 207, column: 27, scope: !262)
!4449 = !DILocation(line: 207, column: 25, scope: !262)
!4450 = !DILocation(line: 207, column: 10, scope: !262)
!4451 = !DILocation(line: 207, column: 3, scope: !262)
!4452 = distinct !DISubprogram(name: "xcharalloc", scope: !261, file: !261, line: 216, type: !4453, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !257, retainedNodes: !146)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!84, !79}
!4455 = !DILocalVariable(name: "n", arg: 1, scope: !4452, file: !261, line: 216, type: !79)
!4456 = !DILocation(line: 216, column: 20, scope: !4452)
!4457 = !DILocation(line: 218, column: 10, scope: !4452)
!4458 = !DILocation(line: 218, column: 3, scope: !4452)
!4459 = distinct !DISubprogram(name: "x2realloc", scope: !258, file: !258, line: 74, type: !4460, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !257, retainedNodes: !146)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{!77, !77, !78}
!4462 = !DILocalVariable(name: "p", arg: 1, scope: !4459, file: !258, line: 74, type: !77)
!4463 = !DILocation(line: 74, column: 18, scope: !4459)
!4464 = !DILocalVariable(name: "pn", arg: 2, scope: !4459, file: !258, line: 74, type: !78)
!4465 = !DILocation(line: 74, column: 29, scope: !4459)
!4466 = !DILocation(line: 76, column: 22, scope: !4459)
!4467 = !DILocation(line: 76, column: 25, scope: !4459)
!4468 = !DILocation(line: 76, column: 10, scope: !4459)
!4469 = !DILocation(line: 76, column: 3, scope: !4459)
!4470 = distinct !DISubprogram(name: "xzalloc", scope: !258, file: !258, line: 84, type: !4336, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !257, retainedNodes: !146)
!4471 = !DILocalVariable(name: "n", arg: 1, scope: !4470, file: !258, line: 84, type: !79)
!4472 = !DILocation(line: 84, column: 17, scope: !4470)
!4473 = !DILocation(line: 86, column: 19, scope: !4470)
!4474 = !DILocation(line: 86, column: 10, scope: !4470)
!4475 = !DILocation(line: 86, column: 3, scope: !4470)
!4476 = distinct !DISubprogram(name: "xcalloc", scope: !258, file: !258, line: 93, type: !4320, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !257, retainedNodes: !146)
!4477 = !DILocalVariable(name: "n", arg: 1, scope: !4476, file: !258, line: 93, type: !79)
!4478 = !DILocation(line: 93, column: 17, scope: !4476)
!4479 = !DILocalVariable(name: "s", arg: 2, scope: !4476, file: !258, line: 93, type: !79)
!4480 = !DILocation(line: 93, column: 27, scope: !4476)
!4481 = !DILocalVariable(name: "p", scope: !4476, file: !258, line: 95, type: !77)
!4482 = !DILocation(line: 95, column: 9, scope: !4476)
!4483 = !DILocation(line: 100, column: 7, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4476, file: !258, line: 100, column: 7)
!4485 = !DILocation(line: 101, column: 7, scope: !4484)
!4486 = !DILocation(line: 101, column: 26, scope: !4484)
!4487 = !DILocation(line: 101, column: 29, scope: !4484)
!4488 = !DILocation(line: 101, column: 18, scope: !4484)
!4489 = !DILocation(line: 101, column: 16, scope: !4484)
!4490 = !DILocation(line: 100, column: 7, scope: !4476)
!4491 = !DILocation(line: 102, column: 5, scope: !4484)
!4492 = !DILocation(line: 103, column: 10, scope: !4476)
!4493 = !DILocation(line: 103, column: 3, scope: !4476)
!4494 = distinct !DISubprogram(name: "xmemdup", scope: !258, file: !258, line: 111, type: !4495, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !257, retainedNodes: !146)
!4495 = !DISubroutineType(types: !4496)
!4496 = !{!77, !82, !79}
!4497 = !DILocalVariable(name: "p", arg: 1, scope: !4494, file: !258, line: 111, type: !82)
!4498 = !DILocation(line: 111, column: 22, scope: !4494)
!4499 = !DILocalVariable(name: "s", arg: 2, scope: !4494, file: !258, line: 111, type: !79)
!4500 = !DILocation(line: 111, column: 32, scope: !4494)
!4501 = !DILocation(line: 113, column: 27, scope: !4494)
!4502 = !DILocation(line: 113, column: 18, scope: !4494)
!4503 = !DILocation(line: 113, column: 31, scope: !4494)
!4504 = !DILocation(line: 113, column: 34, scope: !4494)
!4505 = !DILocation(line: 113, column: 10, scope: !4494)
!4506 = !DILocation(line: 113, column: 3, scope: !4494)
!4507 = distinct !DISubprogram(name: "xstrdup", scope: !258, file: !258, line: 119, type: !3773, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !257, retainedNodes: !146)
!4508 = !DILocalVariable(name: "string", arg: 1, scope: !4507, file: !258, line: 119, type: !74)
!4509 = !DILocation(line: 119, column: 22, scope: !4507)
!4510 = !DILocation(line: 121, column: 19, scope: !4507)
!4511 = !DILocation(line: 121, column: 35, scope: !4507)
!4512 = !DILocation(line: 121, column: 27, scope: !4507)
!4513 = !DILocation(line: 121, column: 43, scope: !4507)
!4514 = !DILocation(line: 121, column: 10, scope: !4507)
!4515 = !DILocation(line: 121, column: 3, scope: !4507)
!4516 = distinct !DISubprogram(name: "xalloc_die", scope: !269, file: !269, line: 32, type: !158, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !268, retainedNodes: !146)
!4517 = !DILocation(line: 34, column: 10, scope: !4516)
!4518 = !DILocation(line: 34, column: 3, scope: !4516)
!4519 = !DILocation(line: 40, column: 3, scope: !4516)
!4520 = distinct !DISubprogram(name: "xstrtoumax", scope: !4521, file: !4521, line: 76, type: !4522, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !146)
!4521 = !DIFile(filename: "../lib/xstrtol.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!4524, !74, !791, !85, !4525, !74}
!4524 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !21, line: 38, baseType: !20)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!4526 = !DILocalVariable(name: "s", arg: 1, scope: !4520, file: !4521, line: 76, type: !74)
!4527 = !DILocation(line: 76, column: 24, scope: !4520)
!4528 = !DILocalVariable(name: "ptr", arg: 2, scope: !4520, file: !4521, line: 76, type: !791)
!4529 = !DILocation(line: 76, column: 34, scope: !4520)
!4530 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4520, file: !4521, line: 76, type: !85)
!4531 = !DILocation(line: 76, column: 43, scope: !4520)
!4532 = !DILocalVariable(name: "val", arg: 4, scope: !4520, file: !4521, line: 77, type: !4525)
!4533 = !DILocation(line: 77, column: 24, scope: !4520)
!4534 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4520, file: !4521, line: 77, type: !74)
!4535 = !DILocation(line: 77, column: 41, scope: !4520)
!4536 = !DILocalVariable(name: "t_ptr", scope: !4520, file: !4521, line: 79, type: !84)
!4537 = !DILocation(line: 79, column: 9, scope: !4520)
!4538 = !DILocalVariable(name: "p", scope: !4520, file: !4521, line: 80, type: !791)
!4539 = !DILocation(line: 80, column: 10, scope: !4520)
!4540 = !DILocalVariable(name: "tmp", scope: !4520, file: !4521, line: 81, type: !876)
!4541 = !DILocation(line: 81, column: 14, scope: !4520)
!4542 = !DILocalVariable(name: "err", scope: !4520, file: !4521, line: 82, type: !4524)
!4543 = !DILocation(line: 82, column: 16, scope: !4520)
!4544 = !DILocation(line: 84, column: 3, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4546, file: !4521, line: 84, column: 3)
!4546 = distinct !DILexicalBlock(scope: !4520, file: !4521, line: 84, column: 3)
!4547 = !DILocation(line: 84, column: 3, scope: !4546)
!4548 = !DILocation(line: 86, column: 8, scope: !4520)
!4549 = !DILocation(line: 86, column: 14, scope: !4520)
!4550 = !DILocation(line: 86, column: 5, scope: !4520)
!4551 = !DILocation(line: 88, column: 3, scope: !4520)
!4552 = !DILocation(line: 88, column: 9, scope: !4520)
!4553 = !DILocalVariable(name: "q", scope: !4554, file: !4521, line: 92, type: !74)
!4554 = distinct !DILexicalBlock(scope: !4555, file: !4521, line: 91, column: 5)
!4555 = distinct !DILexicalBlock(scope: !4520, file: !4521, line: 90, column: 7)
!4556 = !DILocation(line: 92, column: 19, scope: !4554)
!4557 = !DILocation(line: 92, column: 23, scope: !4554)
!4558 = !DILocalVariable(name: "ch", scope: !4554, file: !4521, line: 93, type: !289)
!4559 = !DILocation(line: 93, column: 21, scope: !4554)
!4560 = !DILocation(line: 93, column: 27, scope: !4554)
!4561 = !DILocation(line: 93, column: 26, scope: !4554)
!4562 = !DILocation(line: 94, column: 7, scope: !4554)
!4563 = !DILocation(line: 94, column: 14, scope: !4554)
!4564 = !DILocation(line: 95, column: 15, scope: !4554)
!4565 = !DILocation(line: 95, column: 14, scope: !4554)
!4566 = !DILocation(line: 95, column: 12, scope: !4554)
!4567 = distinct !{!4567, !4562, !4568, !757}
!4568 = !DILocation(line: 95, column: 17, scope: !4554)
!4569 = !DILocation(line: 96, column: 11, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4554, file: !4521, line: 96, column: 11)
!4571 = !DILocation(line: 96, column: 14, scope: !4570)
!4572 = !DILocation(line: 96, column: 11, scope: !4554)
!4573 = !DILocation(line: 97, column: 9, scope: !4570)
!4574 = !DILocation(line: 100, column: 19, scope: !4520)
!4575 = !DILocation(line: 100, column: 22, scope: !4520)
!4576 = !DILocation(line: 100, column: 25, scope: !4520)
!4577 = !DILocation(line: 100, column: 9, scope: !4520)
!4578 = !DILocation(line: 100, column: 7, scope: !4520)
!4579 = !DILocation(line: 102, column: 8, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4520, file: !4521, line: 102, column: 7)
!4581 = !DILocation(line: 102, column: 7, scope: !4580)
!4582 = !DILocation(line: 102, column: 13, scope: !4580)
!4583 = !DILocation(line: 102, column: 10, scope: !4580)
!4584 = !DILocation(line: 102, column: 7, scope: !4520)
!4585 = !DILocation(line: 106, column: 11, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4587, file: !4521, line: 106, column: 11)
!4587 = distinct !DILexicalBlock(scope: !4580, file: !4521, line: 103, column: 5)
!4588 = !DILocation(line: 106, column: 26, scope: !4586)
!4589 = !DILocation(line: 106, column: 31, scope: !4586)
!4590 = !DILocation(line: 106, column: 30, scope: !4586)
!4591 = !DILocation(line: 106, column: 29, scope: !4586)
!4592 = !DILocation(line: 106, column: 33, scope: !4586)
!4593 = !DILocation(line: 106, column: 44, scope: !4586)
!4594 = !DILocation(line: 106, column: 62, scope: !4586)
!4595 = !DILocation(line: 106, column: 61, scope: !4586)
!4596 = !DILocation(line: 106, column: 60, scope: !4586)
!4597 = !DILocation(line: 106, column: 36, scope: !4586)
!4598 = !DILocation(line: 106, column: 11, scope: !4587)
!4599 = !DILocation(line: 107, column: 13, scope: !4586)
!4600 = !DILocation(line: 107, column: 9, scope: !4586)
!4601 = !DILocation(line: 109, column: 9, scope: !4586)
!4602 = !DILocation(line: 110, column: 5, scope: !4587)
!4603 = !DILocation(line: 111, column: 12, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4580, file: !4521, line: 111, column: 12)
!4605 = !DILocation(line: 111, column: 18, scope: !4604)
!4606 = !DILocation(line: 111, column: 12, scope: !4580)
!4607 = !DILocation(line: 113, column: 11, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4609, file: !4521, line: 113, column: 11)
!4609 = distinct !DILexicalBlock(scope: !4604, file: !4521, line: 112, column: 5)
!4610 = !DILocation(line: 113, column: 17, scope: !4608)
!4611 = !DILocation(line: 113, column: 11, scope: !4609)
!4612 = !DILocation(line: 114, column: 9, scope: !4608)
!4613 = !DILocation(line: 115, column: 11, scope: !4609)
!4614 = !DILocation(line: 116, column: 5, scope: !4609)
!4615 = !DILocation(line: 121, column: 8, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4520, file: !4521, line: 121, column: 7)
!4617 = !DILocation(line: 121, column: 7, scope: !4520)
!4618 = !DILocation(line: 123, column: 14, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4616, file: !4521, line: 122, column: 5)
!4620 = !DILocation(line: 123, column: 8, scope: !4619)
!4621 = !DILocation(line: 123, column: 12, scope: !4619)
!4622 = !DILocation(line: 124, column: 14, scope: !4619)
!4623 = !DILocation(line: 124, column: 7, scope: !4619)
!4624 = !DILocation(line: 127, column: 9, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4520, file: !4521, line: 127, column: 7)
!4626 = !DILocation(line: 127, column: 8, scope: !4625)
!4627 = !DILocation(line: 127, column: 7, scope: !4625)
!4628 = !DILocation(line: 127, column: 11, scope: !4625)
!4629 = !DILocation(line: 127, column: 7, scope: !4520)
!4630 = !DILocalVariable(name: "base", scope: !4631, file: !4521, line: 129, type: !85)
!4631 = distinct !DILexicalBlock(scope: !4625, file: !4521, line: 128, column: 5)
!4632 = !DILocation(line: 129, column: 11, scope: !4631)
!4633 = !DILocalVariable(name: "suffixes", scope: !4631, file: !4521, line: 130, type: !85)
!4634 = !DILocation(line: 130, column: 11, scope: !4631)
!4635 = !DILocalVariable(name: "overflow", scope: !4631, file: !4521, line: 131, type: !4524)
!4636 = !DILocation(line: 131, column: 20, scope: !4631)
!4637 = !DILocation(line: 133, column: 20, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4631, file: !4521, line: 133, column: 11)
!4639 = !DILocation(line: 133, column: 38, scope: !4638)
!4640 = !DILocation(line: 133, column: 37, scope: !4638)
!4641 = !DILocation(line: 133, column: 36, scope: !4638)
!4642 = !DILocation(line: 133, column: 12, scope: !4638)
!4643 = !DILocation(line: 133, column: 11, scope: !4631)
!4644 = !DILocation(line: 135, column: 18, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4638, file: !4521, line: 134, column: 9)
!4646 = !DILocation(line: 135, column: 12, scope: !4645)
!4647 = !DILocation(line: 135, column: 16, scope: !4645)
!4648 = !DILocation(line: 136, column: 18, scope: !4645)
!4649 = !DILocation(line: 136, column: 22, scope: !4645)
!4650 = !DILocation(line: 136, column: 11, scope: !4645)
!4651 = !DILocation(line: 139, column: 17, scope: !4631)
!4652 = !DILocation(line: 139, column: 16, scope: !4631)
!4653 = !DILocation(line: 139, column: 15, scope: !4631)
!4654 = !DILocation(line: 139, column: 7, scope: !4631)
!4655 = !DILocation(line: 151, column: 23, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4657, file: !4521, line: 151, column: 15)
!4657 = distinct !DILexicalBlock(scope: !4631, file: !4521, line: 140, column: 9)
!4658 = !DILocation(line: 151, column: 15, scope: !4656)
!4659 = !DILocation(line: 151, column: 15, scope: !4657)
!4660 = !DILocation(line: 152, column: 21, scope: !4656)
!4661 = !DILocation(line: 152, column: 13, scope: !4656)
!4662 = !DILocation(line: 155, column: 21, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4664, file: !4521, line: 155, column: 21)
!4664 = distinct !DILexicalBlock(scope: !4656, file: !4521, line: 153, column: 15)
!4665 = !DILocation(line: 155, column: 29, scope: !4663)
!4666 = !DILocation(line: 155, column: 21, scope: !4664)
!4667 = !DILocation(line: 156, column: 28, scope: !4663)
!4668 = !DILocation(line: 156, column: 19, scope: !4663)
!4669 = !DILocation(line: 157, column: 17, scope: !4664)
!4670 = !DILocation(line: 161, column: 22, scope: !4664)
!4671 = !DILocation(line: 162, column: 25, scope: !4664)
!4672 = !DILocation(line: 163, column: 17, scope: !4664)
!4673 = !DILocation(line: 164, column: 15, scope: !4664)
!4674 = !DILocation(line: 165, column: 9, scope: !4657)
!4675 = !DILocation(line: 167, column: 17, scope: !4631)
!4676 = !DILocation(line: 167, column: 16, scope: !4631)
!4677 = !DILocation(line: 167, column: 15, scope: !4631)
!4678 = !DILocation(line: 167, column: 7, scope: !4631)
!4679 = !DILocation(line: 170, column: 22, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4631, file: !4521, line: 168, column: 9)
!4681 = !DILocation(line: 170, column: 20, scope: !4680)
!4682 = !DILocation(line: 171, column: 11, scope: !4680)
!4683 = !DILocation(line: 177, column: 22, scope: !4680)
!4684 = !DILocation(line: 177, column: 20, scope: !4680)
!4685 = !DILocation(line: 178, column: 11, scope: !4680)
!4686 = !DILocation(line: 181, column: 20, scope: !4680)
!4687 = !DILocation(line: 182, column: 11, scope: !4680)
!4688 = !DILocation(line: 185, column: 48, scope: !4680)
!4689 = !DILocation(line: 185, column: 22, scope: !4680)
!4690 = !DILocation(line: 185, column: 20, scope: !4680)
!4691 = !DILocation(line: 186, column: 11, scope: !4680)
!4692 = !DILocation(line: 190, column: 48, scope: !4680)
!4693 = !DILocation(line: 190, column: 22, scope: !4680)
!4694 = !DILocation(line: 190, column: 20, scope: !4680)
!4695 = !DILocation(line: 191, column: 11, scope: !4680)
!4696 = !DILocation(line: 195, column: 48, scope: !4680)
!4697 = !DILocation(line: 195, column: 22, scope: !4680)
!4698 = !DILocation(line: 195, column: 20, scope: !4680)
!4699 = !DILocation(line: 196, column: 11, scope: !4680)
!4700 = !DILocation(line: 200, column: 48, scope: !4680)
!4701 = !DILocation(line: 200, column: 22, scope: !4680)
!4702 = !DILocation(line: 200, column: 20, scope: !4680)
!4703 = !DILocation(line: 201, column: 11, scope: !4680)
!4704 = !DILocation(line: 204, column: 48, scope: !4680)
!4705 = !DILocation(line: 204, column: 22, scope: !4680)
!4706 = !DILocation(line: 204, column: 20, scope: !4680)
!4707 = !DILocation(line: 205, column: 11, scope: !4680)
!4708 = !DILocation(line: 209, column: 48, scope: !4680)
!4709 = !DILocation(line: 209, column: 22, scope: !4680)
!4710 = !DILocation(line: 209, column: 20, scope: !4680)
!4711 = !DILocation(line: 210, column: 11, scope: !4680)
!4712 = !DILocation(line: 213, column: 22, scope: !4680)
!4713 = !DILocation(line: 213, column: 20, scope: !4680)
!4714 = !DILocation(line: 214, column: 11, scope: !4680)
!4715 = !DILocation(line: 217, column: 48, scope: !4680)
!4716 = !DILocation(line: 217, column: 22, scope: !4680)
!4717 = !DILocation(line: 217, column: 20, scope: !4680)
!4718 = !DILocation(line: 218, column: 11, scope: !4680)
!4719 = !DILocation(line: 221, column: 48, scope: !4680)
!4720 = !DILocation(line: 221, column: 22, scope: !4680)
!4721 = !DILocation(line: 221, column: 20, scope: !4680)
!4722 = !DILocation(line: 222, column: 11, scope: !4680)
!4723 = !DILocation(line: 225, column: 18, scope: !4680)
!4724 = !DILocation(line: 225, column: 12, scope: !4680)
!4725 = !DILocation(line: 225, column: 16, scope: !4680)
!4726 = !DILocation(line: 226, column: 18, scope: !4680)
!4727 = !DILocation(line: 226, column: 22, scope: !4680)
!4728 = !DILocation(line: 226, column: 11, scope: !4680)
!4729 = !DILocation(line: 229, column: 14, scope: !4631)
!4730 = !DILocation(line: 229, column: 11, scope: !4631)
!4731 = !DILocation(line: 230, column: 13, scope: !4631)
!4732 = !DILocation(line: 230, column: 8, scope: !4631)
!4733 = !DILocation(line: 230, column: 10, scope: !4631)
!4734 = !DILocation(line: 231, column: 13, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4631, file: !4521, line: 231, column: 11)
!4736 = !DILocation(line: 231, column: 12, scope: !4735)
!4737 = !DILocation(line: 231, column: 11, scope: !4735)
!4738 = !DILocation(line: 231, column: 11, scope: !4631)
!4739 = !DILocation(line: 232, column: 13, scope: !4735)
!4740 = !DILocation(line: 232, column: 9, scope: !4735)
!4741 = !DILocation(line: 233, column: 5, scope: !4631)
!4742 = !DILocation(line: 235, column: 10, scope: !4520)
!4743 = !DILocation(line: 235, column: 4, scope: !4520)
!4744 = !DILocation(line: 235, column: 8, scope: !4520)
!4745 = !DILocation(line: 236, column: 10, scope: !4520)
!4746 = !DILocation(line: 236, column: 3, scope: !4520)
!4747 = !DILocation(line: 237, column: 1, scope: !4520)
!4748 = distinct !DISubprogram(name: "bkm_scale", scope: !4521, file: !4521, line: 48, type: !4749, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !270, retainedNodes: !146)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{!4524, !4525, !85}
!4751 = !DILocalVariable(name: "x", arg: 1, scope: !4748, file: !4521, line: 48, type: !4525)
!4752 = !DILocation(line: 48, column: 24, scope: !4748)
!4753 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4748, file: !4521, line: 48, type: !85)
!4754 = !DILocation(line: 48, column: 31, scope: !4748)
!4755 = !DILocation(line: 55, column: 26, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4748, file: !4521, line: 55, column: 7)
!4757 = !DILocation(line: 55, column: 24, scope: !4756)
!4758 = !DILocation(line: 55, column: 42, scope: !4756)
!4759 = !DILocation(line: 55, column: 41, scope: !4756)
!4760 = !DILocation(line: 55, column: 39, scope: !4756)
!4761 = !DILocation(line: 55, column: 7, scope: !4748)
!4762 = !DILocation(line: 57, column: 8, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4756, file: !4521, line: 56, column: 5)
!4764 = !DILocation(line: 57, column: 10, scope: !4763)
!4765 = !DILocation(line: 58, column: 7, scope: !4763)
!4766 = !DILocation(line: 60, column: 9, scope: !4748)
!4767 = !DILocation(line: 60, column: 4, scope: !4748)
!4768 = !DILocation(line: 60, column: 6, scope: !4748)
!4769 = !DILocation(line: 61, column: 3, scope: !4748)
!4770 = !DILocation(line: 62, column: 1, scope: !4748)
!4771 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4521, file: !4521, line: 65, type: !4772, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !270, retainedNodes: !146)
!4772 = !DISubroutineType(types: !4773)
!4773 = !{!4524, !4525, !85, !85}
!4774 = !DILocalVariable(name: "x", arg: 1, scope: !4771, file: !4521, line: 65, type: !4525)
!4775 = !DILocation(line: 65, column: 33, scope: !4771)
!4776 = !DILocalVariable(name: "base", arg: 2, scope: !4771, file: !4521, line: 65, type: !85)
!4777 = !DILocation(line: 65, column: 40, scope: !4771)
!4778 = !DILocalVariable(name: "power", arg: 3, scope: !4771, file: !4521, line: 65, type: !85)
!4779 = !DILocation(line: 65, column: 50, scope: !4771)
!4780 = !DILocalVariable(name: "err", scope: !4771, file: !4521, line: 67, type: !4524)
!4781 = !DILocation(line: 67, column: 16, scope: !4771)
!4782 = !DILocation(line: 68, column: 3, scope: !4771)
!4783 = !DILocation(line: 68, column: 15, scope: !4771)
!4784 = !DILocation(line: 69, column: 23, scope: !4771)
!4785 = !DILocation(line: 69, column: 26, scope: !4771)
!4786 = !DILocation(line: 69, column: 12, scope: !4771)
!4787 = !DILocation(line: 69, column: 9, scope: !4771)
!4788 = distinct !{!4788, !4782, !4789, !757}
!4789 = !DILocation(line: 69, column: 30, scope: !4771)
!4790 = !DILocation(line: 70, column: 10, scope: !4771)
!4791 = !DILocation(line: 70, column: 3, scope: !4771)
!4792 = distinct !DISubprogram(name: "rpl_fclose", scope: !275, file: !275, line: 58, type: !4793, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !146)
!4793 = !DISubroutineType(types: !4794)
!4794 = !{!85, !4795}
!4795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!4796 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1835, line: 7, baseType: !4797)
!4797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1837, line: 49, size: 1728, elements: !4798)
!4798 = !{!4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828}
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4797, file: !1837, line: 51, baseType: !85, size: 32)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4797, file: !1837, line: 54, baseType: !84, size: 64, offset: 64)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4797, file: !1837, line: 55, baseType: !84, size: 64, offset: 128)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4797, file: !1837, line: 56, baseType: !84, size: 64, offset: 192)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4797, file: !1837, line: 57, baseType: !84, size: 64, offset: 256)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4797, file: !1837, line: 58, baseType: !84, size: 64, offset: 320)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4797, file: !1837, line: 59, baseType: !84, size: 64, offset: 384)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4797, file: !1837, line: 60, baseType: !84, size: 64, offset: 448)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4797, file: !1837, line: 61, baseType: !84, size: 64, offset: 512)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4797, file: !1837, line: 64, baseType: !84, size: 64, offset: 576)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4797, file: !1837, line: 65, baseType: !84, size: 64, offset: 640)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4797, file: !1837, line: 66, baseType: !84, size: 64, offset: 704)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4797, file: !1837, line: 68, baseType: !1852, size: 64, offset: 768)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4797, file: !1837, line: 70, baseType: !4813, size: 64, offset: 832)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4797, file: !1837, line: 72, baseType: !85, size: 32, offset: 896)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4797, file: !1837, line: 73, baseType: !85, size: 32, offset: 928)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4797, file: !1837, line: 74, baseType: !1816, size: 64, offset: 960)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4797, file: !1837, line: 77, baseType: !86, size: 16, offset: 1024)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4797, file: !1837, line: 78, baseType: !1861, size: 8, offset: 1040)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4797, file: !1837, line: 79, baseType: !1863, size: 8, offset: 1048)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4797, file: !1837, line: 81, baseType: !1867, size: 64, offset: 1088)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4797, file: !1837, line: 89, baseType: !1870, size: 64, offset: 1152)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4797, file: !1837, line: 91, baseType: !1872, size: 64, offset: 1216)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4797, file: !1837, line: 92, baseType: !1875, size: 64, offset: 1280)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4797, file: !1837, line: 93, baseType: !4813, size: 64, offset: 1344)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4797, file: !1837, line: 94, baseType: !77, size: 64, offset: 1408)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4797, file: !1837, line: 95, baseType: !79, size: 64, offset: 1472)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4797, file: !1837, line: 96, baseType: !85, size: 32, offset: 1536)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4797, file: !1837, line: 98, baseType: !1882, size: 160, offset: 1568)
!4829 = !DILocalVariable(name: "fp", arg: 1, scope: !4792, file: !275, line: 58, type: !4795)
!4830 = !DILocation(line: 58, column: 19, scope: !4792)
!4831 = !DILocalVariable(name: "saved_errno", scope: !4792, file: !275, line: 60, type: !85)
!4832 = !DILocation(line: 60, column: 7, scope: !4792)
!4833 = !DILocalVariable(name: "fd", scope: !4792, file: !275, line: 61, type: !85)
!4834 = !DILocation(line: 61, column: 7, scope: !4792)
!4835 = !DILocalVariable(name: "result", scope: !4792, file: !275, line: 62, type: !85)
!4836 = !DILocation(line: 62, column: 7, scope: !4792)
!4837 = !DILocation(line: 65, column: 16, scope: !4792)
!4838 = !DILocation(line: 65, column: 8, scope: !4792)
!4839 = !DILocation(line: 65, column: 6, scope: !4792)
!4840 = !DILocation(line: 66, column: 7, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4792, file: !275, line: 66, column: 7)
!4842 = !DILocation(line: 66, column: 10, scope: !4841)
!4843 = !DILocation(line: 66, column: 7, scope: !4792)
!4844 = !DILocation(line: 67, column: 28, scope: !4841)
!4845 = !DILocation(line: 67, column: 12, scope: !4841)
!4846 = !DILocation(line: 67, column: 5, scope: !4841)
!4847 = !DILocation(line: 72, column: 9, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4792, file: !275, line: 72, column: 7)
!4849 = !DILocation(line: 72, column: 23, scope: !4848)
!4850 = !DILocation(line: 72, column: 41, scope: !4848)
!4851 = !DILocation(line: 72, column: 33, scope: !4848)
!4852 = !DILocation(line: 72, column: 26, scope: !4848)
!4853 = !DILocation(line: 72, column: 59, scope: !4848)
!4854 = !DILocation(line: 73, column: 7, scope: !4848)
!4855 = !DILocation(line: 73, column: 18, scope: !4848)
!4856 = !DILocation(line: 73, column: 10, scope: !4848)
!4857 = !DILocation(line: 72, column: 7, scope: !4792)
!4858 = !DILocation(line: 74, column: 19, scope: !4848)
!4859 = !DILocation(line: 74, column: 17, scope: !4848)
!4860 = !DILocation(line: 74, column: 5, scope: !4848)
!4861 = !DILocation(line: 100, column: 28, scope: !4792)
!4862 = !DILocation(line: 100, column: 12, scope: !4792)
!4863 = !DILocation(line: 100, column: 10, scope: !4792)
!4864 = !DILocation(line: 105, column: 7, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4792, file: !275, line: 105, column: 7)
!4866 = !DILocation(line: 105, column: 19, scope: !4865)
!4867 = !DILocation(line: 105, column: 7, scope: !4792)
!4868 = !DILocation(line: 107, column: 15, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4865, file: !275, line: 106, column: 5)
!4870 = !DILocation(line: 107, column: 7, scope: !4869)
!4871 = !DILocation(line: 107, column: 13, scope: !4869)
!4872 = !DILocation(line: 108, column: 14, scope: !4869)
!4873 = !DILocation(line: 109, column: 5, scope: !4869)
!4874 = !DILocation(line: 111, column: 10, scope: !4792)
!4875 = !DILocation(line: 111, column: 3, scope: !4792)
!4876 = !DILocation(line: 112, column: 1, scope: !4792)
!4877 = distinct !DISubprogram(name: "rpl_fflush", scope: !277, file: !277, line: 129, type: !4878, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !276, retainedNodes: !146)
!4878 = !DISubroutineType(types: !4879)
!4879 = !{!85, !4880}
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1835, line: 7, baseType: !4882)
!4882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1837, line: 49, size: 1728, elements: !4883)
!4883 = !{!4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913}
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4882, file: !1837, line: 51, baseType: !85, size: 32)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4882, file: !1837, line: 54, baseType: !84, size: 64, offset: 64)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4882, file: !1837, line: 55, baseType: !84, size: 64, offset: 128)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4882, file: !1837, line: 56, baseType: !84, size: 64, offset: 192)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4882, file: !1837, line: 57, baseType: !84, size: 64, offset: 256)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4882, file: !1837, line: 58, baseType: !84, size: 64, offset: 320)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4882, file: !1837, line: 59, baseType: !84, size: 64, offset: 384)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4882, file: !1837, line: 60, baseType: !84, size: 64, offset: 448)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4882, file: !1837, line: 61, baseType: !84, size: 64, offset: 512)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4882, file: !1837, line: 64, baseType: !84, size: 64, offset: 576)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4882, file: !1837, line: 65, baseType: !84, size: 64, offset: 640)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4882, file: !1837, line: 66, baseType: !84, size: 64, offset: 704)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4882, file: !1837, line: 68, baseType: !1852, size: 64, offset: 768)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4882, file: !1837, line: 70, baseType: !4898, size: 64, offset: 832)
!4898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4882, file: !1837, line: 72, baseType: !85, size: 32, offset: 896)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4882, file: !1837, line: 73, baseType: !85, size: 32, offset: 928)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4882, file: !1837, line: 74, baseType: !1816, size: 64, offset: 960)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4882, file: !1837, line: 77, baseType: !86, size: 16, offset: 1024)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4882, file: !1837, line: 78, baseType: !1861, size: 8, offset: 1040)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4882, file: !1837, line: 79, baseType: !1863, size: 8, offset: 1048)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4882, file: !1837, line: 81, baseType: !1867, size: 64, offset: 1088)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4882, file: !1837, line: 89, baseType: !1870, size: 64, offset: 1152)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4882, file: !1837, line: 91, baseType: !1872, size: 64, offset: 1216)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4882, file: !1837, line: 92, baseType: !1875, size: 64, offset: 1280)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4882, file: !1837, line: 93, baseType: !4898, size: 64, offset: 1344)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4882, file: !1837, line: 94, baseType: !77, size: 64, offset: 1408)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4882, file: !1837, line: 95, baseType: !79, size: 64, offset: 1472)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4882, file: !1837, line: 96, baseType: !85, size: 32, offset: 1536)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4882, file: !1837, line: 98, baseType: !1882, size: 160, offset: 1568)
!4914 = !DILocalVariable(name: "stream", arg: 1, scope: !4877, file: !277, line: 129, type: !4880)
!4915 = !DILocation(line: 129, column: 19, scope: !4877)
!4916 = !DILocation(line: 150, column: 7, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4877, file: !277, line: 150, column: 7)
!4918 = !DILocation(line: 150, column: 14, scope: !4917)
!4919 = !DILocation(line: 150, column: 22, scope: !4917)
!4920 = !DILocation(line: 150, column: 27, scope: !4917)
!4921 = !DILocation(line: 150, column: 7, scope: !4877)
!4922 = !DILocation(line: 151, column: 20, scope: !4917)
!4923 = !DILocation(line: 151, column: 12, scope: !4917)
!4924 = !DILocation(line: 151, column: 5, scope: !4917)
!4925 = !DILocation(line: 156, column: 44, scope: !4877)
!4926 = !DILocation(line: 156, column: 3, scope: !4877)
!4927 = !DILocation(line: 158, column: 18, scope: !4877)
!4928 = !DILocation(line: 158, column: 10, scope: !4877)
!4929 = !DILocation(line: 158, column: 3, scope: !4877)
!4930 = !DILocation(line: 235, column: 1, scope: !4877)
!4931 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !277, file: !277, line: 41, type: !4932, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !276, retainedNodes: !146)
!4932 = !DISubroutineType(types: !4933)
!4933 = !{null, !4880}
!4934 = !DILocalVariable(name: "fp", arg: 1, scope: !4931, file: !277, line: 41, type: !4880)
!4935 = !DILocation(line: 41, column: 48, scope: !4931)
!4936 = !DILocation(line: 43, column: 7, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4931, file: !277, line: 43, column: 7)
!4938 = !DILocation(line: 43, column: 11, scope: !4937)
!4939 = !DILocation(line: 43, column: 18, scope: !4937)
!4940 = !DILocation(line: 43, column: 7, scope: !4931)
!4941 = !DILocation(line: 45, column: 13, scope: !4937)
!4942 = !DILocation(line: 45, column: 5, scope: !4937)
!4943 = !DILocation(line: 46, column: 1, scope: !4931)
!4944 = distinct !DISubprogram(name: "rpl_fseeko", scope: !280, file: !280, line: 28, type: !4945, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !279, retainedNodes: !146)
!4945 = !DISubroutineType(types: !4946)
!4946 = !{!85, !4947, !1814, !85}
!4947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4948, size: 64)
!4948 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1835, line: 7, baseType: !4949)
!4949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1837, line: 49, size: 1728, elements: !4950)
!4950 = !{!4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4949, file: !1837, line: 51, baseType: !85, size: 32)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4949, file: !1837, line: 54, baseType: !84, size: 64, offset: 64)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4949, file: !1837, line: 55, baseType: !84, size: 64, offset: 128)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4949, file: !1837, line: 56, baseType: !84, size: 64, offset: 192)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4949, file: !1837, line: 57, baseType: !84, size: 64, offset: 256)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4949, file: !1837, line: 58, baseType: !84, size: 64, offset: 320)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4949, file: !1837, line: 59, baseType: !84, size: 64, offset: 384)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4949, file: !1837, line: 60, baseType: !84, size: 64, offset: 448)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4949, file: !1837, line: 61, baseType: !84, size: 64, offset: 512)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4949, file: !1837, line: 64, baseType: !84, size: 64, offset: 576)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4949, file: !1837, line: 65, baseType: !84, size: 64, offset: 640)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4949, file: !1837, line: 66, baseType: !84, size: 64, offset: 704)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4949, file: !1837, line: 68, baseType: !1852, size: 64, offset: 768)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4949, file: !1837, line: 70, baseType: !4965, size: 64, offset: 832)
!4965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4949, file: !1837, line: 72, baseType: !85, size: 32, offset: 896)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4949, file: !1837, line: 73, baseType: !85, size: 32, offset: 928)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4949, file: !1837, line: 74, baseType: !1816, size: 64, offset: 960)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4949, file: !1837, line: 77, baseType: !86, size: 16, offset: 1024)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4949, file: !1837, line: 78, baseType: !1861, size: 8, offset: 1040)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4949, file: !1837, line: 79, baseType: !1863, size: 8, offset: 1048)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4949, file: !1837, line: 81, baseType: !1867, size: 64, offset: 1088)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4949, file: !1837, line: 89, baseType: !1870, size: 64, offset: 1152)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4949, file: !1837, line: 91, baseType: !1872, size: 64, offset: 1216)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4949, file: !1837, line: 92, baseType: !1875, size: 64, offset: 1280)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4949, file: !1837, line: 93, baseType: !4965, size: 64, offset: 1344)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4949, file: !1837, line: 94, baseType: !77, size: 64, offset: 1408)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4949, file: !1837, line: 95, baseType: !79, size: 64, offset: 1472)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4949, file: !1837, line: 96, baseType: !85, size: 32, offset: 1536)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4949, file: !1837, line: 98, baseType: !1882, size: 160, offset: 1568)
!4981 = !DILocalVariable(name: "fp", arg: 1, scope: !4944, file: !280, line: 28, type: !4947)
!4982 = !DILocation(line: 28, column: 15, scope: !4944)
!4983 = !DILocalVariable(name: "offset", arg: 2, scope: !4944, file: !280, line: 28, type: !1814)
!4984 = !DILocation(line: 28, column: 25, scope: !4944)
!4985 = !DILocalVariable(name: "whence", arg: 3, scope: !4944, file: !280, line: 28, type: !85)
!4986 = !DILocation(line: 28, column: 37, scope: !4944)
!4987 = !DILocation(line: 52, column: 7, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4944, file: !280, line: 52, column: 7)
!4989 = !DILocation(line: 52, column: 11, scope: !4988)
!4990 = !DILocation(line: 52, column: 27, scope: !4988)
!4991 = !DILocation(line: 52, column: 31, scope: !4988)
!4992 = !DILocation(line: 52, column: 24, scope: !4988)
!4993 = !DILocation(line: 53, column: 7, scope: !4988)
!4994 = !DILocation(line: 53, column: 10, scope: !4988)
!4995 = !DILocation(line: 53, column: 14, scope: !4988)
!4996 = !DILocation(line: 53, column: 31, scope: !4988)
!4997 = !DILocation(line: 53, column: 35, scope: !4988)
!4998 = !DILocation(line: 53, column: 28, scope: !4988)
!4999 = !DILocation(line: 54, column: 7, scope: !4988)
!5000 = !DILocation(line: 54, column: 10, scope: !4988)
!5001 = !DILocation(line: 54, column: 14, scope: !4988)
!5002 = !DILocation(line: 54, column: 28, scope: !4988)
!5003 = !DILocation(line: 52, column: 7, scope: !4944)
!5004 = !DILocalVariable(name: "pos", scope: !5005, file: !280, line: 117, type: !1814)
!5005 = distinct !DILexicalBlock(scope: !4988, file: !280, line: 113, column: 5)
!5006 = !DILocation(line: 117, column: 13, scope: !5005)
!5007 = !DILocation(line: 117, column: 34, scope: !5005)
!5008 = !DILocation(line: 117, column: 26, scope: !5005)
!5009 = !DILocation(line: 117, column: 39, scope: !5005)
!5010 = !DILocation(line: 117, column: 47, scope: !5005)
!5011 = !DILocation(line: 117, column: 19, scope: !5005)
!5012 = !DILocation(line: 118, column: 11, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !5005, file: !280, line: 118, column: 11)
!5014 = !DILocation(line: 118, column: 15, scope: !5013)
!5015 = !DILocation(line: 118, column: 11, scope: !5005)
!5016 = !DILocation(line: 124, column: 11, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !5013, file: !280, line: 119, column: 9)
!5018 = !DILocation(line: 129, column: 7, scope: !5005)
!5019 = !DILocation(line: 129, column: 11, scope: !5005)
!5020 = !DILocation(line: 129, column: 18, scope: !5005)
!5021 = !DILocation(line: 130, column: 21, scope: !5005)
!5022 = !DILocation(line: 130, column: 7, scope: !5005)
!5023 = !DILocation(line: 130, column: 11, scope: !5005)
!5024 = !DILocation(line: 130, column: 19, scope: !5005)
!5025 = !DILocation(line: 161, column: 7, scope: !5005)
!5026 = !DILocation(line: 163, column: 18, scope: !4944)
!5027 = !DILocation(line: 163, column: 22, scope: !4944)
!5028 = !DILocation(line: 163, column: 30, scope: !4944)
!5029 = !DILocation(line: 163, column: 10, scope: !4944)
!5030 = !DILocation(line: 163, column: 3, scope: !4944)
!5031 = !DILocation(line: 164, column: 1, scope: !4944)
!5032 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !282, file: !282, line: 86, type: !5033, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !281, retainedNodes: !146)
!5033 = !DISubroutineType(types: !5034)
!5034 = !{!79, !5035, !74, !79, !5036}
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!5036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5037, size: 64)
!5037 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !3024, line: 6, baseType: !5038)
!5038 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !3026, line: 21, baseType: !5039)
!5039 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3026, line: 13, size: 64, elements: !5040)
!5040 = !{!5041, !5042}
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5039, file: !3026, line: 15, baseType: !85, size: 32)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5039, file: !3026, line: 20, baseType: !5043, size: 32, offset: 32)
!5043 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5039, file: !3026, line: 16, size: 32, elements: !5044)
!5044 = !{!5045, !5046}
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5043, file: !3026, line: 18, baseType: !6, size: 32)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5043, file: !3026, line: 19, baseType: !3035, size: 32)
!5047 = !DILocalVariable(name: "pwc", arg: 1, scope: !5032, file: !282, line: 86, type: !5035)
!5048 = !DILocation(line: 86, column: 23, scope: !5032)
!5049 = !DILocalVariable(name: "s", arg: 2, scope: !5032, file: !282, line: 86, type: !74)
!5050 = !DILocation(line: 86, column: 40, scope: !5032)
!5051 = !DILocalVariable(name: "n", arg: 3, scope: !5032, file: !282, line: 86, type: !79)
!5052 = !DILocation(line: 86, column: 50, scope: !5032)
!5053 = !DILocalVariable(name: "ps", arg: 4, scope: !5032, file: !282, line: 86, type: !5036)
!5054 = !DILocation(line: 86, column: 64, scope: !5032)
!5055 = !DILocalVariable(name: "ret", scope: !5032, file: !282, line: 88, type: !79)
!5056 = !DILocation(line: 88, column: 10, scope: !5032)
!5057 = !DILocalVariable(name: "wc", scope: !5032, file: !282, line: 89, type: !3051)
!5058 = !DILocation(line: 89, column: 11, scope: !5032)
!5059 = !DILocation(line: 105, column: 9, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !5032, file: !282, line: 105, column: 7)
!5061 = !DILocation(line: 105, column: 7, scope: !5032)
!5062 = !DILocation(line: 106, column: 9, scope: !5060)
!5063 = !DILocation(line: 106, column: 5, scope: !5060)
!5064 = !DILocation(line: 145, column: 18, scope: !5032)
!5065 = !DILocation(line: 145, column: 23, scope: !5032)
!5066 = !DILocation(line: 145, column: 26, scope: !5032)
!5067 = !DILocation(line: 145, column: 29, scope: !5032)
!5068 = !DILocation(line: 145, column: 9, scope: !5032)
!5069 = !DILocation(line: 145, column: 7, scope: !5032)
!5070 = !DILocation(line: 154, column: 22, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5032, file: !282, line: 154, column: 7)
!5072 = !DILocation(line: 154, column: 19, scope: !5071)
!5073 = !DILocation(line: 154, column: 26, scope: !5071)
!5074 = !DILocation(line: 154, column: 29, scope: !5071)
!5075 = !DILocation(line: 154, column: 31, scope: !5071)
!5076 = !DILocation(line: 154, column: 36, scope: !5071)
!5077 = !DILocation(line: 154, column: 41, scope: !5071)
!5078 = !DILocation(line: 154, column: 7, scope: !5032)
!5079 = !DILocalVariable(name: "uc", scope: !5080, file: !282, line: 156, type: !289)
!5080 = distinct !DILexicalBlock(scope: !5071, file: !282, line: 155, column: 5)
!5081 = !DILocation(line: 156, column: 21, scope: !5080)
!5082 = !DILocation(line: 156, column: 27, scope: !5080)
!5083 = !DILocation(line: 156, column: 26, scope: !5080)
!5084 = !DILocation(line: 157, column: 14, scope: !5080)
!5085 = !DILocation(line: 157, column: 8, scope: !5080)
!5086 = !DILocation(line: 157, column: 12, scope: !5080)
!5087 = !DILocation(line: 158, column: 7, scope: !5080)
!5088 = !DILocation(line: 162, column: 10, scope: !5032)
!5089 = !DILocation(line: 162, column: 3, scope: !5032)
!5090 = !DILocation(line: 163, column: 1, scope: !5032)
!5091 = distinct !DISubprogram(name: "c_strcasecmp", scope: !285, file: !285, line: 27, type: !5092, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !284, retainedNodes: !146)
!5092 = !DISubroutineType(types: !5093)
!5093 = !{!85, !74, !74}
!5094 = !DILocalVariable(name: "s1", arg: 1, scope: !5091, file: !285, line: 27, type: !74)
!5095 = !DILocation(line: 27, column: 27, scope: !5091)
!5096 = !DILocalVariable(name: "s2", arg: 2, scope: !5091, file: !285, line: 27, type: !74)
!5097 = !DILocation(line: 27, column: 43, scope: !5091)
!5098 = !DILocalVariable(name: "p1", scope: !5091, file: !285, line: 29, type: !287)
!5099 = !DILocation(line: 29, column: 33, scope: !5091)
!5100 = !DILocation(line: 29, column: 62, scope: !5091)
!5101 = !DILocalVariable(name: "p2", scope: !5091, file: !285, line: 30, type: !287)
!5102 = !DILocation(line: 30, column: 33, scope: !5091)
!5103 = !DILocation(line: 30, column: 62, scope: !5091)
!5104 = !DILocalVariable(name: "c1", scope: !5091, file: !285, line: 31, type: !289)
!5105 = !DILocation(line: 31, column: 17, scope: !5091)
!5106 = !DILocalVariable(name: "c2", scope: !5091, file: !285, line: 31, type: !289)
!5107 = !DILocation(line: 31, column: 21, scope: !5091)
!5108 = !DILocation(line: 33, column: 7, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5091, file: !285, line: 33, column: 7)
!5110 = !DILocation(line: 33, column: 13, scope: !5109)
!5111 = !DILocation(line: 33, column: 10, scope: !5109)
!5112 = !DILocation(line: 33, column: 7, scope: !5091)
!5113 = !DILocation(line: 34, column: 5, scope: !5109)
!5114 = !DILocation(line: 36, column: 3, scope: !5091)
!5115 = !DILocation(line: 38, column: 24, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5091, file: !285, line: 37, column: 5)
!5117 = !DILocation(line: 38, column: 23, scope: !5116)
!5118 = !DILocation(line: 38, column: 12, scope: !5116)
!5119 = !DILocation(line: 38, column: 10, scope: !5116)
!5120 = !DILocation(line: 39, column: 24, scope: !5116)
!5121 = !DILocation(line: 39, column: 23, scope: !5116)
!5122 = !DILocation(line: 39, column: 12, scope: !5116)
!5123 = !DILocation(line: 39, column: 10, scope: !5116)
!5124 = !DILocation(line: 41, column: 11, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5116, file: !285, line: 41, column: 11)
!5126 = !DILocation(line: 41, column: 14, scope: !5125)
!5127 = !DILocation(line: 41, column: 11, scope: !5116)
!5128 = !DILocation(line: 42, column: 9, scope: !5125)
!5129 = !DILocation(line: 44, column: 7, scope: !5116)
!5130 = !DILocation(line: 45, column: 7, scope: !5116)
!5131 = !DILocation(line: 46, column: 5, scope: !5116)
!5132 = !DILocation(line: 47, column: 10, scope: !5091)
!5133 = !DILocation(line: 47, column: 16, scope: !5091)
!5134 = !DILocation(line: 47, column: 13, scope: !5091)
!5135 = distinct !{!5135, !5114, !5136, !757}
!5136 = !DILocation(line: 47, column: 18, scope: !5091)
!5137 = !DILocation(line: 50, column: 12, scope: !5138)
!5138 = distinct !DILexicalBlock(scope: !5091, file: !285, line: 49, column: 7)
!5139 = !DILocation(line: 50, column: 17, scope: !5138)
!5140 = !DILocation(line: 50, column: 15, scope: !5138)
!5141 = !DILocation(line: 50, column: 5, scope: !5138)
!5142 = !DILocation(line: 56, column: 1, scope: !5091)
!5143 = distinct !DISubprogram(name: "close_stream", scope: !291, file: !291, line: 56, type: !5144, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !290, retainedNodes: !146)
!5144 = !DISubroutineType(types: !5145)
!5145 = !{!85, !5146}
!5146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5147, size: 64)
!5147 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1835, line: 7, baseType: !5148)
!5148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1837, line: 49, size: 1728, elements: !5149)
!5149 = !{!5150, !5151, !5152, !5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5163, !5165, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5177, !5178, !5179}
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5148, file: !1837, line: 51, baseType: !85, size: 32)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5148, file: !1837, line: 54, baseType: !84, size: 64, offset: 64)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5148, file: !1837, line: 55, baseType: !84, size: 64, offset: 128)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5148, file: !1837, line: 56, baseType: !84, size: 64, offset: 192)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5148, file: !1837, line: 57, baseType: !84, size: 64, offset: 256)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5148, file: !1837, line: 58, baseType: !84, size: 64, offset: 320)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5148, file: !1837, line: 59, baseType: !84, size: 64, offset: 384)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5148, file: !1837, line: 60, baseType: !84, size: 64, offset: 448)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5148, file: !1837, line: 61, baseType: !84, size: 64, offset: 512)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5148, file: !1837, line: 64, baseType: !84, size: 64, offset: 576)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5148, file: !1837, line: 65, baseType: !84, size: 64, offset: 640)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5148, file: !1837, line: 66, baseType: !84, size: 64, offset: 704)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5148, file: !1837, line: 68, baseType: !1852, size: 64, offset: 768)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5148, file: !1837, line: 70, baseType: !5164, size: 64, offset: 832)
!5164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5148, size: 64)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5148, file: !1837, line: 72, baseType: !85, size: 32, offset: 896)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5148, file: !1837, line: 73, baseType: !85, size: 32, offset: 928)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5148, file: !1837, line: 74, baseType: !1816, size: 64, offset: 960)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5148, file: !1837, line: 77, baseType: !86, size: 16, offset: 1024)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5148, file: !1837, line: 78, baseType: !1861, size: 8, offset: 1040)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5148, file: !1837, line: 79, baseType: !1863, size: 8, offset: 1048)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5148, file: !1837, line: 81, baseType: !1867, size: 64, offset: 1088)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5148, file: !1837, line: 89, baseType: !1870, size: 64, offset: 1152)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5148, file: !1837, line: 91, baseType: !1872, size: 64, offset: 1216)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5148, file: !1837, line: 92, baseType: !1875, size: 64, offset: 1280)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5148, file: !1837, line: 93, baseType: !5164, size: 64, offset: 1344)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5148, file: !1837, line: 94, baseType: !77, size: 64, offset: 1408)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5148, file: !1837, line: 95, baseType: !79, size: 64, offset: 1472)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5148, file: !1837, line: 96, baseType: !85, size: 32, offset: 1536)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5148, file: !1837, line: 98, baseType: !1882, size: 160, offset: 1568)
!5180 = !DILocalVariable(name: "stream", arg: 1, scope: !5143, file: !291, line: 56, type: !5146)
!5181 = !DILocation(line: 56, column: 21, scope: !5143)
!5182 = !DILocalVariable(name: "some_pending", scope: !5143, file: !291, line: 58, type: !5183)
!5183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!5184 = !DILocation(line: 58, column: 14, scope: !5143)
!5185 = !DILocation(line: 58, column: 42, scope: !5143)
!5186 = !DILocation(line: 58, column: 30, scope: !5143)
!5187 = !DILocation(line: 58, column: 50, scope: !5143)
!5188 = !DILocalVariable(name: "prev_fail", scope: !5143, file: !291, line: 59, type: !5183)
!5189 = !DILocation(line: 59, column: 14, scope: !5143)
!5190 = !DILocation(line: 59, column: 27, scope: !5143)
!5191 = !DILocation(line: 59, column: 43, scope: !5143)
!5192 = !DILocalVariable(name: "fclose_fail", scope: !5143, file: !291, line: 60, type: !5183)
!5193 = !DILocation(line: 60, column: 14, scope: !5143)
!5194 = !DILocation(line: 60, column: 37, scope: !5143)
!5195 = !DILocation(line: 60, column: 29, scope: !5143)
!5196 = !DILocation(line: 60, column: 45, scope: !5143)
!5197 = !DILocation(line: 70, column: 7, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5143, file: !291, line: 70, column: 7)
!5199 = !DILocation(line: 70, column: 17, scope: !5198)
!5200 = !DILocation(line: 70, column: 21, scope: !5198)
!5201 = !DILocation(line: 70, column: 33, scope: !5198)
!5202 = !DILocation(line: 70, column: 37, scope: !5198)
!5203 = !DILocation(line: 70, column: 50, scope: !5198)
!5204 = !DILocation(line: 70, column: 53, scope: !5198)
!5205 = !DILocation(line: 70, column: 59, scope: !5198)
!5206 = !DILocation(line: 70, column: 7, scope: !5143)
!5207 = !DILocation(line: 72, column: 13, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5209, file: !291, line: 72, column: 11)
!5209 = distinct !DILexicalBlock(scope: !5198, file: !291, line: 71, column: 5)
!5210 = !DILocation(line: 72, column: 11, scope: !5209)
!5211 = !DILocation(line: 73, column: 9, scope: !5208)
!5212 = !DILocation(line: 73, column: 15, scope: !5208)
!5213 = !DILocation(line: 74, column: 7, scope: !5209)
!5214 = !DILocation(line: 77, column: 3, scope: !5143)
!5215 = !DILocation(line: 78, column: 1, scope: !5143)
!5216 = distinct !DISubprogram(name: "hard_locale", scope: !293, file: !293, line: 27, type: !2023, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !292, retainedNodes: !146)
!5217 = !DILocalVariable(name: "category", arg: 1, scope: !5216, file: !293, line: 27, type: !85)
!5218 = !DILocation(line: 27, column: 18, scope: !5216)
!5219 = !DILocalVariable(name: "locale", scope: !5216, file: !293, line: 29, type: !5220)
!5220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 2056, elements: !5221)
!5221 = !{!5222}
!5222 = !DISubrange(count: 257)
!5223 = !DILocation(line: 29, column: 8, scope: !5216)
!5224 = !DILocation(line: 31, column: 25, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5216, file: !293, line: 31, column: 7)
!5226 = !DILocation(line: 31, column: 35, scope: !5225)
!5227 = !DILocation(line: 31, column: 7, scope: !5225)
!5228 = !DILocation(line: 31, column: 7, scope: !5216)
!5229 = !DILocation(line: 32, column: 5, scope: !5225)
!5230 = !DILocation(line: 34, column: 20, scope: !5216)
!5231 = !DILocation(line: 34, column: 12, scope: !5216)
!5232 = !DILocation(line: 34, column: 33, scope: !5216)
!5233 = !DILocation(line: 34, column: 38, scope: !5216)
!5234 = !DILocation(line: 34, column: 49, scope: !5216)
!5235 = !DILocation(line: 34, column: 41, scope: !5216)
!5236 = !DILocation(line: 34, column: 66, scope: !5216)
!5237 = !DILocation(line: 34, column: 10, scope: !5216)
!5238 = !DILocation(line: 34, column: 3, scope: !5216)
!5239 = !DILocation(line: 35, column: 1, scope: !5216)
!5240 = distinct !DISubprogram(name: "locale_charset", scope: !295, file: !295, line: 831, type: !5241, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !294, retainedNodes: !146)
!5241 = !DISubroutineType(types: !164)
!5242 = !DILocalVariable(name: "codeset", scope: !5240, file: !295, line: 833, type: !74)
!5243 = !DILocation(line: 833, column: 15, scope: !5240)
!5244 = !DILocation(line: 847, column: 13, scope: !5240)
!5245 = !DILocation(line: 847, column: 11, scope: !5240)
!5246 = !DILocation(line: 911, column: 7, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5240, file: !295, line: 911, column: 7)
!5248 = !DILocation(line: 911, column: 15, scope: !5247)
!5249 = !DILocation(line: 911, column: 7, scope: !5240)
!5250 = !DILocation(line: 913, column: 13, scope: !5247)
!5251 = !DILocation(line: 913, column: 5, scope: !5247)
!5252 = !DILocation(line: 1070, column: 13, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5254, file: !295, line: 1070, column: 13)
!5254 = distinct !DILexicalBlock(scope: !5255, file: !295, line: 1060, column: 7)
!5255 = distinct !DILexicalBlock(scope: !5240, file: !295, line: 1019, column: 3)
!5256 = !DILocation(line: 1070, column: 24, scope: !5253)
!5257 = !DILocation(line: 1070, column: 13, scope: !5254)
!5258 = !DILocation(line: 1071, column: 19, scope: !5253)
!5259 = !DILocation(line: 1071, column: 11, scope: !5253)
!5260 = !DILocation(line: 1158, column: 10, scope: !5240)
!5261 = !DILocation(line: 1158, column: 3, scope: !5240)
!5262 = distinct !DISubprogram(name: "setlocale_null_r", scope: !684, file: !684, line: 269, type: !5263, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !683, retainedNodes: !146)
!5263 = !DISubroutineType(types: !5264)
!5264 = !{!85, !85, !84, !79}
!5265 = !DILocalVariable(name: "category", arg: 1, scope: !5262, file: !684, line: 269, type: !85)
!5266 = !DILocation(line: 269, column: 23, scope: !5262)
!5267 = !DILocalVariable(name: "buf", arg: 2, scope: !5262, file: !684, line: 269, type: !84)
!5268 = !DILocation(line: 269, column: 39, scope: !5262)
!5269 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5262, file: !684, line: 269, type: !79)
!5270 = !DILocation(line: 269, column: 51, scope: !5262)
!5271 = !DILocation(line: 274, column: 35, scope: !5262)
!5272 = !DILocation(line: 274, column: 45, scope: !5262)
!5273 = !DILocation(line: 274, column: 50, scope: !5262)
!5274 = !DILocation(line: 274, column: 10, scope: !5262)
!5275 = !DILocation(line: 274, column: 3, scope: !5262)
!5276 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !684, file: !684, line: 91, type: !5263, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !683, retainedNodes: !146)
!5277 = !DILocalVariable(name: "category", arg: 1, scope: !5276, file: !684, line: 91, type: !85)
!5278 = !DILocation(line: 91, column: 30, scope: !5276)
!5279 = !DILocalVariable(name: "buf", arg: 2, scope: !5276, file: !684, line: 91, type: !84)
!5280 = !DILocation(line: 91, column: 46, scope: !5276)
!5281 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5276, file: !684, line: 91, type: !79)
!5282 = !DILocation(line: 91, column: 58, scope: !5276)
!5283 = !DILocalVariable(name: "result", scope: !5276, file: !684, line: 140, type: !74)
!5284 = !DILocation(line: 140, column: 15, scope: !5276)
!5285 = !DILocation(line: 140, column: 51, scope: !5276)
!5286 = !DILocation(line: 140, column: 24, scope: !5276)
!5287 = !DILocation(line: 142, column: 7, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5276, file: !684, line: 142, column: 7)
!5289 = !DILocation(line: 142, column: 14, scope: !5288)
!5290 = !DILocation(line: 142, column: 7, scope: !5276)
!5291 = !DILocation(line: 145, column: 11, scope: !5292)
!5292 = distinct !DILexicalBlock(scope: !5293, file: !684, line: 145, column: 11)
!5293 = distinct !DILexicalBlock(scope: !5288, file: !684, line: 143, column: 5)
!5294 = !DILocation(line: 145, column: 19, scope: !5292)
!5295 = !DILocation(line: 145, column: 11, scope: !5293)
!5296 = !DILocation(line: 149, column: 9, scope: !5292)
!5297 = !DILocation(line: 149, column: 16, scope: !5292)
!5298 = !DILocation(line: 150, column: 7, scope: !5293)
!5299 = !DILocalVariable(name: "length", scope: !5300, file: !684, line: 154, type: !79)
!5300 = distinct !DILexicalBlock(scope: !5288, file: !684, line: 153, column: 5)
!5301 = !DILocation(line: 154, column: 14, scope: !5300)
!5302 = !DILocation(line: 154, column: 31, scope: !5300)
!5303 = !DILocation(line: 154, column: 23, scope: !5300)
!5304 = !DILocation(line: 155, column: 11, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5300, file: !684, line: 155, column: 11)
!5306 = !DILocation(line: 155, column: 20, scope: !5305)
!5307 = !DILocation(line: 155, column: 18, scope: !5305)
!5308 = !DILocation(line: 155, column: 11, scope: !5300)
!5309 = !DILocation(line: 157, column: 19, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5305, file: !684, line: 156, column: 9)
!5311 = !DILocation(line: 157, column: 24, scope: !5310)
!5312 = !DILocation(line: 157, column: 32, scope: !5310)
!5313 = !DILocation(line: 157, column: 39, scope: !5310)
!5314 = !DILocation(line: 157, column: 11, scope: !5310)
!5315 = !DILocation(line: 158, column: 11, scope: !5310)
!5316 = !DILocation(line: 162, column: 15, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5318, file: !684, line: 162, column: 15)
!5318 = distinct !DILexicalBlock(scope: !5305, file: !684, line: 161, column: 9)
!5319 = !DILocation(line: 162, column: 23, scope: !5317)
!5320 = !DILocation(line: 162, column: 15, scope: !5318)
!5321 = !DILocation(line: 167, column: 23, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5317, file: !684, line: 163, column: 13)
!5323 = !DILocation(line: 167, column: 28, scope: !5322)
!5324 = !DILocation(line: 167, column: 36, scope: !5322)
!5325 = !DILocation(line: 167, column: 44, scope: !5322)
!5326 = !DILocation(line: 167, column: 15, scope: !5322)
!5327 = !DILocation(line: 168, column: 15, scope: !5322)
!5328 = !DILocation(line: 168, column: 19, scope: !5322)
!5329 = !DILocation(line: 168, column: 27, scope: !5322)
!5330 = !DILocation(line: 168, column: 32, scope: !5322)
!5331 = !DILocation(line: 169, column: 13, scope: !5322)
!5332 = !DILocation(line: 170, column: 11, scope: !5318)
!5333 = !DILocation(line: 174, column: 1, scope: !5276)
!5334 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !684, file: !684, line: 60, type: !5335, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !683, retainedNodes: !146)
!5335 = !DISubroutineType(types: !5336)
!5336 = !{!74, !85}
!5337 = !DILocalVariable(name: "category", arg: 1, scope: !5334, file: !684, line: 60, type: !85)
!5338 = !DILocation(line: 60, column: 32, scope: !5334)
!5339 = !DILocalVariable(name: "result", scope: !5334, file: !684, line: 62, type: !74)
!5340 = !DILocation(line: 62, column: 15, scope: !5334)
!5341 = !DILocation(line: 62, column: 35, scope: !5334)
!5342 = !DILocation(line: 62, column: 24, scope: !5334)
!5343 = !DILocation(line: 87, column: 10, scope: !5334)
!5344 = !DILocation(line: 87, column: 3, scope: !5334)
!5345 = distinct !DISubprogram(name: "setlocale_null", scope: !684, file: !684, line: 301, type: !5335, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !683, retainedNodes: !146)
!5346 = !DILocalVariable(name: "category", arg: 1, scope: !5345, file: !684, line: 301, type: !85)
!5347 = !DILocation(line: 301, column: 21, scope: !5345)
!5348 = !DILocation(line: 304, column: 37, scope: !5345)
!5349 = !DILocation(line: 304, column: 10, scope: !5345)
!5350 = !DILocation(line: 304, column: 3, scope: !5345)
!5351 = distinct !DISubprogram(name: "c_isalnum", scope: !5352, file: !5352, line: 169, type: !2023, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !685, retainedNodes: !146)
!5352 = !DIFile(filename: "../lib/c-ctype.h", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!5353 = !DILocalVariable(name: "c", arg: 1, scope: !5351, file: !5352, line: 169, type: !85)
!5354 = !DILocation(line: 169, column: 16, scope: !5351)
!5355 = !DILocation(line: 171, column: 11, scope: !5351)
!5356 = !DILocation(line: 171, column: 3, scope: !5351)
!5357 = !DILocation(line: 176, column: 7, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5351, file: !5352, line: 172, column: 5)
!5359 = !DILocation(line: 178, column: 7, scope: !5358)
!5360 = !DILocation(line: 180, column: 1, scope: !5351)
!5361 = distinct !DISubprogram(name: "c_isalpha", scope: !5352, file: !5352, line: 183, type: !2023, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !685, retainedNodes: !146)
!5362 = !DILocalVariable(name: "c", arg: 1, scope: !5361, file: !5352, line: 183, type: !85)
!5363 = !DILocation(line: 183, column: 16, scope: !5361)
!5364 = !DILocation(line: 185, column: 11, scope: !5361)
!5365 = !DILocation(line: 185, column: 3, scope: !5361)
!5366 = !DILocation(line: 189, column: 7, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5361, file: !5352, line: 186, column: 5)
!5368 = !DILocation(line: 191, column: 7, scope: !5367)
!5369 = !DILocation(line: 193, column: 1, scope: !5361)
!5370 = distinct !DISubprogram(name: "c_isascii", scope: !5352, file: !5352, line: 198, type: !2023, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !685, retainedNodes: !146)
!5371 = !DILocalVariable(name: "c", arg: 1, scope: !5370, file: !5352, line: 198, type: !85)
!5372 = !DILocation(line: 198, column: 16, scope: !5370)
!5373 = !DILocation(line: 200, column: 11, scope: !5370)
!5374 = !DILocation(line: 200, column: 3, scope: !5370)
!5375 = !DILocation(line: 208, column: 7, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5370, file: !5352, line: 201, column: 5)
!5377 = !DILocation(line: 210, column: 7, scope: !5376)
!5378 = !DILocation(line: 212, column: 1, scope: !5370)
!5379 = distinct !DISubprogram(name: "c_isblank", scope: !5352, file: !5352, line: 215, type: !2023, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !685, retainedNodes: !146)
!5380 = !DILocalVariable(name: "c", arg: 1, scope: !5379, file: !5352, line: 215, type: !85)
!5381 = !DILocation(line: 215, column: 16, scope: !5379)
!5382 = !DILocation(line: 217, column: 10, scope: !5379)
!5383 = !DILocation(line: 217, column: 12, scope: !5379)
!5384 = !DILocation(line: 217, column: 19, scope: !5379)
!5385 = !DILocation(line: 217, column: 22, scope: !5379)
!5386 = !DILocation(line: 217, column: 24, scope: !5379)
!5387 = !DILocation(line: 217, column: 3, scope: !5379)
!5388 = distinct !DISubprogram(name: "c_iscntrl", scope: !5352, file: !5352, line: 221, type: !2023, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !685, retainedNodes: !146)
!5389 = !DILocalVariable(name: "c", arg: 1, scope: !5388, file: !5352, line: 221, type: !85)
!5390 = !DILocation(line: 221, column: 16, scope: !5388)
!5391 = !DILocation(line: 223, column: 11, scope: !5388)
!5392 = !DILocation(line: 223, column: 3, scope: !5388)
!5393 = !DILocation(line: 226, column: 7, scope: !5394)
!5394 = distinct !DILexicalBlock(scope: !5388, file: !5352, line: 224, column: 5)
!5395 = !DILocation(line: 228, column: 7, scope: !5394)
!5396 = !DILocation(line: 230, column: 1, scope: !5388)
!5397 = distinct !DISubprogram(name: "c_isdigit", scope: !5352, file: !5352, line: 233, type: !2023, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !685, retainedNodes: !146)
!5398 = !DILocalVariable(name: "c", arg: 1, scope: !5397, file: !5352, line: 233, type: !85)
!5399 = !DILocation(line: 233, column: 16, scope: !5397)
!5400 = !DILocation(line: 235, column: 11, scope: !5397)
!5401 = !DILocation(line: 235, column: 3, scope: !5397)
!5402 = !DILocation(line: 238, column: 7, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !5397, file: !5352, line: 236, column: 5)
!5404 = !DILocation(line: 240, column: 7, scope: !5403)
!5405 = !DILocation(line: 242, column: 1, scope: !5397)
!5406 = distinct !DISubprogram(name: "c_isgraph", scope: !5352, file: !5352, line: 245, type: !2023, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !685, retainedNodes: !146)
!5407 = !DILocalVariable(name: "c", arg: 1, scope: !5406, file: !5352, line: 245, type: !85)
!5408 = !DILocation(line: 245, column: 16, scope: !5406)
!5409 = !DILocation(line: 247, column: 11, scope: !5406)
!5410 = !DILocation(line: 247, column: 3, scope: !5406)
!5411 = !DILocation(line: 253, column: 7, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5406, file: !5352, line: 248, column: 5)
!5413 = !DILocation(line: 255, column: 7, scope: !5412)
!5414 = !DILocation(line: 257, column: 1, scope: !5406)
!5415 = distinct !DISubprogram(name: "c_islower", scope: !5352, file: !5352, line: 260, type: !2023, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !685, retainedNodes: !146)
!5416 = !DILocalVariable(name: "c", arg: 1, scope: !5415, file: !5352, line: 260, type: !85)
!5417 = !DILocation(line: 260, column: 16, scope: !5415)
!5418 = !DILocation(line: 262, column: 11, scope: !5415)
!5419 = !DILocation(line: 262, column: 3, scope: !5415)
!5420 = !DILocation(line: 265, column: 7, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5415, file: !5352, line: 263, column: 5)
!5422 = !DILocation(line: 267, column: 7, scope: !5421)
!5423 = !DILocation(line: 269, column: 1, scope: !5415)
!5424 = distinct !DISubprogram(name: "c_isprint", scope: !5352, file: !5352, line: 272, type: !2023, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !685, retainedNodes: !146)
!5425 = !DILocalVariable(name: "c", arg: 1, scope: !5424, file: !5352, line: 272, type: !85)
!5426 = !DILocation(line: 272, column: 16, scope: !5424)
!5427 = !DILocation(line: 274, column: 11, scope: !5424)
!5428 = !DILocation(line: 274, column: 3, scope: !5424)
!5429 = !DILocation(line: 281, column: 7, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5424, file: !5352, line: 275, column: 5)
!5431 = !DILocation(line: 283, column: 7, scope: !5430)
!5432 = !DILocation(line: 285, column: 1, scope: !5424)
!5433 = distinct !DISubprogram(name: "c_ispunct", scope: !5352, file: !5352, line: 288, type: !2023, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !685, retainedNodes: !146)
!5434 = !DILocalVariable(name: "c", arg: 1, scope: !5433, file: !5352, line: 288, type: !85)
!5435 = !DILocation(line: 288, column: 16, scope: !5433)
!5436 = !DILocation(line: 290, column: 11, scope: !5433)
!5437 = !DILocation(line: 290, column: 3, scope: !5433)
!5438 = !DILocation(line: 293, column: 7, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5433, file: !5352, line: 291, column: 5)
!5440 = !DILocation(line: 295, column: 7, scope: !5439)
!5441 = !DILocation(line: 297, column: 1, scope: !5433)
!5442 = distinct !DISubprogram(name: "c_isspace", scope: !5352, file: !5352, line: 300, type: !2023, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !685, retainedNodes: !146)
!5443 = !DILocalVariable(name: "c", arg: 1, scope: !5442, file: !5352, line: 300, type: !85)
!5444 = !DILocation(line: 300, column: 16, scope: !5442)
!5445 = !DILocation(line: 302, column: 11, scope: !5442)
!5446 = !DILocation(line: 302, column: 3, scope: !5442)
!5447 = !DILocation(line: 305, column: 7, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5442, file: !5352, line: 303, column: 5)
!5449 = !DILocation(line: 307, column: 7, scope: !5448)
!5450 = !DILocation(line: 309, column: 1, scope: !5442)
!5451 = distinct !DISubprogram(name: "c_isupper", scope: !5352, file: !5352, line: 312, type: !2023, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !685, retainedNodes: !146)
!5452 = !DILocalVariable(name: "c", arg: 1, scope: !5451, file: !5352, line: 312, type: !85)
!5453 = !DILocation(line: 312, column: 16, scope: !5451)
!5454 = !DILocation(line: 314, column: 11, scope: !5451)
!5455 = !DILocation(line: 314, column: 3, scope: !5451)
!5456 = !DILocation(line: 317, column: 7, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5451, file: !5352, line: 315, column: 5)
!5458 = !DILocation(line: 319, column: 7, scope: !5457)
!5459 = !DILocation(line: 321, column: 1, scope: !5451)
!5460 = distinct !DISubprogram(name: "c_isxdigit", scope: !5352, file: !5352, line: 324, type: !2023, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !685, retainedNodes: !146)
!5461 = !DILocalVariable(name: "c", arg: 1, scope: !5460, file: !5352, line: 324, type: !85)
!5462 = !DILocation(line: 324, column: 17, scope: !5460)
!5463 = !DILocation(line: 326, column: 11, scope: !5460)
!5464 = !DILocation(line: 326, column: 3, scope: !5460)
!5465 = !DILocation(line: 330, column: 7, scope: !5466)
!5466 = distinct !DILexicalBlock(scope: !5460, file: !5352, line: 327, column: 5)
!5467 = !DILocation(line: 332, column: 7, scope: !5466)
!5468 = !DILocation(line: 334, column: 1, scope: !5460)
!5469 = distinct !DISubprogram(name: "c_tolower", scope: !5352, file: !5352, line: 337, type: !5470, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !685, retainedNodes: !146)
!5470 = !DISubroutineType(types: !5471)
!5471 = !{!85, !85}
!5472 = !DILocalVariable(name: "c", arg: 1, scope: !5469, file: !5352, line: 337, type: !85)
!5473 = !DILocation(line: 337, column: 16, scope: !5469)
!5474 = !DILocation(line: 339, column: 11, scope: !5469)
!5475 = !DILocation(line: 339, column: 3, scope: !5469)
!5476 = !DILocation(line: 342, column: 14, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5469, file: !5352, line: 340, column: 5)
!5478 = !DILocation(line: 342, column: 16, scope: !5477)
!5479 = !DILocation(line: 342, column: 22, scope: !5477)
!5480 = !DILocation(line: 342, column: 7, scope: !5477)
!5481 = !DILocation(line: 344, column: 14, scope: !5477)
!5482 = !DILocation(line: 344, column: 7, scope: !5477)
!5483 = !DILocation(line: 346, column: 1, scope: !5469)
!5484 = distinct !DISubprogram(name: "c_toupper", scope: !5352, file: !5352, line: 349, type: !5470, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !685, retainedNodes: !146)
!5485 = !DILocalVariable(name: "c", arg: 1, scope: !5484, file: !5352, line: 349, type: !85)
!5486 = !DILocation(line: 349, column: 16, scope: !5484)
!5487 = !DILocation(line: 351, column: 11, scope: !5484)
!5488 = !DILocation(line: 351, column: 3, scope: !5484)
!5489 = !DILocation(line: 354, column: 14, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5484, file: !5352, line: 352, column: 5)
!5491 = !DILocation(line: 354, column: 16, scope: !5490)
!5492 = !DILocation(line: 354, column: 22, scope: !5490)
!5493 = !DILocation(line: 354, column: 7, scope: !5490)
!5494 = !DILocation(line: 356, column: 14, scope: !5490)
!5495 = !DILocation(line: 356, column: 7, scope: !5490)
!5496 = !DILocation(line: 358, column: 1, scope: !5484)
