; ModuleID = 'echo.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [23 x i8] c"status == EXIT_SUCCESS\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"../src/echo.c\00", align 1
@__PRETTY_FUNCTION__.usage = private unnamed_addr constant [16 x i8] c"void usage(int)\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"Usage: %s [SHORT-OPTION]... [STRING]...\0A  or:  %s LONG-OPTION\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [93 x i8] c"Echo the STRING(s) to standard output.\0A\0A  -n             do not output the trailing newline\0A\00", align 1
@.str.4 = private unnamed_addr constant [132 x i8] c"  -e             enable interpretation of backslash escapes\0A  -E             disable interpretation of backslash escapes (default)\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"\0AIf -e is in effect, the following sequences are recognized:\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [229 x i8] c"  \\\\      backslash\0A  \\a      alert (BEL)\0A  \\b      backspace\0A  \\c      produce no further output\0A  \\e      escape\0A  \\f      form feed\0A  \\n      new line\0A  \\r      carriage return\0A  \\t      horizontal tab\0A  \\v      vertical tab\0A\00", align 1
@.str.9 = private unnamed_addr constant [110 x i8] c"  \\0NNN   byte with octal value NNN (1 to 3 digits)\0A  \\xHH    byte with hexadecimal value HH (1 to 2 digits)\0A\00", align 1
@.str.10 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.29 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.32 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"Brian Fox\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"Chet Ramey\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), align 8, !dbg !0
@.str.36 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal global i8 0, align 1, !dbg !15
@.str.39 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.40 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.41 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@exit_failure = dso_local global i32 1, align 4, !dbg !18
@program_name = dso_local global i8* null, align 8, !dbg !25
@.str.48 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.49 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.50 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external dso_local global i8*, align 8
@program_invocation_name = external dso_local global i8*, align 8
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.52, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.53, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.54, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.55, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.56, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.57, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.59, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.60, i32 0, i32 0), i8* null], align 16, !dbg !33
@.str.51 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.52 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.53 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.54 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.55 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.56 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.57 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.58 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.59 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.60 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !79
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !85
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !97
@.str.10.61 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.62 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.63 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.64 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.14.65 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.66 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.16.67 = private unnamed_addr constant [8 x i8] c"GB18030\00", align 1
@.str.17.68 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.69 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !104
@nslots = internal global i32 1, align 4, !dbg !111
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !99
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !113
@.str.72 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.73 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.74 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.75 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.76 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.77 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.78 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.79 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.80 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.81 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.82 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.83 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.84 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.85 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.86 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.87 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.90 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.91 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.92 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.93 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.94 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.95 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.96 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !119
@.str.107 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.108 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.117 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.118 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.121 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.122 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 %0) #0 !dbg !572 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !575, metadata !DIExpression()), !dbg !576
  %3 = load i32, i32* %2, align 4, !dbg !577
  %4 = icmp eq i32 %3, 0, !dbg !577
  br i1 %4, label %5, label %6, !dbg !580

5:                                                ; preds = %1
  br label %7, !dbg !580

6:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__PRETTY_FUNCTION__.usage, i64 0, i64 0)) #13, !dbg !577
  unreachable, !dbg !577

7:                                                ; preds = %5
  %8 = load i8*, i8** @program_name, align 8, !dbg !581
  %9 = load i8*, i8** @program_name, align 8, !dbg !582
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i8* %8, i8* %9), !dbg !583
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !584
  %12 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* %11), !dbg !584
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !585
  %14 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* %13), !dbg !585
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !586
  %16 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), %struct._IO_FILE* %15), !dbg !586
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !587
  %18 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), %struct._IO_FILE* %17), !dbg !587
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !588
  %20 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), %struct._IO_FILE* %19), !dbg !588
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !589
  %22 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([229 x i8], [229 x i8]* @.str.8, i64 0, i64 0), %struct._IO_FILE* %21), !dbg !589
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !590
  %24 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.9, i64 0, i64 0), %struct._IO_FILE* %23), !dbg !590
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)), !dbg !591
  call void @emit_ancillary_info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)), !dbg !592
  %26 = load i32, i32* %2, align 4, !dbg !593
  call void @exit(i32 %26) #13, !dbg !594
  unreachable, !dbg !594
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #2

declare dso_local i32 @printf(i8*, ...) #3

declare dso_local i32 @fputs_unlocked(i8*, %struct._IO_FILE*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* %0) #4 !dbg !595 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 16
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !599, metadata !DIExpression()), !dbg !600
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !601, metadata !DIExpression()), !dbg !610
  %7 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !610
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !610
  call void @llvm.dbg.declare(metadata i8** %4, metadata !611, metadata !DIExpression()), !dbg !612
  %8 = load i8*, i8** %2, align 8, !dbg !613
  store i8* %8, i8** %4, align 8, !dbg !612
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !614, metadata !DIExpression()), !dbg !616
  %9 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !617
  store %struct.infomap* %9, %struct.infomap** %5, align 8, !dbg !616
  br label %10, !dbg !618

10:                                               ; preds = %25, %1
  %11 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !619
  %12 = getelementptr inbounds %struct.infomap, %struct.infomap* %11, i32 0, i32 0, !dbg !620
  %13 = load i8*, i8** %12, align 8, !dbg !620
  %14 = icmp ne i8* %13, null, !dbg !619
  br i1 %14, label %15, label %23, !dbg !621

15:                                               ; preds = %10
  %16 = load i8*, i8** %2, align 8, !dbg !622
  %17 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !622
  %18 = getelementptr inbounds %struct.infomap, %struct.infomap* %17, i32 0, i32 0, !dbg !622
  %19 = load i8*, i8** %18, align 8, !dbg !622
  %20 = call i32 @strcmp(i8* %16, i8* %19) #14, !dbg !622
  %21 = icmp eq i32 %20, 0, !dbg !622
  %22 = xor i1 %21, true, !dbg !623
  br label %23

23:                                               ; preds = %15, %10
  %24 = phi i1 [ false, %10 ], [ %22, %15 ], !dbg !624
  br i1 %24, label %25, label %28, !dbg !618

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !625
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !625
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !625
  br label %10, !dbg !618, !llvm.loop !626

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !628
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !630
  %31 = load i8*, i8** %30, align 8, !dbg !630
  %32 = icmp ne i8* %31, null, !dbg !628
  br i1 %32, label %33, label %37, !dbg !631

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !632
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !633
  %36 = load i8*, i8** %35, align 8, !dbg !633
  store i8* %36, i8** %4, align 8, !dbg !634
  br label %37, !dbg !635

37:                                               ; preds = %33, %28
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0)), !dbg !636
  call void @llvm.dbg.declare(metadata i8** %6, metadata !637, metadata !DIExpression()), !dbg !638
  %39 = call i8* @setlocale(i32 5, i8* null) #15, !dbg !639
  store i8* %39, i8** %6, align 8, !dbg !638
  %40 = load i8*, i8** %6, align 8, !dbg !640
  %41 = icmp ne i8* %40, null, !dbg !640
  br i1 %41, label %42, label %49, !dbg !642

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8, !dbg !643
  %44 = call i32 @strncmp(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 3) #14, !dbg !643
  %45 = icmp ne i32 %44, 0, !dbg !643
  br i1 %45, label %46, label %49, !dbg !644

46:                                               ; preds = %42
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !645
  %48 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.32, i64 0, i64 0), %struct._IO_FILE* %47), !dbg !645
  br label %49, !dbg !647

49:                                               ; preds = %46, %42, %37
  %50 = load i8*, i8** %2, align 8, !dbg !648
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0), i8* %50), !dbg !649
  %52 = load i8*, i8** %4, align 8, !dbg !650
  %53 = load i8*, i8** %4, align 8, !dbg !651
  %54 = load i8*, i8** %2, align 8, !dbg !652
  %55 = icmp eq i8* %53, %54, !dbg !653
  %56 = zext i1 %55 to i64, !dbg !651
  %57 = select i1 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), !dbg !651
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i64 0, i64 0), i8* %52, i8* %57), !dbg !654
  ret void, !dbg !655
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #6

; Function Attrs: nounwind
declare dso_local i8* @setlocale(i32, i8*) #7

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8*, i8*, i64) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @klee_dump_memory() #4 !dbg !656 {
  ret void, !dbg !659
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #4 !dbg !660 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !664, metadata !DIExpression()), !dbg !665
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !666, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.declare(metadata i8* %6, metadata !668, metadata !DIExpression()), !dbg !669
  store i8 1, i8* %6, align 1, !dbg !669
  call void @llvm.dbg.declare(metadata i8* %7, metadata !670, metadata !DIExpression()), !dbg !671
  %15 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #15, !dbg !672
  %16 = icmp ne i8* %15, null, !dbg !672
  %17 = zext i1 %16 to i8, !dbg !671
  store i8 %17, i8* %7, align 1, !dbg !671
  call void @llvm.dbg.declare(metadata i8* %8, metadata !673, metadata !DIExpression()), !dbg !674
  %18 = load i8, i8* %7, align 1, !dbg !675
  %19 = trunc i8 %18 to i1, !dbg !675
  br i1 %19, label %20, label %31, !dbg !676

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4, !dbg !677
  %22 = icmp slt i32 1, %21, !dbg !678
  br i1 %22, label %23, label %29, !dbg !679

23:                                               ; preds = %20
  %24 = load i8**, i8*** %5, align 8, !dbg !680
  %25 = getelementptr inbounds i8*, i8** %24, i64 1, !dbg !680
  %26 = load i8*, i8** %25, align 8, !dbg !680
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #14, !dbg !680
  %28 = icmp eq i32 %27, 0, !dbg !680
  br label %29

29:                                               ; preds = %23, %20
  %30 = phi i1 [ false, %20 ], [ %28, %23 ], !dbg !681
  br label %31, !dbg !676

31:                                               ; preds = %29, %2
  %32 = phi i1 [ true, %2 ], [ %30, %29 ]
  %33 = zext i1 %32 to i8, !dbg !674
  store i8 %33, i8* %8, align 1, !dbg !674
  call void @llvm.dbg.declare(metadata i8* %9, metadata !682, metadata !DIExpression()), !dbg !683
  store i8 0, i8* %9, align 1, !dbg !683
  %34 = load i8**, i8*** %5, align 8, !dbg !684
  %35 = getelementptr inbounds i8*, i8** %34, i64 0, !dbg !684
  %36 = load i8*, i8** %35, align 8, !dbg !684
  call void @set_program_name(i8* %36), !dbg !685
  %37 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #15, !dbg !686
  %38 = call i32 @atexit(void ()* @close_stdout) #15, !dbg !687
  %39 = load i8, i8* %8, align 1, !dbg !688
  %40 = trunc i8 %39 to i1, !dbg !688
  br i1 %40, label %41, label %61, !dbg !690

41:                                               ; preds = %31
  %42 = load i32, i32* %4, align 4, !dbg !691
  %43 = icmp eq i32 %42, 2, !dbg !692
  br i1 %43, label %44, label %61, !dbg !693

44:                                               ; preds = %41
  %45 = load i8**, i8*** %5, align 8, !dbg !694
  %46 = getelementptr inbounds i8*, i8** %45, i64 1, !dbg !694
  %47 = load i8*, i8** %46, align 8, !dbg !694
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)) #14, !dbg !694
  %49 = icmp eq i32 %48, 0, !dbg !694
  br i1 %49, label %50, label %51, !dbg !697

50:                                               ; preds = %44
  call void @usage(i32 0) #16, !dbg !698
  unreachable, !dbg !698

51:                                               ; preds = %44
  %52 = load i8**, i8*** %5, align 8, !dbg !699
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !699
  %54 = load i8*, i8** %53, align 8, !dbg !699
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)) #14, !dbg !699
  %56 = icmp eq i32 %55, 0, !dbg !699
  br i1 %56, label %57, label %60, !dbg !701

57:                                               ; preds = %51
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !702
  %59 = load i8*, i8** @Version, align 8, !dbg !704
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8* null), !dbg !705
  store i32 0, i32* %3, align 4, !dbg !706
  br label %322, !dbg !706

60:                                               ; preds = %51
  br label %61, !dbg !707

61:                                               ; preds = %60, %41, %31
  %62 = load i32, i32* %4, align 4, !dbg !708
  %63 = add nsw i32 %62, -1, !dbg !708
  store i32 %63, i32* %4, align 4, !dbg !708
  %64 = load i8**, i8*** %5, align 8, !dbg !709
  %65 = getelementptr inbounds i8*, i8** %64, i32 1, !dbg !709
  store i8** %65, i8*** %5, align 8, !dbg !709
  %66 = load i8, i8* %8, align 1, !dbg !710
  %67 = trunc i8 %66 to i1, !dbg !710
  br i1 %67, label %68, label %128, !dbg !712

68:                                               ; preds = %61
  br label %69, !dbg !713

69:                                               ; preds = %122, %68
  %70 = load i32, i32* %4, align 4, !dbg !714
  %71 = icmp sgt i32 %70, 0, !dbg !715
  br i1 %71, label %72, label %79, !dbg !716

72:                                               ; preds = %69
  %73 = load i8**, i8*** %5, align 8, !dbg !717
  %74 = getelementptr inbounds i8*, i8** %73, i64 0, !dbg !717
  %75 = load i8*, i8** %74, align 8, !dbg !717
  %76 = load i8, i8* %75, align 1, !dbg !718
  %77 = sext i8 %76 to i32, !dbg !718
  %78 = icmp eq i32 %77, 45, !dbg !719
  br label %79

79:                                               ; preds = %72, %69
  %80 = phi i1 [ false, %69 ], [ %78, %72 ], !dbg !720
  br i1 %80, label %81, label %127, !dbg !713

81:                                               ; preds = %79
  call void @llvm.dbg.declare(metadata i8** %10, metadata !721, metadata !DIExpression()), !dbg !723
  %82 = load i8**, i8*** %5, align 8, !dbg !724
  %83 = getelementptr inbounds i8*, i8** %82, i64 0, !dbg !724
  %84 = load i8*, i8** %83, align 8, !dbg !724
  %85 = getelementptr inbounds i8, i8* %84, i64 1, !dbg !725
  store i8* %85, i8** %10, align 8, !dbg !723
  call void @llvm.dbg.declare(metadata i64* %11, metadata !726, metadata !DIExpression()), !dbg !727
  store i64 0, i64* %11, align 8, !dbg !728
  br label %86, !dbg !730

86:                                               ; preds = %101, %81
  %87 = load i8*, i8** %10, align 8, !dbg !731
  %88 = load i64, i64* %11, align 8, !dbg !733
  %89 = getelementptr inbounds i8, i8* %87, i64 %88, !dbg !731
  %90 = load i8, i8* %89, align 1, !dbg !731
  %91 = icmp ne i8 %90, 0, !dbg !734
  br i1 %91, label %92, label %104, !dbg !734

92:                                               ; preds = %86
  %93 = load i8*, i8** %10, align 8, !dbg !735
  %94 = load i64, i64* %11, align 8, !dbg !736
  %95 = getelementptr inbounds i8, i8* %93, i64 %94, !dbg !735
  %96 = load i8, i8* %95, align 1, !dbg !735
  %97 = sext i8 %96 to i32, !dbg !735
  switch i32 %97, label %99 [
    i32 101, label %98
    i32 69, label %98
    i32 110, label %98
  ], !dbg !737

98:                                               ; preds = %92, %92, %92
  br label %100, !dbg !738

99:                                               ; preds = %92
  br label %129, !dbg !740

100:                                              ; preds = %98
  br label %101, !dbg !741

101:                                              ; preds = %100
  %102 = load i64, i64* %11, align 8, !dbg !742
  %103 = add i64 %102, 1, !dbg !742
  store i64 %103, i64* %11, align 8, !dbg !742
  br label %86, !dbg !743, !llvm.loop !744

104:                                              ; preds = %86
  %105 = load i64, i64* %11, align 8, !dbg !746
  %106 = icmp eq i64 %105, 0, !dbg !748
  br i1 %106, label %107, label %108, !dbg !749

107:                                              ; preds = %104
  br label %129, !dbg !750

108:                                              ; preds = %104
  br label %109, !dbg !751

109:                                              ; preds = %121, %108
  %110 = load i8*, i8** %10, align 8, !dbg !752
  %111 = load i8, i8* %110, align 1, !dbg !753
  %112 = icmp ne i8 %111, 0, !dbg !751
  br i1 %112, label %113, label %122, !dbg !751

113:                                              ; preds = %109
  %114 = load i8*, i8** %10, align 8, !dbg !754
  %115 = getelementptr inbounds i8, i8* %114, i32 1, !dbg !754
  store i8* %115, i8** %10, align 8, !dbg !754
  %116 = load i8, i8* %114, align 1, !dbg !755
  %117 = sext i8 %116 to i32, !dbg !755
  switch i32 %117, label %121 [
    i32 101, label %118
    i32 69, label %119
    i32 110, label %120
  ], !dbg !756

118:                                              ; preds = %113
  store i8 1, i8* %9, align 1, !dbg !757
  br label %121, !dbg !759

119:                                              ; preds = %113
  store i8 0, i8* %9, align 1, !dbg !760
  br label %121, !dbg !761

120:                                              ; preds = %113
  store i8 0, i8* %6, align 1, !dbg !762
  br label %121, !dbg !763

121:                                              ; preds = %113, %120, %119, %118
  br label %109, !dbg !751, !llvm.loop !764

122:                                              ; preds = %109
  %123 = load i32, i32* %4, align 4, !dbg !766
  %124 = add nsw i32 %123, -1, !dbg !766
  store i32 %124, i32* %4, align 4, !dbg !766
  %125 = load i8**, i8*** %5, align 8, !dbg !767
  %126 = getelementptr inbounds i8*, i8** %125, i32 1, !dbg !767
  store i8** %126, i8*** %5, align 8, !dbg !767
  br label %69, !dbg !713, !llvm.loop !768

127:                                              ; preds = %79
  br label %128, !dbg !713

128:                                              ; preds = %127, %61
  call void @klee_dump_memory(), !dbg !770
  br label %129, !dbg !770

129:                                              ; preds = %128, %107, %99
  call void @llvm.dbg.label(metadata !771), !dbg !772
  %130 = load i8, i8* %9, align 1, !dbg !773
  %131 = trunc i8 %130 to i1, !dbg !773
  br i1 %131, label %135, label %132, !dbg !775

132:                                              ; preds = %129
  %133 = load i8, i8* %7, align 1, !dbg !776
  %134 = trunc i8 %133 to i1, !dbg !776
  br i1 %134, label %135, label %296, !dbg !777

135:                                              ; preds = %132, %129
  br label %136, !dbg !778

136:                                              ; preds = %294, %135
  %137 = load i32, i32* %4, align 4, !dbg !780
  %138 = icmp sgt i32 %137, 0, !dbg !781
  br i1 %138, label %139, label %295, !dbg !778

139:                                              ; preds = %136
  call void @llvm.dbg.declare(metadata i8** %12, metadata !782, metadata !DIExpression()), !dbg !784
  %140 = load i8**, i8*** %5, align 8, !dbg !785
  %141 = getelementptr inbounds i8*, i8** %140, i64 0, !dbg !785
  %142 = load i8*, i8** %141, align 8, !dbg !785
  store i8* %142, i8** %12, align 8, !dbg !784
  call void @llvm.dbg.declare(metadata i8* %13, metadata !786, metadata !DIExpression()), !dbg !787
  br label %143, !dbg !788

143:                                              ; preds = %281, %139
  %144 = load i8*, i8** %12, align 8, !dbg !789
  %145 = getelementptr inbounds i8, i8* %144, i32 1, !dbg !789
  store i8* %145, i8** %12, align 8, !dbg !789
  %146 = load i8, i8* %144, align 1, !dbg !790
  store i8 %146, i8* %13, align 1, !dbg !791
  %147 = icmp ne i8 %146, 0, !dbg !788
  br i1 %147, label %148, label %285, !dbg !788

148:                                              ; preds = %143
  %149 = load i8, i8* %13, align 1, !dbg !792
  %150 = zext i8 %149 to i32, !dbg !792
  %151 = icmp eq i32 %150, 92, !dbg !795
  br i1 %151, label %152, label %281, !dbg !796

152:                                              ; preds = %148
  %153 = load i8*, i8** %12, align 8, !dbg !797
  %154 = load i8, i8* %153, align 1, !dbg !798
  %155 = sext i8 %154 to i32, !dbg !798
  %156 = icmp ne i32 %155, 0, !dbg !798
  br i1 %156, label %157, label %281, !dbg !799

157:                                              ; preds = %152
  %158 = load i8*, i8** %12, align 8, !dbg !800
  %159 = getelementptr inbounds i8, i8* %158, i32 1, !dbg !800
  store i8* %159, i8** %12, align 8, !dbg !800
  %160 = load i8, i8* %158, align 1, !dbg !802
  store i8 %160, i8* %13, align 1, !dbg !803
  %161 = zext i8 %160 to i32, !dbg !804
  switch i32 %161, label %278 [
    i32 97, label %162
    i32 98, label %163
    i32 99, label %164
    i32 101, label %165
    i32 102, label %166
    i32 110, label %167
    i32 114, label %168
    i32 116, label %169
    i32 118, label %170
    i32 120, label %171
    i32 48, label %214
    i32 49, label %229
    i32 50, label %229
    i32 51, label %229
    i32 52, label %229
    i32 53, label %229
    i32 54, label %229
    i32 55, label %229
    i32 92, label %276
  ], !dbg !805

162:                                              ; preds = %157
  store i8 7, i8* %13, align 1, !dbg !806
  br label %280, !dbg !808

163:                                              ; preds = %157
  store i8 8, i8* %13, align 1, !dbg !809
  br label %280, !dbg !810

164:                                              ; preds = %157
  store i32 0, i32* %3, align 4, !dbg !811
  br label %322, !dbg !811

165:                                              ; preds = %157
  store i8 27, i8* %13, align 1, !dbg !812
  br label %280, !dbg !813

166:                                              ; preds = %157
  store i8 12, i8* %13, align 1, !dbg !814
  br label %280, !dbg !815

167:                                              ; preds = %157
  store i8 10, i8* %13, align 1, !dbg !816
  br label %280, !dbg !817

168:                                              ; preds = %157
  store i8 13, i8* %13, align 1, !dbg !818
  br label %280, !dbg !819

169:                                              ; preds = %157
  store i8 9, i8* %13, align 1, !dbg !820
  br label %280, !dbg !821

170:                                              ; preds = %157
  store i8 11, i8* %13, align 1, !dbg !822
  br label %280, !dbg !823

171:                                              ; preds = %157
  call void @llvm.dbg.declare(metadata i8* %14, metadata !824, metadata !DIExpression()), !dbg !826
  %172 = load i8*, i8** %12, align 8, !dbg !827
  %173 = load i8, i8* %172, align 1, !dbg !828
  store i8 %173, i8* %14, align 1, !dbg !826
  %174 = call i16** @__ctype_b_loc() #17, !dbg !829
  %175 = load i16*, i16** %174, align 8, !dbg !829
  %176 = load i8, i8* %14, align 1, !dbg !829
  %177 = zext i8 %176 to i32, !dbg !829
  %178 = sext i32 %177 to i64, !dbg !829
  %179 = getelementptr inbounds i16, i16* %175, i64 %178, !dbg !829
  %180 = load i16, i16* %179, align 2, !dbg !829
  %181 = zext i16 %180 to i32, !dbg !829
  %182 = and i32 %181, 4096, !dbg !829
  %183 = icmp ne i32 %182, 0, !dbg !829
  br i1 %183, label %185, label %184, !dbg !831

184:                                              ; preds = %171
  br label %277, !dbg !832

185:                                              ; preds = %171
  %186 = load i8*, i8** %12, align 8, !dbg !833
  %187 = getelementptr inbounds i8, i8* %186, i32 1, !dbg !833
  store i8* %187, i8** %12, align 8, !dbg !833
  %188 = load i8, i8* %14, align 1, !dbg !834
  %189 = call i32 @hextobin(i8 zeroext %188), !dbg !835
  %190 = trunc i32 %189 to i8, !dbg !835
  store i8 %190, i8* %13, align 1, !dbg !836
  %191 = load i8*, i8** %12, align 8, !dbg !837
  %192 = load i8, i8* %191, align 1, !dbg !838
  store i8 %192, i8* %14, align 1, !dbg !839
  %193 = call i16** @__ctype_b_loc() #17, !dbg !840
  %194 = load i16*, i16** %193, align 8, !dbg !840
  %195 = load i8, i8* %14, align 1, !dbg !840
  %196 = zext i8 %195 to i32, !dbg !840
  %197 = sext i32 %196 to i64, !dbg !840
  %198 = getelementptr inbounds i16, i16* %194, i64 %197, !dbg !840
  %199 = load i16, i16* %198, align 2, !dbg !840
  %200 = zext i16 %199 to i32, !dbg !840
  %201 = and i32 %200, 4096, !dbg !840
  %202 = icmp ne i32 %201, 0, !dbg !840
  br i1 %202, label %203, label %213, !dbg !842

203:                                              ; preds = %185
  %204 = load i8*, i8** %12, align 8, !dbg !843
  %205 = getelementptr inbounds i8, i8* %204, i32 1, !dbg !843
  store i8* %205, i8** %12, align 8, !dbg !843
  %206 = load i8, i8* %13, align 1, !dbg !845
  %207 = zext i8 %206 to i32, !dbg !845
  %208 = mul nsw i32 %207, 16, !dbg !846
  %209 = load i8, i8* %14, align 1, !dbg !847
  %210 = call i32 @hextobin(i8 zeroext %209), !dbg !848
  %211 = add nsw i32 %208, %210, !dbg !849
  %212 = trunc i32 %211 to i8, !dbg !845
  store i8 %212, i8* %13, align 1, !dbg !850
  br label %213, !dbg !851

213:                                              ; preds = %203, %185
  br label %280, !dbg !852

214:                                              ; preds = %157
  store i8 0, i8* %13, align 1, !dbg !853
  %215 = load i8*, i8** %12, align 8, !dbg !854
  %216 = load i8, i8* %215, align 1, !dbg !856
  %217 = sext i8 %216 to i32, !dbg !856
  %218 = icmp sle i32 48, %217, !dbg !857
  br i1 %218, label %219, label %224, !dbg !858

219:                                              ; preds = %214
  %220 = load i8*, i8** %12, align 8, !dbg !859
  %221 = load i8, i8* %220, align 1, !dbg !860
  %222 = sext i8 %221 to i32, !dbg !860
  %223 = icmp sle i32 %222, 55, !dbg !861
  br i1 %223, label %225, label %224, !dbg !862

224:                                              ; preds = %219, %214
  br label %280, !dbg !863

225:                                              ; preds = %219
  %226 = load i8*, i8** %12, align 8, !dbg !864
  %227 = getelementptr inbounds i8, i8* %226, i32 1, !dbg !864
  store i8* %227, i8** %12, align 8, !dbg !864
  %228 = load i8, i8* %226, align 1, !dbg !865
  store i8 %228, i8* %13, align 1, !dbg !866
  br label %229, !dbg !867

229:                                              ; preds = %157, %157, %157, %157, %157, %157, %157, %225
  %230 = load i8, i8* %13, align 1, !dbg !868
  %231 = zext i8 %230 to i32, !dbg !868
  %232 = sub nsw i32 %231, 48, !dbg !868
  %233 = trunc i32 %232 to i8, !dbg !868
  store i8 %233, i8* %13, align 1, !dbg !868
  %234 = load i8*, i8** %12, align 8, !dbg !869
  %235 = load i8, i8* %234, align 1, !dbg !871
  %236 = sext i8 %235 to i32, !dbg !871
  %237 = icmp sle i32 48, %236, !dbg !872
  br i1 %237, label %238, label %254, !dbg !873

238:                                              ; preds = %229
  %239 = load i8*, i8** %12, align 8, !dbg !874
  %240 = load i8, i8* %239, align 1, !dbg !875
  %241 = sext i8 %240 to i32, !dbg !875
  %242 = icmp sle i32 %241, 55, !dbg !876
  br i1 %242, label %243, label %254, !dbg !877

243:                                              ; preds = %238
  %244 = load i8, i8* %13, align 1, !dbg !878
  %245 = zext i8 %244 to i32, !dbg !878
  %246 = mul nsw i32 %245, 8, !dbg !879
  %247 = load i8*, i8** %12, align 8, !dbg !880
  %248 = getelementptr inbounds i8, i8* %247, i32 1, !dbg !880
  store i8* %248, i8** %12, align 8, !dbg !880
  %249 = load i8, i8* %247, align 1, !dbg !881
  %250 = sext i8 %249 to i32, !dbg !881
  %251 = sub nsw i32 %250, 48, !dbg !882
  %252 = add nsw i32 %246, %251, !dbg !883
  %253 = trunc i32 %252 to i8, !dbg !878
  store i8 %253, i8* %13, align 1, !dbg !884
  br label %254, !dbg !885

254:                                              ; preds = %243, %238, %229
  %255 = load i8*, i8** %12, align 8, !dbg !886
  %256 = load i8, i8* %255, align 1, !dbg !888
  %257 = sext i8 %256 to i32, !dbg !888
  %258 = icmp sle i32 48, %257, !dbg !889
  br i1 %258, label %259, label %275, !dbg !890

259:                                              ; preds = %254
  %260 = load i8*, i8** %12, align 8, !dbg !891
  %261 = load i8, i8* %260, align 1, !dbg !892
  %262 = sext i8 %261 to i32, !dbg !892
  %263 = icmp sle i32 %262, 55, !dbg !893
  br i1 %263, label %264, label %275, !dbg !894

264:                                              ; preds = %259
  %265 = load i8, i8* %13, align 1, !dbg !895
  %266 = zext i8 %265 to i32, !dbg !895
  %267 = mul nsw i32 %266, 8, !dbg !896
  %268 = load i8*, i8** %12, align 8, !dbg !897
  %269 = getelementptr inbounds i8, i8* %268, i32 1, !dbg !897
  store i8* %269, i8** %12, align 8, !dbg !897
  %270 = load i8, i8* %268, align 1, !dbg !898
  %271 = sext i8 %270 to i32, !dbg !898
  %272 = sub nsw i32 %271, 48, !dbg !899
  %273 = add nsw i32 %267, %272, !dbg !900
  %274 = trunc i32 %273 to i8, !dbg !895
  store i8 %274, i8* %13, align 1, !dbg !901
  br label %275, !dbg !902

275:                                              ; preds = %264, %259, %254
  br label %280, !dbg !903

276:                                              ; preds = %157
  br label %280, !dbg !904

277:                                              ; preds = %184
  call void @llvm.dbg.label(metadata !905), !dbg !906
  br label %278, !dbg !904

278:                                              ; preds = %157, %277
  %279 = call i32 @putchar_unlocked(i32 92), !dbg !907
  br label %280, !dbg !908

280:                                              ; preds = %278, %276, %275, %224, %213, %170, %169, %168, %167, %166, %165, %163, %162
  br label %281, !dbg !909

281:                                              ; preds = %280, %152, %148
  %282 = load i8, i8* %13, align 1, !dbg !910
  %283 = zext i8 %282 to i32, !dbg !910
  %284 = call i32 @putchar_unlocked(i32 %283), !dbg !910
  br label %143, !dbg !788, !llvm.loop !911

285:                                              ; preds = %143
  %286 = load i32, i32* %4, align 4, !dbg !913
  %287 = add nsw i32 %286, -1, !dbg !913
  store i32 %287, i32* %4, align 4, !dbg !913
  %288 = load i8**, i8*** %5, align 8, !dbg !914
  %289 = getelementptr inbounds i8*, i8** %288, i32 1, !dbg !914
  store i8** %289, i8*** %5, align 8, !dbg !914
  %290 = load i32, i32* %4, align 4, !dbg !915
  %291 = icmp sgt i32 %290, 0, !dbg !917
  br i1 %291, label %292, label %294, !dbg !918

292:                                              ; preds = %285
  %293 = call i32 @putchar_unlocked(i32 32), !dbg !919
  br label %294, !dbg !919

294:                                              ; preds = %292, %285
  br label %136, !dbg !778, !llvm.loop !920

295:                                              ; preds = %136
  br label %316, !dbg !922

296:                                              ; preds = %132
  br label %297, !dbg !923

297:                                              ; preds = %314, %296
  %298 = load i32, i32* %4, align 4, !dbg !925
  %299 = icmp sgt i32 %298, 0, !dbg !926
  br i1 %299, label %300, label %315, !dbg !923

300:                                              ; preds = %297
  %301 = load i8**, i8*** %5, align 8, !dbg !927
  %302 = getelementptr inbounds i8*, i8** %301, i64 0, !dbg !927
  %303 = load i8*, i8** %302, align 8, !dbg !927
  %304 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !927
  %305 = call i32 @fputs_unlocked(i8* %303, %struct._IO_FILE* %304), !dbg !927
  %306 = load i32, i32* %4, align 4, !dbg !929
  %307 = add nsw i32 %306, -1, !dbg !929
  store i32 %307, i32* %4, align 4, !dbg !929
  %308 = load i8**, i8*** %5, align 8, !dbg !930
  %309 = getelementptr inbounds i8*, i8** %308, i32 1, !dbg !930
  store i8** %309, i8*** %5, align 8, !dbg !930
  %310 = load i32, i32* %4, align 4, !dbg !931
  %311 = icmp sgt i32 %310, 0, !dbg !933
  br i1 %311, label %312, label %314, !dbg !934

312:                                              ; preds = %300
  %313 = call i32 @putchar_unlocked(i32 32), !dbg !935
  br label %314, !dbg !935

314:                                              ; preds = %312, %300
  br label %297, !dbg !923, !llvm.loop !936

315:                                              ; preds = %297
  br label %316

316:                                              ; preds = %315, %295
  %317 = load i8, i8* %6, align 1, !dbg !938
  %318 = trunc i8 %317 to i1, !dbg !938
  br i1 %318, label %319, label %321, !dbg !940

319:                                              ; preds = %316
  %320 = call i32 @putchar_unlocked(i32 10), !dbg !941
  br label %321, !dbg !941

321:                                              ; preds = %319, %316
  store i32 0, i32* %3, align 4, !dbg !942
  br label %322, !dbg !942

322:                                              ; preds = %321, %164, %57
  %323 = load i32, i32* %3, align 4, !dbg !943
  ret i32 %323, !dbg !943
}

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #7

; Function Attrs: nounwind
declare dso_local i32 @atexit(void ()*) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #8

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hextobin(i8 zeroext %0) #4 !dbg !944 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !947, metadata !DIExpression()), !dbg !948
  %4 = load i8, i8* %3, align 1, !dbg !949
  %5 = zext i8 %4 to i32, !dbg !949
  switch i32 %5, label %6 [
    i32 97, label %10
    i32 65, label %10
    i32 98, label %11
    i32 66, label %11
    i32 99, label %12
    i32 67, label %12
    i32 100, label %13
    i32 68, label %13
    i32 101, label %14
    i32 69, label %14
    i32 102, label %15
    i32 70, label %15
  ], !dbg !950

6:                                                ; preds = %1
  %7 = load i8, i8* %3, align 1, !dbg !951
  %8 = zext i8 %7 to i32, !dbg !951
  %9 = sub nsw i32 %8, 48, !dbg !953
  store i32 %9, i32* %2, align 4, !dbg !954
  br label %16, !dbg !954

10:                                               ; preds = %1, %1
  store i32 10, i32* %2, align 4, !dbg !955
  br label %16, !dbg !955

11:                                               ; preds = %1, %1
  store i32 11, i32* %2, align 4, !dbg !956
  br label %16, !dbg !956

12:                                               ; preds = %1, %1
  store i32 12, i32* %2, align 4, !dbg !957
  br label %16, !dbg !957

13:                                               ; preds = %1, %1
  store i32 13, i32* %2, align 4, !dbg !958
  br label %16, !dbg !958

14:                                               ; preds = %1, %1
  store i32 14, i32* %2, align 4, !dbg !959
  br label %16, !dbg !959

15:                                               ; preds = %1, %1
  store i32 15, i32* %2, align 4, !dbg !960
  br label %16, !dbg !960

16:                                               ; preds = %15, %14, %13, %12, %11, %10, %6
  %17 = load i32, i32* %2, align 4, !dbg !961
  ret i32 %17, !dbg !961
}

declare dso_local i32 @putchar_unlocked(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* %0) #4 !dbg !962 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !963, metadata !DIExpression()), !dbg !964
  %3 = load i8*, i8** %2, align 8, !dbg !965
  store i8* %3, i8** @file_name, align 8, !dbg !966
  ret void, !dbg !967
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) #4 !dbg !968 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !971, metadata !DIExpression()), !dbg !972
  %4 = load i8, i8* %2, align 1, !dbg !973
  %5 = trunc i8 %4 to i1, !dbg !973
  %6 = zext i1 %5 to i8, !dbg !974
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !974
  ret void, !dbg !975
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !976 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !977
  %3 = call i32 @close_stream(%struct._IO_FILE* %2), !dbg !979
  %4 = icmp ne i32 %3, 0, !dbg !980
  br i1 %4, label %5, label %27, !dbg !981

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !982
  %7 = trunc i8 %6 to i1, !dbg !982
  br i1 %7, label %8, label %12, !dbg !983

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #17, !dbg !984
  %10 = load i32, i32* %9, align 4, !dbg !984
  %11 = icmp eq i32 %10, 32, !dbg !985
  br i1 %11, label %27, label %12, !dbg !986

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !987, metadata !DIExpression()), !dbg !989
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), i8** %1, align 8, !dbg !989
  %13 = load i8*, i8** @file_name, align 8, !dbg !990
  %14 = icmp ne i8* %13, null, !dbg !990
  br i1 %14, label %15, label %21, !dbg !992

15:                                               ; preds = %12
  %16 = call i32* @__errno_location() #17, !dbg !993
  %17 = load i32, i32* %16, align 4, !dbg !993
  %18 = load i8*, i8** @file_name, align 8, !dbg !994
  %19 = call i8* @quotearg_colon(i8* %18), !dbg !995
  %20 = load i8*, i8** %1, align 8, !dbg !996
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.40, i64 0, i64 0), i8* %19, i8* %20), !dbg !997
  br label %25, !dbg !997

21:                                               ; preds = %12
  %22 = call i32* @__errno_location() #17, !dbg !998
  %23 = load i32, i32* %22, align 4, !dbg !998
  %24 = load i8*, i8** %1, align 8, !dbg !999
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.41, i64 0, i64 0), i8* %24), !dbg !1000
  br label %25

25:                                               ; preds = %21, %15
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1001
  call void @_exit(i32 %26) #16, !dbg !1002
  unreachable, !dbg !1002

27:                                               ; preds = %8, %0
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1003
  %29 = call i32 @close_stream(%struct._IO_FILE* %28), !dbg !1005
  %30 = icmp ne i32 %29, 0, !dbg !1006
  br i1 %30, label %31, label %33, !dbg !1007

31:                                               ; preds = %27
  %32 = load volatile i32, i32* @exit_failure, align 4, !dbg !1008
  call void @_exit(i32 %32) #16, !dbg !1009
  unreachable, !dbg !1009

33:                                               ; preds = %27
  ret void, !dbg !1010
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #8

declare dso_local void @error(i32, i32, i8*, ...) #3

; Function Attrs: noreturn
declare dso_local void @_exit(i32) #9

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* %0) #4 !dbg !1011 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1012, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1014, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1016, metadata !DIExpression()), !dbg !1017
  %5 = load i8*, i8** %2, align 8, !dbg !1018
  %6 = icmp eq i8* %5, null, !dbg !1020
  br i1 %6, label %7, label %10, !dbg !1021

7:                                                ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1022
  %9 = call i32 @fputs(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.48, i64 0, i64 0), %struct._IO_FILE* %8), !dbg !1024
  call void @abort() #13, !dbg !1025
  unreachable, !dbg !1025

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8, !dbg !1026
  %12 = call i8* @strrchr(i8* %11, i32 47) #14, !dbg !1027
  store i8* %12, i8** %3, align 8, !dbg !1028
  %13 = load i8*, i8** %3, align 8, !dbg !1029
  %14 = icmp ne i8* %13, null, !dbg !1030
  br i1 %14, label %15, label %18, !dbg !1029

15:                                               ; preds = %10
  %16 = load i8*, i8** %3, align 8, !dbg !1031
  %17 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !1032
  br label %20, !dbg !1029

18:                                               ; preds = %10
  %19 = load i8*, i8** %2, align 8, !dbg !1033
  br label %20, !dbg !1029

20:                                               ; preds = %18, %15
  %21 = phi i8* [ %17, %15 ], [ %19, %18 ], !dbg !1029
  store i8* %21, i8** %4, align 8, !dbg !1034
  %22 = load i8*, i8** %4, align 8, !dbg !1035
  %23 = load i8*, i8** %2, align 8, !dbg !1037
  %24 = ptrtoint i8* %22 to i64, !dbg !1038
  %25 = ptrtoint i8* %23 to i64, !dbg !1038
  %26 = sub i64 %24, %25, !dbg !1038
  %27 = icmp sge i64 %26, 7, !dbg !1039
  br i1 %27, label %28, label %43, !dbg !1040

28:                                               ; preds = %20
  %29 = load i8*, i8** %4, align 8, !dbg !1041
  %30 = getelementptr inbounds i8, i8* %29, i64 -7, !dbg !1042
  %31 = call i32 @strncmp(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.49, i64 0, i64 0), i64 7) #14, !dbg !1043
  %32 = icmp eq i32 %31, 0, !dbg !1044
  br i1 %32, label %33, label %43, !dbg !1045

33:                                               ; preds = %28
  %34 = load i8*, i8** %4, align 8, !dbg !1046
  store i8* %34, i8** %2, align 8, !dbg !1048
  %35 = load i8*, i8** %4, align 8, !dbg !1049
  %36 = call i32 @strncmp(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.50, i64 0, i64 0), i64 3) #14, !dbg !1051
  %37 = icmp eq i32 %36, 0, !dbg !1052
  br i1 %37, label %38, label %42, !dbg !1053

38:                                               ; preds = %33
  %39 = load i8*, i8** %4, align 8, !dbg !1054
  %40 = getelementptr inbounds i8, i8* %39, i64 3, !dbg !1056
  store i8* %40, i8** %2, align 8, !dbg !1057
  %41 = load i8*, i8** %2, align 8, !dbg !1058
  store i8* %41, i8** @program_invocation_short_name, align 8, !dbg !1059
  br label %42, !dbg !1060

42:                                               ; preds = %38, %33
  br label %43, !dbg !1061

43:                                               ; preds = %42, %28, %20
  %44 = load i8*, i8** %2, align 8, !dbg !1062
  store i8* %44, i8** @program_name, align 8, !dbg !1063
  %45 = load i8*, i8** %2, align 8, !dbg !1064
  store i8* %45, i8** @program_invocation_name, align 8, !dbg !1065
  ret void, !dbg !1066
}

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #3

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strrchr(i8*, i32) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) #4 !dbg !1067 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1071, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1073, metadata !DIExpression()), !dbg !1074
  %5 = call i32* @__errno_location() #17, !dbg !1075
  %6 = load i32, i32* %5, align 4, !dbg !1075
  store i32 %6, i32* %3, align 4, !dbg !1074
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1076, metadata !DIExpression()), !dbg !1077
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1078
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1078
  br i1 %8, label %9, label %11, !dbg !1078

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1079
  br label %12, !dbg !1078

11:                                               ; preds = %1
  br label %12, !dbg !1078

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !1078
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !1078
  %15 = call i8* @xmemdup(i8* %14, i64 56), !dbg !1080
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !1080
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !1077
  %17 = load i32, i32* %3, align 4, !dbg !1081
  %18 = call i32* @__errno_location() #17, !dbg !1082
  store i32 %17, i32* %18, align 4, !dbg !1083
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1084
  ret %struct.quoting_options* %19, !dbg !1085
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* %0) #4 !dbg !1086 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1091, metadata !DIExpression()), !dbg !1092
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1093
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !1093
  br i1 %4, label %5, label %7, !dbg !1093

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1094
  br label %8, !dbg !1093

7:                                                ; preds = %1
  br label %8, !dbg !1093

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !1093
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !1095
  %11 = load i32, i32* %10, align 8, !dbg !1095
  ret i32 %11, !dbg !1096
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) #4 !dbg !1097 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1100, metadata !DIExpression()), !dbg !1101
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1102, metadata !DIExpression()), !dbg !1103
  %5 = load i32, i32* %4, align 4, !dbg !1104
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1105
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1105
  br i1 %7, label %8, label %10, !dbg !1105

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1106
  br label %11, !dbg !1105

10:                                               ; preds = %2
  br label %11, !dbg !1105

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !1105
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !1107
  store i32 %5, i32* %13, align 8, !dbg !1108
  ret void, !dbg !1109
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) #4 !dbg !1110 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1113, metadata !DIExpression()), !dbg !1114
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1115, metadata !DIExpression()), !dbg !1116
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1117, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1119, metadata !DIExpression()), !dbg !1120
  %11 = load i8, i8* %5, align 1, !dbg !1121
  store i8 %11, i8* %7, align 1, !dbg !1120
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1122, metadata !DIExpression()), !dbg !1124
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1125
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !1125
  br i1 %13, label %14, label %16, !dbg !1125

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1126
  br label %17, !dbg !1125

16:                                               ; preds = %3
  br label %17, !dbg !1125

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !1125
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !1127
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !1128
  %21 = load i8, i8* %7, align 1, !dbg !1129
  %22 = zext i8 %21 to i64, !dbg !1129
  %23 = udiv i64 %22, 32, !dbg !1130
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !1131
  store i32* %24, i32** %8, align 8, !dbg !1124
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1132, metadata !DIExpression()), !dbg !1133
  %25 = load i8, i8* %7, align 1, !dbg !1134
  %26 = zext i8 %25 to i64, !dbg !1134
  %27 = urem i64 %26, 32, !dbg !1135
  %28 = trunc i64 %27 to i32, !dbg !1134
  store i32 %28, i32* %9, align 4, !dbg !1133
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1136, metadata !DIExpression()), !dbg !1137
  %29 = load i32*, i32** %8, align 8, !dbg !1138
  %30 = load i32, i32* %29, align 4, !dbg !1139
  %31 = load i32, i32* %9, align 4, !dbg !1140
  %32 = lshr i32 %30, %31, !dbg !1141
  %33 = and i32 %32, 1, !dbg !1142
  store i32 %33, i32* %10, align 4, !dbg !1137
  %34 = load i32, i32* %6, align 4, !dbg !1143
  %35 = and i32 %34, 1, !dbg !1144
  %36 = load i32, i32* %10, align 4, !dbg !1145
  %37 = xor i32 %35, %36, !dbg !1146
  %38 = load i32, i32* %9, align 4, !dbg !1147
  %39 = shl i32 %37, %38, !dbg !1148
  %40 = load i32*, i32** %8, align 8, !dbg !1149
  %41 = load i32, i32* %40, align 4, !dbg !1150
  %42 = xor i32 %41, %39, !dbg !1150
  store i32 %42, i32* %40, align 4, !dbg !1150
  %43 = load i32, i32* %10, align 4, !dbg !1151
  ret i32 %43, !dbg !1152
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) #4 !dbg !1153 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1156, metadata !DIExpression()), !dbg !1157
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1158, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1160, metadata !DIExpression()), !dbg !1161
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1162
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1162
  br i1 %7, label %9, label %8, !dbg !1164

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1165
  br label %9, !dbg !1166

9:                                                ; preds = %8, %2
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1167
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1168
  %12 = load i32, i32* %11, align 4, !dbg !1168
  store i32 %12, i32* %5, align 4, !dbg !1169
  %13 = load i32, i32* %4, align 4, !dbg !1170
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1171
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1172
  store i32 %13, i32* %15, align 4, !dbg !1173
  %16 = load i32, i32* %5, align 4, !dbg !1174
  ret i32 %16, !dbg !1175
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) #4 !dbg !1176 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1179, metadata !DIExpression()), !dbg !1180
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1181, metadata !DIExpression()), !dbg !1182
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1183, metadata !DIExpression()), !dbg !1184
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1185
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1185
  br i1 %8, label %10, label %9, !dbg !1187

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1188
  br label %10, !dbg !1189

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1190
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1191
  store i32 10, i32* %12, align 8, !dbg !1192
  %13 = load i8*, i8** %5, align 8, !dbg !1193
  %14 = icmp ne i8* %13, null, !dbg !1193
  br i1 %14, label %15, label %18, !dbg !1195

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1196
  %17 = icmp ne i8* %16, null, !dbg !1196
  br i1 %17, label %19, label %18, !dbg !1197

18:                                               ; preds = %15, %10
  call void @abort() #13, !dbg !1198
  unreachable, !dbg !1198

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1199
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1200
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1201
  store i8* %20, i8** %22, align 8, !dbg !1202
  %23 = load i8*, i8** %6, align 8, !dbg !1203
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1204
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !1205
  store i8* %23, i8** %25, align 8, !dbg !1206
  ret void, !dbg !1207
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* %4) #4 !dbg !1208 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1211, metadata !DIExpression()), !dbg !1212
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1213, metadata !DIExpression()), !dbg !1214
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1215, metadata !DIExpression()), !dbg !1216
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1217, metadata !DIExpression()), !dbg !1218
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !1219, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !1221, metadata !DIExpression()), !dbg !1222
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1223
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !1223
  br i1 %15, label %16, label %18, !dbg !1223

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1224
  br label %19, !dbg !1223

18:                                               ; preds = %5
  br label %19, !dbg !1223

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !1223
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !1222
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1225, metadata !DIExpression()), !dbg !1226
  %21 = call i32* @__errno_location() #17, !dbg !1227
  %22 = load i32, i32* %21, align 4, !dbg !1227
  store i32 %22, i32* %12, align 4, !dbg !1226
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1228, metadata !DIExpression()), !dbg !1229
  %23 = load i8*, i8** %6, align 8, !dbg !1230
  %24 = load i64, i64* %7, align 8, !dbg !1231
  %25 = load i8*, i8** %8, align 8, !dbg !1232
  %26 = load i64, i64* %9, align 8, !dbg !1233
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1234
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !1235
  %29 = load i32, i32* %28, align 8, !dbg !1235
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1236
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !1237
  %32 = load i32, i32* %31, align 4, !dbg !1237
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1238
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !1239
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !1238
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1240
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !1241
  %38 = load i8*, i8** %37, align 8, !dbg !1241
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1242
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !1243
  %41 = load i8*, i8** %40, align 8, !dbg !1243
  %42 = call i64 @quotearg_buffer_restyled(i8* %23, i64 %24, i8* %25, i64 %26, i32 %29, i32 %32, i32* %35, i8* %38, i8* %41), !dbg !1244
  store i64 %42, i64* %13, align 8, !dbg !1229
  %43 = load i32, i32* %12, align 4, !dbg !1245
  %44 = call i32* @__errno_location() #17, !dbg !1246
  store i32 %43, i32* %44, align 4, !dbg !1247
  %45 = load i64, i64* %13, align 8, !dbg !1248
  ret i64 %45, !dbg !1249
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* %6, i8* %7, i8* %8) #4 !dbg !1250 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1255, metadata !DIExpression()), !dbg !1256
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1257, metadata !DIExpression()), !dbg !1258
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1259, metadata !DIExpression()), !dbg !1260
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1261, metadata !DIExpression()), !dbg !1262
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1263, metadata !DIExpression()), !dbg !1264
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1265, metadata !DIExpression()), !dbg !1266
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1267, metadata !DIExpression()), !dbg !1268
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1269, metadata !DIExpression()), !dbg !1270
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1271, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.declare(metadata i64* %20, metadata !1273, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1275, metadata !DIExpression()), !dbg !1276
  store i64 0, i64* %21, align 8, !dbg !1276
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1277, metadata !DIExpression()), !dbg !1278
  store i64 0, i64* %22, align 8, !dbg !1278
  call void @llvm.dbg.declare(metadata i8** %23, metadata !1279, metadata !DIExpression()), !dbg !1280
  store i8* null, i8** %23, align 8, !dbg !1280
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1281, metadata !DIExpression()), !dbg !1282
  store i64 0, i64* %24, align 8, !dbg !1282
  call void @llvm.dbg.declare(metadata i8* %25, metadata !1283, metadata !DIExpression()), !dbg !1284
  store i8 0, i8* %25, align 1, !dbg !1284
  call void @llvm.dbg.declare(metadata i8* %26, metadata !1285, metadata !DIExpression()), !dbg !1286
  %43 = call i64 @__ctype_get_mb_cur_max() #15, !dbg !1287
  %44 = icmp eq i64 %43, 1, !dbg !1288
  %45 = zext i1 %44 to i8, !dbg !1286
  store i8 %45, i8* %26, align 1, !dbg !1286
  call void @llvm.dbg.declare(metadata i8* %27, metadata !1289, metadata !DIExpression()), !dbg !1290
  %46 = load i32, i32* %16, align 4, !dbg !1291
  %47 = and i32 %46, 2, !dbg !1292
  %48 = icmp ne i32 %47, 0, !dbg !1293
  %49 = zext i1 %48 to i8, !dbg !1290
  store i8 %49, i8* %27, align 1, !dbg !1290
  call void @llvm.dbg.declare(metadata i8* %28, metadata !1294, metadata !DIExpression()), !dbg !1295
  store i8 0, i8* %28, align 1, !dbg !1295
  call void @llvm.dbg.declare(metadata i8* %29, metadata !1296, metadata !DIExpression()), !dbg !1297
  store i8 0, i8* %29, align 1, !dbg !1297
  call void @llvm.dbg.declare(metadata i8* %30, metadata !1298, metadata !DIExpression()), !dbg !1299
  store i8 1, i8* %30, align 1, !dbg !1299
  br label %50, !dbg !1300

50:                                               ; preds = %1042, %9
  call void @llvm.dbg.label(metadata !1301), !dbg !1302
  %51 = load i32, i32* %15, align 4, !dbg !1303
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
  ], !dbg !1304

52:                                               ; preds = %50
  store i32 5, i32* %15, align 4, !dbg !1305
  store i8 1, i8* %27, align 1, !dbg !1307
  br label %53, !dbg !1308

53:                                               ; preds = %50, %52
  %54 = load i8, i8* %27, align 1, !dbg !1309
  %55 = trunc i8 %54 to i1, !dbg !1309
  br i1 %55, label %69, label %56, !dbg !1311

56:                                               ; preds = %53
  br label %57, !dbg !1312

57:                                               ; preds = %56
  %58 = load i64, i64* %21, align 8, !dbg !1313
  %59 = load i64, i64* %12, align 8, !dbg !1313
  %60 = icmp ult i64 %58, %59, !dbg !1313
  br i1 %60, label %61, label %65, !dbg !1316

61:                                               ; preds = %57
  %62 = load i8*, i8** %11, align 8, !dbg !1313
  %63 = load i64, i64* %21, align 8, !dbg !1313
  %64 = getelementptr inbounds i8, i8* %62, i64 %63, !dbg !1313
  store i8 34, i8* %64, align 1, !dbg !1313
  br label %65, !dbg !1313

65:                                               ; preds = %61, %57
  %66 = load i64, i64* %21, align 8, !dbg !1316
  %67 = add i64 %66, 1, !dbg !1316
  store i64 %67, i64* %21, align 8, !dbg !1316
  br label %68, !dbg !1316

68:                                               ; preds = %65
  br label %69, !dbg !1316

69:                                               ; preds = %68, %53
  store i8 1, i8* %25, align 1, !dbg !1317
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), i8** %23, align 8, !dbg !1318
  store i64 1, i64* %24, align 8, !dbg !1319
  br label %137, !dbg !1320

70:                                               ; preds = %50
  store i8 1, i8* %25, align 1, !dbg !1321
  store i8 0, i8* %27, align 1, !dbg !1322
  br label %137, !dbg !1323

71:                                               ; preds = %50, %50, %50
  %72 = load i32, i32* %15, align 4, !dbg !1324
  %73 = icmp ne i32 %72, 10, !dbg !1327
  br i1 %73, label %74, label %79, !dbg !1328

74:                                               ; preds = %71
  %75 = load i32, i32* %15, align 4, !dbg !1329
  %76 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.62, i64 0, i64 0), i32 %75), !dbg !1331
  store i8* %76, i8** %18, align 8, !dbg !1332
  %77 = load i32, i32* %15, align 4, !dbg !1333
  %78 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), i32 %77), !dbg !1334
  store i8* %78, i8** %19, align 8, !dbg !1335
  br label %79, !dbg !1336

79:                                               ; preds = %74, %71
  %80 = load i8, i8* %27, align 1, !dbg !1337
  %81 = trunc i8 %80 to i1, !dbg !1337
  br i1 %81, label %107, label %82, !dbg !1339

82:                                               ; preds = %79
  %83 = load i8*, i8** %18, align 8, !dbg !1340
  store i8* %83, i8** %23, align 8, !dbg !1342
  br label %84, !dbg !1343

84:                                               ; preds = %103, %82
  %85 = load i8*, i8** %23, align 8, !dbg !1344
  %86 = load i8, i8* %85, align 1, !dbg !1346
  %87 = icmp ne i8 %86, 0, !dbg !1347
  br i1 %87, label %88, label %106, !dbg !1347

88:                                               ; preds = %84
  br label %89, !dbg !1348

89:                                               ; preds = %88
  %90 = load i64, i64* %21, align 8, !dbg !1349
  %91 = load i64, i64* %12, align 8, !dbg !1349
  %92 = icmp ult i64 %90, %91, !dbg !1349
  br i1 %92, label %93, label %99, !dbg !1352

93:                                               ; preds = %89
  %94 = load i8*, i8** %23, align 8, !dbg !1349
  %95 = load i8, i8* %94, align 1, !dbg !1349
  %96 = load i8*, i8** %11, align 8, !dbg !1349
  %97 = load i64, i64* %21, align 8, !dbg !1349
  %98 = getelementptr inbounds i8, i8* %96, i64 %97, !dbg !1349
  store i8 %95, i8* %98, align 1, !dbg !1349
  br label %99, !dbg !1349

99:                                               ; preds = %93, %89
  %100 = load i64, i64* %21, align 8, !dbg !1352
  %101 = add i64 %100, 1, !dbg !1352
  store i64 %101, i64* %21, align 8, !dbg !1352
  br label %102, !dbg !1352

102:                                              ; preds = %99
  br label %103, !dbg !1352

103:                                              ; preds = %102
  %104 = load i8*, i8** %23, align 8, !dbg !1353
  %105 = getelementptr inbounds i8, i8* %104, i32 1, !dbg !1353
  store i8* %105, i8** %23, align 8, !dbg !1353
  br label %84, !dbg !1354, !llvm.loop !1355

106:                                              ; preds = %84
  br label %107, !dbg !1356

107:                                              ; preds = %106, %79
  store i8 1, i8* %25, align 1, !dbg !1357
  %108 = load i8*, i8** %19, align 8, !dbg !1358
  store i8* %108, i8** %23, align 8, !dbg !1359
  %109 = load i8*, i8** %23, align 8, !dbg !1360
  %110 = call i64 @strlen(i8* %109) #14, !dbg !1361
  store i64 %110, i64* %24, align 8, !dbg !1362
  br label %137, !dbg !1363

111:                                              ; preds = %50
  store i8 1, i8* %25, align 1, !dbg !1364
  br label %112, !dbg !1365

112:                                              ; preds = %50, %111
  store i8 1, i8* %27, align 1, !dbg !1366
  br label %113, !dbg !1367

113:                                              ; preds = %50, %112
  %114 = load i8, i8* %27, align 1, !dbg !1368
  %115 = trunc i8 %114 to i1, !dbg !1368
  br i1 %115, label %117, label %116, !dbg !1370

116:                                              ; preds = %113
  store i8 1, i8* %25, align 1, !dbg !1371
  br label %117, !dbg !1372

117:                                              ; preds = %116, %113
  br label %118, !dbg !1373

118:                                              ; preds = %50, %117
  store i32 2, i32* %15, align 4, !dbg !1374
  %119 = load i8, i8* %27, align 1, !dbg !1375
  %120 = trunc i8 %119 to i1, !dbg !1375
  br i1 %120, label %134, label %121, !dbg !1377

121:                                              ; preds = %118
  br label %122, !dbg !1378

122:                                              ; preds = %121
  %123 = load i64, i64* %21, align 8, !dbg !1379
  %124 = load i64, i64* %12, align 8, !dbg !1379
  %125 = icmp ult i64 %123, %124, !dbg !1379
  br i1 %125, label %126, label %130, !dbg !1382

126:                                              ; preds = %122
  %127 = load i8*, i8** %11, align 8, !dbg !1379
  %128 = load i64, i64* %21, align 8, !dbg !1379
  %129 = getelementptr inbounds i8, i8* %127, i64 %128, !dbg !1379
  store i8 39, i8* %129, align 1, !dbg !1379
  br label %130, !dbg !1379

130:                                              ; preds = %126, %122
  %131 = load i64, i64* %21, align 8, !dbg !1382
  %132 = add i64 %131, 1, !dbg !1382
  store i64 %132, i64* %21, align 8, !dbg !1382
  br label %133, !dbg !1382

133:                                              ; preds = %130
  br label %134, !dbg !1382

134:                                              ; preds = %133, %118
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), i8** %23, align 8, !dbg !1383
  store i64 1, i64* %24, align 8, !dbg !1384
  br label %137, !dbg !1385

135:                                              ; preds = %50
  store i8 0, i8* %27, align 1, !dbg !1386
  br label %137, !dbg !1387

136:                                              ; preds = %50
  call void @abort() #13, !dbg !1388
  unreachable, !dbg !1388

137:                                              ; preds = %135, %134, %107, %70, %69
  store i64 0, i64* %20, align 8, !dbg !1389
  br label %138, !dbg !1391

138:                                              ; preds = %1001, %137
  %139 = load i64, i64* %14, align 8, !dbg !1392
  %140 = icmp eq i64 %139, -1, !dbg !1394
  br i1 %140, label %141, label %149, !dbg !1392

141:                                              ; preds = %138
  %142 = load i8*, i8** %13, align 8, !dbg !1395
  %143 = load i64, i64* %20, align 8, !dbg !1396
  %144 = getelementptr inbounds i8, i8* %142, i64 %143, !dbg !1395
  %145 = load i8, i8* %144, align 1, !dbg !1395
  %146 = sext i8 %145 to i32, !dbg !1395
  %147 = icmp eq i32 %146, 0, !dbg !1397
  %148 = zext i1 %147 to i32, !dbg !1397
  br label %154, !dbg !1392

149:                                              ; preds = %138
  %150 = load i64, i64* %20, align 8, !dbg !1398
  %151 = load i64, i64* %14, align 8, !dbg !1399
  %152 = icmp eq i64 %150, %151, !dbg !1400
  %153 = zext i1 %152 to i32, !dbg !1400
  br label %154, !dbg !1392

154:                                              ; preds = %149, %141
  %155 = phi i32 [ %148, %141 ], [ %153, %149 ], !dbg !1392
  %156 = icmp ne i32 %155, 0, !dbg !1401
  %157 = xor i1 %156, true, !dbg !1401
  br i1 %157, label %158, label %1004, !dbg !1402

158:                                              ; preds = %154
  call void @llvm.dbg.declare(metadata i8* %31, metadata !1403, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.declare(metadata i8* %32, metadata !1406, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.declare(metadata i8* %33, metadata !1408, metadata !DIExpression()), !dbg !1409
  store i8 0, i8* %33, align 1, !dbg !1409
  call void @llvm.dbg.declare(metadata i8* %34, metadata !1410, metadata !DIExpression()), !dbg !1411
  store i8 0, i8* %34, align 1, !dbg !1411
  call void @llvm.dbg.declare(metadata i8* %35, metadata !1412, metadata !DIExpression()), !dbg !1413
  store i8 0, i8* %35, align 1, !dbg !1413
  %159 = load i8, i8* %25, align 1, !dbg !1414
  %160 = trunc i8 %159 to i1, !dbg !1414
  br i1 %160, label %161, label %197, !dbg !1416

161:                                              ; preds = %158
  %162 = load i32, i32* %15, align 4, !dbg !1417
  %163 = icmp ne i32 %162, 2, !dbg !1418
  br i1 %163, label %164, label %197, !dbg !1419

164:                                              ; preds = %161
  %165 = load i64, i64* %24, align 8, !dbg !1420
  %166 = icmp ne i64 %165, 0, !dbg !1420
  br i1 %166, label %167, label %197, !dbg !1421

167:                                              ; preds = %164
  %168 = load i64, i64* %20, align 8, !dbg !1422
  %169 = load i64, i64* %24, align 8, !dbg !1423
  %170 = add i64 %168, %169, !dbg !1424
  %171 = load i64, i64* %14, align 8, !dbg !1425
  %172 = icmp eq i64 %171, -1, !dbg !1426
  br i1 %172, label %173, label %179, !dbg !1427

173:                                              ; preds = %167
  %174 = load i64, i64* %24, align 8, !dbg !1428
  %175 = icmp ult i64 1, %174, !dbg !1429
  br i1 %175, label %176, label %179, !dbg !1425

176:                                              ; preds = %173
  %177 = load i8*, i8** %13, align 8, !dbg !1430
  %178 = call i64 @strlen(i8* %177) #14, !dbg !1431
  store i64 %178, i64* %14, align 8, !dbg !1432
  br label %181, !dbg !1425

179:                                              ; preds = %173, %167
  %180 = load i64, i64* %14, align 8, !dbg !1433
  br label %181, !dbg !1425

181:                                              ; preds = %179, %176
  %182 = phi i64 [ %178, %176 ], [ %180, %179 ], !dbg !1425
  %183 = icmp ule i64 %170, %182, !dbg !1434
  br i1 %183, label %184, label %197, !dbg !1435

184:                                              ; preds = %181
  %185 = load i8*, i8** %13, align 8, !dbg !1436
  %186 = load i64, i64* %20, align 8, !dbg !1437
  %187 = getelementptr inbounds i8, i8* %185, i64 %186, !dbg !1438
  %188 = load i8*, i8** %23, align 8, !dbg !1439
  %189 = load i64, i64* %24, align 8, !dbg !1440
  %190 = call i32 @memcmp(i8* %187, i8* %188, i64 %189) #14, !dbg !1441
  %191 = icmp eq i32 %190, 0, !dbg !1442
  br i1 %191, label %192, label %197, !dbg !1443

192:                                              ; preds = %184
  %193 = load i8, i8* %27, align 1, !dbg !1444
  %194 = trunc i8 %193 to i1, !dbg !1444
  br i1 %194, label %195, label %196, !dbg !1447

195:                                              ; preds = %192
  br label %1086, !dbg !1448

196:                                              ; preds = %192
  store i8 1, i8* %33, align 1, !dbg !1449
  br label %197, !dbg !1450

197:                                              ; preds = %196, %184, %181, %164, %161, %158
  %198 = load i8*, i8** %13, align 8, !dbg !1451
  %199 = load i64, i64* %20, align 8, !dbg !1452
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !1451
  %201 = load i8, i8* %200, align 1, !dbg !1451
  store i8 %201, i8* %31, align 1, !dbg !1453
  %202 = load i8, i8* %31, align 1, !dbg !1454
  %203 = zext i8 %202 to i32, !dbg !1454
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
  ], !dbg !1455

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !1456
  %206 = trunc i8 %205 to i1, !dbg !1456
  br i1 %206, label %207, label %318, !dbg !1459

207:                                              ; preds = %204
  br label %208, !dbg !1460

208:                                              ; preds = %207
  %209 = load i8, i8* %27, align 1, !dbg !1462
  %210 = trunc i8 %209 to i1, !dbg !1462
  br i1 %210, label %211, label %212, !dbg !1465

211:                                              ; preds = %208
  br label %1086, !dbg !1462

212:                                              ; preds = %208
  store i8 1, i8* %34, align 1, !dbg !1465
  %213 = load i32, i32* %15, align 4, !dbg !1466
  %214 = icmp eq i32 %213, 2, !dbg !1466
  br i1 %214, label %215, label %255, !dbg !1466

215:                                              ; preds = %212
  %216 = load i8, i8* %28, align 1, !dbg !1466
  %217 = trunc i8 %216 to i1, !dbg !1466
  br i1 %217, label %255, label %218, !dbg !1465

218:                                              ; preds = %215
  br label %219, !dbg !1468

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !1470
  %221 = load i64, i64* %12, align 8, !dbg !1470
  %222 = icmp ult i64 %220, %221, !dbg !1470
  br i1 %222, label %223, label %227, !dbg !1473

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !1470
  %225 = load i64, i64* %21, align 8, !dbg !1470
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !1470
  store i8 39, i8* %226, align 1, !dbg !1470
  br label %227, !dbg !1470

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !1473
  %229 = add i64 %228, 1, !dbg !1473
  store i64 %229, i64* %21, align 8, !dbg !1473
  br label %230, !dbg !1473

230:                                              ; preds = %227
  br label %231, !dbg !1468

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !1474
  %233 = load i64, i64* %12, align 8, !dbg !1474
  %234 = icmp ult i64 %232, %233, !dbg !1474
  br i1 %234, label %235, label %239, !dbg !1477

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !1474
  %237 = load i64, i64* %21, align 8, !dbg !1474
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !1474
  store i8 36, i8* %238, align 1, !dbg !1474
  br label %239, !dbg !1474

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !1477
  %241 = add i64 %240, 1, !dbg !1477
  store i64 %241, i64* %21, align 8, !dbg !1477
  br label %242, !dbg !1477

242:                                              ; preds = %239
  br label %243, !dbg !1468

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !1478
  %245 = load i64, i64* %12, align 8, !dbg !1478
  %246 = icmp ult i64 %244, %245, !dbg !1478
  br i1 %246, label %247, label %251, !dbg !1481

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !1478
  %249 = load i64, i64* %21, align 8, !dbg !1478
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !1478
  store i8 39, i8* %250, align 1, !dbg !1478
  br label %251, !dbg !1478

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !1481
  %253 = add i64 %252, 1, !dbg !1481
  store i64 %253, i64* %21, align 8, !dbg !1481
  br label %254, !dbg !1481

254:                                              ; preds = %251
  store i8 1, i8* %28, align 1, !dbg !1468
  br label %255, !dbg !1468

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !1465

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !1482
  %258 = load i64, i64* %12, align 8, !dbg !1482
  %259 = icmp ult i64 %257, %258, !dbg !1482
  br i1 %259, label %260, label %264, !dbg !1485

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !1482
  %262 = load i64, i64* %21, align 8, !dbg !1482
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !1482
  store i8 92, i8* %263, align 1, !dbg !1482
  br label %264, !dbg !1482

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !1485
  %266 = add i64 %265, 1, !dbg !1485
  store i64 %266, i64* %21, align 8, !dbg !1485
  br label %267, !dbg !1485

267:                                              ; preds = %264
  br label %268, !dbg !1465

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !1486
  %270 = icmp ne i32 %269, 2, !dbg !1488
  br i1 %270, label %271, label %317, !dbg !1489

271:                                              ; preds = %268
  %272 = load i64, i64* %20, align 8, !dbg !1490
  %273 = add i64 %272, 1, !dbg !1491
  %274 = load i64, i64* %14, align 8, !dbg !1492
  %275 = icmp ult i64 %273, %274, !dbg !1493
  br i1 %275, label %276, label %317, !dbg !1494

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !1495
  %278 = load i64, i64* %20, align 8, !dbg !1496
  %279 = add i64 %278, 1, !dbg !1497
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !1495
  %281 = load i8, i8* %280, align 1, !dbg !1495
  %282 = sext i8 %281 to i32, !dbg !1495
  %283 = icmp sle i32 48, %282, !dbg !1498
  br i1 %283, label %284, label %317, !dbg !1499

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !1500
  %286 = load i64, i64* %20, align 8, !dbg !1501
  %287 = add i64 %286, 1, !dbg !1502
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !1500
  %289 = load i8, i8* %288, align 1, !dbg !1500
  %290 = sext i8 %289 to i32, !dbg !1500
  %291 = icmp sle i32 %290, 57, !dbg !1503
  br i1 %291, label %292, label %317, !dbg !1504

292:                                              ; preds = %284
  br label %293, !dbg !1505

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !1507
  %295 = load i64, i64* %12, align 8, !dbg !1507
  %296 = icmp ult i64 %294, %295, !dbg !1507
  br i1 %296, label %297, label %301, !dbg !1510

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !1507
  %299 = load i64, i64* %21, align 8, !dbg !1507
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !1507
  store i8 48, i8* %300, align 1, !dbg !1507
  br label %301, !dbg !1507

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !1510
  %303 = add i64 %302, 1, !dbg !1510
  store i64 %303, i64* %21, align 8, !dbg !1510
  br label %304, !dbg !1510

304:                                              ; preds = %301
  br label %305, !dbg !1511

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !1512
  %307 = load i64, i64* %12, align 8, !dbg !1512
  %308 = icmp ult i64 %306, %307, !dbg !1512
  br i1 %308, label %309, label %313, !dbg !1515

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !1512
  %311 = load i64, i64* %21, align 8, !dbg !1512
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !1512
  store i8 48, i8* %312, align 1, !dbg !1512
  br label %313, !dbg !1512

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !1515
  %315 = add i64 %314, 1, !dbg !1515
  store i64 %315, i64* %21, align 8, !dbg !1515
  br label %316, !dbg !1515

316:                                              ; preds = %313
  br label %317, !dbg !1516

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %31, align 1, !dbg !1517
  br label %324, !dbg !1518

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !1519
  %320 = and i32 %319, 1, !dbg !1521
  %321 = icmp ne i32 %320, 0, !dbg !1521
  br i1 %321, label %322, label %323, !dbg !1522

322:                                              ; preds = %318
  br label %1001, !dbg !1523

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %857, !dbg !1524

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !1525
  switch i32 %326, label %419 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !1526

327:                                              ; preds = %325
  %328 = load i8, i8* %27, align 1, !dbg !1527
  %329 = trunc i8 %328 to i1, !dbg !1527
  br i1 %329, label %330, label %331, !dbg !1530

330:                                              ; preds = %327
  br label %1086, !dbg !1531

331:                                              ; preds = %327
  br label %420, !dbg !1532

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !1533
  %334 = and i32 %333, 4, !dbg !1535
  %335 = icmp ne i32 %334, 0, !dbg !1535
  br i1 %335, label %336, label %418, !dbg !1536

336:                                              ; preds = %332
  %337 = load i64, i64* %20, align 8, !dbg !1537
  %338 = add i64 %337, 2, !dbg !1538
  %339 = load i64, i64* %14, align 8, !dbg !1539
  %340 = icmp ult i64 %338, %339, !dbg !1540
  br i1 %340, label %341, label %418, !dbg !1541

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !1542
  %343 = load i64, i64* %20, align 8, !dbg !1543
  %344 = add i64 %343, 1, !dbg !1544
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !1542
  %346 = load i8, i8* %345, align 1, !dbg !1542
  %347 = sext i8 %346 to i32, !dbg !1542
  %348 = icmp eq i32 %347, 63, !dbg !1545
  br i1 %348, label %349, label %418, !dbg !1546

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !1547
  %351 = load i64, i64* %20, align 8, !dbg !1548
  %352 = add i64 %351, 2, !dbg !1549
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !1547
  %354 = load i8, i8* %353, align 1, !dbg !1547
  %355 = sext i8 %354 to i32, !dbg !1547
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
  ], !dbg !1550

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %27, align 1, !dbg !1551
  %358 = trunc i8 %357 to i1, !dbg !1551
  br i1 %358, label %359, label %360, !dbg !1554

359:                                              ; preds = %356
  br label %1086, !dbg !1555

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !1556
  %362 = load i64, i64* %20, align 8, !dbg !1557
  %363 = add i64 %362, 2, !dbg !1558
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !1556
  %365 = load i8, i8* %364, align 1, !dbg !1556
  store i8 %365, i8* %31, align 1, !dbg !1559
  %366 = load i64, i64* %20, align 8, !dbg !1560
  %367 = add i64 %366, 2, !dbg !1560
  store i64 %367, i64* %20, align 8, !dbg !1560
  br label %368, !dbg !1561

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !1562
  %370 = load i64, i64* %12, align 8, !dbg !1562
  %371 = icmp ult i64 %369, %370, !dbg !1562
  br i1 %371, label %372, label %376, !dbg !1565

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !1562
  %374 = load i64, i64* %21, align 8, !dbg !1562
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !1562
  store i8 63, i8* %375, align 1, !dbg !1562
  br label %376, !dbg !1562

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !1565
  %378 = add i64 %377, 1, !dbg !1565
  store i64 %378, i64* %21, align 8, !dbg !1565
  br label %379, !dbg !1565

379:                                              ; preds = %376
  br label %380, !dbg !1566

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !1567
  %382 = load i64, i64* %12, align 8, !dbg !1567
  %383 = icmp ult i64 %381, %382, !dbg !1567
  br i1 %383, label %384, label %388, !dbg !1570

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !1567
  %386 = load i64, i64* %21, align 8, !dbg !1567
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !1567
  store i8 34, i8* %387, align 1, !dbg !1567
  br label %388, !dbg !1567

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !1570
  %390 = add i64 %389, 1, !dbg !1570
  store i64 %390, i64* %21, align 8, !dbg !1570
  br label %391, !dbg !1570

391:                                              ; preds = %388
  br label %392, !dbg !1571

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !1572
  %394 = load i64, i64* %12, align 8, !dbg !1572
  %395 = icmp ult i64 %393, %394, !dbg !1572
  br i1 %395, label %396, label %400, !dbg !1575

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !1572
  %398 = load i64, i64* %21, align 8, !dbg !1572
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !1572
  store i8 34, i8* %399, align 1, !dbg !1572
  br label %400, !dbg !1572

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !1575
  %402 = add i64 %401, 1, !dbg !1575
  store i64 %402, i64* %21, align 8, !dbg !1575
  br label %403, !dbg !1575

403:                                              ; preds = %400
  br label %404, !dbg !1576

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !1577
  %406 = load i64, i64* %12, align 8, !dbg !1577
  %407 = icmp ult i64 %405, %406, !dbg !1577
  br i1 %407, label %408, label %412, !dbg !1580

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !1577
  %410 = load i64, i64* %21, align 8, !dbg !1577
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !1577
  store i8 63, i8* %411, align 1, !dbg !1577
  br label %412, !dbg !1577

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !1580
  %414 = add i64 %413, 1, !dbg !1580
  store i64 %414, i64* %21, align 8, !dbg !1580
  br label %415, !dbg !1580

415:                                              ; preds = %412
  br label %417, !dbg !1581

416:                                              ; preds = %349
  br label %417, !dbg !1582

417:                                              ; preds = %416, %415
  br label %418, !dbg !1583

418:                                              ; preds = %417, %341, %336, %332
  br label %420, !dbg !1584

419:                                              ; preds = %325
  br label %420, !dbg !1585

420:                                              ; preds = %419, %418, %331
  br label %857, !dbg !1586

421:                                              ; preds = %197
  store i8 97, i8* %32, align 1, !dbg !1587
  br label %456, !dbg !1588

422:                                              ; preds = %197
  store i8 98, i8* %32, align 1, !dbg !1589
  br label %456, !dbg !1590

423:                                              ; preds = %197
  store i8 102, i8* %32, align 1, !dbg !1591
  br label %456, !dbg !1592

424:                                              ; preds = %197
  store i8 110, i8* %32, align 1, !dbg !1593
  br label %448, !dbg !1594

425:                                              ; preds = %197
  store i8 114, i8* %32, align 1, !dbg !1595
  br label %448, !dbg !1596

426:                                              ; preds = %197
  store i8 116, i8* %32, align 1, !dbg !1597
  br label %448, !dbg !1598

427:                                              ; preds = %197
  store i8 118, i8* %32, align 1, !dbg !1599
  br label %456, !dbg !1600

428:                                              ; preds = %197
  %429 = load i8, i8* %31, align 1, !dbg !1601
  store i8 %429, i8* %32, align 1, !dbg !1602
  %430 = load i32, i32* %15, align 4, !dbg !1603
  %431 = icmp eq i32 %430, 2, !dbg !1605
  br i1 %431, label %432, label %437, !dbg !1606

432:                                              ; preds = %428
  %433 = load i8, i8* %27, align 1, !dbg !1607
  %434 = trunc i8 %433 to i1, !dbg !1607
  br i1 %434, label %435, label %436, !dbg !1610

435:                                              ; preds = %432
  br label %1086, !dbg !1611

436:                                              ; preds = %432
  br label %950, !dbg !1612

437:                                              ; preds = %428
  %438 = load i8, i8* %25, align 1, !dbg !1613
  %439 = trunc i8 %438 to i1, !dbg !1613
  br i1 %439, label %440, label %447, !dbg !1615

440:                                              ; preds = %437
  %441 = load i8, i8* %27, align 1, !dbg !1616
  %442 = trunc i8 %441 to i1, !dbg !1616
  br i1 %442, label %443, label %447, !dbg !1617

443:                                              ; preds = %440
  %444 = load i64, i64* %24, align 8, !dbg !1618
  %445 = icmp ne i64 %444, 0, !dbg !1618
  br i1 %445, label %446, label %447, !dbg !1619

446:                                              ; preds = %443
  br label %950, !dbg !1620

447:                                              ; preds = %443, %440, %437
  br label %448, !dbg !1618

448:                                              ; preds = %447, %426, %425, %424
  call void @llvm.dbg.label(metadata !1621), !dbg !1622
  %449 = load i32, i32* %15, align 4, !dbg !1623
  %450 = icmp eq i32 %449, 2, !dbg !1625
  br i1 %450, label %451, label %455, !dbg !1626

451:                                              ; preds = %448
  %452 = load i8, i8* %27, align 1, !dbg !1627
  %453 = trunc i8 %452 to i1, !dbg !1627
  br i1 %453, label %454, label %455, !dbg !1628

454:                                              ; preds = %451
  br label %1086, !dbg !1629

455:                                              ; preds = %451, %448
  br label %456, !dbg !1627

456:                                              ; preds = %455, %427, %423, %422, %421
  call void @llvm.dbg.label(metadata !1630), !dbg !1631
  %457 = load i8, i8* %25, align 1, !dbg !1632
  %458 = trunc i8 %457 to i1, !dbg !1632
  br i1 %458, label %459, label %461, !dbg !1634

459:                                              ; preds = %456
  %460 = load i8, i8* %32, align 1, !dbg !1635
  store i8 %460, i8* %31, align 1, !dbg !1637
  br label %888, !dbg !1638

461:                                              ; preds = %456
  br label %857, !dbg !1639

462:                                              ; preds = %197, %197
  %463 = load i64, i64* %14, align 8, !dbg !1640
  %464 = icmp eq i64 %463, -1, !dbg !1642
  br i1 %464, label %465, label %471, !dbg !1643

465:                                              ; preds = %462
  %466 = load i8*, i8** %13, align 8, !dbg !1644
  %467 = getelementptr inbounds i8, i8* %466, i64 1, !dbg !1644
  %468 = load i8, i8* %467, align 1, !dbg !1644
  %469 = sext i8 %468 to i32, !dbg !1644
  %470 = icmp eq i32 %469, 0, !dbg !1645
  br i1 %470, label %475, label %474, !dbg !1640

471:                                              ; preds = %462
  %472 = load i64, i64* %14, align 8, !dbg !1646
  %473 = icmp eq i64 %472, 1, !dbg !1647
  br i1 %473, label %475, label %474, !dbg !1643

474:                                              ; preds = %471, %465
  br label %857, !dbg !1648

475:                                              ; preds = %471, %465
  br label %476, !dbg !1649

476:                                              ; preds = %197, %197, %475
  %477 = load i64, i64* %20, align 8, !dbg !1650
  %478 = icmp ne i64 %477, 0, !dbg !1652
  br i1 %478, label %479, label %480, !dbg !1653

479:                                              ; preds = %476
  br label %857, !dbg !1654

480:                                              ; preds = %476
  br label %481, !dbg !1655

481:                                              ; preds = %197, %480
  store i8 1, i8* %35, align 1, !dbg !1656
  br label %482, !dbg !1657

482:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %481
  %483 = load i32, i32* %15, align 4, !dbg !1658
  %484 = icmp eq i32 %483, 2, !dbg !1660
  br i1 %484, label %485, label %489, !dbg !1661

485:                                              ; preds = %482
  %486 = load i8, i8* %27, align 1, !dbg !1662
  %487 = trunc i8 %486 to i1, !dbg !1662
  br i1 %487, label %488, label %489, !dbg !1663

488:                                              ; preds = %485
  br label %1086, !dbg !1664

489:                                              ; preds = %485, %482
  br label %857, !dbg !1665

490:                                              ; preds = %197
  store i8 1, i8* %29, align 1, !dbg !1666
  store i8 1, i8* %35, align 1, !dbg !1667
  %491 = load i32, i32* %15, align 4, !dbg !1668
  %492 = icmp eq i32 %491, 2, !dbg !1670
  br i1 %492, label %493, label %542, !dbg !1671

493:                                              ; preds = %490
  %494 = load i8, i8* %27, align 1, !dbg !1672
  %495 = trunc i8 %494 to i1, !dbg !1672
  br i1 %495, label %496, label %497, !dbg !1675

496:                                              ; preds = %493
  br label %1086, !dbg !1676

497:                                              ; preds = %493
  %498 = load i64, i64* %12, align 8, !dbg !1677
  %499 = icmp ne i64 %498, 0, !dbg !1677
  br i1 %499, label %500, label %505, !dbg !1679

500:                                              ; preds = %497
  %501 = load i64, i64* %22, align 8, !dbg !1680
  %502 = icmp ne i64 %501, 0, !dbg !1680
  br i1 %502, label %505, label %503, !dbg !1681

503:                                              ; preds = %500
  %504 = load i64, i64* %12, align 8, !dbg !1682
  store i64 %504, i64* %22, align 8, !dbg !1684
  store i64 0, i64* %12, align 8, !dbg !1685
  br label %505, !dbg !1686

505:                                              ; preds = %503, %500, %497
  br label %506, !dbg !1687

506:                                              ; preds = %505
  %507 = load i64, i64* %21, align 8, !dbg !1688
  %508 = load i64, i64* %12, align 8, !dbg !1688
  %509 = icmp ult i64 %507, %508, !dbg !1688
  br i1 %509, label %510, label %514, !dbg !1691

510:                                              ; preds = %506
  %511 = load i8*, i8** %11, align 8, !dbg !1688
  %512 = load i64, i64* %21, align 8, !dbg !1688
  %513 = getelementptr inbounds i8, i8* %511, i64 %512, !dbg !1688
  store i8 39, i8* %513, align 1, !dbg !1688
  br label %514, !dbg !1688

514:                                              ; preds = %510, %506
  %515 = load i64, i64* %21, align 8, !dbg !1691
  %516 = add i64 %515, 1, !dbg !1691
  store i64 %516, i64* %21, align 8, !dbg !1691
  br label %517, !dbg !1691

517:                                              ; preds = %514
  br label %518, !dbg !1692

518:                                              ; preds = %517
  %519 = load i64, i64* %21, align 8, !dbg !1693
  %520 = load i64, i64* %12, align 8, !dbg !1693
  %521 = icmp ult i64 %519, %520, !dbg !1693
  br i1 %521, label %522, label %526, !dbg !1696

522:                                              ; preds = %518
  %523 = load i8*, i8** %11, align 8, !dbg !1693
  %524 = load i64, i64* %21, align 8, !dbg !1693
  %525 = getelementptr inbounds i8, i8* %523, i64 %524, !dbg !1693
  store i8 92, i8* %525, align 1, !dbg !1693
  br label %526, !dbg !1693

526:                                              ; preds = %522, %518
  %527 = load i64, i64* %21, align 8, !dbg !1696
  %528 = add i64 %527, 1, !dbg !1696
  store i64 %528, i64* %21, align 8, !dbg !1696
  br label %529, !dbg !1696

529:                                              ; preds = %526
  br label %530, !dbg !1697

530:                                              ; preds = %529
  %531 = load i64, i64* %21, align 8, !dbg !1698
  %532 = load i64, i64* %12, align 8, !dbg !1698
  %533 = icmp ult i64 %531, %532, !dbg !1698
  br i1 %533, label %534, label %538, !dbg !1701

534:                                              ; preds = %530
  %535 = load i8*, i8** %11, align 8, !dbg !1698
  %536 = load i64, i64* %21, align 8, !dbg !1698
  %537 = getelementptr inbounds i8, i8* %535, i64 %536, !dbg !1698
  store i8 39, i8* %537, align 1, !dbg !1698
  br label %538, !dbg !1698

538:                                              ; preds = %534, %530
  %539 = load i64, i64* %21, align 8, !dbg !1701
  %540 = add i64 %539, 1, !dbg !1701
  store i64 %540, i64* %21, align 8, !dbg !1701
  br label %541, !dbg !1701

541:                                              ; preds = %538
  store i8 0, i8* %28, align 1, !dbg !1702
  br label %542, !dbg !1703

542:                                              ; preds = %541, %490
  br label %857, !dbg !1704

543:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %35, align 1, !dbg !1705
  br label %857, !dbg !1706

544:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %36, metadata !1707, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.declare(metadata i8* %37, metadata !1710, metadata !DIExpression()), !dbg !1711
  %545 = load i8, i8* %26, align 1, !dbg !1712
  %546 = trunc i8 %545 to i1, !dbg !1712
  br i1 %546, label %547, label %559, !dbg !1714

547:                                              ; preds = %544
  store i64 1, i64* %36, align 8, !dbg !1715
  %548 = call i16** @__ctype_b_loc() #17, !dbg !1717
  %549 = load i16*, i16** %548, align 8, !dbg !1717
  %550 = load i8, i8* %31, align 1, !dbg !1717
  %551 = zext i8 %550 to i32, !dbg !1717
  %552 = sext i32 %551 to i64, !dbg !1717
  %553 = getelementptr inbounds i16, i16* %549, i64 %552, !dbg !1717
  %554 = load i16, i16* %553, align 2, !dbg !1717
  %555 = zext i16 %554 to i32, !dbg !1717
  %556 = and i32 %555, 16384, !dbg !1717
  %557 = icmp ne i32 %556, 0, !dbg !1718
  %558 = zext i1 %557 to i8, !dbg !1719
  store i8 %558, i8* %37, align 1, !dbg !1719
  br label %656, !dbg !1720

559:                                              ; preds = %544
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %38, metadata !1721, metadata !DIExpression()), !dbg !1738
  %560 = bitcast %struct.__mbstate_t* %38 to i8*, !dbg !1739
  call void @llvm.memset.p0i8.i64(i8* align 4 %560, i8 0, i64 8, i1 false), !dbg !1739
  store i64 0, i64* %36, align 8, !dbg !1740
  store i8 1, i8* %37, align 1, !dbg !1741
  %561 = load i64, i64* %14, align 8, !dbg !1742
  %562 = icmp eq i64 %561, -1, !dbg !1744
  br i1 %562, label %563, label %566, !dbg !1745

563:                                              ; preds = %559
  %564 = load i8*, i8** %13, align 8, !dbg !1746
  %565 = call i64 @strlen(i8* %564) #14, !dbg !1747
  store i64 %565, i64* %14, align 8, !dbg !1748
  br label %566, !dbg !1749

566:                                              ; preds = %563, %559
  br label %567, !dbg !1750

567:                                              ; preds = %651, %566
  call void @llvm.dbg.declare(metadata i32* %39, metadata !1751, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.declare(metadata i64* %40, metadata !1755, metadata !DIExpression()), !dbg !1756
  %568 = load i8*, i8** %13, align 8, !dbg !1757
  %569 = load i64, i64* %20, align 8, !dbg !1758
  %570 = load i64, i64* %36, align 8, !dbg !1759
  %571 = add i64 %569, %570, !dbg !1760
  %572 = getelementptr inbounds i8, i8* %568, i64 %571, !dbg !1757
  %573 = load i64, i64* %14, align 8, !dbg !1761
  %574 = load i64, i64* %20, align 8, !dbg !1762
  %575 = load i64, i64* %36, align 8, !dbg !1763
  %576 = add i64 %574, %575, !dbg !1764
  %577 = sub i64 %573, %576, !dbg !1765
  %578 = call i64 @rpl_mbrtowc(i32* %39, i8* %572, i64 %577, %struct.__mbstate_t* %38), !dbg !1766
  store i64 %578, i64* %40, align 8, !dbg !1756
  %579 = load i64, i64* %40, align 8, !dbg !1767
  %580 = icmp eq i64 %579, 0, !dbg !1769
  br i1 %580, label %581, label %582, !dbg !1770

581:                                              ; preds = %567
  br label %655, !dbg !1771

582:                                              ; preds = %567
  %583 = load i64, i64* %40, align 8, !dbg !1772
  %584 = icmp eq i64 %583, -1, !dbg !1774
  br i1 %584, label %585, label %586, !dbg !1775

585:                                              ; preds = %582
  store i8 0, i8* %37, align 1, !dbg !1776
  br label %655, !dbg !1778

586:                                              ; preds = %582
  %587 = load i64, i64* %40, align 8, !dbg !1779
  %588 = icmp eq i64 %587, -2, !dbg !1781
  br i1 %588, label %589, label %611, !dbg !1782

589:                                              ; preds = %586
  store i8 0, i8* %37, align 1, !dbg !1783
  br label %590, !dbg !1785

590:                                              ; preds = %607, %589
  %591 = load i64, i64* %20, align 8, !dbg !1786
  %592 = load i64, i64* %36, align 8, !dbg !1787
  %593 = add i64 %591, %592, !dbg !1788
  %594 = load i64, i64* %14, align 8, !dbg !1789
  %595 = icmp ult i64 %593, %594, !dbg !1790
  br i1 %595, label %596, label %605, !dbg !1791

596:                                              ; preds = %590
  %597 = load i8*, i8** %13, align 8, !dbg !1792
  %598 = load i64, i64* %20, align 8, !dbg !1793
  %599 = load i64, i64* %36, align 8, !dbg !1794
  %600 = add i64 %598, %599, !dbg !1795
  %601 = getelementptr inbounds i8, i8* %597, i64 %600, !dbg !1792
  %602 = load i8, i8* %601, align 1, !dbg !1792
  %603 = sext i8 %602 to i32, !dbg !1792
  %604 = icmp ne i32 %603, 0, !dbg !1791
  br label %605

605:                                              ; preds = %596, %590
  %606 = phi i1 [ false, %590 ], [ %604, %596 ], !dbg !1796
  br i1 %606, label %607, label %610, !dbg !1785

607:                                              ; preds = %605
  %608 = load i64, i64* %36, align 8, !dbg !1797
  %609 = add i64 %608, 1, !dbg !1797
  store i64 %609, i64* %36, align 8, !dbg !1797
  br label %590, !dbg !1785, !llvm.loop !1798

610:                                              ; preds = %605
  br label %655, !dbg !1799

611:                                              ; preds = %586
  %612 = load i8, i8* %27, align 1, !dbg !1800
  %613 = trunc i8 %612 to i1, !dbg !1800
  br i1 %613, label %614, label %639, !dbg !1803

614:                                              ; preds = %611
  %615 = load i32, i32* %15, align 4, !dbg !1804
  %616 = icmp eq i32 %615, 2, !dbg !1805
  br i1 %616, label %617, label %639, !dbg !1806

617:                                              ; preds = %614
  call void @llvm.dbg.declare(metadata i64* %41, metadata !1807, metadata !DIExpression()), !dbg !1809
  store i64 1, i64* %41, align 8, !dbg !1810
  br label %618, !dbg !1812

618:                                              ; preds = %635, %617
  %619 = load i64, i64* %41, align 8, !dbg !1813
  %620 = load i64, i64* %40, align 8, !dbg !1815
  %621 = icmp ult i64 %619, %620, !dbg !1816
  br i1 %621, label %622, label %638, !dbg !1817

622:                                              ; preds = %618
  %623 = load i8*, i8** %13, align 8, !dbg !1818
  %624 = load i64, i64* %20, align 8, !dbg !1819
  %625 = load i64, i64* %36, align 8, !dbg !1820
  %626 = add i64 %624, %625, !dbg !1821
  %627 = load i64, i64* %41, align 8, !dbg !1822
  %628 = add i64 %626, %627, !dbg !1823
  %629 = getelementptr inbounds i8, i8* %623, i64 %628, !dbg !1818
  %630 = load i8, i8* %629, align 1, !dbg !1818
  %631 = sext i8 %630 to i32, !dbg !1818
  switch i32 %631, label %633 [
    i32 91, label %632
    i32 92, label %632
    i32 94, label %632
    i32 96, label %632
    i32 124, label %632
  ], !dbg !1824

632:                                              ; preds = %622, %622, %622, %622, %622
  br label %1086, !dbg !1825

633:                                              ; preds = %622
  br label %634, !dbg !1827

634:                                              ; preds = %633
  br label %635, !dbg !1828

635:                                              ; preds = %634
  %636 = load i64, i64* %41, align 8, !dbg !1829
  %637 = add i64 %636, 1, !dbg !1829
  store i64 %637, i64* %41, align 8, !dbg !1829
  br label %618, !dbg !1830, !llvm.loop !1831

638:                                              ; preds = %618
  br label %639, !dbg !1833

639:                                              ; preds = %638, %614, %611
  %640 = load i32, i32* %39, align 4, !dbg !1834
  %641 = call i32 @iswprint(i32 %640) #15, !dbg !1836
  %642 = icmp ne i32 %641, 0, !dbg !1836
  br i1 %642, label %644, label %643, !dbg !1837

643:                                              ; preds = %639
  store i8 0, i8* %37, align 1, !dbg !1838
  br label %644, !dbg !1839

644:                                              ; preds = %643, %639
  %645 = load i64, i64* %40, align 8, !dbg !1840
  %646 = load i64, i64* %36, align 8, !dbg !1841
  %647 = add i64 %646, %645, !dbg !1841
  store i64 %647, i64* %36, align 8, !dbg !1841
  br label %648

648:                                              ; preds = %644
  br label %649

649:                                              ; preds = %648
  br label %650

650:                                              ; preds = %649
  br label %651, !dbg !1842

651:                                              ; preds = %650
  %652 = call i32 @mbsinit(%struct.__mbstate_t* %38) #14, !dbg !1843
  %653 = icmp ne i32 %652, 0, !dbg !1844
  %654 = xor i1 %653, true, !dbg !1844
  br i1 %654, label %567, label %655, !dbg !1842, !llvm.loop !1845

655:                                              ; preds = %651, %610, %585, %581
  br label %656

656:                                              ; preds = %655, %547
  %657 = load i8, i8* %37, align 1, !dbg !1847
  %658 = trunc i8 %657 to i1, !dbg !1847
  %659 = zext i1 %658 to i8, !dbg !1848
  store i8 %659, i8* %35, align 1, !dbg !1848
  %660 = load i64, i64* %36, align 8, !dbg !1849
  %661 = icmp ult i64 1, %660, !dbg !1851
  br i1 %661, label %668, label %662, !dbg !1852

662:                                              ; preds = %656
  %663 = load i8, i8* %25, align 1, !dbg !1853
  %664 = trunc i8 %663 to i1, !dbg !1853
  br i1 %664, label %665, label %856, !dbg !1854

665:                                              ; preds = %662
  %666 = load i8, i8* %37, align 1, !dbg !1855
  %667 = trunc i8 %666 to i1, !dbg !1855
  br i1 %667, label %856, label %668, !dbg !1856

668:                                              ; preds = %665, %656
  call void @llvm.dbg.declare(metadata i64* %42, metadata !1857, metadata !DIExpression()), !dbg !1859
  %669 = load i64, i64* %20, align 8, !dbg !1860
  %670 = load i64, i64* %36, align 8, !dbg !1861
  %671 = add i64 %669, %670, !dbg !1862
  store i64 %671, i64* %42, align 8, !dbg !1859
  br label %672, !dbg !1863

672:                                              ; preds = %849, %668
  %673 = load i8, i8* %25, align 1, !dbg !1864
  %674 = trunc i8 %673 to i1, !dbg !1864
  br i1 %674, label %675, label %780, !dbg !1869

675:                                              ; preds = %672
  %676 = load i8, i8* %37, align 1, !dbg !1870
  %677 = trunc i8 %676 to i1, !dbg !1870
  br i1 %677, label %780, label %678, !dbg !1871

678:                                              ; preds = %675
  br label %679, !dbg !1872

679:                                              ; preds = %678
  %680 = load i8, i8* %27, align 1, !dbg !1874
  %681 = trunc i8 %680 to i1, !dbg !1874
  br i1 %681, label %682, label %683, !dbg !1877

682:                                              ; preds = %679
  br label %1086, !dbg !1874

683:                                              ; preds = %679
  store i8 1, i8* %34, align 1, !dbg !1877
  %684 = load i32, i32* %15, align 4, !dbg !1878
  %685 = icmp eq i32 %684, 2, !dbg !1878
  br i1 %685, label %686, label %726, !dbg !1878

686:                                              ; preds = %683
  %687 = load i8, i8* %28, align 1, !dbg !1878
  %688 = trunc i8 %687 to i1, !dbg !1878
  br i1 %688, label %726, label %689, !dbg !1877

689:                                              ; preds = %686
  br label %690, !dbg !1880

690:                                              ; preds = %689
  %691 = load i64, i64* %21, align 8, !dbg !1882
  %692 = load i64, i64* %12, align 8, !dbg !1882
  %693 = icmp ult i64 %691, %692, !dbg !1882
  br i1 %693, label %694, label %698, !dbg !1885

694:                                              ; preds = %690
  %695 = load i8*, i8** %11, align 8, !dbg !1882
  %696 = load i64, i64* %21, align 8, !dbg !1882
  %697 = getelementptr inbounds i8, i8* %695, i64 %696, !dbg !1882
  store i8 39, i8* %697, align 1, !dbg !1882
  br label %698, !dbg !1882

698:                                              ; preds = %694, %690
  %699 = load i64, i64* %21, align 8, !dbg !1885
  %700 = add i64 %699, 1, !dbg !1885
  store i64 %700, i64* %21, align 8, !dbg !1885
  br label %701, !dbg !1885

701:                                              ; preds = %698
  br label %702, !dbg !1880

702:                                              ; preds = %701
  %703 = load i64, i64* %21, align 8, !dbg !1886
  %704 = load i64, i64* %12, align 8, !dbg !1886
  %705 = icmp ult i64 %703, %704, !dbg !1886
  br i1 %705, label %706, label %710, !dbg !1889

706:                                              ; preds = %702
  %707 = load i8*, i8** %11, align 8, !dbg !1886
  %708 = load i64, i64* %21, align 8, !dbg !1886
  %709 = getelementptr inbounds i8, i8* %707, i64 %708, !dbg !1886
  store i8 36, i8* %709, align 1, !dbg !1886
  br label %710, !dbg !1886

710:                                              ; preds = %706, %702
  %711 = load i64, i64* %21, align 8, !dbg !1889
  %712 = add i64 %711, 1, !dbg !1889
  store i64 %712, i64* %21, align 8, !dbg !1889
  br label %713, !dbg !1889

713:                                              ; preds = %710
  br label %714, !dbg !1880

714:                                              ; preds = %713
  %715 = load i64, i64* %21, align 8, !dbg !1890
  %716 = load i64, i64* %12, align 8, !dbg !1890
  %717 = icmp ult i64 %715, %716, !dbg !1890
  br i1 %717, label %718, label %722, !dbg !1893

718:                                              ; preds = %714
  %719 = load i8*, i8** %11, align 8, !dbg !1890
  %720 = load i64, i64* %21, align 8, !dbg !1890
  %721 = getelementptr inbounds i8, i8* %719, i64 %720, !dbg !1890
  store i8 39, i8* %721, align 1, !dbg !1890
  br label %722, !dbg !1890

722:                                              ; preds = %718, %714
  %723 = load i64, i64* %21, align 8, !dbg !1893
  %724 = add i64 %723, 1, !dbg !1893
  store i64 %724, i64* %21, align 8, !dbg !1893
  br label %725, !dbg !1893

725:                                              ; preds = %722
  store i8 1, i8* %28, align 1, !dbg !1880
  br label %726, !dbg !1880

726:                                              ; preds = %725, %686, %683
  br label %727, !dbg !1877

727:                                              ; preds = %726
  %728 = load i64, i64* %21, align 8, !dbg !1894
  %729 = load i64, i64* %12, align 8, !dbg !1894
  %730 = icmp ult i64 %728, %729, !dbg !1894
  br i1 %730, label %731, label %735, !dbg !1897

731:                                              ; preds = %727
  %732 = load i8*, i8** %11, align 8, !dbg !1894
  %733 = load i64, i64* %21, align 8, !dbg !1894
  %734 = getelementptr inbounds i8, i8* %732, i64 %733, !dbg !1894
  store i8 92, i8* %734, align 1, !dbg !1894
  br label %735, !dbg !1894

735:                                              ; preds = %731, %727
  %736 = load i64, i64* %21, align 8, !dbg !1897
  %737 = add i64 %736, 1, !dbg !1897
  store i64 %737, i64* %21, align 8, !dbg !1897
  br label %738, !dbg !1897

738:                                              ; preds = %735
  br label %739, !dbg !1877

739:                                              ; preds = %738
  br label %740, !dbg !1898

740:                                              ; preds = %739
  %741 = load i64, i64* %21, align 8, !dbg !1899
  %742 = load i64, i64* %12, align 8, !dbg !1899
  %743 = icmp ult i64 %741, %742, !dbg !1899
  br i1 %743, label %744, label %753, !dbg !1902

744:                                              ; preds = %740
  %745 = load i8, i8* %31, align 1, !dbg !1899
  %746 = zext i8 %745 to i32, !dbg !1899
  %747 = ashr i32 %746, 6, !dbg !1899
  %748 = add nsw i32 48, %747, !dbg !1899
  %749 = trunc i32 %748 to i8, !dbg !1899
  %750 = load i8*, i8** %11, align 8, !dbg !1899
  %751 = load i64, i64* %21, align 8, !dbg !1899
  %752 = getelementptr inbounds i8, i8* %750, i64 %751, !dbg !1899
  store i8 %749, i8* %752, align 1, !dbg !1899
  br label %753, !dbg !1899

753:                                              ; preds = %744, %740
  %754 = load i64, i64* %21, align 8, !dbg !1902
  %755 = add i64 %754, 1, !dbg !1902
  store i64 %755, i64* %21, align 8, !dbg !1902
  br label %756, !dbg !1902

756:                                              ; preds = %753
  br label %757, !dbg !1903

757:                                              ; preds = %756
  %758 = load i64, i64* %21, align 8, !dbg !1904
  %759 = load i64, i64* %12, align 8, !dbg !1904
  %760 = icmp ult i64 %758, %759, !dbg !1904
  br i1 %760, label %761, label %771, !dbg !1907

761:                                              ; preds = %757
  %762 = load i8, i8* %31, align 1, !dbg !1904
  %763 = zext i8 %762 to i32, !dbg !1904
  %764 = ashr i32 %763, 3, !dbg !1904
  %765 = and i32 %764, 7, !dbg !1904
  %766 = add nsw i32 48, %765, !dbg !1904
  %767 = trunc i32 %766 to i8, !dbg !1904
  %768 = load i8*, i8** %11, align 8, !dbg !1904
  %769 = load i64, i64* %21, align 8, !dbg !1904
  %770 = getelementptr inbounds i8, i8* %768, i64 %769, !dbg !1904
  store i8 %767, i8* %770, align 1, !dbg !1904
  br label %771, !dbg !1904

771:                                              ; preds = %761, %757
  %772 = load i64, i64* %21, align 8, !dbg !1907
  %773 = add i64 %772, 1, !dbg !1907
  store i64 %773, i64* %21, align 8, !dbg !1907
  br label %774, !dbg !1907

774:                                              ; preds = %771
  %775 = load i8, i8* %31, align 1, !dbg !1908
  %776 = zext i8 %775 to i32, !dbg !1908
  %777 = and i32 %776, 7, !dbg !1909
  %778 = add nsw i32 48, %777, !dbg !1910
  %779 = trunc i32 %778 to i8, !dbg !1911
  store i8 %779, i8* %31, align 1, !dbg !1912
  br label %797, !dbg !1913

780:                                              ; preds = %675, %672
  %781 = load i8, i8* %33, align 1, !dbg !1914
  %782 = trunc i8 %781 to i1, !dbg !1914
  br i1 %782, label %783, label %796, !dbg !1916

783:                                              ; preds = %780
  br label %784, !dbg !1917

784:                                              ; preds = %783
  %785 = load i64, i64* %21, align 8, !dbg !1919
  %786 = load i64, i64* %12, align 8, !dbg !1919
  %787 = icmp ult i64 %785, %786, !dbg !1919
  br i1 %787, label %788, label %792, !dbg !1922

788:                                              ; preds = %784
  %789 = load i8*, i8** %11, align 8, !dbg !1919
  %790 = load i64, i64* %21, align 8, !dbg !1919
  %791 = getelementptr inbounds i8, i8* %789, i64 %790, !dbg !1919
  store i8 92, i8* %791, align 1, !dbg !1919
  br label %792, !dbg !1919

792:                                              ; preds = %788, %784
  %793 = load i64, i64* %21, align 8, !dbg !1922
  %794 = add i64 %793, 1, !dbg !1922
  store i64 %794, i64* %21, align 8, !dbg !1922
  br label %795, !dbg !1922

795:                                              ; preds = %792
  store i8 0, i8* %33, align 1, !dbg !1923
  br label %796, !dbg !1924

796:                                              ; preds = %795, %780
  br label %797

797:                                              ; preds = %796, %774
  %798 = load i64, i64* %42, align 8, !dbg !1925
  %799 = load i64, i64* %20, align 8, !dbg !1927
  %800 = add i64 %799, 1, !dbg !1928
  %801 = icmp ule i64 %798, %800, !dbg !1929
  br i1 %801, label %802, label %803, !dbg !1930

802:                                              ; preds = %797
  br label %855, !dbg !1931

803:                                              ; preds = %797
  br label %804, !dbg !1932

804:                                              ; preds = %803
  %805 = load i8, i8* %28, align 1, !dbg !1933
  %806 = trunc i8 %805 to i1, !dbg !1933
  br i1 %806, label %807, label %835, !dbg !1933

807:                                              ; preds = %804
  %808 = load i8, i8* %34, align 1, !dbg !1933
  %809 = trunc i8 %808 to i1, !dbg !1933
  br i1 %809, label %835, label %810, !dbg !1936

810:                                              ; preds = %807
  br label %811, !dbg !1937

811:                                              ; preds = %810
  %812 = load i64, i64* %21, align 8, !dbg !1939
  %813 = load i64, i64* %12, align 8, !dbg !1939
  %814 = icmp ult i64 %812, %813, !dbg !1939
  br i1 %814, label %815, label %819, !dbg !1942

815:                                              ; preds = %811
  %816 = load i8*, i8** %11, align 8, !dbg !1939
  %817 = load i64, i64* %21, align 8, !dbg !1939
  %818 = getelementptr inbounds i8, i8* %816, i64 %817, !dbg !1939
  store i8 39, i8* %818, align 1, !dbg !1939
  br label %819, !dbg !1939

819:                                              ; preds = %815, %811
  %820 = load i64, i64* %21, align 8, !dbg !1942
  %821 = add i64 %820, 1, !dbg !1942
  store i64 %821, i64* %21, align 8, !dbg !1942
  br label %822, !dbg !1942

822:                                              ; preds = %819
  br label %823, !dbg !1937

823:                                              ; preds = %822
  %824 = load i64, i64* %21, align 8, !dbg !1943
  %825 = load i64, i64* %12, align 8, !dbg !1943
  %826 = icmp ult i64 %824, %825, !dbg !1943
  br i1 %826, label %827, label %831, !dbg !1946

827:                                              ; preds = %823
  %828 = load i8*, i8** %11, align 8, !dbg !1943
  %829 = load i64, i64* %21, align 8, !dbg !1943
  %830 = getelementptr inbounds i8, i8* %828, i64 %829, !dbg !1943
  store i8 39, i8* %830, align 1, !dbg !1943
  br label %831, !dbg !1943

831:                                              ; preds = %827, %823
  %832 = load i64, i64* %21, align 8, !dbg !1946
  %833 = add i64 %832, 1, !dbg !1946
  store i64 %833, i64* %21, align 8, !dbg !1946
  br label %834, !dbg !1946

834:                                              ; preds = %831
  store i8 0, i8* %28, align 1, !dbg !1937
  br label %835, !dbg !1937

835:                                              ; preds = %834, %807, %804
  br label %836, !dbg !1936

836:                                              ; preds = %835
  br label %837, !dbg !1947

837:                                              ; preds = %836
  %838 = load i64, i64* %21, align 8, !dbg !1948
  %839 = load i64, i64* %12, align 8, !dbg !1948
  %840 = icmp ult i64 %838, %839, !dbg !1948
  br i1 %840, label %841, label %846, !dbg !1951

841:                                              ; preds = %837
  %842 = load i8, i8* %31, align 1, !dbg !1948
  %843 = load i8*, i8** %11, align 8, !dbg !1948
  %844 = load i64, i64* %21, align 8, !dbg !1948
  %845 = getelementptr inbounds i8, i8* %843, i64 %844, !dbg !1948
  store i8 %842, i8* %845, align 1, !dbg !1948
  br label %846, !dbg !1948

846:                                              ; preds = %841, %837
  %847 = load i64, i64* %21, align 8, !dbg !1951
  %848 = add i64 %847, 1, !dbg !1951
  store i64 %848, i64* %21, align 8, !dbg !1951
  br label %849, !dbg !1951

849:                                              ; preds = %846
  %850 = load i8*, i8** %13, align 8, !dbg !1952
  %851 = load i64, i64* %20, align 8, !dbg !1953
  %852 = add i64 %851, 1, !dbg !1953
  store i64 %852, i64* %20, align 8, !dbg !1953
  %853 = getelementptr inbounds i8, i8* %850, i64 %852, !dbg !1952
  %854 = load i8, i8* %853, align 1, !dbg !1952
  store i8 %854, i8* %31, align 1, !dbg !1954
  br label %672, !dbg !1955, !llvm.loop !1956

855:                                              ; preds = %802
  br label %950, !dbg !1959

856:                                              ; preds = %665, %662
  br label %857, !dbg !1960

857:                                              ; preds = %856, %543, %542, %489, %479, %474, %461, %420, %324
  %858 = load i8, i8* %25, align 1, !dbg !1961
  %859 = trunc i8 %858 to i1, !dbg !1961
  br i1 %859, label %860, label %863, !dbg !1963

860:                                              ; preds = %857
  %861 = load i32, i32* %15, align 4, !dbg !1964
  %862 = icmp ne i32 %861, 2, !dbg !1965
  br i1 %862, label %866, label %863, !dbg !1966

863:                                              ; preds = %860, %857
  %864 = load i8, i8* %27, align 1, !dbg !1967
  %865 = trunc i8 %864 to i1, !dbg !1967
  br i1 %865, label %866, label %883, !dbg !1968

866:                                              ; preds = %863, %860
  %867 = load i32*, i32** %17, align 8, !dbg !1969
  %868 = icmp ne i32* %867, null, !dbg !1969
  br i1 %868, label %869, label %883, !dbg !1970

869:                                              ; preds = %866
  %870 = load i32*, i32** %17, align 8, !dbg !1971
  %871 = load i8, i8* %31, align 1, !dbg !1972
  %872 = zext i8 %871 to i64, !dbg !1972
  %873 = udiv i64 %872, 32, !dbg !1973
  %874 = getelementptr inbounds i32, i32* %870, i64 %873, !dbg !1971
  %875 = load i32, i32* %874, align 4, !dbg !1971
  %876 = load i8, i8* %31, align 1, !dbg !1974
  %877 = zext i8 %876 to i64, !dbg !1974
  %878 = urem i64 %877, 32, !dbg !1975
  %879 = trunc i64 %878 to i32, !dbg !1976
  %880 = lshr i32 %875, %879, !dbg !1976
  %881 = and i32 %880, 1, !dbg !1977
  %882 = icmp ne i32 %881, 0, !dbg !1977
  br i1 %882, label %887, label %883, !dbg !1978

883:                                              ; preds = %869, %866, %863
  %884 = load i8, i8* %33, align 1, !dbg !1979
  %885 = trunc i8 %884 to i1, !dbg !1979
  br i1 %885, label %887, label %886, !dbg !1980

886:                                              ; preds = %883
  br label %950, !dbg !1981

887:                                              ; preds = %883, %869
  br label %888, !dbg !1979

888:                                              ; preds = %887, %459
  call void @llvm.dbg.label(metadata !1982), !dbg !1983
  br label %889, !dbg !1984

889:                                              ; preds = %888
  %890 = load i8, i8* %27, align 1, !dbg !1985
  %891 = trunc i8 %890 to i1, !dbg !1985
  br i1 %891, label %892, label %893, !dbg !1988

892:                                              ; preds = %889
  br label %1086, !dbg !1985

893:                                              ; preds = %889
  store i8 1, i8* %34, align 1, !dbg !1988
  %894 = load i32, i32* %15, align 4, !dbg !1989
  %895 = icmp eq i32 %894, 2, !dbg !1989
  br i1 %895, label %896, label %936, !dbg !1989

896:                                              ; preds = %893
  %897 = load i8, i8* %28, align 1, !dbg !1989
  %898 = trunc i8 %897 to i1, !dbg !1989
  br i1 %898, label %936, label %899, !dbg !1988

899:                                              ; preds = %896
  br label %900, !dbg !1991

900:                                              ; preds = %899
  %901 = load i64, i64* %21, align 8, !dbg !1993
  %902 = load i64, i64* %12, align 8, !dbg !1993
  %903 = icmp ult i64 %901, %902, !dbg !1993
  br i1 %903, label %904, label %908, !dbg !1996

904:                                              ; preds = %900
  %905 = load i8*, i8** %11, align 8, !dbg !1993
  %906 = load i64, i64* %21, align 8, !dbg !1993
  %907 = getelementptr inbounds i8, i8* %905, i64 %906, !dbg !1993
  store i8 39, i8* %907, align 1, !dbg !1993
  br label %908, !dbg !1993

908:                                              ; preds = %904, %900
  %909 = load i64, i64* %21, align 8, !dbg !1996
  %910 = add i64 %909, 1, !dbg !1996
  store i64 %910, i64* %21, align 8, !dbg !1996
  br label %911, !dbg !1996

911:                                              ; preds = %908
  br label %912, !dbg !1991

912:                                              ; preds = %911
  %913 = load i64, i64* %21, align 8, !dbg !1997
  %914 = load i64, i64* %12, align 8, !dbg !1997
  %915 = icmp ult i64 %913, %914, !dbg !1997
  br i1 %915, label %916, label %920, !dbg !2000

916:                                              ; preds = %912
  %917 = load i8*, i8** %11, align 8, !dbg !1997
  %918 = load i64, i64* %21, align 8, !dbg !1997
  %919 = getelementptr inbounds i8, i8* %917, i64 %918, !dbg !1997
  store i8 36, i8* %919, align 1, !dbg !1997
  br label %920, !dbg !1997

920:                                              ; preds = %916, %912
  %921 = load i64, i64* %21, align 8, !dbg !2000
  %922 = add i64 %921, 1, !dbg !2000
  store i64 %922, i64* %21, align 8, !dbg !2000
  br label %923, !dbg !2000

923:                                              ; preds = %920
  br label %924, !dbg !1991

924:                                              ; preds = %923
  %925 = load i64, i64* %21, align 8, !dbg !2001
  %926 = load i64, i64* %12, align 8, !dbg !2001
  %927 = icmp ult i64 %925, %926, !dbg !2001
  br i1 %927, label %928, label %932, !dbg !2004

928:                                              ; preds = %924
  %929 = load i8*, i8** %11, align 8, !dbg !2001
  %930 = load i64, i64* %21, align 8, !dbg !2001
  %931 = getelementptr inbounds i8, i8* %929, i64 %930, !dbg !2001
  store i8 39, i8* %931, align 1, !dbg !2001
  br label %932, !dbg !2001

932:                                              ; preds = %928, %924
  %933 = load i64, i64* %21, align 8, !dbg !2004
  %934 = add i64 %933, 1, !dbg !2004
  store i64 %934, i64* %21, align 8, !dbg !2004
  br label %935, !dbg !2004

935:                                              ; preds = %932
  store i8 1, i8* %28, align 1, !dbg !1991
  br label %936, !dbg !1991

936:                                              ; preds = %935, %896, %893
  br label %937, !dbg !1988

937:                                              ; preds = %936
  %938 = load i64, i64* %21, align 8, !dbg !2005
  %939 = load i64, i64* %12, align 8, !dbg !2005
  %940 = icmp ult i64 %938, %939, !dbg !2005
  br i1 %940, label %941, label %945, !dbg !2008

941:                                              ; preds = %937
  %942 = load i8*, i8** %11, align 8, !dbg !2005
  %943 = load i64, i64* %21, align 8, !dbg !2005
  %944 = getelementptr inbounds i8, i8* %942, i64 %943, !dbg !2005
  store i8 92, i8* %944, align 1, !dbg !2005
  br label %945, !dbg !2005

945:                                              ; preds = %941, %937
  %946 = load i64, i64* %21, align 8, !dbg !2008
  %947 = add i64 %946, 1, !dbg !2008
  store i64 %947, i64* %21, align 8, !dbg !2008
  br label %948, !dbg !2008

948:                                              ; preds = %945
  br label %949, !dbg !1988

949:                                              ; preds = %948
  br label %950, !dbg !1988

950:                                              ; preds = %949, %886, %855, %446, %436
  call void @llvm.dbg.label(metadata !2009), !dbg !2010
  br label %951, !dbg !2011

951:                                              ; preds = %950
  %952 = load i8, i8* %28, align 1, !dbg !2012
  %953 = trunc i8 %952 to i1, !dbg !2012
  br i1 %953, label %954, label %982, !dbg !2012

954:                                              ; preds = %951
  %955 = load i8, i8* %34, align 1, !dbg !2012
  %956 = trunc i8 %955 to i1, !dbg !2012
  br i1 %956, label %982, label %957, !dbg !2015

957:                                              ; preds = %954
  br label %958, !dbg !2016

958:                                              ; preds = %957
  %959 = load i64, i64* %21, align 8, !dbg !2018
  %960 = load i64, i64* %12, align 8, !dbg !2018
  %961 = icmp ult i64 %959, %960, !dbg !2018
  br i1 %961, label %962, label %966, !dbg !2021

962:                                              ; preds = %958
  %963 = load i8*, i8** %11, align 8, !dbg !2018
  %964 = load i64, i64* %21, align 8, !dbg !2018
  %965 = getelementptr inbounds i8, i8* %963, i64 %964, !dbg !2018
  store i8 39, i8* %965, align 1, !dbg !2018
  br label %966, !dbg !2018

966:                                              ; preds = %962, %958
  %967 = load i64, i64* %21, align 8, !dbg !2021
  %968 = add i64 %967, 1, !dbg !2021
  store i64 %968, i64* %21, align 8, !dbg !2021
  br label %969, !dbg !2021

969:                                              ; preds = %966
  br label %970, !dbg !2016

970:                                              ; preds = %969
  %971 = load i64, i64* %21, align 8, !dbg !2022
  %972 = load i64, i64* %12, align 8, !dbg !2022
  %973 = icmp ult i64 %971, %972, !dbg !2022
  br i1 %973, label %974, label %978, !dbg !2025

974:                                              ; preds = %970
  %975 = load i8*, i8** %11, align 8, !dbg !2022
  %976 = load i64, i64* %21, align 8, !dbg !2022
  %977 = getelementptr inbounds i8, i8* %975, i64 %976, !dbg !2022
  store i8 39, i8* %977, align 1, !dbg !2022
  br label %978, !dbg !2022

978:                                              ; preds = %974, %970
  %979 = load i64, i64* %21, align 8, !dbg !2025
  %980 = add i64 %979, 1, !dbg !2025
  store i64 %980, i64* %21, align 8, !dbg !2025
  br label %981, !dbg !2025

981:                                              ; preds = %978
  store i8 0, i8* %28, align 1, !dbg !2016
  br label %982, !dbg !2016

982:                                              ; preds = %981, %954, %951
  br label %983, !dbg !2015

983:                                              ; preds = %982
  br label %984, !dbg !2026

984:                                              ; preds = %983
  %985 = load i64, i64* %21, align 8, !dbg !2027
  %986 = load i64, i64* %12, align 8, !dbg !2027
  %987 = icmp ult i64 %985, %986, !dbg !2027
  br i1 %987, label %988, label %993, !dbg !2030

988:                                              ; preds = %984
  %989 = load i8, i8* %31, align 1, !dbg !2027
  %990 = load i8*, i8** %11, align 8, !dbg !2027
  %991 = load i64, i64* %21, align 8, !dbg !2027
  %992 = getelementptr inbounds i8, i8* %990, i64 %991, !dbg !2027
  store i8 %989, i8* %992, align 1, !dbg !2027
  br label %993, !dbg !2027

993:                                              ; preds = %988, %984
  %994 = load i64, i64* %21, align 8, !dbg !2030
  %995 = add i64 %994, 1, !dbg !2030
  store i64 %995, i64* %21, align 8, !dbg !2030
  br label %996, !dbg !2030

996:                                              ; preds = %993
  %997 = load i8, i8* %35, align 1, !dbg !2031
  %998 = trunc i8 %997 to i1, !dbg !2031
  br i1 %998, label %1000, label %999, !dbg !2033

999:                                              ; preds = %996
  store i8 0, i8* %30, align 1, !dbg !2034
  br label %1000, !dbg !2035

1000:                                             ; preds = %999, %996
  br label %1001, !dbg !2036

1001:                                             ; preds = %1000, %322
  %1002 = load i64, i64* %20, align 8, !dbg !2037
  %1003 = add i64 %1002, 1, !dbg !2037
  store i64 %1003, i64* %20, align 8, !dbg !2037
  br label %138, !dbg !2038, !llvm.loop !2039

1004:                                             ; preds = %154
  %1005 = load i64, i64* %21, align 8, !dbg !2041
  %1006 = icmp eq i64 %1005, 0, !dbg !2043
  br i1 %1006, label %1007, label %1014, !dbg !2044

1007:                                             ; preds = %1004
  %1008 = load i32, i32* %15, align 4, !dbg !2045
  %1009 = icmp eq i32 %1008, 2, !dbg !2046
  br i1 %1009, label %1010, label %1014, !dbg !2047

1010:                                             ; preds = %1007
  %1011 = load i8, i8* %27, align 1, !dbg !2048
  %1012 = trunc i8 %1011 to i1, !dbg !2048
  br i1 %1012, label %1013, label %1014, !dbg !2049

1013:                                             ; preds = %1010
  br label %1086, !dbg !2050

1014:                                             ; preds = %1010, %1007, %1004
  %1015 = load i32, i32* %15, align 4, !dbg !2051
  %1016 = icmp eq i32 %1015, 2, !dbg !2053
  br i1 %1016, label %1017, label %1046, !dbg !2054

1017:                                             ; preds = %1014
  %1018 = load i8, i8* %27, align 1, !dbg !2055
  %1019 = trunc i8 %1018 to i1, !dbg !2055
  br i1 %1019, label %1046, label %1020, !dbg !2056

1020:                                             ; preds = %1017
  %1021 = load i8, i8* %29, align 1, !dbg !2057
  %1022 = trunc i8 %1021 to i1, !dbg !2057
  br i1 %1022, label %1023, label %1046, !dbg !2058

1023:                                             ; preds = %1020
  %1024 = load i8, i8* %30, align 1, !dbg !2059
  %1025 = trunc i8 %1024 to i1, !dbg !2059
  br i1 %1025, label %1026, label %1036, !dbg !2062

1026:                                             ; preds = %1023
  %1027 = load i8*, i8** %11, align 8, !dbg !2063
  %1028 = load i64, i64* %22, align 8, !dbg !2064
  %1029 = load i8*, i8** %13, align 8, !dbg !2065
  %1030 = load i64, i64* %14, align 8, !dbg !2066
  %1031 = load i32, i32* %16, align 4, !dbg !2067
  %1032 = load i32*, i32** %17, align 8, !dbg !2068
  %1033 = load i8*, i8** %18, align 8, !dbg !2069
  %1034 = load i8*, i8** %19, align 8, !dbg !2070
  %1035 = call i64 @quotearg_buffer_restyled(i8* %1027, i64 %1028, i8* %1029, i64 %1030, i32 5, i32 %1031, i32* %1032, i8* %1033, i8* %1034), !dbg !2071
  store i64 %1035, i64* %10, align 8, !dbg !2072
  br label %1104, !dbg !2072

1036:                                             ; preds = %1023
  %1037 = load i64, i64* %12, align 8, !dbg !2073
  %1038 = icmp ne i64 %1037, 0, !dbg !2073
  br i1 %1038, label %1044, label %1039, !dbg !2075

1039:                                             ; preds = %1036
  %1040 = load i64, i64* %22, align 8, !dbg !2076
  %1041 = icmp ne i64 %1040, 0, !dbg !2076
  br i1 %1041, label %1042, label %1044, !dbg !2077

1042:                                             ; preds = %1039
  %1043 = load i64, i64* %22, align 8, !dbg !2078
  store i64 %1043, i64* %12, align 8, !dbg !2080
  store i64 0, i64* %21, align 8, !dbg !2081
  br label %50, !dbg !2082

1044:                                             ; preds = %1039, %1036
  br label %1045

1045:                                             ; preds = %1044
  br label %1046, !dbg !2083

1046:                                             ; preds = %1045, %1020, %1017, %1014
  %1047 = load i8*, i8** %23, align 8, !dbg !2084
  %1048 = icmp ne i8* %1047, null, !dbg !2084
  br i1 %1048, label %1049, label %1076, !dbg !2086

1049:                                             ; preds = %1046
  %1050 = load i8, i8* %27, align 1, !dbg !2087
  %1051 = trunc i8 %1050 to i1, !dbg !2087
  br i1 %1051, label %1076, label %1052, !dbg !2088

1052:                                             ; preds = %1049
  br label %1053, !dbg !2089

1053:                                             ; preds = %1072, %1052
  %1054 = load i8*, i8** %23, align 8, !dbg !2090
  %1055 = load i8, i8* %1054, align 1, !dbg !2093
  %1056 = icmp ne i8 %1055, 0, !dbg !2094
  br i1 %1056, label %1057, label %1075, !dbg !2094

1057:                                             ; preds = %1053
  br label %1058, !dbg !2095

1058:                                             ; preds = %1057
  %1059 = load i64, i64* %21, align 8, !dbg !2096
  %1060 = load i64, i64* %12, align 8, !dbg !2096
  %1061 = icmp ult i64 %1059, %1060, !dbg !2096
  br i1 %1061, label %1062, label %1068, !dbg !2099

1062:                                             ; preds = %1058
  %1063 = load i8*, i8** %23, align 8, !dbg !2096
  %1064 = load i8, i8* %1063, align 1, !dbg !2096
  %1065 = load i8*, i8** %11, align 8, !dbg !2096
  %1066 = load i64, i64* %21, align 8, !dbg !2096
  %1067 = getelementptr inbounds i8, i8* %1065, i64 %1066, !dbg !2096
  store i8 %1064, i8* %1067, align 1, !dbg !2096
  br label %1068, !dbg !2096

1068:                                             ; preds = %1062, %1058
  %1069 = load i64, i64* %21, align 8, !dbg !2099
  %1070 = add i64 %1069, 1, !dbg !2099
  store i64 %1070, i64* %21, align 8, !dbg !2099
  br label %1071, !dbg !2099

1071:                                             ; preds = %1068
  br label %1072, !dbg !2099

1072:                                             ; preds = %1071
  %1073 = load i8*, i8** %23, align 8, !dbg !2100
  %1074 = getelementptr inbounds i8, i8* %1073, i32 1, !dbg !2100
  store i8* %1074, i8** %23, align 8, !dbg !2100
  br label %1053, !dbg !2101, !llvm.loop !2102

1075:                                             ; preds = %1053
  br label %1076, !dbg !2103

1076:                                             ; preds = %1075, %1049, %1046
  %1077 = load i64, i64* %21, align 8, !dbg !2104
  %1078 = load i64, i64* %12, align 8, !dbg !2106
  %1079 = icmp ult i64 %1077, %1078, !dbg !2107
  br i1 %1079, label %1080, label %1084, !dbg !2108

1080:                                             ; preds = %1076
  %1081 = load i8*, i8** %11, align 8, !dbg !2109
  %1082 = load i64, i64* %21, align 8, !dbg !2110
  %1083 = getelementptr inbounds i8, i8* %1081, i64 %1082, !dbg !2109
  store i8 0, i8* %1083, align 1, !dbg !2111
  br label %1084, !dbg !2109

1084:                                             ; preds = %1080, %1076
  %1085 = load i64, i64* %21, align 8, !dbg !2112
  store i64 %1085, i64* %10, align 8, !dbg !2113
  br label %1104, !dbg !2113

1086:                                             ; preds = %1013, %892, %682, %632, %496, %488, %454, %435, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !2114), !dbg !2115
  %1087 = load i32, i32* %15, align 4, !dbg !2116
  %1088 = icmp eq i32 %1087, 2, !dbg !2118
  br i1 %1088, label %1089, label %1093, !dbg !2119

1089:                                             ; preds = %1086
  %1090 = load i8, i8* %25, align 1, !dbg !2120
  %1091 = trunc i8 %1090 to i1, !dbg !2120
  br i1 %1091, label %1092, label %1093, !dbg !2121

1092:                                             ; preds = %1089
  store i32 4, i32* %15, align 4, !dbg !2122
  br label %1093, !dbg !2123

1093:                                             ; preds = %1092, %1089, %1086
  %1094 = load i8*, i8** %11, align 8, !dbg !2124
  %1095 = load i64, i64* %12, align 8, !dbg !2125
  %1096 = load i8*, i8** %13, align 8, !dbg !2126
  %1097 = load i64, i64* %14, align 8, !dbg !2127
  %1098 = load i32, i32* %15, align 4, !dbg !2128
  %1099 = load i32, i32* %16, align 4, !dbg !2129
  %1100 = and i32 %1099, -3, !dbg !2130
  %1101 = load i8*, i8** %18, align 8, !dbg !2131
  %1102 = load i8*, i8** %19, align 8, !dbg !2132
  %1103 = call i64 @quotearg_buffer_restyled(i8* %1094, i64 %1095, i8* %1096, i64 %1097, i32 %1098, i32 %1100, i32* null, i8* %1101, i8* %1102), !dbg !2133
  store i64 %1103, i64* %10, align 8, !dbg !2134
  br label %1104, !dbg !2134

1104:                                             ; preds = %1093, %1084, %1026
  %1105 = load i64, i64* %10, align 8, !dbg !2135
  ret i64 %1105, !dbg !2135
}

; Function Attrs: nounwind
declare dso_local i64 @__ctype_get_mb_cur_max() #7

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* %0, i32 %1) #4 !dbg !2136 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2139, metadata !DIExpression()), !dbg !2140
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2141, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2143, metadata !DIExpression()), !dbg !2144
  %8 = load i8*, i8** %4, align 8, !dbg !2145
  store i8* %8, i8** %6, align 8, !dbg !2144
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2146, metadata !DIExpression()), !dbg !2147
  %9 = load i8*, i8** %6, align 8, !dbg !2148
  %10 = load i8*, i8** %4, align 8, !dbg !2150
  %11 = icmp ne i8* %9, %10, !dbg !2151
  br i1 %11, label %12, label %14, !dbg !2152

12:                                               ; preds = %2
  %13 = load i8*, i8** %6, align 8, !dbg !2153
  store i8* %13, i8** %3, align 8, !dbg !2154
  br label %44, !dbg !2154

14:                                               ; preds = %2
  %15 = call i8* @locale_charset(), !dbg !2155
  store i8* %15, i8** %7, align 8, !dbg !2156
  %16 = load i8*, i8** %7, align 8, !dbg !2157
  %17 = call i32 @c_strcasecmp(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13.64, i64 0, i64 0)) #14, !dbg !2157
  %18 = icmp eq i32 %17, 0, !dbg !2157
  br i1 %18, label %19, label %27, !dbg !2159

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8, !dbg !2160
  %21 = getelementptr inbounds i8, i8* %20, i64 0, !dbg !2160
  %22 = load i8, i8* %21, align 1, !dbg !2160
  %23 = sext i8 %22 to i32, !dbg !2160
  %24 = icmp eq i32 %23, 96, !dbg !2161
  %25 = zext i1 %24 to i64, !dbg !2160
  %26 = select i1 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.65, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.66, i64 0, i64 0), !dbg !2160
  store i8* %26, i8** %3, align 8, !dbg !2162
  br label %44, !dbg !2162

27:                                               ; preds = %14
  %28 = load i8*, i8** %7, align 8, !dbg !2163
  %29 = call i32 @c_strcasecmp(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16.67, i64 0, i64 0)) #14, !dbg !2163
  %30 = icmp eq i32 %29, 0, !dbg !2163
  br i1 %30, label %31, label %39, !dbg !2165

31:                                               ; preds = %27
  %32 = load i8*, i8** %4, align 8, !dbg !2166
  %33 = getelementptr inbounds i8, i8* %32, i64 0, !dbg !2166
  %34 = load i8, i8* %33, align 1, !dbg !2166
  %35 = sext i8 %34 to i32, !dbg !2166
  %36 = icmp eq i32 %35, 96, !dbg !2167
  %37 = zext i1 %36 to i64, !dbg !2166
  %38 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.68, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.69, i64 0, i64 0), !dbg !2166
  store i8* %38, i8** %3, align 8, !dbg !2168
  br label %44, !dbg !2168

39:                                               ; preds = %27
  %40 = load i32, i32* %5, align 4, !dbg !2169
  %41 = icmp eq i32 %40, 9, !dbg !2170
  %42 = zext i1 %41 to i64, !dbg !2169
  %43 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), !dbg !2169
  store i8* %43, i8** %3, align 8, !dbg !2171
  br label %44, !dbg !2171

44:                                               ; preds = %39, %31, %19, %12
  %45 = load i8*, i8** %3, align 8, !dbg !2172
  ret i8* %45, !dbg !2172
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #6

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8*, i8*, i64) #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nounwind
declare dso_local i32 @iswprint(i32) #7

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @mbsinit(%struct.__mbstate_t*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) #4 !dbg !2173 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2176, metadata !DIExpression()), !dbg !2177
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2178, metadata !DIExpression()), !dbg !2179
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2180, metadata !DIExpression()), !dbg !2181
  %7 = load i8*, i8** %4, align 8, !dbg !2182
  %8 = load i64, i64* %5, align 8, !dbg !2183
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2184
  %10 = call i8* @quotearg_alloc_mem(i8* %7, i64 %8, i64* null, %struct.quoting_options* %9), !dbg !2185
  ret i8* %10, !dbg !2186
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) #4 !dbg !2187 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2190, metadata !DIExpression()), !dbg !2191
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2192, metadata !DIExpression()), !dbg !2193
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2194, metadata !DIExpression()), !dbg !2195
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2196, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2198, metadata !DIExpression()), !dbg !2199
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2200
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2200
  br i1 %15, label %16, label %18, !dbg !2200

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2201
  br label %19, !dbg !2200

18:                                               ; preds = %4
  br label %19, !dbg !2200

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2200
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2199
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2202, metadata !DIExpression()), !dbg !2203
  %21 = call i32* @__errno_location() #17, !dbg !2204
  %22 = load i32, i32* %21, align 4, !dbg !2204
  store i32 %22, i32* %10, align 4, !dbg !2203
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2205, metadata !DIExpression()), !dbg !2206
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2207
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2208
  %25 = load i32, i32* %24, align 4, !dbg !2208
  %26 = load i64*, i64** %7, align 8, !dbg !2209
  %27 = icmp ne i64* %26, null, !dbg !2209
  %28 = zext i1 %27 to i64, !dbg !2209
  %29 = select i1 %27, i32 0, i32 1, !dbg !2209
  %30 = or i32 %25, %29, !dbg !2210
  store i32 %30, i32* %11, align 4, !dbg !2206
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2211, metadata !DIExpression()), !dbg !2212
  %31 = load i8*, i8** %5, align 8, !dbg !2213
  %32 = load i64, i64* %6, align 8, !dbg !2214
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2215
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2216
  %35 = load i32, i32* %34, align 8, !dbg !2216
  %36 = load i32, i32* %11, align 4, !dbg !2217
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2218
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2219
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2218
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2220
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2221
  %42 = load i8*, i8** %41, align 8, !dbg !2221
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2222
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !2223
  %45 = load i8*, i8** %44, align 8, !dbg !2223
  %46 = call i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %31, i64 %32, i32 %35, i32 %36, i32* %39, i8* %42, i8* %45), !dbg !2224
  %47 = add i64 %46, 1, !dbg !2225
  store i64 %47, i64* %12, align 8, !dbg !2212
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2226, metadata !DIExpression()), !dbg !2227
  %48 = load i64, i64* %12, align 8, !dbg !2228
  %49 = call noalias i8* @xcharalloc(i64 %48), !dbg !2229
  store i8* %49, i8** %13, align 8, !dbg !2227
  %50 = load i8*, i8** %13, align 8, !dbg !2230
  %51 = load i64, i64* %12, align 8, !dbg !2231
  %52 = load i8*, i8** %5, align 8, !dbg !2232
  %53 = load i64, i64* %6, align 8, !dbg !2233
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2234
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !2235
  %56 = load i32, i32* %55, align 8, !dbg !2235
  %57 = load i32, i32* %11, align 4, !dbg !2236
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2237
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !2238
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !2237
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2239
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2240
  %63 = load i8*, i8** %62, align 8, !dbg !2240
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2241
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !2242
  %66 = load i8*, i8** %65, align 8, !dbg !2242
  %67 = call i64 @quotearg_buffer_restyled(i8* %50, i64 %51, i8* %52, i64 %53, i32 %56, i32 %57, i32* %60, i8* %63, i8* %66), !dbg !2243
  %68 = load i32, i32* %10, align 4, !dbg !2244
  %69 = call i32* @__errno_location() #17, !dbg !2245
  store i32 %68, i32* %69, align 4, !dbg !2246
  %70 = load i64*, i64** %7, align 8, !dbg !2247
  %71 = icmp ne i64* %70, null, !dbg !2247
  br i1 %71, label %72, label %76, !dbg !2249

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !2250
  %74 = sub i64 %73, 1, !dbg !2251
  %75 = load i64*, i64** %7, align 8, !dbg !2252
  store i64 %74, i64* %75, align 8, !dbg !2253
  br label %76, !dbg !2254

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !2255
  ret i8* %77, !dbg !2256
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !2257 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !2258, metadata !DIExpression()), !dbg !2259
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2260
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !2259
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2261, metadata !DIExpression()), !dbg !2262
  store i32 1, i32* %2, align 4, !dbg !2263
  br label %4, !dbg !2265

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !2266
  %6 = load i32, i32* @nslots, align 4, !dbg !2268
  %7 = icmp slt i32 %5, %6, !dbg !2269
  br i1 %7, label %8, label %18, !dbg !2270

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2271
  %10 = load i32, i32* %2, align 4, !dbg !2272
  %11 = sext i32 %10 to i64, !dbg !2271
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !2271
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !2273
  %14 = load i8*, i8** %13, align 8, !dbg !2273
  call void @free(i8* %14) #15, !dbg !2274
  br label %15, !dbg !2274

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !2275
  %17 = add nsw i32 %16, 1, !dbg !2275
  store i32 %17, i32* %2, align 4, !dbg !2275
  br label %4, !dbg !2276, !llvm.loop !2277

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2279
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !2279
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !2281
  %22 = load i8*, i8** %21, align 8, !dbg !2281
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2282
  br i1 %23, label %24, label %29, !dbg !2283

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2284
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !2284
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !2286
  %28 = load i8*, i8** %27, align 8, !dbg !2286
  call void @free(i8* %28) #15, !dbg !2287
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !2288
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !2289
  br label %29, !dbg !2290

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2291
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !2293
  br i1 %31, label %32, label %35, !dbg !2294

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2295
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !2295
  call void @free(i8* %34) #15, !dbg !2297
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2298
  br label %35, !dbg !2299

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !2300
  ret void, !dbg !2301
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) #4 !dbg !2302 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2305, metadata !DIExpression()), !dbg !2306
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2307, metadata !DIExpression()), !dbg !2308
  %5 = load i32, i32* %3, align 4, !dbg !2309
  %6 = load i8*, i8** %4, align 8, !dbg !2310
  %7 = call i8* @quotearg_n_options(i32 %5, i8* %6, i64 -1, %struct.quoting_options* @default_quoting_options), !dbg !2311
  ret i8* %7, !dbg !2312
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) #4 !dbg !2313 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2316, metadata !DIExpression()), !dbg !2317
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2318, metadata !DIExpression()), !dbg !2319
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2320, metadata !DIExpression()), !dbg !2321
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2322, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2324, metadata !DIExpression()), !dbg !2325
  %17 = call i32* @__errno_location() #17, !dbg !2326
  %18 = load i32, i32* %17, align 4, !dbg !2326
  store i32 %18, i32* %9, align 4, !dbg !2325
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !2327, metadata !DIExpression()), !dbg !2328
  %19 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2329
  store %struct.slotvec* %19, %struct.slotvec** %10, align 8, !dbg !2328
  %20 = load i32, i32* %5, align 4, !dbg !2330
  %21 = icmp slt i32 %20, 0, !dbg !2332
  br i1 %21, label %22, label %23, !dbg !2333

22:                                               ; preds = %4
  call void @abort() #13, !dbg !2334
  unreachable, !dbg !2334

23:                                               ; preds = %4
  %24 = load i32, i32* @nslots, align 4, !dbg !2335
  %25 = load i32, i32* %5, align 4, !dbg !2337
  %26 = icmp sle i32 %24, %25, !dbg !2338
  br i1 %26, label %27, label %69, !dbg !2339

27:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata i8* %11, metadata !2340, metadata !DIExpression()), !dbg !2342
  %28 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2343
  %29 = icmp eq %struct.slotvec* %28, @slotvec0, !dbg !2344
  %30 = zext i1 %29 to i8, !dbg !2342
  store i8 %30, i8* %11, align 1, !dbg !2342
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2345, metadata !DIExpression()), !dbg !2346
  store i32 2147483646, i32* %12, align 4, !dbg !2346
  %31 = load i32, i32* %12, align 4, !dbg !2347
  %32 = load i32, i32* %5, align 4, !dbg !2349
  %33 = icmp slt i32 %31, %32, !dbg !2350
  br i1 %33, label %34, label %35, !dbg !2351

34:                                               ; preds = %27
  call void @xalloc_die() #16, !dbg !2352
  unreachable, !dbg !2352

35:                                               ; preds = %27
  %36 = load i8, i8* %11, align 1, !dbg !2353
  %37 = trunc i8 %36 to i1, !dbg !2353
  br i1 %37, label %38, label %39, !dbg !2353

38:                                               ; preds = %35
  br label %41, !dbg !2353

39:                                               ; preds = %35
  %40 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2354
  br label %41, !dbg !2353

41:                                               ; preds = %39, %38
  %42 = phi %struct.slotvec* [ null, %38 ], [ %40, %39 ], !dbg !2353
  %43 = bitcast %struct.slotvec* %42 to i8*, !dbg !2353
  %44 = load i32, i32* %5, align 4, !dbg !2355
  %45 = add nsw i32 %44, 1, !dbg !2356
  %46 = sext i32 %45 to i64, !dbg !2357
  %47 = mul i64 %46, 16, !dbg !2358
  %48 = call i8* @xrealloc(i8* %43, i64 %47), !dbg !2359
  %49 = bitcast i8* %48 to %struct.slotvec*, !dbg !2359
  store %struct.slotvec* %49, %struct.slotvec** %10, align 8, !dbg !2360
  store %struct.slotvec* %49, %struct.slotvec** @slotvec, align 8, !dbg !2361
  %50 = load i8, i8* %11, align 1, !dbg !2362
  %51 = trunc i8 %50 to i1, !dbg !2362
  br i1 %51, label %52, label %55, !dbg !2364

52:                                               ; preds = %41
  %53 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2365
  %54 = bitcast %struct.slotvec* %53 to i8*, !dbg !2366
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2366
  br label %55, !dbg !2367

55:                                               ; preds = %52, %41
  %56 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2368
  %57 = load i32, i32* @nslots, align 4, !dbg !2369
  %58 = sext i32 %57 to i64, !dbg !2370
  %59 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %56, i64 %58, !dbg !2370
  %60 = bitcast %struct.slotvec* %59 to i8*, !dbg !2371
  %61 = load i32, i32* %5, align 4, !dbg !2372
  %62 = add nsw i32 %61, 1, !dbg !2373
  %63 = load i32, i32* @nslots, align 4, !dbg !2374
  %64 = sub nsw i32 %62, %63, !dbg !2375
  %65 = sext i32 %64 to i64, !dbg !2376
  %66 = mul i64 %65, 16, !dbg !2377
  call void @llvm.memset.p0i8.i64(i8* align 8 %60, i8 0, i64 %66, i1 false), !dbg !2371
  %67 = load i32, i32* %5, align 4, !dbg !2378
  %68 = add nsw i32 %67, 1, !dbg !2379
  store i32 %68, i32* @nslots, align 4, !dbg !2380
  br label %69, !dbg !2381

69:                                               ; preds = %55, %23
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2382, metadata !DIExpression()), !dbg !2384
  %70 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2385
  %71 = load i32, i32* %5, align 4, !dbg !2386
  %72 = sext i32 %71 to i64, !dbg !2385
  %73 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %70, i64 %72, !dbg !2385
  %74 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %73, i32 0, i32 0, !dbg !2387
  %75 = load i64, i64* %74, align 8, !dbg !2387
  store i64 %75, i64* %13, align 8, !dbg !2384
  call void @llvm.dbg.declare(metadata i8** %14, metadata !2388, metadata !DIExpression()), !dbg !2389
  %76 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2390
  %77 = load i32, i32* %5, align 4, !dbg !2391
  %78 = sext i32 %77 to i64, !dbg !2390
  %79 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %76, i64 %78, !dbg !2390
  %80 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %79, i32 0, i32 1, !dbg !2392
  %81 = load i8*, i8** %80, align 8, !dbg !2392
  store i8* %81, i8** %14, align 8, !dbg !2389
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2393, metadata !DIExpression()), !dbg !2394
  %82 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2395
  %83 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %82, i32 0, i32 1, !dbg !2396
  %84 = load i32, i32* %83, align 4, !dbg !2396
  %85 = or i32 %84, 1, !dbg !2397
  store i32 %85, i32* %15, align 4, !dbg !2394
  call void @llvm.dbg.declare(metadata i64* %16, metadata !2398, metadata !DIExpression()), !dbg !2399
  %86 = load i8*, i8** %14, align 8, !dbg !2400
  %87 = load i64, i64* %13, align 8, !dbg !2401
  %88 = load i8*, i8** %6, align 8, !dbg !2402
  %89 = load i64, i64* %7, align 8, !dbg !2403
  %90 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2404
  %91 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %90, i32 0, i32 0, !dbg !2405
  %92 = load i32, i32* %91, align 8, !dbg !2405
  %93 = load i32, i32* %15, align 4, !dbg !2406
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2407
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 2, !dbg !2408
  %96 = getelementptr inbounds [8 x i32], [8 x i32]* %95, i64 0, i64 0, !dbg !2407
  %97 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2409
  %98 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %97, i32 0, i32 3, !dbg !2410
  %99 = load i8*, i8** %98, align 8, !dbg !2410
  %100 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2411
  %101 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %100, i32 0, i32 4, !dbg !2412
  %102 = load i8*, i8** %101, align 8, !dbg !2412
  %103 = call i64 @quotearg_buffer_restyled(i8* %86, i64 %87, i8* %88, i64 %89, i32 %92, i32 %93, i32* %96, i8* %99, i8* %102), !dbg !2413
  store i64 %103, i64* %16, align 8, !dbg !2399
  %104 = load i64, i64* %13, align 8, !dbg !2414
  %105 = load i64, i64* %16, align 8, !dbg !2416
  %106 = icmp ule i64 %104, %105, !dbg !2417
  br i1 %106, label %107, label %145, !dbg !2418

107:                                              ; preds = %69
  %108 = load i64, i64* %16, align 8, !dbg !2419
  %109 = add i64 %108, 1, !dbg !2421
  store i64 %109, i64* %13, align 8, !dbg !2422
  %110 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2423
  %111 = load i32, i32* %5, align 4, !dbg !2424
  %112 = sext i32 %111 to i64, !dbg !2423
  %113 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %110, i64 %112, !dbg !2423
  %114 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %113, i32 0, i32 0, !dbg !2425
  store i64 %109, i64* %114, align 8, !dbg !2426
  %115 = load i8*, i8** %14, align 8, !dbg !2427
  %116 = icmp ne i8* %115, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2429
  br i1 %116, label %117, label %119, !dbg !2430

117:                                              ; preds = %107
  %118 = load i8*, i8** %14, align 8, !dbg !2431
  call void @free(i8* %118) #15, !dbg !2432
  br label %119, !dbg !2432

119:                                              ; preds = %117, %107
  %120 = load i64, i64* %13, align 8, !dbg !2433
  %121 = call noalias i8* @xcharalloc(i64 %120), !dbg !2434
  store i8* %121, i8** %14, align 8, !dbg !2435
  %122 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2436
  %123 = load i32, i32* %5, align 4, !dbg !2437
  %124 = sext i32 %123 to i64, !dbg !2436
  %125 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %122, i64 %124, !dbg !2436
  %126 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %125, i32 0, i32 1, !dbg !2438
  store i8* %121, i8** %126, align 8, !dbg !2439
  %127 = load i8*, i8** %14, align 8, !dbg !2440
  %128 = load i64, i64* %13, align 8, !dbg !2441
  %129 = load i8*, i8** %6, align 8, !dbg !2442
  %130 = load i64, i64* %7, align 8, !dbg !2443
  %131 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2444
  %132 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %131, i32 0, i32 0, !dbg !2445
  %133 = load i32, i32* %132, align 8, !dbg !2445
  %134 = load i32, i32* %15, align 4, !dbg !2446
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2447
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 2, !dbg !2448
  %137 = getelementptr inbounds [8 x i32], [8 x i32]* %136, i64 0, i64 0, !dbg !2447
  %138 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2449
  %139 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %138, i32 0, i32 3, !dbg !2450
  %140 = load i8*, i8** %139, align 8, !dbg !2450
  %141 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2451
  %142 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %141, i32 0, i32 4, !dbg !2452
  %143 = load i8*, i8** %142, align 8, !dbg !2452
  %144 = call i64 @quotearg_buffer_restyled(i8* %127, i64 %128, i8* %129, i64 %130, i32 %133, i32 %134, i32* %137, i8* %140, i8* %143), !dbg !2453
  br label %145, !dbg !2454

145:                                              ; preds = %119, %69
  %146 = load i32, i32* %9, align 4, !dbg !2455
  %147 = call i32* @__errno_location() #17, !dbg !2456
  store i32 %146, i32* %147, align 4, !dbg !2457
  %148 = load i8*, i8** %14, align 8, !dbg !2458
  ret i8* %148, !dbg !2459
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) #4 !dbg !2460 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2463, metadata !DIExpression()), !dbg !2464
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2465, metadata !DIExpression()), !dbg !2466
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2467, metadata !DIExpression()), !dbg !2468
  %7 = load i32, i32* %4, align 4, !dbg !2469
  %8 = load i8*, i8** %5, align 8, !dbg !2470
  %9 = load i64, i64* %6, align 8, !dbg !2471
  %10 = call i8* @quotearg_n_options(i32 %7, i8* %8, i64 %9, %struct.quoting_options* @default_quoting_options), !dbg !2472
  ret i8* %10, !dbg !2473
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* %0) #4 !dbg !2474 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2477, metadata !DIExpression()), !dbg !2478
  %3 = load i8*, i8** %2, align 8, !dbg !2479
  %4 = call i8* @quotearg_n(i32 0, i8* %3), !dbg !2480
  ret i8* %4, !dbg !2481
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) #4 !dbg !2482 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2485, metadata !DIExpression()), !dbg !2486
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2487, metadata !DIExpression()), !dbg !2488
  %5 = load i8*, i8** %3, align 8, !dbg !2489
  %6 = load i64, i64* %4, align 8, !dbg !2490
  %7 = call i8* @quotearg_n_mem(i32 0, i8* %5, i64 %6), !dbg !2491
  ret i8* %7, !dbg !2492
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) #4 !dbg !2493 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2496, metadata !DIExpression()), !dbg !2497
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2498, metadata !DIExpression()), !dbg !2499
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2500, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2502, metadata !DIExpression()), !dbg !2503
  %8 = load i32, i32* %5, align 4, !dbg !2504
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 %8), !dbg !2505
  %9 = load i32, i32* %4, align 4, !dbg !2506
  %10 = load i8*, i8** %6, align 8, !dbg !2507
  %11 = call i8* @quotearg_n_options(i32 %9, i8* %10, i64 -1, %struct.quoting_options* %7), !dbg !2508
  ret i8* %11, !dbg !2509
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 %1) #4 !dbg !2510 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2513, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !2515, metadata !DIExpression()), !dbg !2516
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2516
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !2516
  %5 = load i32, i32* %3, align 4, !dbg !2517
  %6 = icmp eq i32 %5, 10, !dbg !2519
  br i1 %6, label %7, label %8, !dbg !2520

7:                                                ; preds = %2
  call void @abort() #13, !dbg !2521
  unreachable, !dbg !2521

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !2522
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !2523
  store i32 %9, i32* %10, align 8, !dbg !2524
  ret void, !dbg !2525
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) #4 !dbg !2526 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2529, metadata !DIExpression()), !dbg !2530
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2531, metadata !DIExpression()), !dbg !2532
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2533, metadata !DIExpression()), !dbg !2534
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2535, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !2537, metadata !DIExpression()), !dbg !2538
  %10 = load i32, i32* %6, align 4, !dbg !2539
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 %10), !dbg !2540
  %11 = load i32, i32* %5, align 4, !dbg !2541
  %12 = load i8*, i8** %7, align 8, !dbg !2542
  %13 = load i64, i64* %8, align 8, !dbg !2543
  %14 = call i8* @quotearg_n_options(i32 %11, i8* %12, i64 %13, %struct.quoting_options* %9), !dbg !2544
  ret i8* %14, !dbg !2545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) #4 !dbg !2546 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2549, metadata !DIExpression()), !dbg !2550
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2551, metadata !DIExpression()), !dbg !2552
  %5 = load i32, i32* %3, align 4, !dbg !2553
  %6 = load i8*, i8** %4, align 8, !dbg !2554
  %7 = call i8* @quotearg_n_style(i32 0, i32 %5, i8* %6), !dbg !2555
  ret i8* %7, !dbg !2556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) #4 !dbg !2557 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2560, metadata !DIExpression()), !dbg !2561
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2562, metadata !DIExpression()), !dbg !2563
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2564, metadata !DIExpression()), !dbg !2565
  %7 = load i32, i32* %4, align 4, !dbg !2566
  %8 = load i8*, i8** %5, align 8, !dbg !2567
  %9 = load i64, i64* %6, align 8, !dbg !2568
  %10 = call i8* @quotearg_n_style_mem(i32 0, i32 %7, i8* %8, i64 %9), !dbg !2569
  ret i8* %10, !dbg !2570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) #4 !dbg !2571 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2574, metadata !DIExpression()), !dbg !2575
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2576, metadata !DIExpression()), !dbg !2577
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2578, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2580, metadata !DIExpression()), !dbg !2581
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2582
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2582
  %9 = load i8, i8* %6, align 1, !dbg !2583
  %10 = call i32 @set_char_quoting(%struct.quoting_options* %7, i8 signext %9, i32 1), !dbg !2584
  %11 = load i8*, i8** %4, align 8, !dbg !2585
  %12 = load i64, i64* %5, align 8, !dbg !2586
  %13 = call i8* @quotearg_n_options(i32 0, i8* %11, i64 %12, %struct.quoting_options* %7), !dbg !2587
  ret i8* %13, !dbg !2588
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) #4 !dbg !2589 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2592, metadata !DIExpression()), !dbg !2593
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2594, metadata !DIExpression()), !dbg !2595
  %5 = load i8*, i8** %3, align 8, !dbg !2596
  %6 = load i8, i8* %4, align 1, !dbg !2597
  %7 = call i8* @quotearg_char_mem(i8* %5, i64 -1, i8 signext %6), !dbg !2598
  ret i8* %7, !dbg !2599
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* %0) #4 !dbg !2600 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2601, metadata !DIExpression()), !dbg !2602
  %3 = load i8*, i8** %2, align 8, !dbg !2603
  %4 = call i8* @quotearg_char(i8* %3, i8 signext 58), !dbg !2604
  ret i8* %4, !dbg !2605
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) #4 !dbg !2606 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2607, metadata !DIExpression()), !dbg !2608
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2609, metadata !DIExpression()), !dbg !2610
  %5 = load i8*, i8** %3, align 8, !dbg !2611
  %6 = load i64, i64* %4, align 8, !dbg !2612
  %7 = call i8* @quotearg_char_mem(i8* %5, i64 %6, i8 signext 58), !dbg !2613
  ret i8* %7, !dbg !2614
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) #4 !dbg !2615 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2616, metadata !DIExpression()), !dbg !2617
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2618, metadata !DIExpression()), !dbg !2619
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2620, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2622, metadata !DIExpression()), !dbg !2623
  %9 = load i32, i32* %5, align 4, !dbg !2624
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 %9), !dbg !2625
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2625
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !2625
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !2625
  %12 = call i32 @set_char_quoting(%struct.quoting_options* %7, i8 signext 58, i32 1), !dbg !2626
  %13 = load i32, i32* %4, align 4, !dbg !2627
  %14 = load i8*, i8** %6, align 8, !dbg !2628
  %15 = call i8* @quotearg_n_options(i32 %13, i8* %14, i64 -1, %struct.quoting_options* %7), !dbg !2629
  ret i8* %15, !dbg !2630
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) #4 !dbg !2631 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2634, metadata !DIExpression()), !dbg !2635
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2636, metadata !DIExpression()), !dbg !2637
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2638, metadata !DIExpression()), !dbg !2639
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2640, metadata !DIExpression()), !dbg !2641
  %9 = load i32, i32* %5, align 4, !dbg !2642
  %10 = load i8*, i8** %6, align 8, !dbg !2643
  %11 = load i8*, i8** %7, align 8, !dbg !2644
  %12 = load i8*, i8** %8, align 8, !dbg !2645
  %13 = call i8* @quotearg_n_custom_mem(i32 %9, i8* %10, i8* %11, i8* %12, i64 -1), !dbg !2646
  ret i8* %13, !dbg !2647
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) #4 !dbg !2648 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2651, metadata !DIExpression()), !dbg !2652
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2653, metadata !DIExpression()), !dbg !2654
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2655, metadata !DIExpression()), !dbg !2656
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2657, metadata !DIExpression()), !dbg !2658
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2659, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !2661, metadata !DIExpression()), !dbg !2662
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !2663
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2663
  %13 = load i8*, i8** %7, align 8, !dbg !2664
  %14 = load i8*, i8** %8, align 8, !dbg !2665
  call void @set_custom_quoting(%struct.quoting_options* %11, i8* %13, i8* %14), !dbg !2666
  %15 = load i32, i32* %6, align 4, !dbg !2667
  %16 = load i8*, i8** %9, align 8, !dbg !2668
  %17 = load i64, i64* %10, align 8, !dbg !2669
  %18 = call i8* @quotearg_n_options(i32 %15, i8* %16, i64 %17, %struct.quoting_options* %11), !dbg !2670
  ret i8* %18, !dbg !2671
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) #4 !dbg !2672 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2675, metadata !DIExpression()), !dbg !2676
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2677, metadata !DIExpression()), !dbg !2678
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2679, metadata !DIExpression()), !dbg !2680
  %7 = load i8*, i8** %4, align 8, !dbg !2681
  %8 = load i8*, i8** %5, align 8, !dbg !2682
  %9 = load i8*, i8** %6, align 8, !dbg !2683
  %10 = call i8* @quotearg_n_custom(i32 0, i8* %7, i8* %8, i8* %9), !dbg !2684
  ret i8* %10, !dbg !2685
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) #4 !dbg !2686 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2689, metadata !DIExpression()), !dbg !2690
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2691, metadata !DIExpression()), !dbg !2692
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2693, metadata !DIExpression()), !dbg !2694
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2695, metadata !DIExpression()), !dbg !2696
  %9 = load i8*, i8** %5, align 8, !dbg !2697
  %10 = load i8*, i8** %6, align 8, !dbg !2698
  %11 = load i8*, i8** %7, align 8, !dbg !2699
  %12 = load i64, i64* %8, align 8, !dbg !2700
  %13 = call i8* @quotearg_n_custom_mem(i32 0, i8* %9, i8* %10, i8* %11, i64 %12), !dbg !2701
  ret i8* %13, !dbg !2702
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) #4 !dbg !2703 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2706, metadata !DIExpression()), !dbg !2707
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2708, metadata !DIExpression()), !dbg !2709
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2710, metadata !DIExpression()), !dbg !2711
  %7 = load i32, i32* %4, align 4, !dbg !2712
  %8 = load i8*, i8** %5, align 8, !dbg !2713
  %9 = load i64, i64* %6, align 8, !dbg !2714
  %10 = call i8* @quotearg_n_options(i32 %7, i8* %8, i64 %9, %struct.quoting_options* @quote_quoting_options), !dbg !2715
  ret i8* %10, !dbg !2716
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) #4 !dbg !2717 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2720, metadata !DIExpression()), !dbg !2721
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2722, metadata !DIExpression()), !dbg !2723
  %5 = load i8*, i8** %3, align 8, !dbg !2724
  %6 = load i64, i64* %4, align 8, !dbg !2725
  %7 = call i8* @quote_n_mem(i32 0, i8* %5, i64 %6), !dbg !2726
  ret i8* %7, !dbg !2727
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) #4 !dbg !2728 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2731, metadata !DIExpression()), !dbg !2732
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2733, metadata !DIExpression()), !dbg !2734
  %5 = load i32, i32* %3, align 4, !dbg !2735
  %6 = load i8*, i8** %4, align 8, !dbg !2736
  %7 = call i8* @quote_n_mem(i32 %5, i8* %6, i64 -1), !dbg !2737
  ret i8* %7, !dbg !2738
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* %0) #4 !dbg !2739 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2742, metadata !DIExpression()), !dbg !2743
  %3 = load i8*, i8** %2, align 8, !dbg !2744
  %4 = call i8* @quote_n(i32 0, i8* %3), !dbg !2745
  ret i8* %4, !dbg !2746
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** %4, i64 %5) #4 !dbg !2747 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !2806, metadata !DIExpression()), !dbg !2807
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2808, metadata !DIExpression()), !dbg !2809
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2810, metadata !DIExpression()), !dbg !2811
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2812, metadata !DIExpression()), !dbg !2813
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !2814, metadata !DIExpression()), !dbg !2815
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2816, metadata !DIExpression()), !dbg !2817
  %13 = load i8*, i8** %8, align 8, !dbg !2818
  %14 = icmp ne i8* %13, null, !dbg !2818
  br i1 %14, label %15, label %21, !dbg !2820

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2821
  %17 = load i8*, i8** %8, align 8, !dbg !2822
  %18 = load i8*, i8** %9, align 8, !dbg !2823
  %19 = load i8*, i8** %10, align 8, !dbg !2824
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.72, i64 0, i64 0), i8* %17, i8* %18, i8* %19), !dbg !2825
  br label %26, !dbg !2825

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2826
  %23 = load i8*, i8** %9, align 8, !dbg !2827
  %24 = load i8*, i8** %10, align 8, !dbg !2828
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.73, i64 0, i64 0), i8* %23, i8* %24), !dbg !2829
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2830
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.74, i64 0, i64 0), i32 2020), !dbg !2831
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2832
  %30 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.75, i64 0, i64 0), %struct._IO_FILE* %29), !dbg !2832
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2833
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.76, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.77, i64 0, i64 0)), !dbg !2834
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2835
  %34 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.75, i64 0, i64 0), %struct._IO_FILE* %33), !dbg !2835
  %35 = load i64, i64* %12, align 8, !dbg !2836
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
  ], !dbg !2837

36:                                               ; preds = %26
  br label %229, !dbg !2838

37:                                               ; preds = %26
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2840
  %39 = load i8**, i8*** %11, align 8, !dbg !2841
  %40 = getelementptr inbounds i8*, i8** %39, i64 0, !dbg !2841
  %41 = load i8*, i8** %40, align 8, !dbg !2841
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.78, i64 0, i64 0), i8* %41), !dbg !2842
  br label %229, !dbg !2843

43:                                               ; preds = %26
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2844
  %45 = load i8**, i8*** %11, align 8, !dbg !2845
  %46 = getelementptr inbounds i8*, i8** %45, i64 0, !dbg !2845
  %47 = load i8*, i8** %46, align 8, !dbg !2845
  %48 = load i8**, i8*** %11, align 8, !dbg !2846
  %49 = getelementptr inbounds i8*, i8** %48, i64 1, !dbg !2846
  %50 = load i8*, i8** %49, align 8, !dbg !2846
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.79, i64 0, i64 0), i8* %47, i8* %50), !dbg !2847
  br label %229, !dbg !2848

52:                                               ; preds = %26
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2849
  %54 = load i8**, i8*** %11, align 8, !dbg !2850
  %55 = getelementptr inbounds i8*, i8** %54, i64 0, !dbg !2850
  %56 = load i8*, i8** %55, align 8, !dbg !2850
  %57 = load i8**, i8*** %11, align 8, !dbg !2851
  %58 = getelementptr inbounds i8*, i8** %57, i64 1, !dbg !2851
  %59 = load i8*, i8** %58, align 8, !dbg !2851
  %60 = load i8**, i8*** %11, align 8, !dbg !2852
  %61 = getelementptr inbounds i8*, i8** %60, i64 2, !dbg !2852
  %62 = load i8*, i8** %61, align 8, !dbg !2852
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.80, i64 0, i64 0), i8* %56, i8* %59, i8* %62), !dbg !2853
  br label %229, !dbg !2854

64:                                               ; preds = %26
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2855
  %66 = load i8**, i8*** %11, align 8, !dbg !2856
  %67 = getelementptr inbounds i8*, i8** %66, i64 0, !dbg !2856
  %68 = load i8*, i8** %67, align 8, !dbg !2856
  %69 = load i8**, i8*** %11, align 8, !dbg !2857
  %70 = getelementptr inbounds i8*, i8** %69, i64 1, !dbg !2857
  %71 = load i8*, i8** %70, align 8, !dbg !2857
  %72 = load i8**, i8*** %11, align 8, !dbg !2858
  %73 = getelementptr inbounds i8*, i8** %72, i64 2, !dbg !2858
  %74 = load i8*, i8** %73, align 8, !dbg !2858
  %75 = load i8**, i8*** %11, align 8, !dbg !2859
  %76 = getelementptr inbounds i8*, i8** %75, i64 3, !dbg !2859
  %77 = load i8*, i8** %76, align 8, !dbg !2859
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.81, i64 0, i64 0), i8* %68, i8* %71, i8* %74, i8* %77), !dbg !2860
  br label %229, !dbg !2861

79:                                               ; preds = %26
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2862
  %81 = load i8**, i8*** %11, align 8, !dbg !2863
  %82 = getelementptr inbounds i8*, i8** %81, i64 0, !dbg !2863
  %83 = load i8*, i8** %82, align 8, !dbg !2863
  %84 = load i8**, i8*** %11, align 8, !dbg !2864
  %85 = getelementptr inbounds i8*, i8** %84, i64 1, !dbg !2864
  %86 = load i8*, i8** %85, align 8, !dbg !2864
  %87 = load i8**, i8*** %11, align 8, !dbg !2865
  %88 = getelementptr inbounds i8*, i8** %87, i64 2, !dbg !2865
  %89 = load i8*, i8** %88, align 8, !dbg !2865
  %90 = load i8**, i8*** %11, align 8, !dbg !2866
  %91 = getelementptr inbounds i8*, i8** %90, i64 3, !dbg !2866
  %92 = load i8*, i8** %91, align 8, !dbg !2866
  %93 = load i8**, i8*** %11, align 8, !dbg !2867
  %94 = getelementptr inbounds i8*, i8** %93, i64 4, !dbg !2867
  %95 = load i8*, i8** %94, align 8, !dbg !2867
  %96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.82, i64 0, i64 0), i8* %83, i8* %86, i8* %89, i8* %92, i8* %95), !dbg !2868
  br label %229, !dbg !2869

97:                                               ; preds = %26
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2870
  %99 = load i8**, i8*** %11, align 8, !dbg !2871
  %100 = getelementptr inbounds i8*, i8** %99, i64 0, !dbg !2871
  %101 = load i8*, i8** %100, align 8, !dbg !2871
  %102 = load i8**, i8*** %11, align 8, !dbg !2872
  %103 = getelementptr inbounds i8*, i8** %102, i64 1, !dbg !2872
  %104 = load i8*, i8** %103, align 8, !dbg !2872
  %105 = load i8**, i8*** %11, align 8, !dbg !2873
  %106 = getelementptr inbounds i8*, i8** %105, i64 2, !dbg !2873
  %107 = load i8*, i8** %106, align 8, !dbg !2873
  %108 = load i8**, i8*** %11, align 8, !dbg !2874
  %109 = getelementptr inbounds i8*, i8** %108, i64 3, !dbg !2874
  %110 = load i8*, i8** %109, align 8, !dbg !2874
  %111 = load i8**, i8*** %11, align 8, !dbg !2875
  %112 = getelementptr inbounds i8*, i8** %111, i64 4, !dbg !2875
  %113 = load i8*, i8** %112, align 8, !dbg !2875
  %114 = load i8**, i8*** %11, align 8, !dbg !2876
  %115 = getelementptr inbounds i8*, i8** %114, i64 5, !dbg !2876
  %116 = load i8*, i8** %115, align 8, !dbg !2876
  %117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.83, i64 0, i64 0), i8* %101, i8* %104, i8* %107, i8* %110, i8* %113, i8* %116), !dbg !2877
  br label %229, !dbg !2878

118:                                              ; preds = %26
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2879
  %120 = load i8**, i8*** %11, align 8, !dbg !2880
  %121 = getelementptr inbounds i8*, i8** %120, i64 0, !dbg !2880
  %122 = load i8*, i8** %121, align 8, !dbg !2880
  %123 = load i8**, i8*** %11, align 8, !dbg !2881
  %124 = getelementptr inbounds i8*, i8** %123, i64 1, !dbg !2881
  %125 = load i8*, i8** %124, align 8, !dbg !2881
  %126 = load i8**, i8*** %11, align 8, !dbg !2882
  %127 = getelementptr inbounds i8*, i8** %126, i64 2, !dbg !2882
  %128 = load i8*, i8** %127, align 8, !dbg !2882
  %129 = load i8**, i8*** %11, align 8, !dbg !2883
  %130 = getelementptr inbounds i8*, i8** %129, i64 3, !dbg !2883
  %131 = load i8*, i8** %130, align 8, !dbg !2883
  %132 = load i8**, i8*** %11, align 8, !dbg !2884
  %133 = getelementptr inbounds i8*, i8** %132, i64 4, !dbg !2884
  %134 = load i8*, i8** %133, align 8, !dbg !2884
  %135 = load i8**, i8*** %11, align 8, !dbg !2885
  %136 = getelementptr inbounds i8*, i8** %135, i64 5, !dbg !2885
  %137 = load i8*, i8** %136, align 8, !dbg !2885
  %138 = load i8**, i8*** %11, align 8, !dbg !2886
  %139 = getelementptr inbounds i8*, i8** %138, i64 6, !dbg !2886
  %140 = load i8*, i8** %139, align 8, !dbg !2886
  %141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %119, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.84, i64 0, i64 0), i8* %122, i8* %125, i8* %128, i8* %131, i8* %134, i8* %137, i8* %140), !dbg !2887
  br label %229, !dbg !2888

142:                                              ; preds = %26
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2889
  %144 = load i8**, i8*** %11, align 8, !dbg !2890
  %145 = getelementptr inbounds i8*, i8** %144, i64 0, !dbg !2890
  %146 = load i8*, i8** %145, align 8, !dbg !2890
  %147 = load i8**, i8*** %11, align 8, !dbg !2891
  %148 = getelementptr inbounds i8*, i8** %147, i64 1, !dbg !2891
  %149 = load i8*, i8** %148, align 8, !dbg !2891
  %150 = load i8**, i8*** %11, align 8, !dbg !2892
  %151 = getelementptr inbounds i8*, i8** %150, i64 2, !dbg !2892
  %152 = load i8*, i8** %151, align 8, !dbg !2892
  %153 = load i8**, i8*** %11, align 8, !dbg !2893
  %154 = getelementptr inbounds i8*, i8** %153, i64 3, !dbg !2893
  %155 = load i8*, i8** %154, align 8, !dbg !2893
  %156 = load i8**, i8*** %11, align 8, !dbg !2894
  %157 = getelementptr inbounds i8*, i8** %156, i64 4, !dbg !2894
  %158 = load i8*, i8** %157, align 8, !dbg !2894
  %159 = load i8**, i8*** %11, align 8, !dbg !2895
  %160 = getelementptr inbounds i8*, i8** %159, i64 5, !dbg !2895
  %161 = load i8*, i8** %160, align 8, !dbg !2895
  %162 = load i8**, i8*** %11, align 8, !dbg !2896
  %163 = getelementptr inbounds i8*, i8** %162, i64 6, !dbg !2896
  %164 = load i8*, i8** %163, align 8, !dbg !2896
  %165 = load i8**, i8*** %11, align 8, !dbg !2897
  %166 = getelementptr inbounds i8*, i8** %165, i64 7, !dbg !2897
  %167 = load i8*, i8** %166, align 8, !dbg !2897
  %168 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %143, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.85, i64 0, i64 0), i8* %146, i8* %149, i8* %152, i8* %155, i8* %158, i8* %161, i8* %164, i8* %167), !dbg !2898
  br label %229, !dbg !2899

169:                                              ; preds = %26
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2900
  %171 = load i8**, i8*** %11, align 8, !dbg !2901
  %172 = getelementptr inbounds i8*, i8** %171, i64 0, !dbg !2901
  %173 = load i8*, i8** %172, align 8, !dbg !2901
  %174 = load i8**, i8*** %11, align 8, !dbg !2902
  %175 = getelementptr inbounds i8*, i8** %174, i64 1, !dbg !2902
  %176 = load i8*, i8** %175, align 8, !dbg !2902
  %177 = load i8**, i8*** %11, align 8, !dbg !2903
  %178 = getelementptr inbounds i8*, i8** %177, i64 2, !dbg !2903
  %179 = load i8*, i8** %178, align 8, !dbg !2903
  %180 = load i8**, i8*** %11, align 8, !dbg !2904
  %181 = getelementptr inbounds i8*, i8** %180, i64 3, !dbg !2904
  %182 = load i8*, i8** %181, align 8, !dbg !2904
  %183 = load i8**, i8*** %11, align 8, !dbg !2905
  %184 = getelementptr inbounds i8*, i8** %183, i64 4, !dbg !2905
  %185 = load i8*, i8** %184, align 8, !dbg !2905
  %186 = load i8**, i8*** %11, align 8, !dbg !2906
  %187 = getelementptr inbounds i8*, i8** %186, i64 5, !dbg !2906
  %188 = load i8*, i8** %187, align 8, !dbg !2906
  %189 = load i8**, i8*** %11, align 8, !dbg !2907
  %190 = getelementptr inbounds i8*, i8** %189, i64 6, !dbg !2907
  %191 = load i8*, i8** %190, align 8, !dbg !2907
  %192 = load i8**, i8*** %11, align 8, !dbg !2908
  %193 = getelementptr inbounds i8*, i8** %192, i64 7, !dbg !2908
  %194 = load i8*, i8** %193, align 8, !dbg !2908
  %195 = load i8**, i8*** %11, align 8, !dbg !2909
  %196 = getelementptr inbounds i8*, i8** %195, i64 8, !dbg !2909
  %197 = load i8*, i8** %196, align 8, !dbg !2909
  %198 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %170, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.86, i64 0, i64 0), i8* %173, i8* %176, i8* %179, i8* %182, i8* %185, i8* %188, i8* %191, i8* %194, i8* %197), !dbg !2910
  br label %229, !dbg !2911

199:                                              ; preds = %26
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2912
  %201 = load i8**, i8*** %11, align 8, !dbg !2913
  %202 = getelementptr inbounds i8*, i8** %201, i64 0, !dbg !2913
  %203 = load i8*, i8** %202, align 8, !dbg !2913
  %204 = load i8**, i8*** %11, align 8, !dbg !2914
  %205 = getelementptr inbounds i8*, i8** %204, i64 1, !dbg !2914
  %206 = load i8*, i8** %205, align 8, !dbg !2914
  %207 = load i8**, i8*** %11, align 8, !dbg !2915
  %208 = getelementptr inbounds i8*, i8** %207, i64 2, !dbg !2915
  %209 = load i8*, i8** %208, align 8, !dbg !2915
  %210 = load i8**, i8*** %11, align 8, !dbg !2916
  %211 = getelementptr inbounds i8*, i8** %210, i64 3, !dbg !2916
  %212 = load i8*, i8** %211, align 8, !dbg !2916
  %213 = load i8**, i8*** %11, align 8, !dbg !2917
  %214 = getelementptr inbounds i8*, i8** %213, i64 4, !dbg !2917
  %215 = load i8*, i8** %214, align 8, !dbg !2917
  %216 = load i8**, i8*** %11, align 8, !dbg !2918
  %217 = getelementptr inbounds i8*, i8** %216, i64 5, !dbg !2918
  %218 = load i8*, i8** %217, align 8, !dbg !2918
  %219 = load i8**, i8*** %11, align 8, !dbg !2919
  %220 = getelementptr inbounds i8*, i8** %219, i64 6, !dbg !2919
  %221 = load i8*, i8** %220, align 8, !dbg !2919
  %222 = load i8**, i8*** %11, align 8, !dbg !2920
  %223 = getelementptr inbounds i8*, i8** %222, i64 7, !dbg !2920
  %224 = load i8*, i8** %223, align 8, !dbg !2920
  %225 = load i8**, i8*** %11, align 8, !dbg !2921
  %226 = getelementptr inbounds i8*, i8** %225, i64 8, !dbg !2921
  %227 = load i8*, i8** %226, align 8, !dbg !2921
  %228 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %200, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.87, i64 0, i64 0), i8* %203, i8* %206, i8* %209, i8* %212, i8* %215, i8* %218, i8* %221, i8* %224, i8* %227), !dbg !2922
  br label %229, !dbg !2923

229:                                              ; preds = %199, %169, %142, %118, %97, %79, %64, %52, %43, %37, %36
  ret void, !dbg !2924
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** %4) #4 !dbg !2925 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !2928, metadata !DIExpression()), !dbg !2929
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2930, metadata !DIExpression()), !dbg !2931
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2932, metadata !DIExpression()), !dbg !2933
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2934, metadata !DIExpression()), !dbg !2935
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !2936, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.declare(metadata i64* %11, metadata !2938, metadata !DIExpression()), !dbg !2939
  store i64 0, i64* %11, align 8, !dbg !2940
  br label %12, !dbg !2942

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !2943
  %14 = load i64, i64* %11, align 8, !dbg !2945
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !2943
  %16 = load i8*, i8** %15, align 8, !dbg !2943
  %17 = icmp ne i8* %16, null, !dbg !2946
  br i1 %17, label %18, label %22, !dbg !2946

18:                                               ; preds = %12
  br label %19, !dbg !2946

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !2947
  %21 = add i64 %20, 1, !dbg !2947
  store i64 %21, i64* %11, align 8, !dbg !2947
  br label %12, !dbg !2948, !llvm.loop !2949

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2951
  %24 = load i8*, i8** %7, align 8, !dbg !2952
  %25 = load i8*, i8** %8, align 8, !dbg !2953
  %26 = load i8*, i8** %9, align 8, !dbg !2954
  %27 = load i8**, i8*** %10, align 8, !dbg !2955
  %28 = load i64, i64* %11, align 8, !dbg !2956
  call void @version_etc_arn(%struct._IO_FILE* %23, i8* %24, i8* %25, i8* %26, i8** %27, i64 %28), !dbg !2957
  ret void, !dbg !2958
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* %4) #4 !dbg !2959 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.__va_list_tag*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [10 x i8*], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !2969, metadata !DIExpression()), !dbg !2970
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2971, metadata !DIExpression()), !dbg !2972
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2973, metadata !DIExpression()), !dbg !2974
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2975, metadata !DIExpression()), !dbg !2976
  store %struct.__va_list_tag* %4, %struct.__va_list_tag** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %10, metadata !2977, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.declare(metadata i64* %11, metadata !2979, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.declare(metadata [10 x i8*]* %12, metadata !2981, metadata !DIExpression()), !dbg !2983
  store i64 0, i64* %11, align 8, !dbg !2984
  br label %13, !dbg !2986

13:                                               ; preds = %41, %5
  %14 = load i64, i64* %11, align 8, !dbg !2987
  %15 = icmp ult i64 %14, 10, !dbg !2989
  br i1 %15, label %16, label %38, !dbg !2990

16:                                               ; preds = %13
  %17 = load %struct.__va_list_tag*, %struct.__va_list_tag** %10, align 8, !dbg !2991
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %17, i32 0, i32 0, !dbg !2991
  %19 = load i32, i32* %18, align 8, !dbg !2991
  %20 = icmp ule i32 %19, 40, !dbg !2991
  br i1 %20, label %21, label %27, !dbg !2991

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %17, i32 0, i32 3, !dbg !2991
  %23 = load i8*, i8** %22, align 8, !dbg !2991
  %24 = getelementptr i8, i8* %23, i32 %19, !dbg !2991
  %25 = bitcast i8* %24 to i8**, !dbg !2991
  %26 = add i32 %19, 8, !dbg !2991
  store i32 %26, i32* %18, align 8, !dbg !2991
  br label %32, !dbg !2991

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %17, i32 0, i32 2, !dbg !2991
  %29 = load i8*, i8** %28, align 8, !dbg !2991
  %30 = bitcast i8* %29 to i8**, !dbg !2991
  %31 = getelementptr i8, i8* %29, i32 8, !dbg !2991
  store i8* %31, i8** %28, align 8, !dbg !2991
  br label %32, !dbg !2991

32:                                               ; preds = %27, %21
  %33 = phi i8** [ %25, %21 ], [ %30, %27 ], !dbg !2991
  %34 = load i8*, i8** %33, align 8, !dbg !2991
  %35 = load i64, i64* %11, align 8, !dbg !2992
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %12, i64 0, i64 %35, !dbg !2993
  store i8* %34, i8** %36, align 8, !dbg !2994
  %37 = icmp ne i8* %34, null, !dbg !2995
  br label %38

38:                                               ; preds = %32, %13
  %39 = phi i1 [ false, %13 ], [ %37, %32 ], !dbg !2996
  br i1 %39, label %40, label %44, !dbg !2997

40:                                               ; preds = %38
  br label %41, !dbg !2997

41:                                               ; preds = %40
  %42 = load i64, i64* %11, align 8, !dbg !2998
  %43 = add i64 %42, 1, !dbg !2998
  store i64 %43, i64* %11, align 8, !dbg !2998
  br label %13, !dbg !2999, !llvm.loop !3000

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3002
  %46 = load i8*, i8** %7, align 8, !dbg !3003
  %47 = load i8*, i8** %8, align 8, !dbg !3004
  %48 = load i8*, i8** %9, align 8, !dbg !3005
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %12, i64 0, i64 0, !dbg !3006
  %50 = load i64, i64* %11, align 8, !dbg !3007
  call void @version_etc_arn(%struct._IO_FILE* %45, i8* %46, i8* %47, i8* %48, i8** %49, i64 %50), !dbg !3008
  ret void, !dbg !3009
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) #4 !dbg !3010 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3013, metadata !DIExpression()), !dbg !3014
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3015, metadata !DIExpression()), !dbg !3016
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3017, metadata !DIExpression()), !dbg !3018
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3019, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %9, metadata !3021, metadata !DIExpression()), !dbg !3028
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0, !dbg !3029
  %11 = bitcast %struct.__va_list_tag* %10 to i8*, !dbg !3029
  call void @llvm.va_start(i8* %11), !dbg !3029
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3030
  %13 = load i8*, i8** %6, align 8, !dbg !3031
  %14 = load i8*, i8** %7, align 8, !dbg !3032
  %15 = load i8*, i8** %8, align 8, !dbg !3033
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0, !dbg !3034
  call void @version_etc_va(%struct._IO_FILE* %12, i8* %13, i8* %14, i8* %15, %struct.__va_list_tag* %16), !dbg !3035
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0, !dbg !3036
  %18 = bitcast %struct.__va_list_tag* %17 to i8*, !dbg !3036
  call void @llvm.va_end(i8* %18), !dbg !3036
  ret void, !dbg !3037
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #11

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #11

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !3038 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3039
  %2 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.75, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3039
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.90, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.91, i64 0, i64 0)), !dbg !3040
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.92, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.93, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.94, i64 0, i64 0)), !dbg !3041
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.95, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.96, i64 0, i64 0)), !dbg !3042
  ret void, !dbg !3043
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) #4 !dbg !3044 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3047, metadata !DIExpression()), !dbg !3048
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3049, metadata !DIExpression()), !dbg !3050
  %5 = load i64, i64* %4, align 8, !dbg !3051
  %6 = udiv i64 9223372036854775807, %5, !dbg !3051
  %7 = load i64, i64* %3, align 8, !dbg !3051
  %8 = icmp ult i64 %6, %7, !dbg !3051
  br i1 %8, label %9, label %10, !dbg !3053

9:                                                ; preds = %2
  call void @xalloc_die() #16, !dbg !3054
  unreachable, !dbg !3054

10:                                               ; preds = %2
  %11 = load i64, i64* %3, align 8, !dbg !3055
  %12 = load i64, i64* %4, align 8, !dbg !3056
  %13 = mul i64 %11, %12, !dbg !3057
  %14 = call noalias i8* @xmalloc(i64 %13), !dbg !3058
  ret i8* %14, !dbg !3059
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @xmalloc(i64 %0) #4 !dbg !3060 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3063, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3065, metadata !DIExpression()), !dbg !3066
  %4 = load i64, i64* %2, align 8, !dbg !3067
  %5 = call noalias i8* @malloc(i64 %4) #15, !dbg !3068
  store i8* %5, i8** %3, align 8, !dbg !3066
  %6 = load i8*, i8** %3, align 8, !dbg !3069
  %7 = icmp ne i8* %6, null, !dbg !3069
  br i1 %7, label %12, label %8, !dbg !3071

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8, !dbg !3072
  %10 = icmp ne i64 %9, 0, !dbg !3073
  br i1 %10, label %11, label %12, !dbg !3074

11:                                               ; preds = %8
  call void @xalloc_die() #16, !dbg !3075
  unreachable, !dbg !3075

12:                                               ; preds = %8, %1
  %13 = load i8*, i8** %3, align 8, !dbg !3076
  ret i8* %13, !dbg !3077
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xnrealloc(i8* %0, i64 %1, i64 %2) #4 !dbg !3078 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3081, metadata !DIExpression()), !dbg !3082
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3083, metadata !DIExpression()), !dbg !3084
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3085, metadata !DIExpression()), !dbg !3086
  %7 = load i64, i64* %6, align 8, !dbg !3087
  %8 = udiv i64 9223372036854775807, %7, !dbg !3087
  %9 = load i64, i64* %5, align 8, !dbg !3087
  %10 = icmp ult i64 %8, %9, !dbg !3087
  br i1 %10, label %11, label %12, !dbg !3089

11:                                               ; preds = %3
  call void @xalloc_die() #16, !dbg !3090
  unreachable, !dbg !3090

12:                                               ; preds = %3
  %13 = load i8*, i8** %4, align 8, !dbg !3091
  %14 = load i64, i64* %5, align 8, !dbg !3092
  %15 = load i64, i64* %6, align 8, !dbg !3093
  %16 = mul i64 %14, %15, !dbg !3094
  %17 = call i8* @xrealloc(i8* %13, i64 %16), !dbg !3095
  ret i8* %17, !dbg !3096
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xrealloc(i8* %0, i64 %1) #4 !dbg !3097 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3100, metadata !DIExpression()), !dbg !3101
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3102, metadata !DIExpression()), !dbg !3103
  %6 = load i64, i64* %5, align 8, !dbg !3104
  %7 = icmp ne i64 %6, 0, !dbg !3104
  br i1 %7, label %13, label %8, !dbg !3106

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !3107
  %10 = icmp ne i8* %9, null, !dbg !3107
  br i1 %10, label %11, label %13, !dbg !3108

11:                                               ; preds = %8
  %12 = load i8*, i8** %4, align 8, !dbg !3109
  call void @free(i8* %12) #15, !dbg !3111
  store i8* null, i8** %3, align 8, !dbg !3112
  br label %25, !dbg !3112

13:                                               ; preds = %8, %2
  %14 = load i8*, i8** %4, align 8, !dbg !3113
  %15 = load i64, i64* %5, align 8, !dbg !3114
  %16 = call i8* @realloc(i8* %14, i64 %15) #15, !dbg !3115
  store i8* %16, i8** %4, align 8, !dbg !3116
  %17 = load i8*, i8** %4, align 8, !dbg !3117
  %18 = icmp ne i8* %17, null, !dbg !3117
  br i1 %18, label %23, label %19, !dbg !3119

19:                                               ; preds = %13
  %20 = load i64, i64* %5, align 8, !dbg !3120
  %21 = icmp ne i64 %20, 0, !dbg !3120
  br i1 %21, label %22, label %23, !dbg !3121

22:                                               ; preds = %19
  call void @xalloc_die() #16, !dbg !3122
  unreachable, !dbg !3122

23:                                               ; preds = %19, %13
  %24 = load i8*, i8** %4, align 8, !dbg !3123
  store i8* %24, i8** %3, align 8, !dbg !3124
  br label %25, !dbg !3124

25:                                               ; preds = %23, %11
  %26 = load i8*, i8** %3, align 8, !dbg !3125
  ret i8* %26, !dbg !3125
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @x2nrealloc(i8* %0, i64* %1, i64 %2) #4 !dbg !146 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3126, metadata !DIExpression()), !dbg !3127
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !3128, metadata !DIExpression()), !dbg !3129
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3130, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3132, metadata !DIExpression()), !dbg !3133
  %8 = load i64*, i64** %5, align 8, !dbg !3134
  %9 = load i64, i64* %8, align 8, !dbg !3135
  store i64 %9, i64* %7, align 8, !dbg !3133
  %10 = load i8*, i8** %4, align 8, !dbg !3136
  %11 = icmp ne i8* %10, null, !dbg !3136
  br i1 %11, label %32, label %12, !dbg !3138

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !3139
  %14 = icmp ne i64 %13, 0, !dbg !3139
  br i1 %14, label %25, label %15, !dbg !3142

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !3143
  %17 = udiv i64 128, %16, !dbg !3145
  store i64 %17, i64* %7, align 8, !dbg !3146
  %18 = load i64, i64* %7, align 8, !dbg !3147
  %19 = icmp ne i64 %18, 0, !dbg !3148
  %20 = xor i1 %19, true, !dbg !3148
  %21 = zext i1 %20 to i32, !dbg !3148
  %22 = sext i32 %21 to i64, !dbg !3148
  %23 = load i64, i64* %7, align 8, !dbg !3149
  %24 = add i64 %23, %22, !dbg !3149
  store i64 %24, i64* %7, align 8, !dbg !3149
  br label %25, !dbg !3150

25:                                               ; preds = %15, %12
  %26 = load i64, i64* %6, align 8, !dbg !3151
  %27 = udiv i64 9223372036854775807, %26, !dbg !3151
  %28 = load i64, i64* %7, align 8, !dbg !3151
  %29 = icmp ult i64 %27, %28, !dbg !3151
  br i1 %29, label %30, label %31, !dbg !3153

30:                                               ; preds = %25
  call void @xalloc_die() #16, !dbg !3154
  unreachable, !dbg !3154

31:                                               ; preds = %25
  br label %44, !dbg !3155

32:                                               ; preds = %3
  %33 = load i64, i64* %6, align 8, !dbg !3156
  %34 = udiv i64 6148914691236517204, %33, !dbg !3159
  %35 = load i64, i64* %7, align 8, !dbg !3160
  %36 = icmp ule i64 %34, %35, !dbg !3161
  br i1 %36, label %37, label %38, !dbg !3162

37:                                               ; preds = %32
  call void @xalloc_die() #16, !dbg !3163
  unreachable, !dbg !3163

38:                                               ; preds = %32
  %39 = load i64, i64* %7, align 8, !dbg !3164
  %40 = udiv i64 %39, 2, !dbg !3165
  %41 = add i64 %40, 1, !dbg !3166
  %42 = load i64, i64* %7, align 8, !dbg !3167
  %43 = add i64 %42, %41, !dbg !3167
  store i64 %43, i64* %7, align 8, !dbg !3167
  br label %44

44:                                               ; preds = %38, %31
  %45 = load i64, i64* %7, align 8, !dbg !3168
  %46 = load i64*, i64** %5, align 8, !dbg !3169
  store i64 %45, i64* %46, align 8, !dbg !3170
  %47 = load i8*, i8** %4, align 8, !dbg !3171
  %48 = load i64, i64* %7, align 8, !dbg !3172
  %49 = load i64, i64* %6, align 8, !dbg !3173
  %50 = mul i64 %48, %49, !dbg !3174
  %51 = call i8* @xrealloc(i8* %47, i64 %50), !dbg !3175
  ret i8* %51, !dbg !3176
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) #4 !dbg !3177 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3180, metadata !DIExpression()), !dbg !3181
  %3 = load i64, i64* %2, align 8, !dbg !3182
  %4 = call noalias i8* @xmalloc(i64 %3), !dbg !3182
  ret i8* %4, !dbg !3183
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @x2realloc(i8* %0, i64* %1) #4 !dbg !3184 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3187, metadata !DIExpression()), !dbg !3188
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3189, metadata !DIExpression()), !dbg !3190
  %5 = load i8*, i8** %3, align 8, !dbg !3191
  %6 = load i64*, i64** %4, align 8, !dbg !3192
  %7 = call i8* @x2nrealloc(i8* %5, i64* %6, i64 1), !dbg !3193
  ret i8* %7, !dbg !3194
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @xzalloc(i64 %0) #4 !dbg !3195 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3196, metadata !DIExpression()), !dbg !3197
  %3 = load i64, i64* %2, align 8, !dbg !3198
  %4 = call noalias i8* @xcalloc(i64 %3, i64 1), !dbg !3199
  ret i8* %4, !dbg !3200
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) #4 !dbg !3201 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3202, metadata !DIExpression()), !dbg !3203
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3204, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3206, metadata !DIExpression()), !dbg !3207
  %6 = load i64, i64* %4, align 8, !dbg !3208
  %7 = udiv i64 9223372036854775807, %6, !dbg !3208
  %8 = load i64, i64* %3, align 8, !dbg !3208
  %9 = icmp ult i64 %7, %8, !dbg !3208
  br i1 %9, label %15, label %10, !dbg !3210

10:                                               ; preds = %2
  %11 = load i64, i64* %3, align 8, !dbg !3211
  %12 = load i64, i64* %4, align 8, !dbg !3212
  %13 = call noalias i8* @calloc(i64 %11, i64 %12) #15, !dbg !3213
  store i8* %13, i8** %5, align 8, !dbg !3214
  %14 = icmp ne i8* %13, null, !dbg !3214
  br i1 %14, label %16, label %15, !dbg !3215

15:                                               ; preds = %10, %2
  call void @xalloc_die() #16, !dbg !3216
  unreachable, !dbg !3216

16:                                               ; preds = %10
  %17 = load i8*, i8** %5, align 8, !dbg !3217
  ret i8* %17, !dbg !3218
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) #4 !dbg !3219 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3224, metadata !DIExpression()), !dbg !3225
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3226, metadata !DIExpression()), !dbg !3227
  %5 = load i64, i64* %4, align 8, !dbg !3228
  %6 = call noalias i8* @xmalloc(i64 %5), !dbg !3229
  %7 = load i8*, i8** %3, align 8, !dbg !3230
  %8 = load i64, i64* %4, align 8, !dbg !3231
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3232
  ret i8* %6, !dbg !3233
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @xstrdup(i8* %0) #4 !dbg !3234 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3235, metadata !DIExpression()), !dbg !3236
  %3 = load i8*, i8** %2, align 8, !dbg !3237
  %4 = load i8*, i8** %2, align 8, !dbg !3238
  %5 = call i64 @strlen(i8* %4) #14, !dbg !3239
  %6 = add i64 %5, 1, !dbg !3240
  %7 = call i8* @xmemdup(i8* %3, i64 %6), !dbg !3241
  ret i8* %7, !dbg !3242
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !3243 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3244
  call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.108, i64 0, i64 0)), !dbg !3245
  call void @abort() #13, !dbg !3246
  unreachable, !dbg !3246
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) #4 !dbg !3247 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !3262, metadata !DIExpression()), !dbg !3263
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3264, metadata !DIExpression()), !dbg !3265
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3266, metadata !DIExpression()), !dbg !3267
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !3268, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3270, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3272, metadata !DIExpression()), !dbg !3273
  %13 = load i32*, i32** %6, align 8, !dbg !3274
  %14 = icmp ne i32* %13, null, !dbg !3274
  br i1 %14, label %16, label %15, !dbg !3276

15:                                               ; preds = %4
  store i32* %11, i32** %6, align 8, !dbg !3277
  br label %16, !dbg !3278

16:                                               ; preds = %15, %4
  %17 = load i32*, i32** %6, align 8, !dbg !3279
  %18 = load i8*, i8** %7, align 8, !dbg !3280
  %19 = load i64, i64* %8, align 8, !dbg !3281
  %20 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3282
  %21 = call i64 @mbrtowc(i32* %17, i8* %18, i64 %19, %struct.__mbstate_t* %20) #15, !dbg !3283
  store i64 %21, i64* %10, align 8, !dbg !3284
  %22 = load i64, i64* %10, align 8, !dbg !3285
  %23 = icmp ule i64 -2, %22, !dbg !3287
  br i1 %23, label %24, label %35, !dbg !3288

24:                                               ; preds = %16
  %25 = load i64, i64* %8, align 8, !dbg !3289
  %26 = icmp ne i64 %25, 0, !dbg !3290
  br i1 %26, label %27, label %35, !dbg !3291

27:                                               ; preds = %24
  %28 = call zeroext i1 @hard_locale(i32 0), !dbg !3292
  br i1 %28, label %35, label %29, !dbg !3293

29:                                               ; preds = %27
  call void @llvm.dbg.declare(metadata i8* %12, metadata !3294, metadata !DIExpression()), !dbg !3296
  %30 = load i8*, i8** %7, align 8, !dbg !3297
  %31 = load i8, i8* %30, align 1, !dbg !3298
  store i8 %31, i8* %12, align 1, !dbg !3296
  %32 = load i8, i8* %12, align 1, !dbg !3299
  %33 = zext i8 %32 to i32, !dbg !3299
  %34 = load i32*, i32** %6, align 8, !dbg !3300
  store i32 %33, i32* %34, align 4, !dbg !3301
  store i64 1, i64* %5, align 8, !dbg !3302
  br label %37, !dbg !3302

35:                                               ; preds = %27, %24, %16
  %36 = load i64, i64* %10, align 8, !dbg !3303
  store i64 %36, i64* %5, align 8, !dbg !3304
  br label %37, !dbg !3304

37:                                               ; preds = %35, %29
  %38 = load i64, i64* %5, align 8, !dbg !3305
  ret i64 %38, !dbg !3305
}

; Function Attrs: nounwind
declare dso_local i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) #7

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i32 @c_strcasecmp(i8* %0, i8* %1) #12 !dbg !3306 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3309, metadata !DIExpression()), !dbg !3310
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3311, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3313, metadata !DIExpression()), !dbg !3314
  %10 = load i8*, i8** %4, align 8, !dbg !3315
  store i8* %10, i8** %6, align 8, !dbg !3314
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3316, metadata !DIExpression()), !dbg !3317
  %11 = load i8*, i8** %5, align 8, !dbg !3318
  store i8* %11, i8** %7, align 8, !dbg !3317
  call void @llvm.dbg.declare(metadata i8* %8, metadata !3319, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.declare(metadata i8* %9, metadata !3321, metadata !DIExpression()), !dbg !3322
  %12 = load i8*, i8** %6, align 8, !dbg !3323
  %13 = load i8*, i8** %7, align 8, !dbg !3325
  %14 = icmp eq i8* %12, %13, !dbg !3326
  br i1 %14, label %15, label %16, !dbg !3327

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !3328
  br label %49, !dbg !3328

16:                                               ; preds = %2
  br label %17, !dbg !3329

17:                                               ; preds = %37, %16
  %18 = load i8*, i8** %6, align 8, !dbg !3330
  %19 = load i8, i8* %18, align 1, !dbg !3332
  %20 = zext i8 %19 to i32, !dbg !3332
  %21 = call i32 @c_tolower(i32 %20), !dbg !3333
  %22 = trunc i32 %21 to i8, !dbg !3333
  store i8 %22, i8* %8, align 1, !dbg !3334
  %23 = load i8*, i8** %7, align 8, !dbg !3335
  %24 = load i8, i8* %23, align 1, !dbg !3336
  %25 = zext i8 %24 to i32, !dbg !3336
  %26 = call i32 @c_tolower(i32 %25), !dbg !3337
  %27 = trunc i32 %26 to i8, !dbg !3337
  store i8 %27, i8* %9, align 1, !dbg !3338
  %28 = load i8, i8* %8, align 1, !dbg !3339
  %29 = zext i8 %28 to i32, !dbg !3339
  %30 = icmp eq i32 %29, 0, !dbg !3341
  br i1 %30, label %31, label %32, !dbg !3342

31:                                               ; preds = %17
  br label %43, !dbg !3343

32:                                               ; preds = %17
  %33 = load i8*, i8** %6, align 8, !dbg !3344
  %34 = getelementptr inbounds i8, i8* %33, i32 1, !dbg !3344
  store i8* %34, i8** %6, align 8, !dbg !3344
  %35 = load i8*, i8** %7, align 8, !dbg !3345
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !3345
  store i8* %36, i8** %7, align 8, !dbg !3345
  br label %37, !dbg !3346

37:                                               ; preds = %32
  %38 = load i8, i8* %8, align 1, !dbg !3347
  %39 = zext i8 %38 to i32, !dbg !3347
  %40 = load i8, i8* %9, align 1, !dbg !3348
  %41 = zext i8 %40 to i32, !dbg !3348
  %42 = icmp eq i32 %39, %41, !dbg !3349
  br i1 %42, label %17, label %43, !dbg !3346, !llvm.loop !3350

43:                                               ; preds = %37, %31
  %44 = load i8, i8* %8, align 1, !dbg !3352
  %45 = zext i8 %44 to i32, !dbg !3352
  %46 = load i8, i8* %9, align 1, !dbg !3354
  %47 = zext i8 %46 to i32, !dbg !3354
  %48 = sub nsw i32 %45, %47, !dbg !3355
  store i32 %48, i32* %3, align 4, !dbg !3356
  br label %49, !dbg !3356

49:                                               ; preds = %43, %15
  %50 = load i32, i32* %3, align 4, !dbg !3357
  ret i32 %50, !dbg !3357
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) #4 !dbg !3358 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3395, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3397, metadata !DIExpression()), !dbg !3399
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3400
  %8 = call i64 @__fpending(%struct._IO_FILE* %7) #15, !dbg !3401
  %9 = icmp ne i64 %8, 0, !dbg !3402
  %10 = zext i1 %9 to i8, !dbg !3399
  store i8 %10, i8* %4, align 1, !dbg !3399
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3403, metadata !DIExpression()), !dbg !3404
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3405
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* %11) #15, !dbg !3405
  %13 = icmp ne i32 %12, 0, !dbg !3406
  %14 = zext i1 %13 to i8, !dbg !3404
  store i8 %14, i8* %5, align 1, !dbg !3404
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3407, metadata !DIExpression()), !dbg !3408
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3409
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* %15), !dbg !3410
  %17 = icmp ne i32 %16, 0, !dbg !3411
  %18 = zext i1 %17 to i8, !dbg !3408
  store i8 %18, i8* %6, align 1, !dbg !3408
  %19 = load i8, i8* %5, align 1, !dbg !3412
  %20 = trunc i8 %19 to i1, !dbg !3412
  br i1 %20, label %31, label %21, !dbg !3414

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !3415
  %23 = trunc i8 %22 to i1, !dbg !3415
  br i1 %23, label %24, label %37, !dbg !3416

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !3417
  %26 = trunc i8 %25 to i1, !dbg !3417
  br i1 %26, label %31, label %27, !dbg !3418

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #17, !dbg !3419
  %29 = load i32, i32* %28, align 4, !dbg !3419
  %30 = icmp ne i32 %29, 9, !dbg !3420
  br i1 %30, label %31, label %37, !dbg !3421

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !3422
  %33 = trunc i8 %32 to i1, !dbg !3422
  br i1 %33, label %36, label %34, !dbg !3425

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #17, !dbg !3426
  store i32 0, i32* %35, align 4, !dbg !3427
  br label %36, !dbg !3426

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !3428
  br label %38, !dbg !3428

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !3429
  br label %38, !dbg !3429

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !3430
  ret i32 %39, !dbg !3430
}

; Function Attrs: nounwind
declare dso_local i64 @__fpending(%struct._IO_FILE*) #7

; Function Attrs: nounwind
declare dso_local i32 @ferror_unlocked(%struct._IO_FILE*) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) #4 !dbg !3431 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 16
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3434, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !3436, metadata !DIExpression()), !dbg !3440
  %5 = load i32, i32* %3, align 4, !dbg !3441
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !3443
  %7 = call i32 @setlocale_null_r(i32 %5, i8* %6, i64 257), !dbg !3444
  %8 = icmp ne i32 %7, 0, !dbg !3444
  br i1 %8, label %9, label %10, !dbg !3445

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !3446
  br label %21, !dbg !3446

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !3447
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.117, i64 0, i64 0)) #14, !dbg !3448
  %13 = icmp eq i32 %12, 0, !dbg !3449
  br i1 %13, label %18, label %14, !dbg !3450

14:                                               ; preds = %10
  %15 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !3451
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.118, i64 0, i64 0)) #14, !dbg !3452
  %17 = icmp eq i32 %16, 0, !dbg !3453
  br label %18, !dbg !3450

18:                                               ; preds = %14, %10
  %19 = phi i1 [ true, %10 ], [ %17, %14 ]
  %20 = xor i1 %19, true, !dbg !3454
  store i1 %20, i1* %2, align 1, !dbg !3455
  br label %21, !dbg !3455

21:                                               ; preds = %18, %9
  %22 = load i1, i1* %2, align 1, !dbg !3456
  ret i1 %22, !dbg !3456
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @locale_charset() #4 !dbg !3457 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !3459, metadata !DIExpression()), !dbg !3460
  %2 = call i8* @nl_langinfo(i32 14) #15, !dbg !3461
  store i8* %2, i8** %1, align 8, !dbg !3462
  %3 = load i8*, i8** %1, align 8, !dbg !3463
  %4 = icmp eq i8* %3, null, !dbg !3465
  br i1 %4, label %5, label %6, !dbg !3466

5:                                                ; preds = %0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.121, i64 0, i64 0), i8** %1, align 8, !dbg !3467
  br label %6, !dbg !3468

6:                                                ; preds = %5, %0
  %7 = load i8*, i8** %1, align 8, !dbg !3469
  %8 = getelementptr inbounds i8, i8* %7, i64 0, !dbg !3469
  %9 = load i8, i8* %8, align 1, !dbg !3469
  %10 = sext i8 %9 to i32, !dbg !3469
  %11 = icmp eq i32 %10, 0, !dbg !3473
  br i1 %11, label %12, label %13, !dbg !3474

12:                                               ; preds = %6
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.122, i64 0, i64 0), i8** %1, align 8, !dbg !3475
  br label %13, !dbg !3476

13:                                               ; preds = %12, %6
  %14 = load i8*, i8** %1, align 8, !dbg !3477
  ret i8* %14, !dbg !3478
}

; Function Attrs: nounwind
declare dso_local i8* @nl_langinfo(i32) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) #4 !dbg !3479 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3482, metadata !DIExpression()), !dbg !3483
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3484, metadata !DIExpression()), !dbg !3485
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3486, metadata !DIExpression()), !dbg !3487
  %7 = load i32, i32* %4, align 4, !dbg !3488
  %8 = load i8*, i8** %5, align 8, !dbg !3489
  %9 = load i64, i64* %6, align 8, !dbg !3490
  %10 = call i32 @setlocale_null_unlocked(i32 %7, i8* %8, i64 %9), !dbg !3491
  ret i32 %10, !dbg !3492
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setlocale_null_unlocked(i32 %0, i8* %1, i64 %2) #4 !dbg !3493 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3494, metadata !DIExpression()), !dbg !3495
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3496, metadata !DIExpression()), !dbg !3497
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3498, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3500, metadata !DIExpression()), !dbg !3501
  %10 = load i32, i32* %5, align 4, !dbg !3502
  %11 = call i8* @setlocale_null_androidfix(i32 %10), !dbg !3503
  store i8* %11, i8** %8, align 8, !dbg !3501
  %12 = load i8*, i8** %8, align 8, !dbg !3504
  %13 = icmp eq i8* %12, null, !dbg !3506
  br i1 %13, label %14, label %21, !dbg !3507

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !3508
  %16 = icmp ugt i64 %15, 0, !dbg !3511
  br i1 %16, label %17, label %20, !dbg !3512

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !3513
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !3513
  store i8 0, i8* %19, align 1, !dbg !3514
  br label %20, !dbg !3513

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !3515
  br label %45, !dbg !3515

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3516, metadata !DIExpression()), !dbg !3518
  %22 = load i8*, i8** %8, align 8, !dbg !3519
  %23 = call i64 @strlen(i8* %22) #14, !dbg !3520
  store i64 %23, i64* %9, align 8, !dbg !3518
  %24 = load i64, i64* %9, align 8, !dbg !3521
  %25 = load i64, i64* %7, align 8, !dbg !3523
  %26 = icmp ult i64 %24, %25, !dbg !3524
  br i1 %26, label %27, label %32, !dbg !3525

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !3526
  %29 = load i8*, i8** %8, align 8, !dbg !3528
  %30 = load i64, i64* %9, align 8, !dbg !3529
  %31 = add i64 %30, 1, !dbg !3530
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !3531
  store i32 0, i32* %4, align 4, !dbg !3532
  br label %45, !dbg !3532

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !3533
  %34 = icmp ugt i64 %33, 0, !dbg !3536
  br i1 %34, label %35, label %44, !dbg !3537

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !3538
  %37 = load i8*, i8** %8, align 8, !dbg !3540
  %38 = load i64, i64* %7, align 8, !dbg !3541
  %39 = sub i64 %38, 1, !dbg !3542
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !3543
  %40 = load i8*, i8** %6, align 8, !dbg !3544
  %41 = load i64, i64* %7, align 8, !dbg !3545
  %42 = sub i64 %41, 1, !dbg !3546
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !3544
  store i8 0, i8* %43, align 1, !dbg !3547
  br label %44, !dbg !3548

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !3549
  br label %45, !dbg !3549

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !3550
  ret i32 %46, !dbg !3550
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @setlocale_null_androidfix(i32 %0) #4 !dbg !3551 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3554, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3556, metadata !DIExpression()), !dbg !3557
  %4 = load i32, i32* %2, align 4, !dbg !3558
  %5 = call i8* @setlocale(i32 %4, i8* null) #15, !dbg !3559
  store i8* %5, i8** %3, align 8, !dbg !3557
  %6 = load i8*, i8** %3, align 8, !dbg !3560
  ret i8* %6, !dbg !3561
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 %0) #4 !dbg !3562 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3563, metadata !DIExpression()), !dbg !3564
  %3 = load i32, i32* %2, align 4, !dbg !3565
  %4 = call i8* @setlocale_null_androidfix(i32 %3), !dbg !3566
  ret i8* %4, !dbg !3567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) #4 !dbg !3568 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3605, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3607, metadata !DIExpression()), !dbg !3608
  store i32 0, i32* %4, align 4, !dbg !3608
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3609, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3611, metadata !DIExpression()), !dbg !3612
  store i32 0, i32* %6, align 4, !dbg !3612
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3613
  %8 = call i32 @fileno(%struct._IO_FILE* %7) #15, !dbg !3614
  store i32 %8, i32* %5, align 4, !dbg !3615
  %9 = load i32, i32* %5, align 4, !dbg !3616
  %10 = icmp slt i32 %9, 0, !dbg !3618
  br i1 %10, label %11, label %14, !dbg !3619

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3620
  %13 = call i32 @fclose(%struct._IO_FILE* %12), !dbg !3621
  store i32 %13, i32* %2, align 4, !dbg !3622
  br label %40, !dbg !3622

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3623
  %16 = call i32 @__freading(%struct._IO_FILE* %15) #15, !dbg !3623
  %17 = icmp ne i32 %16, 0, !dbg !3623
  br i1 %17, label %18, label %23, !dbg !3625

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3626
  %20 = call i32 @fileno(%struct._IO_FILE* %19) #15, !dbg !3627
  %21 = call i64 @lseek(i32 %20, i64 0, i32 1) #15, !dbg !3628
  %22 = icmp ne i64 %21, -1, !dbg !3629
  br i1 %22, label %23, label %30, !dbg !3630

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3631
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* %24), !dbg !3632
  %26 = icmp ne i32 %25, 0, !dbg !3632
  br i1 %26, label %27, label %30, !dbg !3633

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #17, !dbg !3634
  %29 = load i32, i32* %28, align 4, !dbg !3634
  store i32 %29, i32* %4, align 4, !dbg !3635
  br label %30, !dbg !3636

30:                                               ; preds = %27, %23, %18
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3637
  %32 = call i32 @fclose(%struct._IO_FILE* %31), !dbg !3638
  store i32 %32, i32* %6, align 4, !dbg !3639
  %33 = load i32, i32* %4, align 4, !dbg !3640
  %34 = icmp ne i32 %33, 0, !dbg !3642
  br i1 %34, label %35, label %38, !dbg !3643

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !3644
  %37 = call i32* @__errno_location() #17, !dbg !3646
  store i32 %36, i32* %37, align 4, !dbg !3647
  store i32 -1, i32* %6, align 4, !dbg !3648
  br label %38, !dbg !3649

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !3650
  store i32 %39, i32* %2, align 4, !dbg !3651
  br label %40, !dbg !3651

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !3652
  ret i32 %41, !dbg !3652
}

; Function Attrs: nounwind
declare dso_local i32 @fileno(%struct._IO_FILE*) #7

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare dso_local i32 @__freading(%struct._IO_FILE*) #7

; Function Attrs: nounwind
declare dso_local i64 @lseek(i32, i64, i32) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) #4 !dbg !3653 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3690, metadata !DIExpression()), !dbg !3691
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3692
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !3694
  br i1 %5, label %10, label %6, !dbg !3695

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3696
  %8 = call i32 @__freading(%struct._IO_FILE* %7) #15, !dbg !3696
  %9 = icmp ne i32 %8, 0, !dbg !3696
  br i1 %9, label %13, label %10, !dbg !3697

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3698
  %12 = call i32 @fflush(%struct._IO_FILE* %11), !dbg !3699
  store i32 %12, i32* %2, align 4, !dbg !3700
  br label %17, !dbg !3700

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3701
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* %14), !dbg !3702
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3703
  %16 = call i32 @fflush(%struct._IO_FILE* %15), !dbg !3704
  store i32 %16, i32* %2, align 4, !dbg !3705
  br label %17, !dbg !3705

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !3706
  ret i32 %18, !dbg !3706
}

declare dso_local i32 @fflush(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* %0) #4 !dbg !3707 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !3710, metadata !DIExpression()), !dbg !3711
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3712
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !3714
  %5 = load i32, i32* %4, align 8, !dbg !3714
  %6 = and i32 %5, 256, !dbg !3715
  %7 = icmp ne i32 %6, 0, !dbg !3715
  br i1 %7, label %8, label %11, !dbg !3716

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3717
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* %9, i64 0, i32 1), !dbg !3718
  br label %11, !dbg !3718

11:                                               ; preds = %8, %1
  ret void, !dbg !3719
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2) #4 !dbg !3720 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3758, metadata !DIExpression()), !dbg !3759
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3760, metadata !DIExpression()), !dbg !3761
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3762, metadata !DIExpression()), !dbg !3763
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3764
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !3766
  %11 = load i8*, i8** %10, align 8, !dbg !3766
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3767
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !3768
  %14 = load i8*, i8** %13, align 8, !dbg !3768
  %15 = icmp eq i8* %11, %14, !dbg !3769
  br i1 %15, label %16, label %46, !dbg !3770

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3771
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !3772
  %19 = load i8*, i8** %18, align 8, !dbg !3772
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3773
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !3774
  %22 = load i8*, i8** %21, align 8, !dbg !3774
  %23 = icmp eq i8* %19, %22, !dbg !3775
  br i1 %23, label %24, label %46, !dbg !3776

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3777
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !3778
  %27 = load i8*, i8** %26, align 8, !dbg !3778
  %28 = icmp eq i8* %27, null, !dbg !3779
  br i1 %28, label %29, label %46, !dbg !3780

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3781, metadata !DIExpression()), !dbg !3783
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3784
  %31 = call i32 @fileno(%struct._IO_FILE* %30) #15, !dbg !3785
  %32 = load i64, i64* %6, align 8, !dbg !3786
  %33 = load i32, i32* %7, align 4, !dbg !3787
  %34 = call i64 @lseek(i32 %31, i64 %32, i32 %33) #15, !dbg !3788
  store i64 %34, i64* %8, align 8, !dbg !3783
  %35 = load i64, i64* %8, align 8, !dbg !3789
  %36 = icmp eq i64 %35, -1, !dbg !3791
  br i1 %36, label %37, label %38, !dbg !3792

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !3793
  br label %51, !dbg !3793

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3795
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !3796
  %41 = load i32, i32* %40, align 8, !dbg !3797
  %42 = and i32 %41, -17, !dbg !3797
  store i32 %42, i32* %40, align 8, !dbg !3797
  %43 = load i64, i64* %8, align 8, !dbg !3798
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3799
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !3800
  store i64 %43, i64* %45, align 8, !dbg !3801
  store i32 0, i32* %4, align 4, !dbg !3802
  br label %51, !dbg !3802

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3803
  %48 = load i64, i64* %6, align 8, !dbg !3804
  %49 = load i32, i32* %7, align 4, !dbg !3805
  %50 = call i32 @fseeko(%struct._IO_FILE* %47, i64 %48, i32 %49), !dbg !3806
  store i32 %50, i32* %4, align 4, !dbg !3807
  br label %51, !dbg !3807

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !3808
  ret i32 %52, !dbg !3808
}

declare dso_local i32 @fseeko(%struct._IO_FILE*, i64, i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isalnum(i32 %0) #4 !dbg !3809 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3811, metadata !DIExpression()), !dbg !3812
  %4 = load i32, i32* %3, align 4, !dbg !3813
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
  ], !dbg !3814

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !3815
  br label %7, !dbg !3815

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !3817
  br label %7, !dbg !3817

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !3818
  ret i1 %8, !dbg !3818
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isalpha(i32 %0) #4 !dbg !3819 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3820, metadata !DIExpression()), !dbg !3821
  %4 = load i32, i32* %3, align 4, !dbg !3822
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
  ], !dbg !3823

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !3824
  br label %7, !dbg !3824

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !3826
  br label %7, !dbg !3826

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !3827
  ret i1 %8, !dbg !3827
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isascii(i32 %0) #4 !dbg !3828 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3829, metadata !DIExpression()), !dbg !3830
  %4 = load i32, i32* %3, align 4, !dbg !3831
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
  ], !dbg !3832

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !3833
  br label %7, !dbg !3833

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !3835
  br label %7, !dbg !3835

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !3836
  ret i1 %8, !dbg !3836
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isblank(i32 %0) #4 !dbg !3837 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3838, metadata !DIExpression()), !dbg !3839
  %3 = load i32, i32* %2, align 4, !dbg !3840
  %4 = icmp eq i32 %3, 32, !dbg !3841
  br i1 %4, label %8, label %5, !dbg !3842

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !3843
  %7 = icmp eq i32 %6, 9, !dbg !3844
  br label %8, !dbg !3842

8:                                                ; preds = %5, %1
  %9 = phi i1 [ true, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !3845
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_iscntrl(i32 %0) #4 !dbg !3846 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3847, metadata !DIExpression()), !dbg !3848
  %4 = load i32, i32* %3, align 4, !dbg !3849
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
  ], !dbg !3850

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !3851
  br label %7, !dbg !3851

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !3853
  br label %7, !dbg !3853

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !3854
  ret i1 %8, !dbg !3854
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isdigit(i32 %0) #4 !dbg !3855 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3856, metadata !DIExpression()), !dbg !3857
  %4 = load i32, i32* %3, align 4, !dbg !3858
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
  ], !dbg !3859

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !3860
  br label %7, !dbg !3860

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !3862
  br label %7, !dbg !3862

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !3863
  ret i1 %8, !dbg !3863
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isgraph(i32 %0) #4 !dbg !3864 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3865, metadata !DIExpression()), !dbg !3866
  %4 = load i32, i32* %3, align 4, !dbg !3867
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
  ], !dbg !3868

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !3869
  br label %7, !dbg !3869

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !3871
  br label %7, !dbg !3871

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !3872
  ret i1 %8, !dbg !3872
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_islower(i32 %0) #4 !dbg !3873 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3874, metadata !DIExpression()), !dbg !3875
  %4 = load i32, i32* %3, align 4, !dbg !3876
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
  ], !dbg !3877

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !3878
  br label %7, !dbg !3878

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !3880
  br label %7, !dbg !3880

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !3881
  ret i1 %8, !dbg !3881
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isprint(i32 %0) #4 !dbg !3882 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3883, metadata !DIExpression()), !dbg !3884
  %4 = load i32, i32* %3, align 4, !dbg !3885
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
  ], !dbg !3886

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !3887
  br label %7, !dbg !3887

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !3889
  br label %7, !dbg !3889

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !3890
  ret i1 %8, !dbg !3890
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_ispunct(i32 %0) #4 !dbg !3891 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3892, metadata !DIExpression()), !dbg !3893
  %4 = load i32, i32* %3, align 4, !dbg !3894
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
  ], !dbg !3895

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !3896
  br label %7, !dbg !3896

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !3898
  br label %7, !dbg !3898

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !3899
  ret i1 %8, !dbg !3899
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isspace(i32 %0) #4 !dbg !3900 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3901, metadata !DIExpression()), !dbg !3902
  %4 = load i32, i32* %3, align 4, !dbg !3903
  switch i32 %4, label %6 [
    i32 32, label %5
    i32 9, label %5
    i32 10, label %5
    i32 11, label %5
    i32 12, label %5
    i32 13, label %5
  ], !dbg !3904

5:                                                ; preds = %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !3905
  br label %7, !dbg !3905

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !3907
  br label %7, !dbg !3907

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !3908
  ret i1 %8, !dbg !3908
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isupper(i32 %0) #4 !dbg !3909 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3910, metadata !DIExpression()), !dbg !3911
  %4 = load i32, i32* %3, align 4, !dbg !3912
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
  ], !dbg !3913

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !3914
  br label %7, !dbg !3914

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !3916
  br label %7, !dbg !3916

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !3917
  ret i1 %8, !dbg !3917
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isxdigit(i32 %0) #4 !dbg !3918 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3919, metadata !DIExpression()), !dbg !3920
  %4 = load i32, i32* %3, align 4, !dbg !3921
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
  ], !dbg !3922

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !3923
  br label %7, !dbg !3923

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !3925
  br label %7, !dbg !3925

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !3926
  ret i1 %8, !dbg !3926
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_tolower(i32 %0) #4 !dbg !3927 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3930, metadata !DIExpression()), !dbg !3931
  %4 = load i32, i32* %3, align 4, !dbg !3932
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
  ], !dbg !3933

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %6 = load i32, i32* %3, align 4, !dbg !3934
  %7 = sub nsw i32 %6, 65, !dbg !3936
  %8 = add nsw i32 %7, 97, !dbg !3937
  store i32 %8, i32* %2, align 4, !dbg !3938
  br label %11, !dbg !3938

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !3939
  store i32 %10, i32* %2, align 4, !dbg !3940
  br label %11, !dbg !3940

11:                                               ; preds = %9, %5
  %12 = load i32, i32* %2, align 4, !dbg !3941
  ret i32 %12, !dbg !3941
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_toupper(i32 %0) #4 !dbg !3942 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3943, metadata !DIExpression()), !dbg !3944
  %4 = load i32, i32* %3, align 4, !dbg !3945
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
  ], !dbg !3946

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %6 = load i32, i32* %3, align 4, !dbg !3947
  %7 = sub nsw i32 %6, 97, !dbg !3949
  %8 = add nsw i32 %7, 65, !dbg !3950
  store i32 %8, i32* %2, align 4, !dbg !3951
  br label %11, !dbg !3951

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !3952
  store i32 %10, i32* %2, align 4, !dbg !3953
  br label %11, !dbg !3953

11:                                               ; preds = %9, %5
  %12 = load i32, i32* %2, align 4, !dbg !3954
  ret i32 %12, !dbg !3954
}

attributes #0 = { noinline noreturn nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #11 = { nofree nosync nounwind willreturn }
attributes #12 = { noinline nounwind optnone readonly uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!127, !2, !11, !20, !27, !35, !134, !121, !141, !153, !155, !158, !164, !166, !168, !558, !560, !562, !564, !566}
!llvm.ident = !{!568, !568, !568, !568, !568, !568, !568, !568, !568, !568, !568, !568, !568, !568, !568, !568, !568, !568, !568, !568}
!llvm.module.flags = !{!569, !570, !571}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Version", scope: !2, file: !3, line: 2, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/version.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!4 = !{}
!5 = !{!0}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "file_name", scope: !11, file: !12, line: 46, type: !6, isLocal: true, isDefinition: true)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !14, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "../lib/closeout.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!13 = !{!6}
!14 = !{!9, !15}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !11, file: !12, line: 56, type: !17, isLocal: true, isDefinition: true)
!17 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "exit_failure", scope: !20, file: !21, line: 24, type: !23, isLocal: false, isDefinition: true)
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !22, splitDebugInlining: false, nameTableKind: None)
!21 = !DIFile(filename: "../lib/exitfail.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!22 = !{!18}
!23 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !24)
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "program_name", scope: !27, file: !28, line: 33, type: !6, isLocal: false, isDefinition: true)
!27 = distinct !DICompileUnit(language: DW_LANG_C99, file: !28, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !29, globals: !32, splitDebugInlining: false, nameTableKind: None)
!28 = !DIFile(filename: "../lib/progname.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!29 = !{!30, !31}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!32 = !{!25}
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !35, file: !36, line: 85, type: !115, isLocal: false, isDefinition: true)
!35 = distinct !DICompileUnit(language: DW_LANG_C99, file: !36, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !37, retainedTypes: !73, globals: !78, splitDebugInlining: false, nameTableKind: None)
!36 = !DIFile(filename: "../lib/quotearg.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!37 = !{!38, !53, !58}
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !39, line: 32, baseType: !40, size: 32, elements: !41)
!39 = !DIFile(filename: "../lib/quotearg.h", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!40 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!41 = !{!42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!42 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!43 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!44 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!45 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!46 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!47 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!48 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!49 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!50 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!51 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!52 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !39, line: 242, baseType: !40, size: 32, elements: !54)
!54 = !{!55, !56, !57}
!55 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!56 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!57 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !59, line: 46, baseType: !40, size: 32, elements: !60)
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
!73 = !{!24, !74, !75, !6}
!74 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !77)
!76 = !DIFile(filename: "LLVM_12.0_src/llvm-project/build/lib/clang/12.0.1/include/stddef.h", directory: "/nobackup")
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !{!33, !79, !85, !97, !99, !104, !111, !113}
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !35, file: !36, line: 101, type: !81, isLocal: false, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 320, elements: !83)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!83 = !{!84}
!84 = !DISubrange(count: 10)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !35, file: !36, line: 1052, type: !87, isLocal: false, isDefinition: true)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !36, line: 65, size: 448, elements: !88)
!88 = !{!89, !90, !91, !95, !96}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !87, file: !36, line: 68, baseType: !38, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !87, file: !36, line: 71, baseType: !24, size: 32, offset: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !87, file: !36, line: 75, baseType: !92, size: 256, offset: 64)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 256, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 8)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !87, file: !36, line: 78, baseType: !6, size: 64, offset: 320)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !87, file: !36, line: 81, baseType: !6, size: 64, offset: 384)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !35, file: !36, line: 116, type: !87, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "slot0", scope: !35, file: !36, line: 842, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 256)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "slotvec", scope: !35, file: !36, line: 845, type: !106, isLocal: true, isDefinition: true)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !36, line: 834, size: 128, elements: !108)
!108 = !{!109, !110}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !107, file: !36, line: 836, baseType: !75, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !107, file: !36, line: 837, baseType: !31, size: 64, offset: 64)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "nslots", scope: !35, file: !36, line: 843, type: !24, isLocal: true, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "slotvec0", scope: !35, file: !36, line: 844, type: !107, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 704, elements: !117)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!117 = !{!118}
!118 = !DISubrange(count: 11)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !121, file: !122, line: 26, type: !124, isLocal: false, isDefinition: true)
!121 = distinct !DICompileUnit(language: DW_LANG_C99, file: !122, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !123, splitDebugInlining: false, nameTableKind: None)
!122 = !DIFile(filename: "../lib/version-etc-fsf.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!123 = !{!119}
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 47)
!127 = distinct !DICompileUnit(language: DW_LANG_C99, file: !128, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !129, retainedTypes: !133, splitDebugInlining: false, nameTableKind: None)
!128 = !DIFile(filename: "../src/echo.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!129 = !{!130, !58}
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !128, line: 32, baseType: !40, size: 32, elements: !131)
!131 = !{!132}
!132 = !DIEnumerator(name: "DEFAULT_ECHO_TO_XPG", value: 0, isUnsigned: true)
!133 = !{!6, !31, !30, !24, !74}
!134 = distinct !DICompileUnit(language: DW_LANG_C99, file: !135, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !136, retainedTypes: !140, splitDebugInlining: false, nameTableKind: None)
!135 = !DIFile(filename: "../lib/version-etc.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!136 = !{!137}
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !135, line: 40, baseType: !40, size: 32, elements: !138)
!138 = !{!139}
!139 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!140 = !{!6, !30}
!141 = distinct !DICompileUnit(language: DW_LANG_C99, file: !142, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !143, retainedTypes: !152, splitDebugInlining: false, nameTableKind: None)
!142 = !DIFile(filename: "../lib/xmalloc.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!143 = !{!144}
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !146, file: !145, line: 186, baseType: !40, size: 32, elements: !150)
!145 = !DIFile(filename: "../lib/xalloc.h", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!146 = distinct !DISubprogram(name: "x2nrealloc", scope: !145, file: !145, line: 174, type: !147, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !141, retainedNodes: !4)
!147 = !DISubroutineType(types: !148)
!148 = !{!30, !30, !149, !75}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!150 = !{!151}
!151 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!152 = !{!75, !31, !30}
!153 = distinct !DICompileUnit(language: DW_LANG_C99, file: !154, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, splitDebugInlining: false, nameTableKind: None)
!154 = !DIFile(filename: "../lib/xalloc-die.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!155 = distinct !DICompileUnit(language: DW_LANG_C99, file: !156, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !157, splitDebugInlining: false, nameTableKind: None)
!156 = !DIFile(filename: "../lib/mbrtowc.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!157 = !{!75}
!158 = distinct !DICompileUnit(language: DW_LANG_C99, file: !159, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !160, splitDebugInlining: false, nameTableKind: None)
!159 = !DIFile(filename: "../lib/c-strcasecmp.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!160 = !{!161}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!163 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!164 = distinct !DICompileUnit(language: DW_LANG_C99, file: !165, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!165 = !DIFile(filename: "../lib/close-stream.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!166 = distinct !DICompileUnit(language: DW_LANG_C99, file: !167, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!167 = !DIFile(filename: "../lib/hard-locale.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!168 = distinct !DICompileUnit(language: DW_LANG_C99, file: !169, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !170, retainedTypes: !557, splitDebugInlining: false, nameTableKind: None)
!169 = !DIFile(filename: "../lib/localcharset.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!170 = !{!171}
!171 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !172, line: 41, baseType: !40, size: 32, elements: !173)
!172 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!173 = !{!174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556}
!174 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!175 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!176 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!177 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!178 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!179 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!180 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!181 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!182 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!183 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!184 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!185 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!186 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!187 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!188 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!189 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!190 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!191 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!192 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!193 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!194 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!195 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!196 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!197 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!198 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!199 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!200 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!201 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!202 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!203 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!204 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!205 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!206 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!207 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!208 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!209 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!210 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!211 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!212 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!213 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!214 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!215 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!216 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!217 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!218 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!219 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!220 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!221 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!222 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!223 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!224 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!225 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!226 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!227 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!228 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!229 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!230 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!231 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!232 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!233 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!234 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!235 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!236 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!237 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!238 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!239 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!240 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!241 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!242 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!243 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!244 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!245 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!246 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!247 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!248 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!249 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!250 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!251 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!252 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!253 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!254 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!255 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!256 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!257 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!258 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!259 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!282 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!285 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!286 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!287 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!288 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!289 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!290 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!291 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!292 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!293 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!294 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!295 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!296 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!369 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!442 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!443 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!444 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!445 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!446 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!447 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!448 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!449 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!450 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!451 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!452 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!453 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!454 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!455 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!456 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!458 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!459 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!460 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!461 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!462 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!463 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!489 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!490 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!491 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!492 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!493 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!498 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!499 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!500 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!501 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!557 = !{!30}
!558 = distinct !DICompileUnit(language: DW_LANG_C99, file: !559, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !557, splitDebugInlining: false, nameTableKind: None)
!559 = !DIFile(filename: "../lib/setlocale_null.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!560 = distinct !DICompileUnit(language: DW_LANG_C99, file: !561, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!561 = !DIFile(filename: "../lib/fclose.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!562 = distinct !DICompileUnit(language: DW_LANG_C99, file: !563, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !557, splitDebugInlining: false, nameTableKind: None)
!563 = !DIFile(filename: "../lib/fflush.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!564 = distinct !DICompileUnit(language: DW_LANG_C99, file: !565, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !557, splitDebugInlining: false, nameTableKind: None)
!565 = !DIFile(filename: "../lib/fseeko.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!566 = distinct !DICompileUnit(language: DW_LANG_C99, file: !567, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!567 = !DIFile(filename: "../lib/c-ctype.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!568 = !{!"clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)"}
!569 = !{i32 7, !"Dwarf Version", i32 4}
!570 = !{i32 2, !"Debug Info Version", i32 3}
!571 = !{i32 1, !"wchar_size", i32 4}
!572 = distinct !DISubprogram(name: "usage", scope: !128, file: !128, line: 36, type: !573, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !127, retainedNodes: !4)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !24}
!575 = !DILocalVariable(name: "status", arg: 1, scope: !572, file: !128, line: 36, type: !24)
!576 = !DILocation(line: 36, column: 12, scope: !572)
!577 = !DILocation(line: 40, column: 3, scope: !578)
!578 = distinct !DILexicalBlock(scope: !579, file: !128, line: 40, column: 3)
!579 = distinct !DILexicalBlock(scope: !572, file: !128, line: 40, column: 3)
!580 = !DILocation(line: 40, column: 3, scope: !579)
!581 = !DILocation(line: 45, column: 5, scope: !572)
!582 = !DILocation(line: 45, column: 19, scope: !572)
!583 = !DILocation(line: 42, column: 3, scope: !572)
!584 = !DILocation(line: 46, column: 3, scope: !572)
!585 = !DILocation(line: 51, column: 3, scope: !572)
!586 = !DILocation(line: 59, column: 3, scope: !572)
!587 = !DILocation(line: 60, column: 3, scope: !572)
!588 = !DILocation(line: 61, column: 3, scope: !572)
!589 = !DILocation(line: 66, column: 3, scope: !572)
!590 = !DILocation(line: 78, column: 3, scope: !572)
!591 = !DILocation(line: 82, column: 3, scope: !572)
!592 = !DILocation(line: 83, column: 3, scope: !572)
!593 = !DILocation(line: 84, column: 9, scope: !572)
!594 = !DILocation(line: 84, column: 3, scope: !572)
!595 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !596, file: !596, line: 634, type: !597, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !127, retainedNodes: !4)
!596 = !DIFile(filename: "../src/system.h", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!597 = !DISubroutineType(types: !598)
!598 = !{null, !6}
!599 = !DILocalVariable(name: "program", arg: 1, scope: !595, file: !596, line: 634, type: !6)
!600 = !DILocation(line: 634, column: 34, scope: !595)
!601 = !DILocalVariable(name: "infomap", scope: !595, file: !596, line: 636, type: !602)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, size: 896, elements: !608)
!603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !604)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !595, file: !596, line: 636, size: 128, elements: !605)
!605 = !{!606, !607}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !604, file: !596, line: 636, baseType: !6, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !604, file: !596, line: 636, baseType: !6, size: 64, offset: 64)
!608 = !{!609}
!609 = !DISubrange(count: 7)
!610 = !DILocation(line: 636, column: 67, scope: !595)
!611 = !DILocalVariable(name: "node", scope: !595, file: !596, line: 646, type: !6)
!612 = !DILocation(line: 646, column: 15, scope: !595)
!613 = !DILocation(line: 646, column: 22, scope: !595)
!614 = !DILocalVariable(name: "map_prog", scope: !595, file: !596, line: 647, type: !615)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!616 = !DILocation(line: 647, column: 25, scope: !595)
!617 = !DILocation(line: 647, column: 36, scope: !595)
!618 = !DILocation(line: 649, column: 3, scope: !595)
!619 = !DILocation(line: 649, column: 10, scope: !595)
!620 = !DILocation(line: 649, column: 20, scope: !595)
!621 = !DILocation(line: 649, column: 28, scope: !595)
!622 = !DILocation(line: 649, column: 33, scope: !595)
!623 = !DILocation(line: 649, column: 31, scope: !595)
!624 = !DILocation(line: 0, scope: !595)
!625 = !DILocation(line: 650, column: 13, scope: !595)
!626 = distinct !{!626, !618, !625, !627}
!627 = !{!"llvm.loop.mustprogress"}
!628 = !DILocation(line: 652, column: 7, scope: !629)
!629 = distinct !DILexicalBlock(scope: !595, file: !596, line: 652, column: 7)
!630 = !DILocation(line: 652, column: 17, scope: !629)
!631 = !DILocation(line: 652, column: 7, scope: !595)
!632 = !DILocation(line: 653, column: 12, scope: !629)
!633 = !DILocation(line: 653, column: 22, scope: !629)
!634 = !DILocation(line: 653, column: 10, scope: !629)
!635 = !DILocation(line: 653, column: 5, scope: !629)
!636 = !DILocation(line: 655, column: 3, scope: !595)
!637 = !DILocalVariable(name: "lc_messages", scope: !595, file: !596, line: 659, type: !6)
!638 = !DILocation(line: 659, column: 15, scope: !595)
!639 = !DILocation(line: 659, column: 29, scope: !595)
!640 = !DILocation(line: 660, column: 7, scope: !641)
!641 = distinct !DILexicalBlock(scope: !595, file: !596, line: 660, column: 7)
!642 = !DILocation(line: 660, column: 19, scope: !641)
!643 = !DILocation(line: 660, column: 22, scope: !641)
!644 = !DILocation(line: 660, column: 7, scope: !595)
!645 = !DILocation(line: 666, column: 7, scope: !646)
!646 = distinct !DILexicalBlock(scope: !641, file: !596, line: 661, column: 5)
!647 = !DILocation(line: 668, column: 5, scope: !646)
!648 = !DILocation(line: 670, column: 24, scope: !595)
!649 = !DILocation(line: 669, column: 3, scope: !595)
!650 = !DILocation(line: 672, column: 11, scope: !595)
!651 = !DILocation(line: 672, column: 17, scope: !595)
!652 = !DILocation(line: 672, column: 25, scope: !595)
!653 = !DILocation(line: 672, column: 22, scope: !595)
!654 = !DILocation(line: 671, column: 3, scope: !595)
!655 = !DILocation(line: 673, column: 1, scope: !595)
!656 = distinct !DISubprogram(name: "klee_dump_memory", scope: !128, file: !128, line: 108, type: !657, scopeLine: 108, spFlags: DISPFlagDefinition, unit: !127, retainedNodes: !4)
!657 = !DISubroutineType(types: !658)
!658 = !{null}
!659 = !DILocation(line: 108, column: 26, scope: !656)
!660 = distinct !DISubprogram(name: "main", scope: !128, file: !128, line: 111, type: !661, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !127, retainedNodes: !4)
!661 = !DISubroutineType(types: !662)
!662 = !{!24, !24, !663}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!664 = !DILocalVariable(name: "argc", arg: 1, scope: !660, file: !128, line: 111, type: !24)
!665 = !DILocation(line: 111, column: 11, scope: !660)
!666 = !DILocalVariable(name: "argv", arg: 2, scope: !660, file: !128, line: 111, type: !663)
!667 = !DILocation(line: 111, column: 24, scope: !660)
!668 = !DILocalVariable(name: "display_return", scope: !660, file: !128, line: 113, type: !17)
!669 = !DILocation(line: 113, column: 8, scope: !660)
!670 = !DILocalVariable(name: "posixly_correct", scope: !660, file: !128, line: 114, type: !17)
!671 = !DILocation(line: 114, column: 8, scope: !660)
!672 = !DILocation(line: 114, column: 26, scope: !660)
!673 = !DILocalVariable(name: "allow_options", scope: !660, file: !128, line: 115, type: !17)
!674 = !DILocation(line: 115, column: 8, scope: !660)
!675 = !DILocation(line: 116, column: 8, scope: !660)
!676 = !DILocation(line: 117, column: 6, scope: !660)
!677 = !DILocation(line: 117, column: 39, scope: !660)
!678 = !DILocation(line: 117, column: 37, scope: !660)
!679 = !DILocation(line: 117, column: 44, scope: !660)
!680 = !DILocation(line: 117, column: 47, scope: !660)
!681 = !DILocation(line: 0, scope: !660)
!682 = !DILocalVariable(name: "do_v9", scope: !660, file: !128, line: 122, type: !17)
!683 = !DILocation(line: 122, column: 8, scope: !660)
!684 = !DILocation(line: 125, column: 21, scope: !660)
!685 = !DILocation(line: 125, column: 3, scope: !660)
!686 = !DILocation(line: 126, column: 3, scope: !660)
!687 = !DILocation(line: 130, column: 3, scope: !660)
!688 = !DILocation(line: 134, column: 7, scope: !689)
!689 = distinct !DILexicalBlock(scope: !660, file: !128, line: 134, column: 7)
!690 = !DILocation(line: 134, column: 21, scope: !689)
!691 = !DILocation(line: 134, column: 24, scope: !689)
!692 = !DILocation(line: 134, column: 29, scope: !689)
!693 = !DILocation(line: 134, column: 7, scope: !660)
!694 = !DILocation(line: 136, column: 11, scope: !695)
!695 = distinct !DILexicalBlock(scope: !696, file: !128, line: 136, column: 11)
!696 = distinct !DILexicalBlock(scope: !689, file: !128, line: 135, column: 5)
!697 = !DILocation(line: 136, column: 11, scope: !696)
!698 = !DILocation(line: 137, column: 9, scope: !695)
!699 = !DILocation(line: 139, column: 11, scope: !700)
!700 = distinct !DILexicalBlock(scope: !696, file: !128, line: 139, column: 11)
!701 = !DILocation(line: 139, column: 11, scope: !696)
!702 = !DILocation(line: 141, column: 24, scope: !703)
!703 = distinct !DILexicalBlock(scope: !700, file: !128, line: 140, column: 9)
!704 = !DILocation(line: 141, column: 60, scope: !703)
!705 = !DILocation(line: 141, column: 11, scope: !703)
!706 = !DILocation(line: 143, column: 11, scope: !703)
!707 = !DILocation(line: 145, column: 5, scope: !696)
!708 = !DILocation(line: 147, column: 3, scope: !660)
!709 = !DILocation(line: 148, column: 3, scope: !660)
!710 = !DILocation(line: 150, column: 7, scope: !711)
!711 = distinct !DILexicalBlock(scope: !660, file: !128, line: 150, column: 7)
!712 = !DILocation(line: 150, column: 7, scope: !660)
!713 = !DILocation(line: 151, column: 5, scope: !711)
!714 = !DILocation(line: 151, column: 12, scope: !711)
!715 = !DILocation(line: 151, column: 17, scope: !711)
!716 = !DILocation(line: 151, column: 21, scope: !711)
!717 = !DILocation(line: 151, column: 25, scope: !711)
!718 = !DILocation(line: 151, column: 24, scope: !711)
!719 = !DILocation(line: 151, column: 33, scope: !711)
!720 = !DILocation(line: 0, scope: !711)
!721 = !DILocalVariable(name: "temp", scope: !722, file: !128, line: 153, type: !6)
!722 = distinct !DILexicalBlock(scope: !711, file: !128, line: 152, column: 7)
!723 = !DILocation(line: 153, column: 21, scope: !722)
!724 = !DILocation(line: 153, column: 28, scope: !722)
!725 = !DILocation(line: 153, column: 36, scope: !722)
!726 = !DILocalVariable(name: "i", scope: !722, file: !128, line: 154, type: !75)
!727 = !DILocation(line: 154, column: 16, scope: !722)
!728 = !DILocation(line: 160, column: 16, scope: !729)
!729 = distinct !DILexicalBlock(scope: !722, file: !128, line: 160, column: 9)
!730 = !DILocation(line: 160, column: 14, scope: !729)
!731 = !DILocation(line: 160, column: 21, scope: !732)
!732 = distinct !DILexicalBlock(scope: !729, file: !128, line: 160, column: 9)
!733 = !DILocation(line: 160, column: 26, scope: !732)
!734 = !DILocation(line: 160, column: 9, scope: !729)
!735 = !DILocation(line: 161, column: 19, scope: !732)
!736 = !DILocation(line: 161, column: 24, scope: !732)
!737 = !DILocation(line: 161, column: 11, scope: !732)
!738 = !DILocation(line: 164, column: 15, scope: !739)
!739 = distinct !DILexicalBlock(scope: !732, file: !128, line: 162, column: 13)
!740 = !DILocation(line: 166, column: 15, scope: !739)
!741 = !DILocation(line: 167, column: 13, scope: !739)
!742 = !DILocation(line: 160, column: 31, scope: !732)
!743 = !DILocation(line: 160, column: 9, scope: !732)
!744 = distinct !{!744, !734, !745, !627}
!745 = !DILocation(line: 167, column: 13, scope: !729)
!746 = !DILocation(line: 169, column: 13, scope: !747)
!747 = distinct !DILexicalBlock(scope: !722, file: !128, line: 169, column: 13)
!748 = !DILocation(line: 169, column: 15, scope: !747)
!749 = !DILocation(line: 169, column: 13, scope: !722)
!750 = !DILocation(line: 170, column: 11, scope: !747)
!751 = !DILocation(line: 174, column: 9, scope: !722)
!752 = !DILocation(line: 174, column: 17, scope: !722)
!753 = !DILocation(line: 174, column: 16, scope: !722)
!754 = !DILocation(line: 175, column: 24, scope: !722)
!755 = !DILocation(line: 175, column: 19, scope: !722)
!756 = !DILocation(line: 175, column: 11, scope: !722)
!757 = !DILocation(line: 178, column: 21, scope: !758)
!758 = distinct !DILexicalBlock(scope: !722, file: !128, line: 176, column: 13)
!759 = !DILocation(line: 179, column: 15, scope: !758)
!760 = !DILocation(line: 182, column: 21, scope: !758)
!761 = !DILocation(line: 183, column: 15, scope: !758)
!762 = !DILocation(line: 186, column: 30, scope: !758)
!763 = !DILocation(line: 187, column: 15, scope: !758)
!764 = distinct !{!764, !751, !765, !627}
!765 = !DILocation(line: 188, column: 13, scope: !722)
!766 = !DILocation(line: 190, column: 13, scope: !722)
!767 = !DILocation(line: 191, column: 13, scope: !722)
!768 = distinct !{!768, !713, !769, !627}
!769 = !DILocation(line: 192, column: 7, scope: !711)
!770 = !DILocation(line: 193, column: 7, scope: !660)
!771 = !DILabel(scope: !660, name: "just_echo", file: !128, line: 195)
!772 = !DILocation(line: 195, column: 1, scope: !660)
!773 = !DILocation(line: 197, column: 7, scope: !774)
!774 = distinct !DILexicalBlock(scope: !660, file: !128, line: 197, column: 7)
!775 = !DILocation(line: 197, column: 13, scope: !774)
!776 = !DILocation(line: 197, column: 16, scope: !774)
!777 = !DILocation(line: 197, column: 7, scope: !660)
!778 = !DILocation(line: 199, column: 7, scope: !779)
!779 = distinct !DILexicalBlock(scope: !774, file: !128, line: 198, column: 5)
!780 = !DILocation(line: 199, column: 14, scope: !779)
!781 = !DILocation(line: 199, column: 19, scope: !779)
!782 = !DILocalVariable(name: "s", scope: !783, file: !128, line: 201, type: !6)
!783 = distinct !DILexicalBlock(scope: !779, file: !128, line: 200, column: 9)
!784 = !DILocation(line: 201, column: 23, scope: !783)
!785 = !DILocation(line: 201, column: 27, scope: !783)
!786 = !DILocalVariable(name: "c", scope: !783, file: !128, line: 202, type: !163)
!787 = !DILocation(line: 202, column: 25, scope: !783)
!788 = !DILocation(line: 204, column: 11, scope: !783)
!789 = !DILocation(line: 204, column: 25, scope: !783)
!790 = !DILocation(line: 204, column: 23, scope: !783)
!791 = !DILocation(line: 204, column: 21, scope: !783)
!792 = !DILocation(line: 206, column: 19, scope: !793)
!793 = distinct !DILexicalBlock(scope: !794, file: !128, line: 206, column: 19)
!794 = distinct !DILexicalBlock(scope: !783, file: !128, line: 205, column: 13)
!795 = !DILocation(line: 206, column: 21, scope: !793)
!796 = !DILocation(line: 206, column: 29, scope: !793)
!797 = !DILocation(line: 206, column: 33, scope: !793)
!798 = !DILocation(line: 206, column: 32, scope: !793)
!799 = !DILocation(line: 206, column: 19, scope: !794)
!800 = !DILocation(line: 208, column: 33, scope: !801)
!801 = distinct !DILexicalBlock(scope: !793, file: !128, line: 207, column: 17)
!802 = !DILocation(line: 208, column: 31, scope: !801)
!803 = !DILocation(line: 208, column: 29, scope: !801)
!804 = !DILocation(line: 208, column: 27, scope: !801)
!805 = !DILocation(line: 208, column: 19, scope: !801)
!806 = !DILocation(line: 210, column: 33, scope: !807)
!807 = distinct !DILexicalBlock(scope: !801, file: !128, line: 209, column: 21)
!808 = !DILocation(line: 210, column: 41, scope: !807)
!809 = !DILocation(line: 211, column: 33, scope: !807)
!810 = !DILocation(line: 211, column: 41, scope: !807)
!811 = !DILocation(line: 212, column: 31, scope: !807)
!812 = !DILocation(line: 213, column: 33, scope: !807)
!813 = !DILocation(line: 213, column: 43, scope: !807)
!814 = !DILocation(line: 214, column: 33, scope: !807)
!815 = !DILocation(line: 214, column: 41, scope: !807)
!816 = !DILocation(line: 215, column: 33, scope: !807)
!817 = !DILocation(line: 215, column: 41, scope: !807)
!818 = !DILocation(line: 216, column: 33, scope: !807)
!819 = !DILocation(line: 216, column: 41, scope: !807)
!820 = !DILocation(line: 217, column: 33, scope: !807)
!821 = !DILocation(line: 217, column: 41, scope: !807)
!822 = !DILocation(line: 218, column: 33, scope: !807)
!823 = !DILocation(line: 218, column: 41, scope: !807)
!824 = !DILocalVariable(name: "ch", scope: !825, file: !128, line: 221, type: !163)
!825 = distinct !DILexicalBlock(scope: !807, file: !128, line: 220, column: 23)
!826 = !DILocation(line: 221, column: 39, scope: !825)
!827 = !DILocation(line: 221, column: 45, scope: !825)
!828 = !DILocation(line: 221, column: 44, scope: !825)
!829 = !DILocation(line: 222, column: 31, scope: !830)
!830 = distinct !DILexicalBlock(scope: !825, file: !128, line: 222, column: 29)
!831 = !DILocation(line: 222, column: 29, scope: !825)
!832 = !DILocation(line: 223, column: 27, scope: !830)
!833 = !DILocation(line: 224, column: 26, scope: !825)
!834 = !DILocation(line: 225, column: 39, scope: !825)
!835 = !DILocation(line: 225, column: 29, scope: !825)
!836 = !DILocation(line: 225, column: 27, scope: !825)
!837 = !DILocation(line: 226, column: 31, scope: !825)
!838 = !DILocation(line: 226, column: 30, scope: !825)
!839 = !DILocation(line: 226, column: 28, scope: !825)
!840 = !DILocation(line: 227, column: 29, scope: !841)
!841 = distinct !DILexicalBlock(scope: !825, file: !128, line: 227, column: 29)
!842 = !DILocation(line: 227, column: 29, scope: !825)
!843 = !DILocation(line: 229, column: 30, scope: !844)
!844 = distinct !DILexicalBlock(scope: !841, file: !128, line: 228, column: 27)
!845 = !DILocation(line: 230, column: 33, scope: !844)
!846 = !DILocation(line: 230, column: 35, scope: !844)
!847 = !DILocation(line: 230, column: 52, scope: !844)
!848 = !DILocation(line: 230, column: 42, scope: !844)
!849 = !DILocation(line: 230, column: 40, scope: !844)
!850 = !DILocation(line: 230, column: 31, scope: !844)
!851 = !DILocation(line: 231, column: 27, scope: !844)
!852 = !DILocation(line: 233, column: 23, scope: !807)
!853 = !DILocation(line: 235, column: 25, scope: !807)
!854 = !DILocation(line: 236, column: 38, scope: !855)
!855 = distinct !DILexicalBlock(scope: !807, file: !128, line: 236, column: 27)
!856 = !DILocation(line: 236, column: 37, scope: !855)
!857 = !DILocation(line: 236, column: 34, scope: !855)
!858 = !DILocation(line: 236, column: 40, scope: !855)
!859 = !DILocation(line: 236, column: 44, scope: !855)
!860 = !DILocation(line: 236, column: 43, scope: !855)
!861 = !DILocation(line: 236, column: 46, scope: !855)
!862 = !DILocation(line: 236, column: 27, scope: !807)
!863 = !DILocation(line: 237, column: 25, scope: !855)
!864 = !DILocation(line: 238, column: 29, scope: !807)
!865 = !DILocation(line: 238, column: 27, scope: !807)
!866 = !DILocation(line: 238, column: 25, scope: !807)
!867 = !DILocation(line: 239, column: 23, scope: !807)
!868 = !DILocation(line: 242, column: 25, scope: !807)
!869 = !DILocation(line: 243, column: 35, scope: !870)
!870 = distinct !DILexicalBlock(scope: !807, file: !128, line: 243, column: 27)
!871 = !DILocation(line: 243, column: 34, scope: !870)
!872 = !DILocation(line: 243, column: 31, scope: !870)
!873 = !DILocation(line: 243, column: 37, scope: !870)
!874 = !DILocation(line: 243, column: 41, scope: !870)
!875 = !DILocation(line: 243, column: 40, scope: !870)
!876 = !DILocation(line: 243, column: 43, scope: !870)
!877 = !DILocation(line: 243, column: 27, scope: !807)
!878 = !DILocation(line: 244, column: 29, scope: !870)
!879 = !DILocation(line: 244, column: 31, scope: !870)
!880 = !DILocation(line: 244, column: 40, scope: !870)
!881 = !DILocation(line: 244, column: 38, scope: !870)
!882 = !DILocation(line: 244, column: 43, scope: !870)
!883 = !DILocation(line: 244, column: 35, scope: !870)
!884 = !DILocation(line: 244, column: 27, scope: !870)
!885 = !DILocation(line: 244, column: 25, scope: !870)
!886 = !DILocation(line: 245, column: 35, scope: !887)
!887 = distinct !DILexicalBlock(scope: !807, file: !128, line: 245, column: 27)
!888 = !DILocation(line: 245, column: 34, scope: !887)
!889 = !DILocation(line: 245, column: 31, scope: !887)
!890 = !DILocation(line: 245, column: 37, scope: !887)
!891 = !DILocation(line: 245, column: 41, scope: !887)
!892 = !DILocation(line: 245, column: 40, scope: !887)
!893 = !DILocation(line: 245, column: 43, scope: !887)
!894 = !DILocation(line: 245, column: 27, scope: !807)
!895 = !DILocation(line: 246, column: 29, scope: !887)
!896 = !DILocation(line: 246, column: 31, scope: !887)
!897 = !DILocation(line: 246, column: 40, scope: !887)
!898 = !DILocation(line: 246, column: 38, scope: !887)
!899 = !DILocation(line: 246, column: 43, scope: !887)
!900 = !DILocation(line: 246, column: 35, scope: !887)
!901 = !DILocation(line: 246, column: 27, scope: !887)
!902 = !DILocation(line: 246, column: 25, scope: !887)
!903 = !DILocation(line: 247, column: 23, scope: !807)
!904 = !DILocation(line: 248, column: 32, scope: !807)
!905 = !DILabel(scope: !807, name: "not_an_escape", file: !128, line: 250)
!906 = !DILocation(line: 250, column: 21, scope: !807)
!907 = !DILocation(line: 251, column: 31, scope: !807)
!908 = !DILocation(line: 251, column: 47, scope: !807)
!909 = !DILocation(line: 253, column: 17, scope: !801)
!910 = !DILocation(line: 254, column: 15, scope: !794)
!911 = distinct !{!911, !788, !912, !627}
!912 = !DILocation(line: 255, column: 13, scope: !783)
!913 = !DILocation(line: 256, column: 15, scope: !783)
!914 = !DILocation(line: 257, column: 15, scope: !783)
!915 = !DILocation(line: 258, column: 15, scope: !916)
!916 = distinct !DILexicalBlock(scope: !783, file: !128, line: 258, column: 15)
!917 = !DILocation(line: 258, column: 20, scope: !916)
!918 = !DILocation(line: 258, column: 15, scope: !783)
!919 = !DILocation(line: 259, column: 13, scope: !916)
!920 = distinct !{!920, !778, !921, !627}
!921 = !DILocation(line: 260, column: 9, scope: !779)
!922 = !DILocation(line: 262, column: 5, scope: !779)
!923 = !DILocation(line: 265, column: 7, scope: !924)
!924 = distinct !DILexicalBlock(scope: !774, file: !128, line: 264, column: 5)
!925 = !DILocation(line: 265, column: 14, scope: !924)
!926 = !DILocation(line: 265, column: 19, scope: !924)
!927 = !DILocation(line: 267, column: 11, scope: !928)
!928 = distinct !DILexicalBlock(scope: !924, file: !128, line: 266, column: 9)
!929 = !DILocation(line: 268, column: 15, scope: !928)
!930 = !DILocation(line: 269, column: 15, scope: !928)
!931 = !DILocation(line: 270, column: 15, scope: !932)
!932 = distinct !DILexicalBlock(scope: !928, file: !128, line: 270, column: 15)
!933 = !DILocation(line: 270, column: 20, scope: !932)
!934 = !DILocation(line: 270, column: 15, scope: !928)
!935 = !DILocation(line: 271, column: 13, scope: !932)
!936 = distinct !{!936, !923, !937, !627}
!937 = !DILocation(line: 272, column: 9, scope: !924)
!938 = !DILocation(line: 276, column: 7, scope: !939)
!939 = distinct !DILexicalBlock(scope: !660, file: !128, line: 276, column: 7)
!940 = !DILocation(line: 276, column: 7, scope: !660)
!941 = !DILocation(line: 277, column: 5, scope: !939)
!942 = !DILocation(line: 278, column: 3, scope: !660)
!943 = !DILocation(line: 279, column: 1, scope: !660)
!944 = distinct !DISubprogram(name: "hextobin", scope: !128, file: !128, line: 89, type: !945, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !127, retainedNodes: !4)
!945 = !DISubroutineType(types: !946)
!946 = !{!24, !163}
!947 = !DILocalVariable(name: "c", arg: 1, scope: !944, file: !128, line: 89, type: !163)
!948 = !DILocation(line: 89, column: 25, scope: !944)
!949 = !DILocation(line: 91, column: 11, scope: !944)
!950 = !DILocation(line: 91, column: 3, scope: !944)
!951 = !DILocation(line: 93, column: 21, scope: !952)
!952 = distinct !DILexicalBlock(scope: !944, file: !128, line: 92, column: 5)
!953 = !DILocation(line: 93, column: 23, scope: !952)
!954 = !DILocation(line: 93, column: 14, scope: !952)
!955 = !DILocation(line: 94, column: 25, scope: !952)
!956 = !DILocation(line: 95, column: 25, scope: !952)
!957 = !DILocation(line: 96, column: 25, scope: !952)
!958 = !DILocation(line: 97, column: 25, scope: !952)
!959 = !DILocation(line: 98, column: 25, scope: !952)
!960 = !DILocation(line: 99, column: 25, scope: !952)
!961 = !DILocation(line: 101, column: 1, scope: !944)
!962 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !12, file: !12, line: 51, type: !597, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!963 = !DILocalVariable(name: "file", arg: 1, scope: !962, file: !12, line: 51, type: !6)
!964 = !DILocation(line: 51, column: 41, scope: !962)
!965 = !DILocation(line: 53, column: 15, scope: !962)
!966 = !DILocation(line: 53, column: 13, scope: !962)
!967 = !DILocation(line: 54, column: 1, scope: !962)
!968 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !12, file: !12, line: 88, type: !969, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!969 = !DISubroutineType(types: !970)
!970 = !{null, !17}
!971 = !DILocalVariable(name: "ignore", arg: 1, scope: !968, file: !12, line: 88, type: !17)
!972 = !DILocation(line: 88, column: 37, scope: !968)
!973 = !DILocation(line: 90, column: 18, scope: !968)
!974 = !DILocation(line: 90, column: 16, scope: !968)
!975 = !DILocation(line: 91, column: 1, scope: !968)
!976 = distinct !DISubprogram(name: "close_stdout", scope: !12, file: !12, line: 117, type: !657, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !4)
!977 = !DILocation(line: 119, column: 21, scope: !978)
!978 = distinct !DILexicalBlock(scope: !976, file: !12, line: 119, column: 7)
!979 = !DILocation(line: 119, column: 7, scope: !978)
!980 = !DILocation(line: 119, column: 29, scope: !978)
!981 = !DILocation(line: 120, column: 7, scope: !978)
!982 = !DILocation(line: 120, column: 12, scope: !978)
!983 = !DILocation(line: 120, column: 25, scope: !978)
!984 = !DILocation(line: 120, column: 28, scope: !978)
!985 = !DILocation(line: 120, column: 34, scope: !978)
!986 = !DILocation(line: 119, column: 7, scope: !976)
!987 = !DILocalVariable(name: "write_error", scope: !988, file: !12, line: 122, type: !6)
!988 = distinct !DILexicalBlock(scope: !978, file: !12, line: 121, column: 5)
!989 = !DILocation(line: 122, column: 19, scope: !988)
!990 = !DILocation(line: 123, column: 11, scope: !991)
!991 = distinct !DILexicalBlock(scope: !988, file: !12, line: 123, column: 11)
!992 = !DILocation(line: 123, column: 11, scope: !988)
!993 = !DILocation(line: 124, column: 19, scope: !991)
!994 = !DILocation(line: 124, column: 52, scope: !991)
!995 = !DILocation(line: 124, column: 36, scope: !991)
!996 = !DILocation(line: 125, column: 16, scope: !991)
!997 = !DILocation(line: 124, column: 9, scope: !991)
!998 = !DILocation(line: 127, column: 19, scope: !991)
!999 = !DILocation(line: 127, column: 32, scope: !991)
!1000 = !DILocation(line: 127, column: 9, scope: !991)
!1001 = !DILocation(line: 129, column: 14, scope: !988)
!1002 = !DILocation(line: 129, column: 7, scope: !988)
!1003 = !DILocation(line: 134, column: 42, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !976, file: !12, line: 134, column: 7)
!1005 = !DILocation(line: 134, column: 28, scope: !1004)
!1006 = !DILocation(line: 134, column: 50, scope: !1004)
!1007 = !DILocation(line: 134, column: 7, scope: !976)
!1008 = !DILocation(line: 135, column: 12, scope: !1004)
!1009 = !DILocation(line: 135, column: 5, scope: !1004)
!1010 = !DILocation(line: 136, column: 1, scope: !976)
!1011 = distinct !DISubprogram(name: "set_program_name", scope: !28, file: !28, line: 39, type: !597, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !4)
!1012 = !DILocalVariable(name: "argv0", arg: 1, scope: !1011, file: !28, line: 39, type: !6)
!1013 = !DILocation(line: 39, column: 31, scope: !1011)
!1014 = !DILocalVariable(name: "slash", scope: !1011, file: !28, line: 46, type: !6)
!1015 = !DILocation(line: 46, column: 15, scope: !1011)
!1016 = !DILocalVariable(name: "base", scope: !1011, file: !28, line: 47, type: !6)
!1017 = !DILocation(line: 47, column: 15, scope: !1011)
!1018 = !DILocation(line: 51, column: 7, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1011, file: !28, line: 51, column: 7)
!1020 = !DILocation(line: 51, column: 13, scope: !1019)
!1021 = !DILocation(line: 51, column: 7, scope: !1011)
!1022 = !DILocation(line: 55, column: 14, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1019, file: !28, line: 52, column: 5)
!1024 = !DILocation(line: 54, column: 7, scope: !1023)
!1025 = !DILocation(line: 56, column: 7, scope: !1023)
!1026 = !DILocation(line: 59, column: 20, scope: !1011)
!1027 = !DILocation(line: 59, column: 11, scope: !1011)
!1028 = !DILocation(line: 59, column: 9, scope: !1011)
!1029 = !DILocation(line: 60, column: 11, scope: !1011)
!1030 = !DILocation(line: 60, column: 17, scope: !1011)
!1031 = !DILocation(line: 60, column: 27, scope: !1011)
!1032 = !DILocation(line: 60, column: 33, scope: !1011)
!1033 = !DILocation(line: 60, column: 39, scope: !1011)
!1034 = !DILocation(line: 60, column: 8, scope: !1011)
!1035 = !DILocation(line: 61, column: 7, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1011, file: !28, line: 61, column: 7)
!1037 = !DILocation(line: 61, column: 14, scope: !1036)
!1038 = !DILocation(line: 61, column: 12, scope: !1036)
!1039 = !DILocation(line: 61, column: 20, scope: !1036)
!1040 = !DILocation(line: 61, column: 25, scope: !1036)
!1041 = !DILocation(line: 61, column: 37, scope: !1036)
!1042 = !DILocation(line: 61, column: 42, scope: !1036)
!1043 = !DILocation(line: 61, column: 28, scope: !1036)
!1044 = !DILocation(line: 61, column: 61, scope: !1036)
!1045 = !DILocation(line: 61, column: 7, scope: !1011)
!1046 = !DILocation(line: 63, column: 15, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1036, file: !28, line: 62, column: 5)
!1048 = !DILocation(line: 63, column: 13, scope: !1047)
!1049 = !DILocation(line: 64, column: 20, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1047, file: !28, line: 64, column: 11)
!1051 = !DILocation(line: 64, column: 11, scope: !1050)
!1052 = !DILocation(line: 64, column: 36, scope: !1050)
!1053 = !DILocation(line: 64, column: 11, scope: !1047)
!1054 = !DILocation(line: 66, column: 19, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1050, file: !28, line: 65, column: 9)
!1056 = !DILocation(line: 66, column: 24, scope: !1055)
!1057 = !DILocation(line: 66, column: 17, scope: !1055)
!1058 = !DILocation(line: 70, column: 52, scope: !1055)
!1059 = !DILocation(line: 70, column: 41, scope: !1055)
!1060 = !DILocation(line: 72, column: 9, scope: !1055)
!1061 = !DILocation(line: 73, column: 5, scope: !1047)
!1062 = !DILocation(line: 84, column: 18, scope: !1011)
!1063 = !DILocation(line: 84, column: 16, scope: !1011)
!1064 = !DILocation(line: 90, column: 38, scope: !1011)
!1065 = !DILocation(line: 90, column: 27, scope: !1011)
!1066 = !DILocation(line: 92, column: 1, scope: !1011)
!1067 = distinct !DISubprogram(name: "clone_quoting_options", scope: !36, file: !36, line: 122, type: !1068, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!1070, !1070}
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!1071 = !DILocalVariable(name: "o", arg: 1, scope: !1067, file: !36, line: 122, type: !1070)
!1072 = !DILocation(line: 122, column: 48, scope: !1067)
!1073 = !DILocalVariable(name: "e", scope: !1067, file: !36, line: 124, type: !24)
!1074 = !DILocation(line: 124, column: 7, scope: !1067)
!1075 = !DILocation(line: 124, column: 11, scope: !1067)
!1076 = !DILocalVariable(name: "p", scope: !1067, file: !36, line: 125, type: !1070)
!1077 = !DILocation(line: 125, column: 27, scope: !1067)
!1078 = !DILocation(line: 125, column: 40, scope: !1067)
!1079 = !DILocation(line: 125, column: 44, scope: !1067)
!1080 = !DILocation(line: 125, column: 31, scope: !1067)
!1081 = !DILocation(line: 127, column: 11, scope: !1067)
!1082 = !DILocation(line: 127, column: 3, scope: !1067)
!1083 = !DILocation(line: 127, column: 9, scope: !1067)
!1084 = !DILocation(line: 128, column: 10, scope: !1067)
!1085 = !DILocation(line: 128, column: 3, scope: !1067)
!1086 = distinct !DISubprogram(name: "get_quoting_style", scope: !36, file: !36, line: 133, type: !1087, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!38, !1089}
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!1091 = !DILocalVariable(name: "o", arg: 1, scope: !1086, file: !36, line: 133, type: !1089)
!1092 = !DILocation(line: 133, column: 50, scope: !1086)
!1093 = !DILocation(line: 135, column: 11, scope: !1086)
!1094 = !DILocation(line: 135, column: 15, scope: !1086)
!1095 = !DILocation(line: 135, column: 46, scope: !1086)
!1096 = !DILocation(line: 135, column: 3, scope: !1086)
!1097 = distinct !DISubprogram(name: "set_quoting_style", scope: !36, file: !36, line: 141, type: !1098, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{null, !1070, !38}
!1100 = !DILocalVariable(name: "o", arg: 1, scope: !1097, file: !36, line: 141, type: !1070)
!1101 = !DILocation(line: 141, column: 44, scope: !1097)
!1102 = !DILocalVariable(name: "s", arg: 2, scope: !1097, file: !36, line: 141, type: !38)
!1103 = !DILocation(line: 141, column: 66, scope: !1097)
!1104 = !DILocation(line: 143, column: 47, scope: !1097)
!1105 = !DILocation(line: 143, column: 4, scope: !1097)
!1106 = !DILocation(line: 143, column: 8, scope: !1097)
!1107 = !DILocation(line: 143, column: 39, scope: !1097)
!1108 = !DILocation(line: 143, column: 45, scope: !1097)
!1109 = !DILocation(line: 144, column: 1, scope: !1097)
!1110 = distinct !DISubprogram(name: "set_char_quoting", scope: !36, file: !36, line: 152, type: !1111, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!24, !1070, !8, !24}
!1113 = !DILocalVariable(name: "o", arg: 1, scope: !1110, file: !36, line: 152, type: !1070)
!1114 = !DILocation(line: 152, column: 43, scope: !1110)
!1115 = !DILocalVariable(name: "c", arg: 2, scope: !1110, file: !36, line: 152, type: !8)
!1116 = !DILocation(line: 152, column: 51, scope: !1110)
!1117 = !DILocalVariable(name: "i", arg: 3, scope: !1110, file: !36, line: 152, type: !24)
!1118 = !DILocation(line: 152, column: 58, scope: !1110)
!1119 = !DILocalVariable(name: "uc", scope: !1110, file: !36, line: 154, type: !163)
!1120 = !DILocation(line: 154, column: 17, scope: !1110)
!1121 = !DILocation(line: 154, column: 22, scope: !1110)
!1122 = !DILocalVariable(name: "p", scope: !1110, file: !36, line: 155, type: !1123)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!1124 = !DILocation(line: 155, column: 17, scope: !1110)
!1125 = !DILocation(line: 156, column: 6, scope: !1110)
!1126 = !DILocation(line: 156, column: 10, scope: !1110)
!1127 = !DILocation(line: 156, column: 41, scope: !1110)
!1128 = !DILocation(line: 156, column: 5, scope: !1110)
!1129 = !DILocation(line: 156, column: 59, scope: !1110)
!1130 = !DILocation(line: 156, column: 62, scope: !1110)
!1131 = !DILocation(line: 156, column: 57, scope: !1110)
!1132 = !DILocalVariable(name: "shift", scope: !1110, file: !36, line: 157, type: !24)
!1133 = !DILocation(line: 157, column: 7, scope: !1110)
!1134 = !DILocation(line: 157, column: 15, scope: !1110)
!1135 = !DILocation(line: 157, column: 18, scope: !1110)
!1136 = !DILocalVariable(name: "r", scope: !1110, file: !36, line: 158, type: !24)
!1137 = !DILocation(line: 158, column: 7, scope: !1110)
!1138 = !DILocation(line: 158, column: 13, scope: !1110)
!1139 = !DILocation(line: 158, column: 12, scope: !1110)
!1140 = !DILocation(line: 158, column: 18, scope: !1110)
!1141 = !DILocation(line: 158, column: 15, scope: !1110)
!1142 = !DILocation(line: 158, column: 25, scope: !1110)
!1143 = !DILocation(line: 159, column: 11, scope: !1110)
!1144 = !DILocation(line: 159, column: 13, scope: !1110)
!1145 = !DILocation(line: 159, column: 20, scope: !1110)
!1146 = !DILocation(line: 159, column: 18, scope: !1110)
!1147 = !DILocation(line: 159, column: 26, scope: !1110)
!1148 = !DILocation(line: 159, column: 23, scope: !1110)
!1149 = !DILocation(line: 159, column: 4, scope: !1110)
!1150 = !DILocation(line: 159, column: 6, scope: !1110)
!1151 = !DILocation(line: 160, column: 10, scope: !1110)
!1152 = !DILocation(line: 160, column: 3, scope: !1110)
!1153 = distinct !DISubprogram(name: "set_quoting_flags", scope: !36, file: !36, line: 168, type: !1154, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!24, !1070, !24}
!1156 = !DILocalVariable(name: "o", arg: 1, scope: !1153, file: !36, line: 168, type: !1070)
!1157 = !DILocation(line: 168, column: 44, scope: !1153)
!1158 = !DILocalVariable(name: "i", arg: 2, scope: !1153, file: !36, line: 168, type: !24)
!1159 = !DILocation(line: 168, column: 51, scope: !1153)
!1160 = !DILocalVariable(name: "r", scope: !1153, file: !36, line: 170, type: !24)
!1161 = !DILocation(line: 170, column: 7, scope: !1153)
!1162 = !DILocation(line: 171, column: 8, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1153, file: !36, line: 171, column: 7)
!1164 = !DILocation(line: 171, column: 7, scope: !1153)
!1165 = !DILocation(line: 172, column: 7, scope: !1163)
!1166 = !DILocation(line: 172, column: 5, scope: !1163)
!1167 = !DILocation(line: 173, column: 7, scope: !1153)
!1168 = !DILocation(line: 173, column: 10, scope: !1153)
!1169 = !DILocation(line: 173, column: 5, scope: !1153)
!1170 = !DILocation(line: 174, column: 14, scope: !1153)
!1171 = !DILocation(line: 174, column: 3, scope: !1153)
!1172 = !DILocation(line: 174, column: 6, scope: !1153)
!1173 = !DILocation(line: 174, column: 12, scope: !1153)
!1174 = !DILocation(line: 175, column: 10, scope: !1153)
!1175 = !DILocation(line: 175, column: 3, scope: !1153)
!1176 = distinct !DISubprogram(name: "set_custom_quoting", scope: !36, file: !36, line: 179, type: !1177, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !1070, !6, !6}
!1179 = !DILocalVariable(name: "o", arg: 1, scope: !1176, file: !36, line: 179, type: !1070)
!1180 = !DILocation(line: 179, column: 45, scope: !1176)
!1181 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1176, file: !36, line: 180, type: !6)
!1182 = !DILocation(line: 180, column: 33, scope: !1176)
!1183 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1176, file: !36, line: 180, type: !6)
!1184 = !DILocation(line: 180, column: 57, scope: !1176)
!1185 = !DILocation(line: 182, column: 8, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1176, file: !36, line: 182, column: 7)
!1187 = !DILocation(line: 182, column: 7, scope: !1176)
!1188 = !DILocation(line: 183, column: 7, scope: !1186)
!1189 = !DILocation(line: 183, column: 5, scope: !1186)
!1190 = !DILocation(line: 184, column: 3, scope: !1176)
!1191 = !DILocation(line: 184, column: 6, scope: !1176)
!1192 = !DILocation(line: 184, column: 12, scope: !1176)
!1193 = !DILocation(line: 185, column: 8, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1176, file: !36, line: 185, column: 7)
!1195 = !DILocation(line: 185, column: 19, scope: !1194)
!1196 = !DILocation(line: 185, column: 23, scope: !1194)
!1197 = !DILocation(line: 185, column: 7, scope: !1176)
!1198 = !DILocation(line: 186, column: 5, scope: !1194)
!1199 = !DILocation(line: 187, column: 19, scope: !1176)
!1200 = !DILocation(line: 187, column: 3, scope: !1176)
!1201 = !DILocation(line: 187, column: 6, scope: !1176)
!1202 = !DILocation(line: 187, column: 17, scope: !1176)
!1203 = !DILocation(line: 188, column: 20, scope: !1176)
!1204 = !DILocation(line: 188, column: 3, scope: !1176)
!1205 = !DILocation(line: 188, column: 6, scope: !1176)
!1206 = !DILocation(line: 188, column: 18, scope: !1176)
!1207 = !DILocation(line: 189, column: 1, scope: !1176)
!1208 = distinct !DISubprogram(name: "quotearg_buffer", scope: !36, file: !36, line: 784, type: !1209, scopeLine: 787, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!75, !31, !75, !6, !75, !1089}
!1211 = !DILocalVariable(name: "buffer", arg: 1, scope: !1208, file: !36, line: 784, type: !31)
!1212 = !DILocation(line: 784, column: 24, scope: !1208)
!1213 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1208, file: !36, line: 784, type: !75)
!1214 = !DILocation(line: 784, column: 39, scope: !1208)
!1215 = !DILocalVariable(name: "arg", arg: 3, scope: !1208, file: !36, line: 785, type: !6)
!1216 = !DILocation(line: 785, column: 30, scope: !1208)
!1217 = !DILocalVariable(name: "argsize", arg: 4, scope: !1208, file: !36, line: 785, type: !75)
!1218 = !DILocation(line: 785, column: 42, scope: !1208)
!1219 = !DILocalVariable(name: "o", arg: 5, scope: !1208, file: !36, line: 786, type: !1089)
!1220 = !DILocation(line: 786, column: 48, scope: !1208)
!1221 = !DILocalVariable(name: "p", scope: !1208, file: !36, line: 788, type: !1089)
!1222 = !DILocation(line: 788, column: 33, scope: !1208)
!1223 = !DILocation(line: 788, column: 37, scope: !1208)
!1224 = !DILocation(line: 788, column: 41, scope: !1208)
!1225 = !DILocalVariable(name: "e", scope: !1208, file: !36, line: 789, type: !24)
!1226 = !DILocation(line: 789, column: 7, scope: !1208)
!1227 = !DILocation(line: 789, column: 11, scope: !1208)
!1228 = !DILocalVariable(name: "r", scope: !1208, file: !36, line: 790, type: !75)
!1229 = !DILocation(line: 790, column: 10, scope: !1208)
!1230 = !DILocation(line: 790, column: 40, scope: !1208)
!1231 = !DILocation(line: 790, column: 48, scope: !1208)
!1232 = !DILocation(line: 790, column: 60, scope: !1208)
!1233 = !DILocation(line: 790, column: 65, scope: !1208)
!1234 = !DILocation(line: 791, column: 40, scope: !1208)
!1235 = !DILocation(line: 791, column: 43, scope: !1208)
!1236 = !DILocation(line: 791, column: 50, scope: !1208)
!1237 = !DILocation(line: 791, column: 53, scope: !1208)
!1238 = !DILocation(line: 791, column: 60, scope: !1208)
!1239 = !DILocation(line: 791, column: 63, scope: !1208)
!1240 = !DILocation(line: 792, column: 40, scope: !1208)
!1241 = !DILocation(line: 792, column: 43, scope: !1208)
!1242 = !DILocation(line: 792, column: 55, scope: !1208)
!1243 = !DILocation(line: 792, column: 58, scope: !1208)
!1244 = !DILocation(line: 790, column: 14, scope: !1208)
!1245 = !DILocation(line: 793, column: 11, scope: !1208)
!1246 = !DILocation(line: 793, column: 3, scope: !1208)
!1247 = !DILocation(line: 793, column: 9, scope: !1208)
!1248 = !DILocation(line: 794, column: 10, scope: !1208)
!1249 = !DILocation(line: 794, column: 3, scope: !1208)
!1250 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !36, file: !36, line: 256, type: !1251, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, retainedNodes: !4)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!75, !31, !75, !6, !75, !38, !24, !1253, !6, !6}
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!1255 = !DILocalVariable(name: "buffer", arg: 1, scope: !1250, file: !36, line: 256, type: !31)
!1256 = !DILocation(line: 256, column: 33, scope: !1250)
!1257 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1250, file: !36, line: 256, type: !75)
!1258 = !DILocation(line: 256, column: 48, scope: !1250)
!1259 = !DILocalVariable(name: "arg", arg: 3, scope: !1250, file: !36, line: 257, type: !6)
!1260 = !DILocation(line: 257, column: 39, scope: !1250)
!1261 = !DILocalVariable(name: "argsize", arg: 4, scope: !1250, file: !36, line: 257, type: !75)
!1262 = !DILocation(line: 257, column: 51, scope: !1250)
!1263 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1250, file: !36, line: 258, type: !38)
!1264 = !DILocation(line: 258, column: 46, scope: !1250)
!1265 = !DILocalVariable(name: "flags", arg: 6, scope: !1250, file: !36, line: 258, type: !24)
!1266 = !DILocation(line: 258, column: 65, scope: !1250)
!1267 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1250, file: !36, line: 259, type: !1253)
!1268 = !DILocation(line: 259, column: 47, scope: !1250)
!1269 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1250, file: !36, line: 260, type: !6)
!1270 = !DILocation(line: 260, column: 39, scope: !1250)
!1271 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1250, file: !36, line: 261, type: !6)
!1272 = !DILocation(line: 261, column: 39, scope: !1250)
!1273 = !DILocalVariable(name: "i", scope: !1250, file: !36, line: 263, type: !75)
!1274 = !DILocation(line: 263, column: 10, scope: !1250)
!1275 = !DILocalVariable(name: "len", scope: !1250, file: !36, line: 264, type: !75)
!1276 = !DILocation(line: 264, column: 10, scope: !1250)
!1277 = !DILocalVariable(name: "orig_buffersize", scope: !1250, file: !36, line: 265, type: !75)
!1278 = !DILocation(line: 265, column: 10, scope: !1250)
!1279 = !DILocalVariable(name: "quote_string", scope: !1250, file: !36, line: 266, type: !6)
!1280 = !DILocation(line: 266, column: 15, scope: !1250)
!1281 = !DILocalVariable(name: "quote_string_len", scope: !1250, file: !36, line: 267, type: !75)
!1282 = !DILocation(line: 267, column: 10, scope: !1250)
!1283 = !DILocalVariable(name: "backslash_escapes", scope: !1250, file: !36, line: 268, type: !17)
!1284 = !DILocation(line: 268, column: 8, scope: !1250)
!1285 = !DILocalVariable(name: "unibyte_locale", scope: !1250, file: !36, line: 269, type: !17)
!1286 = !DILocation(line: 269, column: 8, scope: !1250)
!1287 = !DILocation(line: 269, column: 25, scope: !1250)
!1288 = !DILocation(line: 269, column: 36, scope: !1250)
!1289 = !DILocalVariable(name: "elide_outer_quotes", scope: !1250, file: !36, line: 270, type: !17)
!1290 = !DILocation(line: 270, column: 8, scope: !1250)
!1291 = !DILocation(line: 270, column: 30, scope: !1250)
!1292 = !DILocation(line: 270, column: 36, scope: !1250)
!1293 = !DILocation(line: 270, column: 61, scope: !1250)
!1294 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1250, file: !36, line: 271, type: !17)
!1295 = !DILocation(line: 271, column: 8, scope: !1250)
!1296 = !DILocalVariable(name: "encountered_single_quote", scope: !1250, file: !36, line: 272, type: !17)
!1297 = !DILocation(line: 272, column: 8, scope: !1250)
!1298 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1250, file: !36, line: 273, type: !17)
!1299 = !DILocation(line: 273, column: 8, scope: !1250)
!1300 = !DILocation(line: 273, column: 3, scope: !1250)
!1301 = !DILabel(scope: !1250, name: "process_input", file: !36, line: 314)
!1302 = !DILocation(line: 314, column: 2, scope: !1250)
!1303 = !DILocation(line: 316, column: 11, scope: !1250)
!1304 = !DILocation(line: 316, column: 3, scope: !1250)
!1305 = !DILocation(line: 319, column: 21, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1250, file: !36, line: 317, column: 5)
!1307 = !DILocation(line: 320, column: 26, scope: !1306)
!1308 = !DILocation(line: 321, column: 7, scope: !1306)
!1309 = !DILocation(line: 323, column: 12, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1306, file: !36, line: 323, column: 11)
!1311 = !DILocation(line: 323, column: 11, scope: !1306)
!1312 = !DILocation(line: 324, column: 9, scope: !1310)
!1313 = !DILocation(line: 324, column: 9, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !36, line: 324, column: 9)
!1315 = distinct !DILexicalBlock(scope: !1310, file: !36, line: 324, column: 9)
!1316 = !DILocation(line: 324, column: 9, scope: !1315)
!1317 = !DILocation(line: 325, column: 25, scope: !1306)
!1318 = !DILocation(line: 326, column: 20, scope: !1306)
!1319 = !DILocation(line: 327, column: 24, scope: !1306)
!1320 = !DILocation(line: 328, column: 7, scope: !1306)
!1321 = !DILocation(line: 331, column: 25, scope: !1306)
!1322 = !DILocation(line: 332, column: 26, scope: !1306)
!1323 = !DILocation(line: 333, column: 7, scope: !1306)
!1324 = !DILocation(line: 339, column: 13, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !36, line: 339, column: 13)
!1326 = distinct !DILexicalBlock(scope: !1306, file: !36, line: 338, column: 7)
!1327 = !DILocation(line: 339, column: 27, scope: !1325)
!1328 = !DILocation(line: 339, column: 13, scope: !1326)
!1329 = !DILocation(line: 362, column: 50, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1325, file: !36, line: 340, column: 11)
!1331 = !DILocation(line: 362, column: 26, scope: !1330)
!1332 = !DILocation(line: 362, column: 24, scope: !1330)
!1333 = !DILocation(line: 363, column: 51, scope: !1330)
!1334 = !DILocation(line: 363, column: 27, scope: !1330)
!1335 = !DILocation(line: 363, column: 25, scope: !1330)
!1336 = !DILocation(line: 364, column: 11, scope: !1330)
!1337 = !DILocation(line: 365, column: 14, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1326, file: !36, line: 365, column: 13)
!1339 = !DILocation(line: 365, column: 13, scope: !1326)
!1340 = !DILocation(line: 366, column: 31, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1338, file: !36, line: 366, column: 11)
!1342 = !DILocation(line: 366, column: 29, scope: !1341)
!1343 = !DILocation(line: 366, column: 16, scope: !1341)
!1344 = !DILocation(line: 366, column: 44, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1341, file: !36, line: 366, column: 11)
!1346 = !DILocation(line: 366, column: 43, scope: !1345)
!1347 = !DILocation(line: 366, column: 11, scope: !1341)
!1348 = !DILocation(line: 367, column: 13, scope: !1345)
!1349 = !DILocation(line: 367, column: 13, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !36, line: 367, column: 13)
!1351 = distinct !DILexicalBlock(scope: !1345, file: !36, line: 367, column: 13)
!1352 = !DILocation(line: 367, column: 13, scope: !1351)
!1353 = !DILocation(line: 366, column: 70, scope: !1345)
!1354 = !DILocation(line: 366, column: 11, scope: !1345)
!1355 = distinct !{!1355, !1347, !1356, !627}
!1356 = !DILocation(line: 367, column: 13, scope: !1341)
!1357 = !DILocation(line: 368, column: 27, scope: !1326)
!1358 = !DILocation(line: 369, column: 24, scope: !1326)
!1359 = !DILocation(line: 369, column: 22, scope: !1326)
!1360 = !DILocation(line: 370, column: 36, scope: !1326)
!1361 = !DILocation(line: 370, column: 28, scope: !1326)
!1362 = !DILocation(line: 370, column: 26, scope: !1326)
!1363 = !DILocation(line: 372, column: 7, scope: !1306)
!1364 = !DILocation(line: 375, column: 25, scope: !1306)
!1365 = !DILocation(line: 376, column: 7, scope: !1306)
!1366 = !DILocation(line: 378, column: 26, scope: !1306)
!1367 = !DILocation(line: 379, column: 7, scope: !1306)
!1368 = !DILocation(line: 381, column: 12, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1306, file: !36, line: 381, column: 11)
!1370 = !DILocation(line: 381, column: 11, scope: !1306)
!1371 = !DILocation(line: 382, column: 27, scope: !1369)
!1372 = !DILocation(line: 382, column: 9, scope: !1369)
!1373 = !DILocation(line: 383, column: 7, scope: !1306)
!1374 = !DILocation(line: 385, column: 21, scope: !1306)
!1375 = !DILocation(line: 386, column: 12, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1306, file: !36, line: 386, column: 11)
!1377 = !DILocation(line: 386, column: 11, scope: !1306)
!1378 = !DILocation(line: 387, column: 9, scope: !1376)
!1379 = !DILocation(line: 387, column: 9, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !36, line: 387, column: 9)
!1381 = distinct !DILexicalBlock(scope: !1376, file: !36, line: 387, column: 9)
!1382 = !DILocation(line: 387, column: 9, scope: !1381)
!1383 = !DILocation(line: 388, column: 20, scope: !1306)
!1384 = !DILocation(line: 389, column: 24, scope: !1306)
!1385 = !DILocation(line: 390, column: 7, scope: !1306)
!1386 = !DILocation(line: 393, column: 26, scope: !1306)
!1387 = !DILocation(line: 394, column: 7, scope: !1306)
!1388 = !DILocation(line: 397, column: 7, scope: !1306)
!1389 = !DILocation(line: 400, column: 10, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1250, file: !36, line: 400, column: 3)
!1391 = !DILocation(line: 400, column: 8, scope: !1390)
!1392 = !DILocation(line: 400, column: 19, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1390, file: !36, line: 400, column: 3)
!1394 = !DILocation(line: 400, column: 27, scope: !1393)
!1395 = !DILocation(line: 400, column: 41, scope: !1393)
!1396 = !DILocation(line: 400, column: 45, scope: !1393)
!1397 = !DILocation(line: 400, column: 48, scope: !1393)
!1398 = !DILocation(line: 400, column: 58, scope: !1393)
!1399 = !DILocation(line: 400, column: 63, scope: !1393)
!1400 = !DILocation(line: 400, column: 60, scope: !1393)
!1401 = !DILocation(line: 400, column: 16, scope: !1393)
!1402 = !DILocation(line: 400, column: 3, scope: !1390)
!1403 = !DILocalVariable(name: "c", scope: !1404, file: !36, line: 402, type: !163)
!1404 = distinct !DILexicalBlock(scope: !1393, file: !36, line: 401, column: 5)
!1405 = !DILocation(line: 402, column: 21, scope: !1404)
!1406 = !DILocalVariable(name: "esc", scope: !1404, file: !36, line: 403, type: !163)
!1407 = !DILocation(line: 403, column: 21, scope: !1404)
!1408 = !DILocalVariable(name: "is_right_quote", scope: !1404, file: !36, line: 404, type: !17)
!1409 = !DILocation(line: 404, column: 12, scope: !1404)
!1410 = !DILocalVariable(name: "escaping", scope: !1404, file: !36, line: 405, type: !17)
!1411 = !DILocation(line: 405, column: 12, scope: !1404)
!1412 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1404, file: !36, line: 406, type: !17)
!1413 = !DILocation(line: 406, column: 12, scope: !1404)
!1414 = !DILocation(line: 408, column: 11, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1404, file: !36, line: 408, column: 11)
!1416 = !DILocation(line: 409, column: 11, scope: !1415)
!1417 = !DILocation(line: 409, column: 14, scope: !1415)
!1418 = !DILocation(line: 409, column: 28, scope: !1415)
!1419 = !DILocation(line: 410, column: 11, scope: !1415)
!1420 = !DILocation(line: 410, column: 14, scope: !1415)
!1421 = !DILocation(line: 411, column: 11, scope: !1415)
!1422 = !DILocation(line: 411, column: 15, scope: !1415)
!1423 = !DILocation(line: 411, column: 19, scope: !1415)
!1424 = !DILocation(line: 411, column: 17, scope: !1415)
!1425 = !DILocation(line: 412, column: 19, scope: !1415)
!1426 = !DILocation(line: 412, column: 27, scope: !1415)
!1427 = !DILocation(line: 412, column: 39, scope: !1415)
!1428 = !DILocation(line: 412, column: 46, scope: !1415)
!1429 = !DILocation(line: 412, column: 44, scope: !1415)
!1430 = !DILocation(line: 416, column: 40, scope: !1415)
!1431 = !DILocation(line: 416, column: 32, scope: !1415)
!1432 = !DILocation(line: 416, column: 30, scope: !1415)
!1433 = !DILocation(line: 416, column: 48, scope: !1415)
!1434 = !DILocation(line: 412, column: 15, scope: !1415)
!1435 = !DILocation(line: 417, column: 11, scope: !1415)
!1436 = !DILocation(line: 417, column: 22, scope: !1415)
!1437 = !DILocation(line: 417, column: 28, scope: !1415)
!1438 = !DILocation(line: 417, column: 26, scope: !1415)
!1439 = !DILocation(line: 417, column: 31, scope: !1415)
!1440 = !DILocation(line: 417, column: 45, scope: !1415)
!1441 = !DILocation(line: 417, column: 14, scope: !1415)
!1442 = !DILocation(line: 417, column: 63, scope: !1415)
!1443 = !DILocation(line: 408, column: 11, scope: !1404)
!1444 = !DILocation(line: 419, column: 15, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !36, line: 419, column: 15)
!1446 = distinct !DILexicalBlock(scope: !1415, file: !36, line: 418, column: 9)
!1447 = !DILocation(line: 419, column: 15, scope: !1446)
!1448 = !DILocation(line: 420, column: 13, scope: !1445)
!1449 = !DILocation(line: 421, column: 26, scope: !1446)
!1450 = !DILocation(line: 422, column: 9, scope: !1446)
!1451 = !DILocation(line: 424, column: 11, scope: !1404)
!1452 = !DILocation(line: 424, column: 15, scope: !1404)
!1453 = !DILocation(line: 424, column: 9, scope: !1404)
!1454 = !DILocation(line: 425, column: 15, scope: !1404)
!1455 = !DILocation(line: 425, column: 7, scope: !1404)
!1456 = !DILocation(line: 428, column: 15, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !36, line: 428, column: 15)
!1458 = distinct !DILexicalBlock(scope: !1404, file: !36, line: 426, column: 9)
!1459 = !DILocation(line: 428, column: 15, scope: !1458)
!1460 = !DILocation(line: 430, column: 15, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1457, file: !36, line: 429, column: 13)
!1462 = !DILocation(line: 430, column: 15, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !36, line: 430, column: 15)
!1464 = distinct !DILexicalBlock(scope: !1461, file: !36, line: 430, column: 15)
!1465 = !DILocation(line: 430, column: 15, scope: !1464)
!1466 = !DILocation(line: 430, column: 15, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1464, file: !36, line: 430, column: 15)
!1468 = !DILocation(line: 430, column: 15, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1467, file: !36, line: 430, column: 15)
!1470 = !DILocation(line: 430, column: 15, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !36, line: 430, column: 15)
!1472 = distinct !DILexicalBlock(scope: !1469, file: !36, line: 430, column: 15)
!1473 = !DILocation(line: 430, column: 15, scope: !1472)
!1474 = !DILocation(line: 430, column: 15, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !36, line: 430, column: 15)
!1476 = distinct !DILexicalBlock(scope: !1469, file: !36, line: 430, column: 15)
!1477 = !DILocation(line: 430, column: 15, scope: !1476)
!1478 = !DILocation(line: 430, column: 15, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !36, line: 430, column: 15)
!1480 = distinct !DILexicalBlock(scope: !1469, file: !36, line: 430, column: 15)
!1481 = !DILocation(line: 430, column: 15, scope: !1480)
!1482 = !DILocation(line: 430, column: 15, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !36, line: 430, column: 15)
!1484 = distinct !DILexicalBlock(scope: !1464, file: !36, line: 430, column: 15)
!1485 = !DILocation(line: 430, column: 15, scope: !1484)
!1486 = !DILocation(line: 437, column: 19, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1461, file: !36, line: 437, column: 19)
!1488 = !DILocation(line: 437, column: 33, scope: !1487)
!1489 = !DILocation(line: 438, column: 19, scope: !1487)
!1490 = !DILocation(line: 438, column: 22, scope: !1487)
!1491 = !DILocation(line: 438, column: 24, scope: !1487)
!1492 = !DILocation(line: 438, column: 30, scope: !1487)
!1493 = !DILocation(line: 438, column: 28, scope: !1487)
!1494 = !DILocation(line: 438, column: 38, scope: !1487)
!1495 = !DILocation(line: 438, column: 48, scope: !1487)
!1496 = !DILocation(line: 438, column: 52, scope: !1487)
!1497 = !DILocation(line: 438, column: 54, scope: !1487)
!1498 = !DILocation(line: 438, column: 45, scope: !1487)
!1499 = !DILocation(line: 438, column: 59, scope: !1487)
!1500 = !DILocation(line: 438, column: 62, scope: !1487)
!1501 = !DILocation(line: 438, column: 66, scope: !1487)
!1502 = !DILocation(line: 438, column: 68, scope: !1487)
!1503 = !DILocation(line: 438, column: 73, scope: !1487)
!1504 = !DILocation(line: 437, column: 19, scope: !1461)
!1505 = !DILocation(line: 440, column: 19, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1487, file: !36, line: 439, column: 17)
!1507 = !DILocation(line: 440, column: 19, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !36, line: 440, column: 19)
!1509 = distinct !DILexicalBlock(scope: !1506, file: !36, line: 440, column: 19)
!1510 = !DILocation(line: 440, column: 19, scope: !1509)
!1511 = !DILocation(line: 441, column: 19, scope: !1506)
!1512 = !DILocation(line: 441, column: 19, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !36, line: 441, column: 19)
!1514 = distinct !DILexicalBlock(scope: !1506, file: !36, line: 441, column: 19)
!1515 = !DILocation(line: 441, column: 19, scope: !1514)
!1516 = !DILocation(line: 442, column: 17, scope: !1506)
!1517 = !DILocation(line: 443, column: 17, scope: !1461)
!1518 = !DILocation(line: 448, column: 13, scope: !1461)
!1519 = !DILocation(line: 449, column: 20, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1457, file: !36, line: 449, column: 20)
!1521 = !DILocation(line: 449, column: 26, scope: !1520)
!1522 = !DILocation(line: 449, column: 20, scope: !1457)
!1523 = !DILocation(line: 450, column: 13, scope: !1520)
!1524 = !DILocation(line: 451, column: 11, scope: !1458)
!1525 = !DILocation(line: 454, column: 19, scope: !1458)
!1526 = !DILocation(line: 454, column: 11, scope: !1458)
!1527 = !DILocation(line: 457, column: 19, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !36, line: 457, column: 19)
!1529 = distinct !DILexicalBlock(scope: !1458, file: !36, line: 455, column: 13)
!1530 = !DILocation(line: 457, column: 19, scope: !1529)
!1531 = !DILocation(line: 458, column: 17, scope: !1528)
!1532 = !DILocation(line: 459, column: 15, scope: !1529)
!1533 = !DILocation(line: 462, column: 20, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1529, file: !36, line: 462, column: 19)
!1535 = !DILocation(line: 462, column: 26, scope: !1534)
!1536 = !DILocation(line: 463, column: 19, scope: !1534)
!1537 = !DILocation(line: 463, column: 22, scope: !1534)
!1538 = !DILocation(line: 463, column: 24, scope: !1534)
!1539 = !DILocation(line: 463, column: 30, scope: !1534)
!1540 = !DILocation(line: 463, column: 28, scope: !1534)
!1541 = !DILocation(line: 463, column: 38, scope: !1534)
!1542 = !DILocation(line: 463, column: 41, scope: !1534)
!1543 = !DILocation(line: 463, column: 45, scope: !1534)
!1544 = !DILocation(line: 463, column: 47, scope: !1534)
!1545 = !DILocation(line: 463, column: 52, scope: !1534)
!1546 = !DILocation(line: 462, column: 19, scope: !1529)
!1547 = !DILocation(line: 464, column: 25, scope: !1534)
!1548 = !DILocation(line: 464, column: 29, scope: !1534)
!1549 = !DILocation(line: 464, column: 31, scope: !1534)
!1550 = !DILocation(line: 464, column: 17, scope: !1534)
!1551 = !DILocation(line: 471, column: 25, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !36, line: 471, column: 25)
!1553 = distinct !DILexicalBlock(scope: !1534, file: !36, line: 465, column: 19)
!1554 = !DILocation(line: 471, column: 25, scope: !1553)
!1555 = !DILocation(line: 472, column: 23, scope: !1552)
!1556 = !DILocation(line: 473, column: 25, scope: !1553)
!1557 = !DILocation(line: 473, column: 29, scope: !1553)
!1558 = !DILocation(line: 473, column: 31, scope: !1553)
!1559 = !DILocation(line: 473, column: 23, scope: !1553)
!1560 = !DILocation(line: 474, column: 23, scope: !1553)
!1561 = !DILocation(line: 475, column: 21, scope: !1553)
!1562 = !DILocation(line: 475, column: 21, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !36, line: 475, column: 21)
!1564 = distinct !DILexicalBlock(scope: !1553, file: !36, line: 475, column: 21)
!1565 = !DILocation(line: 475, column: 21, scope: !1564)
!1566 = !DILocation(line: 476, column: 21, scope: !1553)
!1567 = !DILocation(line: 476, column: 21, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !36, line: 476, column: 21)
!1569 = distinct !DILexicalBlock(scope: !1553, file: !36, line: 476, column: 21)
!1570 = !DILocation(line: 476, column: 21, scope: !1569)
!1571 = !DILocation(line: 477, column: 21, scope: !1553)
!1572 = !DILocation(line: 477, column: 21, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !36, line: 477, column: 21)
!1574 = distinct !DILexicalBlock(scope: !1553, file: !36, line: 477, column: 21)
!1575 = !DILocation(line: 477, column: 21, scope: !1574)
!1576 = !DILocation(line: 478, column: 21, scope: !1553)
!1577 = !DILocation(line: 478, column: 21, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !36, line: 478, column: 21)
!1579 = distinct !DILexicalBlock(scope: !1553, file: !36, line: 478, column: 21)
!1580 = !DILocation(line: 478, column: 21, scope: !1579)
!1581 = !DILocation(line: 479, column: 21, scope: !1553)
!1582 = !DILocation(line: 482, column: 21, scope: !1553)
!1583 = !DILocation(line: 483, column: 19, scope: !1553)
!1584 = !DILocation(line: 484, column: 15, scope: !1529)
!1585 = !DILocation(line: 487, column: 15, scope: !1529)
!1586 = !DILocation(line: 489, column: 11, scope: !1458)
!1587 = !DILocation(line: 491, column: 24, scope: !1458)
!1588 = !DILocation(line: 491, column: 31, scope: !1458)
!1589 = !DILocation(line: 492, column: 24, scope: !1458)
!1590 = !DILocation(line: 492, column: 31, scope: !1458)
!1591 = !DILocation(line: 493, column: 24, scope: !1458)
!1592 = !DILocation(line: 493, column: 31, scope: !1458)
!1593 = !DILocation(line: 494, column: 24, scope: !1458)
!1594 = !DILocation(line: 494, column: 31, scope: !1458)
!1595 = !DILocation(line: 495, column: 24, scope: !1458)
!1596 = !DILocation(line: 495, column: 31, scope: !1458)
!1597 = !DILocation(line: 496, column: 24, scope: !1458)
!1598 = !DILocation(line: 496, column: 31, scope: !1458)
!1599 = !DILocation(line: 497, column: 24, scope: !1458)
!1600 = !DILocation(line: 497, column: 31, scope: !1458)
!1601 = !DILocation(line: 498, column: 26, scope: !1458)
!1602 = !DILocation(line: 498, column: 24, scope: !1458)
!1603 = !DILocation(line: 500, column: 15, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1458, file: !36, line: 500, column: 15)
!1605 = !DILocation(line: 500, column: 29, scope: !1604)
!1606 = !DILocation(line: 500, column: 15, scope: !1458)
!1607 = !DILocation(line: 502, column: 19, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !36, line: 502, column: 19)
!1609 = distinct !DILexicalBlock(scope: !1604, file: !36, line: 501, column: 13)
!1610 = !DILocation(line: 502, column: 19, scope: !1609)
!1611 = !DILocation(line: 503, column: 17, scope: !1608)
!1612 = !DILocation(line: 504, column: 15, scope: !1609)
!1613 = !DILocation(line: 509, column: 15, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1458, file: !36, line: 509, column: 15)
!1615 = !DILocation(line: 509, column: 33, scope: !1614)
!1616 = !DILocation(line: 509, column: 36, scope: !1614)
!1617 = !DILocation(line: 509, column: 55, scope: !1614)
!1618 = !DILocation(line: 509, column: 58, scope: !1614)
!1619 = !DILocation(line: 509, column: 15, scope: !1458)
!1620 = !DILocation(line: 510, column: 13, scope: !1614)
!1621 = !DILabel(scope: !1458, name: "c_and_shell_escape", file: !36, line: 512)
!1622 = !DILocation(line: 512, column: 9, scope: !1458)
!1623 = !DILocation(line: 513, column: 15, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1458, file: !36, line: 513, column: 15)
!1625 = !DILocation(line: 513, column: 29, scope: !1624)
!1626 = !DILocation(line: 514, column: 15, scope: !1624)
!1627 = !DILocation(line: 514, column: 18, scope: !1624)
!1628 = !DILocation(line: 513, column: 15, scope: !1458)
!1629 = !DILocation(line: 515, column: 13, scope: !1624)
!1630 = !DILabel(scope: !1458, name: "c_escape", file: !36, line: 517)
!1631 = !DILocation(line: 517, column: 9, scope: !1458)
!1632 = !DILocation(line: 518, column: 15, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1458, file: !36, line: 518, column: 15)
!1634 = !DILocation(line: 518, column: 15, scope: !1458)
!1635 = !DILocation(line: 520, column: 19, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1633, file: !36, line: 519, column: 13)
!1637 = !DILocation(line: 520, column: 17, scope: !1636)
!1638 = !DILocation(line: 521, column: 15, scope: !1636)
!1639 = !DILocation(line: 523, column: 11, scope: !1458)
!1640 = !DILocation(line: 526, column: 18, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1458, file: !36, line: 526, column: 15)
!1642 = !DILocation(line: 526, column: 26, scope: !1641)
!1643 = !DILocation(line: 526, column: 15, scope: !1458)
!1644 = !DILocation(line: 526, column: 40, scope: !1641)
!1645 = !DILocation(line: 526, column: 47, scope: !1641)
!1646 = !DILocation(line: 526, column: 57, scope: !1641)
!1647 = !DILocation(line: 526, column: 65, scope: !1641)
!1648 = !DILocation(line: 527, column: 13, scope: !1641)
!1649 = !DILocation(line: 528, column: 11, scope: !1458)
!1650 = !DILocation(line: 530, column: 15, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1458, file: !36, line: 530, column: 15)
!1652 = !DILocation(line: 530, column: 17, scope: !1651)
!1653 = !DILocation(line: 530, column: 15, scope: !1458)
!1654 = !DILocation(line: 531, column: 13, scope: !1651)
!1655 = !DILocation(line: 532, column: 11, scope: !1458)
!1656 = !DILocation(line: 534, column: 36, scope: !1458)
!1657 = !DILocation(line: 535, column: 11, scope: !1458)
!1658 = !DILocation(line: 548, column: 15, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1458, file: !36, line: 548, column: 15)
!1660 = !DILocation(line: 548, column: 29, scope: !1659)
!1661 = !DILocation(line: 549, column: 15, scope: !1659)
!1662 = !DILocation(line: 549, column: 18, scope: !1659)
!1663 = !DILocation(line: 548, column: 15, scope: !1458)
!1664 = !DILocation(line: 550, column: 13, scope: !1659)
!1665 = !DILocation(line: 551, column: 11, scope: !1458)
!1666 = !DILocation(line: 554, column: 36, scope: !1458)
!1667 = !DILocation(line: 555, column: 36, scope: !1458)
!1668 = !DILocation(line: 556, column: 15, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1458, file: !36, line: 556, column: 15)
!1670 = !DILocation(line: 556, column: 29, scope: !1669)
!1671 = !DILocation(line: 556, column: 15, scope: !1458)
!1672 = !DILocation(line: 558, column: 19, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !36, line: 558, column: 19)
!1674 = distinct !DILexicalBlock(scope: !1669, file: !36, line: 557, column: 13)
!1675 = !DILocation(line: 558, column: 19, scope: !1674)
!1676 = !DILocation(line: 559, column: 17, scope: !1673)
!1677 = !DILocation(line: 561, column: 19, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1674, file: !36, line: 561, column: 19)
!1679 = !DILocation(line: 561, column: 30, scope: !1678)
!1680 = !DILocation(line: 561, column: 35, scope: !1678)
!1681 = !DILocation(line: 561, column: 19, scope: !1674)
!1682 = !DILocation(line: 566, column: 37, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1678, file: !36, line: 562, column: 17)
!1684 = !DILocation(line: 566, column: 35, scope: !1683)
!1685 = !DILocation(line: 567, column: 30, scope: !1683)
!1686 = !DILocation(line: 568, column: 17, scope: !1683)
!1687 = !DILocation(line: 570, column: 15, scope: !1674)
!1688 = !DILocation(line: 570, column: 15, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !36, line: 570, column: 15)
!1690 = distinct !DILexicalBlock(scope: !1674, file: !36, line: 570, column: 15)
!1691 = !DILocation(line: 570, column: 15, scope: !1690)
!1692 = !DILocation(line: 571, column: 15, scope: !1674)
!1693 = !DILocation(line: 571, column: 15, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !36, line: 571, column: 15)
!1695 = distinct !DILexicalBlock(scope: !1674, file: !36, line: 571, column: 15)
!1696 = !DILocation(line: 571, column: 15, scope: !1695)
!1697 = !DILocation(line: 572, column: 15, scope: !1674)
!1698 = !DILocation(line: 572, column: 15, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !36, line: 572, column: 15)
!1700 = distinct !DILexicalBlock(scope: !1674, file: !36, line: 572, column: 15)
!1701 = !DILocation(line: 572, column: 15, scope: !1700)
!1702 = !DILocation(line: 573, column: 40, scope: !1674)
!1703 = !DILocation(line: 574, column: 13, scope: !1674)
!1704 = !DILocation(line: 575, column: 11, scope: !1458)
!1705 = !DILocation(line: 599, column: 36, scope: !1458)
!1706 = !DILocation(line: 600, column: 11, scope: !1458)
!1707 = !DILocalVariable(name: "m", scope: !1708, file: !36, line: 610, type: !75)
!1708 = distinct !DILexicalBlock(scope: !1458, file: !36, line: 608, column: 11)
!1709 = !DILocation(line: 610, column: 20, scope: !1708)
!1710 = !DILocalVariable(name: "printable", scope: !1708, file: !36, line: 612, type: !17)
!1711 = !DILocation(line: 612, column: 18, scope: !1708)
!1712 = !DILocation(line: 614, column: 17, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1708, file: !36, line: 614, column: 17)
!1714 = !DILocation(line: 614, column: 17, scope: !1708)
!1715 = !DILocation(line: 616, column: 19, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1713, file: !36, line: 615, column: 15)
!1717 = !DILocation(line: 617, column: 29, scope: !1716)
!1718 = !DILocation(line: 617, column: 41, scope: !1716)
!1719 = !DILocation(line: 617, column: 27, scope: !1716)
!1720 = !DILocation(line: 618, column: 15, scope: !1716)
!1721 = !DILocalVariable(name: "mbstate", scope: !1722, file: !36, line: 621, type: !1723)
!1722 = distinct !DILexicalBlock(scope: !1713, file: !36, line: 620, column: 15)
!1723 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1724, line: 6, baseType: !1725)
!1724 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "")
!1725 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1726, line: 21, baseType: !1727)
!1726 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "")
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1726, line: 13, size: 64, elements: !1728)
!1728 = !{!1729, !1730}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1727, file: !1726, line: 15, baseType: !24, size: 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1727, file: !1726, line: 20, baseType: !1731, size: 32, offset: 32)
!1731 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1727, file: !1726, line: 16, size: 32, elements: !1732)
!1732 = !{!1733, !1734}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1731, file: !1726, line: 18, baseType: !40, size: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1731, file: !1726, line: 19, baseType: !1735, size: 32)
!1735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1736)
!1736 = !{!1737}
!1737 = !DISubrange(count: 4)
!1738 = !DILocation(line: 621, column: 27, scope: !1722)
!1739 = !DILocation(line: 622, column: 17, scope: !1722)
!1740 = !DILocation(line: 624, column: 19, scope: !1722)
!1741 = !DILocation(line: 625, column: 27, scope: !1722)
!1742 = !DILocation(line: 626, column: 21, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1722, file: !36, line: 626, column: 21)
!1744 = !DILocation(line: 626, column: 29, scope: !1743)
!1745 = !DILocation(line: 626, column: 21, scope: !1722)
!1746 = !DILocation(line: 627, column: 37, scope: !1743)
!1747 = !DILocation(line: 627, column: 29, scope: !1743)
!1748 = !DILocation(line: 627, column: 27, scope: !1743)
!1749 = !DILocation(line: 627, column: 19, scope: !1743)
!1750 = !DILocation(line: 629, column: 17, scope: !1722)
!1751 = !DILocalVariable(name: "w", scope: !1752, file: !36, line: 631, type: !1753)
!1752 = distinct !DILexicalBlock(scope: !1722, file: !36, line: 630, column: 19)
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !76, line: 74, baseType: !24)
!1754 = !DILocation(line: 631, column: 29, scope: !1752)
!1755 = !DILocalVariable(name: "bytes", scope: !1752, file: !36, line: 632, type: !75)
!1756 = !DILocation(line: 632, column: 28, scope: !1752)
!1757 = !DILocation(line: 632, column: 50, scope: !1752)
!1758 = !DILocation(line: 632, column: 54, scope: !1752)
!1759 = !DILocation(line: 632, column: 58, scope: !1752)
!1760 = !DILocation(line: 632, column: 56, scope: !1752)
!1761 = !DILocation(line: 633, column: 45, scope: !1752)
!1762 = !DILocation(line: 633, column: 56, scope: !1752)
!1763 = !DILocation(line: 633, column: 60, scope: !1752)
!1764 = !DILocation(line: 633, column: 58, scope: !1752)
!1765 = !DILocation(line: 633, column: 53, scope: !1752)
!1766 = !DILocation(line: 632, column: 36, scope: !1752)
!1767 = !DILocation(line: 634, column: 25, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1752, file: !36, line: 634, column: 25)
!1769 = !DILocation(line: 634, column: 31, scope: !1768)
!1770 = !DILocation(line: 634, column: 25, scope: !1752)
!1771 = !DILocation(line: 635, column: 23, scope: !1768)
!1772 = !DILocation(line: 636, column: 30, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1768, file: !36, line: 636, column: 30)
!1774 = !DILocation(line: 636, column: 36, scope: !1773)
!1775 = !DILocation(line: 636, column: 30, scope: !1768)
!1776 = !DILocation(line: 638, column: 35, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1773, file: !36, line: 637, column: 23)
!1778 = !DILocation(line: 639, column: 25, scope: !1777)
!1779 = !DILocation(line: 641, column: 30, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1773, file: !36, line: 641, column: 30)
!1781 = !DILocation(line: 641, column: 36, scope: !1780)
!1782 = !DILocation(line: 641, column: 30, scope: !1773)
!1783 = !DILocation(line: 643, column: 35, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1780, file: !36, line: 642, column: 23)
!1785 = !DILocation(line: 644, column: 25, scope: !1784)
!1786 = !DILocation(line: 644, column: 32, scope: !1784)
!1787 = !DILocation(line: 644, column: 36, scope: !1784)
!1788 = !DILocation(line: 644, column: 34, scope: !1784)
!1789 = !DILocation(line: 644, column: 40, scope: !1784)
!1790 = !DILocation(line: 644, column: 38, scope: !1784)
!1791 = !DILocation(line: 644, column: 48, scope: !1784)
!1792 = !DILocation(line: 644, column: 51, scope: !1784)
!1793 = !DILocation(line: 644, column: 55, scope: !1784)
!1794 = !DILocation(line: 644, column: 59, scope: !1784)
!1795 = !DILocation(line: 644, column: 57, scope: !1784)
!1796 = !DILocation(line: 0, scope: !1784)
!1797 = !DILocation(line: 645, column: 28, scope: !1784)
!1798 = distinct !{!1798, !1785, !1797, !627}
!1799 = !DILocation(line: 646, column: 25, scope: !1784)
!1800 = !DILocation(line: 654, column: 44, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !36, line: 654, column: 29)
!1802 = distinct !DILexicalBlock(scope: !1780, file: !36, line: 649, column: 23)
!1803 = !DILocation(line: 655, column: 29, scope: !1801)
!1804 = !DILocation(line: 655, column: 32, scope: !1801)
!1805 = !DILocation(line: 655, column: 46, scope: !1801)
!1806 = !DILocation(line: 654, column: 29, scope: !1802)
!1807 = !DILocalVariable(name: "j", scope: !1808, file: !36, line: 657, type: !75)
!1808 = distinct !DILexicalBlock(scope: !1801, file: !36, line: 656, column: 27)
!1809 = !DILocation(line: 657, column: 36, scope: !1808)
!1810 = !DILocation(line: 658, column: 36, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1808, file: !36, line: 658, column: 29)
!1812 = !DILocation(line: 658, column: 34, scope: !1811)
!1813 = !DILocation(line: 658, column: 41, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1811, file: !36, line: 658, column: 29)
!1815 = !DILocation(line: 658, column: 45, scope: !1814)
!1816 = !DILocation(line: 658, column: 43, scope: !1814)
!1817 = !DILocation(line: 658, column: 29, scope: !1811)
!1818 = !DILocation(line: 659, column: 39, scope: !1814)
!1819 = !DILocation(line: 659, column: 43, scope: !1814)
!1820 = !DILocation(line: 659, column: 47, scope: !1814)
!1821 = !DILocation(line: 659, column: 45, scope: !1814)
!1822 = !DILocation(line: 659, column: 51, scope: !1814)
!1823 = !DILocation(line: 659, column: 49, scope: !1814)
!1824 = !DILocation(line: 659, column: 31, scope: !1814)
!1825 = !DILocation(line: 663, column: 35, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1814, file: !36, line: 660, column: 33)
!1827 = !DILocation(line: 666, column: 35, scope: !1826)
!1828 = !DILocation(line: 667, column: 33, scope: !1826)
!1829 = !DILocation(line: 658, column: 53, scope: !1814)
!1830 = !DILocation(line: 658, column: 29, scope: !1814)
!1831 = distinct !{!1831, !1817, !1832, !627}
!1832 = !DILocation(line: 667, column: 33, scope: !1811)
!1833 = !DILocation(line: 668, column: 27, scope: !1808)
!1834 = !DILocation(line: 670, column: 41, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1802, file: !36, line: 670, column: 29)
!1836 = !DILocation(line: 670, column: 31, scope: !1835)
!1837 = !DILocation(line: 670, column: 29, scope: !1802)
!1838 = !DILocation(line: 671, column: 37, scope: !1835)
!1839 = !DILocation(line: 671, column: 27, scope: !1835)
!1840 = !DILocation(line: 672, column: 30, scope: !1802)
!1841 = !DILocation(line: 672, column: 27, scope: !1802)
!1842 = !DILocation(line: 674, column: 19, scope: !1752)
!1843 = !DILocation(line: 675, column: 26, scope: !1722)
!1844 = !DILocation(line: 675, column: 24, scope: !1722)
!1845 = distinct !{!1845, !1750, !1846, !627}
!1846 = !DILocation(line: 675, column: 44, scope: !1722)
!1847 = !DILocation(line: 678, column: 40, scope: !1708)
!1848 = !DILocation(line: 678, column: 38, scope: !1708)
!1849 = !DILocation(line: 680, column: 21, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1708, file: !36, line: 680, column: 17)
!1851 = !DILocation(line: 680, column: 19, scope: !1850)
!1852 = !DILocation(line: 680, column: 23, scope: !1850)
!1853 = !DILocation(line: 680, column: 27, scope: !1850)
!1854 = !DILocation(line: 680, column: 45, scope: !1850)
!1855 = !DILocation(line: 680, column: 50, scope: !1850)
!1856 = !DILocation(line: 680, column: 17, scope: !1708)
!1857 = !DILocalVariable(name: "ilim", scope: !1858, file: !36, line: 684, type: !75)
!1858 = distinct !DILexicalBlock(scope: !1850, file: !36, line: 681, column: 15)
!1859 = !DILocation(line: 684, column: 24, scope: !1858)
!1860 = !DILocation(line: 684, column: 31, scope: !1858)
!1861 = !DILocation(line: 684, column: 35, scope: !1858)
!1862 = !DILocation(line: 684, column: 33, scope: !1858)
!1863 = !DILocation(line: 686, column: 17, scope: !1858)
!1864 = !DILocation(line: 688, column: 25, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !36, line: 688, column: 25)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !36, line: 687, column: 19)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !36, line: 686, column: 17)
!1868 = distinct !DILexicalBlock(scope: !1858, file: !36, line: 686, column: 17)
!1869 = !DILocation(line: 688, column: 43, scope: !1865)
!1870 = !DILocation(line: 688, column: 48, scope: !1865)
!1871 = !DILocation(line: 688, column: 25, scope: !1866)
!1872 = !DILocation(line: 690, column: 25, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1865, file: !36, line: 689, column: 23)
!1874 = !DILocation(line: 690, column: 25, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !36, line: 690, column: 25)
!1876 = distinct !DILexicalBlock(scope: !1873, file: !36, line: 690, column: 25)
!1877 = !DILocation(line: 690, column: 25, scope: !1876)
!1878 = !DILocation(line: 690, column: 25, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1876, file: !36, line: 690, column: 25)
!1880 = !DILocation(line: 690, column: 25, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1879, file: !36, line: 690, column: 25)
!1882 = !DILocation(line: 690, column: 25, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !36, line: 690, column: 25)
!1884 = distinct !DILexicalBlock(scope: !1881, file: !36, line: 690, column: 25)
!1885 = !DILocation(line: 690, column: 25, scope: !1884)
!1886 = !DILocation(line: 690, column: 25, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !36, line: 690, column: 25)
!1888 = distinct !DILexicalBlock(scope: !1881, file: !36, line: 690, column: 25)
!1889 = !DILocation(line: 690, column: 25, scope: !1888)
!1890 = !DILocation(line: 690, column: 25, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !36, line: 690, column: 25)
!1892 = distinct !DILexicalBlock(scope: !1881, file: !36, line: 690, column: 25)
!1893 = !DILocation(line: 690, column: 25, scope: !1892)
!1894 = !DILocation(line: 690, column: 25, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !36, line: 690, column: 25)
!1896 = distinct !DILexicalBlock(scope: !1876, file: !36, line: 690, column: 25)
!1897 = !DILocation(line: 690, column: 25, scope: !1896)
!1898 = !DILocation(line: 691, column: 25, scope: !1873)
!1899 = !DILocation(line: 691, column: 25, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !36, line: 691, column: 25)
!1901 = distinct !DILexicalBlock(scope: !1873, file: !36, line: 691, column: 25)
!1902 = !DILocation(line: 691, column: 25, scope: !1901)
!1903 = !DILocation(line: 692, column: 25, scope: !1873)
!1904 = !DILocation(line: 692, column: 25, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !36, line: 692, column: 25)
!1906 = distinct !DILexicalBlock(scope: !1873, file: !36, line: 692, column: 25)
!1907 = !DILocation(line: 692, column: 25, scope: !1906)
!1908 = !DILocation(line: 693, column: 36, scope: !1873)
!1909 = !DILocation(line: 693, column: 38, scope: !1873)
!1910 = !DILocation(line: 693, column: 33, scope: !1873)
!1911 = !DILocation(line: 693, column: 29, scope: !1873)
!1912 = !DILocation(line: 693, column: 27, scope: !1873)
!1913 = !DILocation(line: 694, column: 23, scope: !1873)
!1914 = !DILocation(line: 695, column: 30, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1865, file: !36, line: 695, column: 30)
!1916 = !DILocation(line: 695, column: 30, scope: !1865)
!1917 = !DILocation(line: 697, column: 25, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1915, file: !36, line: 696, column: 23)
!1919 = !DILocation(line: 697, column: 25, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !36, line: 697, column: 25)
!1921 = distinct !DILexicalBlock(scope: !1918, file: !36, line: 697, column: 25)
!1922 = !DILocation(line: 697, column: 25, scope: !1921)
!1923 = !DILocation(line: 698, column: 40, scope: !1918)
!1924 = !DILocation(line: 699, column: 23, scope: !1918)
!1925 = !DILocation(line: 700, column: 25, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1866, file: !36, line: 700, column: 25)
!1927 = !DILocation(line: 700, column: 33, scope: !1926)
!1928 = !DILocation(line: 700, column: 35, scope: !1926)
!1929 = !DILocation(line: 700, column: 30, scope: !1926)
!1930 = !DILocation(line: 700, column: 25, scope: !1866)
!1931 = !DILocation(line: 701, column: 23, scope: !1926)
!1932 = !DILocation(line: 702, column: 21, scope: !1866)
!1933 = !DILocation(line: 702, column: 21, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !36, line: 702, column: 21)
!1935 = distinct !DILexicalBlock(scope: !1866, file: !36, line: 702, column: 21)
!1936 = !DILocation(line: 702, column: 21, scope: !1935)
!1937 = !DILocation(line: 702, column: 21, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1934, file: !36, line: 702, column: 21)
!1939 = !DILocation(line: 702, column: 21, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !36, line: 702, column: 21)
!1941 = distinct !DILexicalBlock(scope: !1938, file: !36, line: 702, column: 21)
!1942 = !DILocation(line: 702, column: 21, scope: !1941)
!1943 = !DILocation(line: 702, column: 21, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !36, line: 702, column: 21)
!1945 = distinct !DILexicalBlock(scope: !1938, file: !36, line: 702, column: 21)
!1946 = !DILocation(line: 702, column: 21, scope: !1945)
!1947 = !DILocation(line: 703, column: 21, scope: !1866)
!1948 = !DILocation(line: 703, column: 21, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !36, line: 703, column: 21)
!1950 = distinct !DILexicalBlock(scope: !1866, file: !36, line: 703, column: 21)
!1951 = !DILocation(line: 703, column: 21, scope: !1950)
!1952 = !DILocation(line: 704, column: 25, scope: !1866)
!1953 = !DILocation(line: 704, column: 29, scope: !1866)
!1954 = !DILocation(line: 704, column: 23, scope: !1866)
!1955 = !DILocation(line: 686, column: 17, scope: !1867)
!1956 = distinct !{!1956, !1957, !1958}
!1957 = !DILocation(line: 686, column: 17, scope: !1868)
!1958 = !DILocation(line: 705, column: 19, scope: !1868)
!1959 = !DILocation(line: 707, column: 17, scope: !1858)
!1960 = !DILocation(line: 710, column: 9, scope: !1458)
!1961 = !DILocation(line: 712, column: 16, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1404, file: !36, line: 712, column: 11)
!1963 = !DILocation(line: 712, column: 34, scope: !1962)
!1964 = !DILocation(line: 712, column: 37, scope: !1962)
!1965 = !DILocation(line: 712, column: 51, scope: !1962)
!1966 = !DILocation(line: 713, column: 15, scope: !1962)
!1967 = !DILocation(line: 713, column: 18, scope: !1962)
!1968 = !DILocation(line: 714, column: 14, scope: !1962)
!1969 = !DILocation(line: 714, column: 17, scope: !1962)
!1970 = !DILocation(line: 715, column: 14, scope: !1962)
!1971 = !DILocation(line: 715, column: 17, scope: !1962)
!1972 = !DILocation(line: 715, column: 33, scope: !1962)
!1973 = !DILocation(line: 715, column: 35, scope: !1962)
!1974 = !DILocation(line: 715, column: 51, scope: !1962)
!1975 = !DILocation(line: 715, column: 53, scope: !1962)
!1976 = !DILocation(line: 715, column: 47, scope: !1962)
!1977 = !DILocation(line: 715, column: 65, scope: !1962)
!1978 = !DILocation(line: 716, column: 11, scope: !1962)
!1979 = !DILocation(line: 716, column: 15, scope: !1962)
!1980 = !DILocation(line: 712, column: 11, scope: !1404)
!1981 = !DILocation(line: 717, column: 9, scope: !1962)
!1982 = !DILabel(scope: !1404, name: "store_escape", file: !36, line: 719)
!1983 = !DILocation(line: 719, column: 5, scope: !1404)
!1984 = !DILocation(line: 720, column: 7, scope: !1404)
!1985 = !DILocation(line: 720, column: 7, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !36, line: 720, column: 7)
!1987 = distinct !DILexicalBlock(scope: !1404, file: !36, line: 720, column: 7)
!1988 = !DILocation(line: 720, column: 7, scope: !1987)
!1989 = !DILocation(line: 720, column: 7, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1987, file: !36, line: 720, column: 7)
!1991 = !DILocation(line: 720, column: 7, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1990, file: !36, line: 720, column: 7)
!1993 = !DILocation(line: 720, column: 7, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !36, line: 720, column: 7)
!1995 = distinct !DILexicalBlock(scope: !1992, file: !36, line: 720, column: 7)
!1996 = !DILocation(line: 720, column: 7, scope: !1995)
!1997 = !DILocation(line: 720, column: 7, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !36, line: 720, column: 7)
!1999 = distinct !DILexicalBlock(scope: !1992, file: !36, line: 720, column: 7)
!2000 = !DILocation(line: 720, column: 7, scope: !1999)
!2001 = !DILocation(line: 720, column: 7, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !36, line: 720, column: 7)
!2003 = distinct !DILexicalBlock(scope: !1992, file: !36, line: 720, column: 7)
!2004 = !DILocation(line: 720, column: 7, scope: !2003)
!2005 = !DILocation(line: 720, column: 7, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !36, line: 720, column: 7)
!2007 = distinct !DILexicalBlock(scope: !1987, file: !36, line: 720, column: 7)
!2008 = !DILocation(line: 720, column: 7, scope: !2007)
!2009 = !DILabel(scope: !1404, name: "store_c", file: !36, line: 722)
!2010 = !DILocation(line: 722, column: 5, scope: !1404)
!2011 = !DILocation(line: 723, column: 7, scope: !1404)
!2012 = !DILocation(line: 723, column: 7, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !36, line: 723, column: 7)
!2014 = distinct !DILexicalBlock(scope: !1404, file: !36, line: 723, column: 7)
!2015 = !DILocation(line: 723, column: 7, scope: !2014)
!2016 = !DILocation(line: 723, column: 7, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2013, file: !36, line: 723, column: 7)
!2018 = !DILocation(line: 723, column: 7, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !36, line: 723, column: 7)
!2020 = distinct !DILexicalBlock(scope: !2017, file: !36, line: 723, column: 7)
!2021 = !DILocation(line: 723, column: 7, scope: !2020)
!2022 = !DILocation(line: 723, column: 7, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !36, line: 723, column: 7)
!2024 = distinct !DILexicalBlock(scope: !2017, file: !36, line: 723, column: 7)
!2025 = !DILocation(line: 723, column: 7, scope: !2024)
!2026 = !DILocation(line: 724, column: 7, scope: !1404)
!2027 = !DILocation(line: 724, column: 7, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !36, line: 724, column: 7)
!2029 = distinct !DILexicalBlock(scope: !1404, file: !36, line: 724, column: 7)
!2030 = !DILocation(line: 724, column: 7, scope: !2029)
!2031 = !DILocation(line: 726, column: 13, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1404, file: !36, line: 726, column: 11)
!2033 = !DILocation(line: 726, column: 11, scope: !1404)
!2034 = !DILocation(line: 727, column: 38, scope: !2032)
!2035 = !DILocation(line: 727, column: 9, scope: !2032)
!2036 = !DILocation(line: 728, column: 5, scope: !1404)
!2037 = !DILocation(line: 400, column: 75, scope: !1393)
!2038 = !DILocation(line: 400, column: 3, scope: !1393)
!2039 = distinct !{!2039, !1402, !2040, !627}
!2040 = !DILocation(line: 728, column: 5, scope: !1390)
!2041 = !DILocation(line: 730, column: 7, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !1250, file: !36, line: 730, column: 7)
!2043 = !DILocation(line: 730, column: 11, scope: !2042)
!2044 = !DILocation(line: 730, column: 16, scope: !2042)
!2045 = !DILocation(line: 730, column: 19, scope: !2042)
!2046 = !DILocation(line: 730, column: 33, scope: !2042)
!2047 = !DILocation(line: 731, column: 7, scope: !2042)
!2048 = !DILocation(line: 731, column: 10, scope: !2042)
!2049 = !DILocation(line: 730, column: 7, scope: !1250)
!2050 = !DILocation(line: 732, column: 5, scope: !2042)
!2051 = !DILocation(line: 738, column: 7, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !1250, file: !36, line: 738, column: 7)
!2053 = !DILocation(line: 738, column: 21, scope: !2052)
!2054 = !DILocation(line: 738, column: 51, scope: !2052)
!2055 = !DILocation(line: 738, column: 56, scope: !2052)
!2056 = !DILocation(line: 739, column: 7, scope: !2052)
!2057 = !DILocation(line: 739, column: 10, scope: !2052)
!2058 = !DILocation(line: 738, column: 7, scope: !1250)
!2059 = !DILocation(line: 741, column: 11, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !36, line: 741, column: 11)
!2061 = distinct !DILexicalBlock(scope: !2052, file: !36, line: 740, column: 5)
!2062 = !DILocation(line: 741, column: 11, scope: !2061)
!2063 = !DILocation(line: 742, column: 42, scope: !2060)
!2064 = !DILocation(line: 742, column: 50, scope: !2060)
!2065 = !DILocation(line: 742, column: 67, scope: !2060)
!2066 = !DILocation(line: 742, column: 72, scope: !2060)
!2067 = !DILocation(line: 744, column: 42, scope: !2060)
!2068 = !DILocation(line: 744, column: 49, scope: !2060)
!2069 = !DILocation(line: 745, column: 42, scope: !2060)
!2070 = !DILocation(line: 745, column: 54, scope: !2060)
!2071 = !DILocation(line: 742, column: 16, scope: !2060)
!2072 = !DILocation(line: 742, column: 9, scope: !2060)
!2073 = !DILocation(line: 746, column: 18, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2060, file: !36, line: 746, column: 16)
!2075 = !DILocation(line: 746, column: 29, scope: !2074)
!2076 = !DILocation(line: 746, column: 32, scope: !2074)
!2077 = !DILocation(line: 746, column: 16, scope: !2060)
!2078 = !DILocation(line: 749, column: 24, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2074, file: !36, line: 747, column: 9)
!2080 = !DILocation(line: 749, column: 22, scope: !2079)
!2081 = !DILocation(line: 750, column: 15, scope: !2079)
!2082 = !DILocation(line: 751, column: 11, scope: !2079)
!2083 = !DILocation(line: 753, column: 5, scope: !2061)
!2084 = !DILocation(line: 755, column: 7, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !1250, file: !36, line: 755, column: 7)
!2086 = !DILocation(line: 755, column: 20, scope: !2085)
!2087 = !DILocation(line: 755, column: 24, scope: !2085)
!2088 = !DILocation(line: 755, column: 7, scope: !1250)
!2089 = !DILocation(line: 756, column: 5, scope: !2085)
!2090 = !DILocation(line: 756, column: 13, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !36, line: 756, column: 5)
!2092 = distinct !DILexicalBlock(scope: !2085, file: !36, line: 756, column: 5)
!2093 = !DILocation(line: 756, column: 12, scope: !2091)
!2094 = !DILocation(line: 756, column: 5, scope: !2092)
!2095 = !DILocation(line: 757, column: 7, scope: !2091)
!2096 = !DILocation(line: 757, column: 7, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !36, line: 757, column: 7)
!2098 = distinct !DILexicalBlock(scope: !2091, file: !36, line: 757, column: 7)
!2099 = !DILocation(line: 757, column: 7, scope: !2098)
!2100 = !DILocation(line: 756, column: 39, scope: !2091)
!2101 = !DILocation(line: 756, column: 5, scope: !2091)
!2102 = distinct !{!2102, !2094, !2103, !627}
!2103 = !DILocation(line: 757, column: 7, scope: !2092)
!2104 = !DILocation(line: 759, column: 7, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !1250, file: !36, line: 759, column: 7)
!2106 = !DILocation(line: 759, column: 13, scope: !2105)
!2107 = !DILocation(line: 759, column: 11, scope: !2105)
!2108 = !DILocation(line: 759, column: 7, scope: !1250)
!2109 = !DILocation(line: 760, column: 5, scope: !2105)
!2110 = !DILocation(line: 760, column: 12, scope: !2105)
!2111 = !DILocation(line: 760, column: 17, scope: !2105)
!2112 = !DILocation(line: 761, column: 10, scope: !1250)
!2113 = !DILocation(line: 761, column: 3, scope: !1250)
!2114 = !DILabel(scope: !1250, name: "force_outer_quoting_style", file: !36, line: 763)
!2115 = !DILocation(line: 763, column: 2, scope: !1250)
!2116 = !DILocation(line: 766, column: 7, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !1250, file: !36, line: 766, column: 7)
!2118 = !DILocation(line: 766, column: 21, scope: !2117)
!2119 = !DILocation(line: 766, column: 51, scope: !2117)
!2120 = !DILocation(line: 766, column: 54, scope: !2117)
!2121 = !DILocation(line: 766, column: 7, scope: !1250)
!2122 = !DILocation(line: 767, column: 19, scope: !2117)
!2123 = !DILocation(line: 767, column: 5, scope: !2117)
!2124 = !DILocation(line: 768, column: 36, scope: !1250)
!2125 = !DILocation(line: 768, column: 44, scope: !1250)
!2126 = !DILocation(line: 768, column: 56, scope: !1250)
!2127 = !DILocation(line: 768, column: 61, scope: !1250)
!2128 = !DILocation(line: 769, column: 36, scope: !1250)
!2129 = !DILocation(line: 770, column: 36, scope: !1250)
!2130 = !DILocation(line: 770, column: 42, scope: !1250)
!2131 = !DILocation(line: 771, column: 36, scope: !1250)
!2132 = !DILocation(line: 771, column: 48, scope: !1250)
!2133 = !DILocation(line: 768, column: 10, scope: !1250)
!2134 = !DILocation(line: 768, column: 3, scope: !1250)
!2135 = !DILocation(line: 772, column: 1, scope: !1250)
!2136 = distinct !DISubprogram(name: "gettext_quote", scope: !36, file: !36, line: 207, type: !2137, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, retainedNodes: !4)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!6, !6, !38}
!2139 = !DILocalVariable(name: "msgid", arg: 1, scope: !2136, file: !36, line: 207, type: !6)
!2140 = !DILocation(line: 207, column: 28, scope: !2136)
!2141 = !DILocalVariable(name: "s", arg: 2, scope: !2136, file: !36, line: 207, type: !38)
!2142 = !DILocation(line: 207, column: 54, scope: !2136)
!2143 = !DILocalVariable(name: "translation", scope: !2136, file: !36, line: 209, type: !6)
!2144 = !DILocation(line: 209, column: 15, scope: !2136)
!2145 = !DILocation(line: 209, column: 29, scope: !2136)
!2146 = !DILocalVariable(name: "locale_code", scope: !2136, file: !36, line: 210, type: !6)
!2147 = !DILocation(line: 210, column: 15, scope: !2136)
!2148 = !DILocation(line: 212, column: 7, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2136, file: !36, line: 212, column: 7)
!2150 = !DILocation(line: 212, column: 22, scope: !2149)
!2151 = !DILocation(line: 212, column: 19, scope: !2149)
!2152 = !DILocation(line: 212, column: 7, scope: !2136)
!2153 = !DILocation(line: 213, column: 12, scope: !2149)
!2154 = !DILocation(line: 213, column: 5, scope: !2149)
!2155 = !DILocation(line: 233, column: 17, scope: !2136)
!2156 = !DILocation(line: 233, column: 15, scope: !2136)
!2157 = !DILocation(line: 234, column: 7, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2136, file: !36, line: 234, column: 7)
!2159 = !DILocation(line: 234, column: 7, scope: !2136)
!2160 = !DILocation(line: 235, column: 12, scope: !2158)
!2161 = !DILocation(line: 235, column: 21, scope: !2158)
!2162 = !DILocation(line: 235, column: 5, scope: !2158)
!2163 = !DILocation(line: 236, column: 7, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2136, file: !36, line: 236, column: 7)
!2165 = !DILocation(line: 236, column: 7, scope: !2136)
!2166 = !DILocation(line: 237, column: 12, scope: !2164)
!2167 = !DILocation(line: 237, column: 21, scope: !2164)
!2168 = !DILocation(line: 237, column: 5, scope: !2164)
!2169 = !DILocation(line: 239, column: 11, scope: !2136)
!2170 = !DILocation(line: 239, column: 13, scope: !2136)
!2171 = !DILocation(line: 239, column: 3, scope: !2136)
!2172 = !DILocation(line: 240, column: 1, scope: !2136)
!2173 = distinct !DISubprogram(name: "quotearg_alloc", scope: !36, file: !36, line: 799, type: !2174, scopeLine: 801, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!31, !6, !75, !1089}
!2176 = !DILocalVariable(name: "arg", arg: 1, scope: !2173, file: !36, line: 799, type: !6)
!2177 = !DILocation(line: 799, column: 29, scope: !2173)
!2178 = !DILocalVariable(name: "argsize", arg: 2, scope: !2173, file: !36, line: 799, type: !75)
!2179 = !DILocation(line: 799, column: 41, scope: !2173)
!2180 = !DILocalVariable(name: "o", arg: 3, scope: !2173, file: !36, line: 800, type: !1089)
!2181 = !DILocation(line: 800, column: 47, scope: !2173)
!2182 = !DILocation(line: 802, column: 30, scope: !2173)
!2183 = !DILocation(line: 802, column: 35, scope: !2173)
!2184 = !DILocation(line: 802, column: 50, scope: !2173)
!2185 = !DILocation(line: 802, column: 10, scope: !2173)
!2186 = !DILocation(line: 802, column: 3, scope: !2173)
!2187 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !36, file: !36, line: 812, type: !2188, scopeLine: 814, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!31, !6, !75, !149, !1089}
!2190 = !DILocalVariable(name: "arg", arg: 1, scope: !2187, file: !36, line: 812, type: !6)
!2191 = !DILocation(line: 812, column: 33, scope: !2187)
!2192 = !DILocalVariable(name: "argsize", arg: 2, scope: !2187, file: !36, line: 812, type: !75)
!2193 = !DILocation(line: 812, column: 45, scope: !2187)
!2194 = !DILocalVariable(name: "size", arg: 3, scope: !2187, file: !36, line: 812, type: !149)
!2195 = !DILocation(line: 812, column: 62, scope: !2187)
!2196 = !DILocalVariable(name: "o", arg: 4, scope: !2187, file: !36, line: 813, type: !1089)
!2197 = !DILocation(line: 813, column: 51, scope: !2187)
!2198 = !DILocalVariable(name: "p", scope: !2187, file: !36, line: 815, type: !1089)
!2199 = !DILocation(line: 815, column: 33, scope: !2187)
!2200 = !DILocation(line: 815, column: 37, scope: !2187)
!2201 = !DILocation(line: 815, column: 41, scope: !2187)
!2202 = !DILocalVariable(name: "e", scope: !2187, file: !36, line: 816, type: !24)
!2203 = !DILocation(line: 816, column: 7, scope: !2187)
!2204 = !DILocation(line: 816, column: 11, scope: !2187)
!2205 = !DILocalVariable(name: "flags", scope: !2187, file: !36, line: 818, type: !24)
!2206 = !DILocation(line: 818, column: 7, scope: !2187)
!2207 = !DILocation(line: 818, column: 15, scope: !2187)
!2208 = !DILocation(line: 818, column: 18, scope: !2187)
!2209 = !DILocation(line: 818, column: 27, scope: !2187)
!2210 = !DILocation(line: 818, column: 24, scope: !2187)
!2211 = !DILocalVariable(name: "bufsize", scope: !2187, file: !36, line: 819, type: !75)
!2212 = !DILocation(line: 819, column: 10, scope: !2187)
!2213 = !DILocation(line: 819, column: 52, scope: !2187)
!2214 = !DILocation(line: 819, column: 57, scope: !2187)
!2215 = !DILocation(line: 819, column: 66, scope: !2187)
!2216 = !DILocation(line: 819, column: 69, scope: !2187)
!2217 = !DILocation(line: 820, column: 46, scope: !2187)
!2218 = !DILocation(line: 820, column: 53, scope: !2187)
!2219 = !DILocation(line: 820, column: 56, scope: !2187)
!2220 = !DILocation(line: 821, column: 46, scope: !2187)
!2221 = !DILocation(line: 821, column: 49, scope: !2187)
!2222 = !DILocation(line: 822, column: 46, scope: !2187)
!2223 = !DILocation(line: 822, column: 49, scope: !2187)
!2224 = !DILocation(line: 819, column: 20, scope: !2187)
!2225 = !DILocation(line: 822, column: 62, scope: !2187)
!2226 = !DILocalVariable(name: "buf", scope: !2187, file: !36, line: 823, type: !31)
!2227 = !DILocation(line: 823, column: 9, scope: !2187)
!2228 = !DILocation(line: 823, column: 27, scope: !2187)
!2229 = !DILocation(line: 823, column: 15, scope: !2187)
!2230 = !DILocation(line: 824, column: 29, scope: !2187)
!2231 = !DILocation(line: 824, column: 34, scope: !2187)
!2232 = !DILocation(line: 824, column: 43, scope: !2187)
!2233 = !DILocation(line: 824, column: 48, scope: !2187)
!2234 = !DILocation(line: 824, column: 57, scope: !2187)
!2235 = !DILocation(line: 824, column: 60, scope: !2187)
!2236 = !DILocation(line: 824, column: 67, scope: !2187)
!2237 = !DILocation(line: 825, column: 29, scope: !2187)
!2238 = !DILocation(line: 825, column: 32, scope: !2187)
!2239 = !DILocation(line: 826, column: 29, scope: !2187)
!2240 = !DILocation(line: 826, column: 32, scope: !2187)
!2241 = !DILocation(line: 826, column: 44, scope: !2187)
!2242 = !DILocation(line: 826, column: 47, scope: !2187)
!2243 = !DILocation(line: 824, column: 3, scope: !2187)
!2244 = !DILocation(line: 827, column: 11, scope: !2187)
!2245 = !DILocation(line: 827, column: 3, scope: !2187)
!2246 = !DILocation(line: 827, column: 9, scope: !2187)
!2247 = !DILocation(line: 828, column: 7, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2187, file: !36, line: 828, column: 7)
!2249 = !DILocation(line: 828, column: 7, scope: !2187)
!2250 = !DILocation(line: 829, column: 13, scope: !2248)
!2251 = !DILocation(line: 829, column: 21, scope: !2248)
!2252 = !DILocation(line: 829, column: 6, scope: !2248)
!2253 = !DILocation(line: 829, column: 11, scope: !2248)
!2254 = !DILocation(line: 829, column: 5, scope: !2248)
!2255 = !DILocation(line: 830, column: 10, scope: !2187)
!2256 = !DILocation(line: 830, column: 3, scope: !2187)
!2257 = distinct !DISubprogram(name: "quotearg_free", scope: !36, file: !36, line: 848, type: !657, scopeLine: 849, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!2258 = !DILocalVariable(name: "sv", scope: !2257, file: !36, line: 850, type: !106)
!2259 = !DILocation(line: 850, column: 19, scope: !2257)
!2260 = !DILocation(line: 850, column: 24, scope: !2257)
!2261 = !DILocalVariable(name: "i", scope: !2257, file: !36, line: 851, type: !24)
!2262 = !DILocation(line: 851, column: 7, scope: !2257)
!2263 = !DILocation(line: 852, column: 10, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2257, file: !36, line: 852, column: 3)
!2265 = !DILocation(line: 852, column: 8, scope: !2264)
!2266 = !DILocation(line: 852, column: 15, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2264, file: !36, line: 852, column: 3)
!2268 = !DILocation(line: 852, column: 19, scope: !2267)
!2269 = !DILocation(line: 852, column: 17, scope: !2267)
!2270 = !DILocation(line: 852, column: 3, scope: !2264)
!2271 = !DILocation(line: 853, column: 11, scope: !2267)
!2272 = !DILocation(line: 853, column: 14, scope: !2267)
!2273 = !DILocation(line: 853, column: 17, scope: !2267)
!2274 = !DILocation(line: 853, column: 5, scope: !2267)
!2275 = !DILocation(line: 852, column: 28, scope: !2267)
!2276 = !DILocation(line: 852, column: 3, scope: !2267)
!2277 = distinct !{!2277, !2270, !2278, !627}
!2278 = !DILocation(line: 853, column: 20, scope: !2264)
!2279 = !DILocation(line: 854, column: 7, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2257, file: !36, line: 854, column: 7)
!2281 = !DILocation(line: 854, column: 13, scope: !2280)
!2282 = !DILocation(line: 854, column: 17, scope: !2280)
!2283 = !DILocation(line: 854, column: 7, scope: !2257)
!2284 = !DILocation(line: 856, column: 13, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2280, file: !36, line: 855, column: 5)
!2286 = !DILocation(line: 856, column: 19, scope: !2285)
!2287 = !DILocation(line: 856, column: 7, scope: !2285)
!2288 = !DILocation(line: 857, column: 21, scope: !2285)
!2289 = !DILocation(line: 858, column: 20, scope: !2285)
!2290 = !DILocation(line: 859, column: 5, scope: !2285)
!2291 = !DILocation(line: 860, column: 7, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2257, file: !36, line: 860, column: 7)
!2293 = !DILocation(line: 860, column: 10, scope: !2292)
!2294 = !DILocation(line: 860, column: 7, scope: !2257)
!2295 = !DILocation(line: 862, column: 13, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2292, file: !36, line: 861, column: 5)
!2297 = !DILocation(line: 862, column: 7, scope: !2296)
!2298 = !DILocation(line: 863, column: 15, scope: !2296)
!2299 = !DILocation(line: 864, column: 5, scope: !2296)
!2300 = !DILocation(line: 865, column: 10, scope: !2257)
!2301 = !DILocation(line: 866, column: 1, scope: !2257)
!2302 = distinct !DISubprogram(name: "quotearg_n", scope: !36, file: !36, line: 931, type: !2303, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!31, !24, !6}
!2305 = !DILocalVariable(name: "n", arg: 1, scope: !2302, file: !36, line: 931, type: !24)
!2306 = !DILocation(line: 931, column: 17, scope: !2302)
!2307 = !DILocalVariable(name: "arg", arg: 2, scope: !2302, file: !36, line: 931, type: !6)
!2308 = !DILocation(line: 931, column: 32, scope: !2302)
!2309 = !DILocation(line: 933, column: 30, scope: !2302)
!2310 = !DILocation(line: 933, column: 33, scope: !2302)
!2311 = !DILocation(line: 933, column: 10, scope: !2302)
!2312 = !DILocation(line: 933, column: 3, scope: !2302)
!2313 = distinct !DISubprogram(name: "quotearg_n_options", scope: !36, file: !36, line: 877, type: !2314, scopeLine: 879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, retainedNodes: !4)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!31, !24, !6, !75, !1089}
!2316 = !DILocalVariable(name: "n", arg: 1, scope: !2313, file: !36, line: 877, type: !24)
!2317 = !DILocation(line: 877, column: 25, scope: !2313)
!2318 = !DILocalVariable(name: "arg", arg: 2, scope: !2313, file: !36, line: 877, type: !6)
!2319 = !DILocation(line: 877, column: 40, scope: !2313)
!2320 = !DILocalVariable(name: "argsize", arg: 3, scope: !2313, file: !36, line: 877, type: !75)
!2321 = !DILocation(line: 877, column: 52, scope: !2313)
!2322 = !DILocalVariable(name: "options", arg: 4, scope: !2313, file: !36, line: 878, type: !1089)
!2323 = !DILocation(line: 878, column: 51, scope: !2313)
!2324 = !DILocalVariable(name: "e", scope: !2313, file: !36, line: 880, type: !24)
!2325 = !DILocation(line: 880, column: 7, scope: !2313)
!2326 = !DILocation(line: 880, column: 11, scope: !2313)
!2327 = !DILocalVariable(name: "sv", scope: !2313, file: !36, line: 882, type: !106)
!2328 = !DILocation(line: 882, column: 19, scope: !2313)
!2329 = !DILocation(line: 882, column: 24, scope: !2313)
!2330 = !DILocation(line: 884, column: 7, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2313, file: !36, line: 884, column: 7)
!2332 = !DILocation(line: 884, column: 9, scope: !2331)
!2333 = !DILocation(line: 884, column: 7, scope: !2313)
!2334 = !DILocation(line: 885, column: 5, scope: !2331)
!2335 = !DILocation(line: 887, column: 7, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2313, file: !36, line: 887, column: 7)
!2337 = !DILocation(line: 887, column: 17, scope: !2336)
!2338 = !DILocation(line: 887, column: 14, scope: !2336)
!2339 = !DILocation(line: 887, column: 7, scope: !2313)
!2340 = !DILocalVariable(name: "preallocated", scope: !2341, file: !36, line: 889, type: !17)
!2341 = distinct !DILexicalBlock(scope: !2336, file: !36, line: 888, column: 5)
!2342 = !DILocation(line: 889, column: 12, scope: !2341)
!2343 = !DILocation(line: 889, column: 28, scope: !2341)
!2344 = !DILocation(line: 889, column: 31, scope: !2341)
!2345 = !DILocalVariable(name: "nmax", scope: !2341, file: !36, line: 890, type: !24)
!2346 = !DILocation(line: 890, column: 11, scope: !2341)
!2347 = !DILocation(line: 892, column: 11, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2341, file: !36, line: 892, column: 11)
!2349 = !DILocation(line: 892, column: 18, scope: !2348)
!2350 = !DILocation(line: 892, column: 16, scope: !2348)
!2351 = !DILocation(line: 892, column: 11, scope: !2341)
!2352 = !DILocation(line: 893, column: 9, scope: !2348)
!2353 = !DILocation(line: 895, column: 32, scope: !2341)
!2354 = !DILocation(line: 895, column: 54, scope: !2341)
!2355 = !DILocation(line: 895, column: 59, scope: !2341)
!2356 = !DILocation(line: 895, column: 61, scope: !2341)
!2357 = !DILocation(line: 895, column: 58, scope: !2341)
!2358 = !DILocation(line: 895, column: 66, scope: !2341)
!2359 = !DILocation(line: 895, column: 22, scope: !2341)
!2360 = !DILocation(line: 895, column: 20, scope: !2341)
!2361 = !DILocation(line: 895, column: 15, scope: !2341)
!2362 = !DILocation(line: 896, column: 11, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2341, file: !36, line: 896, column: 11)
!2364 = !DILocation(line: 896, column: 11, scope: !2341)
!2365 = !DILocation(line: 897, column: 10, scope: !2363)
!2366 = !DILocation(line: 897, column: 15, scope: !2363)
!2367 = !DILocation(line: 897, column: 9, scope: !2363)
!2368 = !DILocation(line: 898, column: 15, scope: !2341)
!2369 = !DILocation(line: 898, column: 20, scope: !2341)
!2370 = !DILocation(line: 898, column: 18, scope: !2341)
!2371 = !DILocation(line: 898, column: 7, scope: !2341)
!2372 = !DILocation(line: 898, column: 32, scope: !2341)
!2373 = !DILocation(line: 898, column: 34, scope: !2341)
!2374 = !DILocation(line: 898, column: 40, scope: !2341)
!2375 = !DILocation(line: 898, column: 38, scope: !2341)
!2376 = !DILocation(line: 898, column: 31, scope: !2341)
!2377 = !DILocation(line: 898, column: 48, scope: !2341)
!2378 = !DILocation(line: 899, column: 16, scope: !2341)
!2379 = !DILocation(line: 899, column: 18, scope: !2341)
!2380 = !DILocation(line: 899, column: 14, scope: !2341)
!2381 = !DILocation(line: 900, column: 5, scope: !2341)
!2382 = !DILocalVariable(name: "size", scope: !2383, file: !36, line: 903, type: !75)
!2383 = distinct !DILexicalBlock(scope: !2313, file: !36, line: 902, column: 3)
!2384 = !DILocation(line: 903, column: 12, scope: !2383)
!2385 = !DILocation(line: 903, column: 19, scope: !2383)
!2386 = !DILocation(line: 903, column: 22, scope: !2383)
!2387 = !DILocation(line: 903, column: 25, scope: !2383)
!2388 = !DILocalVariable(name: "val", scope: !2383, file: !36, line: 904, type: !31)
!2389 = !DILocation(line: 904, column: 11, scope: !2383)
!2390 = !DILocation(line: 904, column: 17, scope: !2383)
!2391 = !DILocation(line: 904, column: 20, scope: !2383)
!2392 = !DILocation(line: 904, column: 23, scope: !2383)
!2393 = !DILocalVariable(name: "flags", scope: !2383, file: !36, line: 906, type: !24)
!2394 = !DILocation(line: 906, column: 9, scope: !2383)
!2395 = !DILocation(line: 906, column: 17, scope: !2383)
!2396 = !DILocation(line: 906, column: 26, scope: !2383)
!2397 = !DILocation(line: 906, column: 32, scope: !2383)
!2398 = !DILocalVariable(name: "qsize", scope: !2383, file: !36, line: 907, type: !75)
!2399 = !DILocation(line: 907, column: 12, scope: !2383)
!2400 = !DILocation(line: 907, column: 46, scope: !2383)
!2401 = !DILocation(line: 907, column: 51, scope: !2383)
!2402 = !DILocation(line: 907, column: 57, scope: !2383)
!2403 = !DILocation(line: 907, column: 62, scope: !2383)
!2404 = !DILocation(line: 908, column: 46, scope: !2383)
!2405 = !DILocation(line: 908, column: 55, scope: !2383)
!2406 = !DILocation(line: 908, column: 62, scope: !2383)
!2407 = !DILocation(line: 909, column: 46, scope: !2383)
!2408 = !DILocation(line: 909, column: 55, scope: !2383)
!2409 = !DILocation(line: 910, column: 46, scope: !2383)
!2410 = !DILocation(line: 910, column: 55, scope: !2383)
!2411 = !DILocation(line: 911, column: 46, scope: !2383)
!2412 = !DILocation(line: 911, column: 55, scope: !2383)
!2413 = !DILocation(line: 907, column: 20, scope: !2383)
!2414 = !DILocation(line: 913, column: 9, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2383, file: !36, line: 913, column: 9)
!2416 = !DILocation(line: 913, column: 17, scope: !2415)
!2417 = !DILocation(line: 913, column: 14, scope: !2415)
!2418 = !DILocation(line: 913, column: 9, scope: !2383)
!2419 = !DILocation(line: 915, column: 29, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2415, file: !36, line: 914, column: 7)
!2421 = !DILocation(line: 915, column: 35, scope: !2420)
!2422 = !DILocation(line: 915, column: 27, scope: !2420)
!2423 = !DILocation(line: 915, column: 9, scope: !2420)
!2424 = !DILocation(line: 915, column: 12, scope: !2420)
!2425 = !DILocation(line: 915, column: 15, scope: !2420)
!2426 = !DILocation(line: 915, column: 20, scope: !2420)
!2427 = !DILocation(line: 916, column: 13, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2420, file: !36, line: 916, column: 13)
!2429 = !DILocation(line: 916, column: 17, scope: !2428)
!2430 = !DILocation(line: 916, column: 13, scope: !2420)
!2431 = !DILocation(line: 917, column: 17, scope: !2428)
!2432 = !DILocation(line: 917, column: 11, scope: !2428)
!2433 = !DILocation(line: 918, column: 39, scope: !2420)
!2434 = !DILocation(line: 918, column: 27, scope: !2420)
!2435 = !DILocation(line: 918, column: 25, scope: !2420)
!2436 = !DILocation(line: 918, column: 9, scope: !2420)
!2437 = !DILocation(line: 918, column: 12, scope: !2420)
!2438 = !DILocation(line: 918, column: 15, scope: !2420)
!2439 = !DILocation(line: 918, column: 19, scope: !2420)
!2440 = !DILocation(line: 919, column: 35, scope: !2420)
!2441 = !DILocation(line: 919, column: 40, scope: !2420)
!2442 = !DILocation(line: 919, column: 46, scope: !2420)
!2443 = !DILocation(line: 919, column: 51, scope: !2420)
!2444 = !DILocation(line: 919, column: 60, scope: !2420)
!2445 = !DILocation(line: 919, column: 69, scope: !2420)
!2446 = !DILocation(line: 920, column: 35, scope: !2420)
!2447 = !DILocation(line: 920, column: 42, scope: !2420)
!2448 = !DILocation(line: 920, column: 51, scope: !2420)
!2449 = !DILocation(line: 921, column: 35, scope: !2420)
!2450 = !DILocation(line: 921, column: 44, scope: !2420)
!2451 = !DILocation(line: 922, column: 35, scope: !2420)
!2452 = !DILocation(line: 922, column: 44, scope: !2420)
!2453 = !DILocation(line: 919, column: 9, scope: !2420)
!2454 = !DILocation(line: 923, column: 7, scope: !2420)
!2455 = !DILocation(line: 925, column: 13, scope: !2383)
!2456 = !DILocation(line: 925, column: 5, scope: !2383)
!2457 = !DILocation(line: 925, column: 11, scope: !2383)
!2458 = !DILocation(line: 926, column: 12, scope: !2383)
!2459 = !DILocation(line: 926, column: 5, scope: !2383)
!2460 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !36, file: !36, line: 937, type: !2461, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!31, !24, !6, !75}
!2463 = !DILocalVariable(name: "n", arg: 1, scope: !2460, file: !36, line: 937, type: !24)
!2464 = !DILocation(line: 937, column: 21, scope: !2460)
!2465 = !DILocalVariable(name: "arg", arg: 2, scope: !2460, file: !36, line: 937, type: !6)
!2466 = !DILocation(line: 937, column: 36, scope: !2460)
!2467 = !DILocalVariable(name: "argsize", arg: 3, scope: !2460, file: !36, line: 937, type: !75)
!2468 = !DILocation(line: 937, column: 48, scope: !2460)
!2469 = !DILocation(line: 939, column: 30, scope: !2460)
!2470 = !DILocation(line: 939, column: 33, scope: !2460)
!2471 = !DILocation(line: 939, column: 38, scope: !2460)
!2472 = !DILocation(line: 939, column: 10, scope: !2460)
!2473 = !DILocation(line: 939, column: 3, scope: !2460)
!2474 = distinct !DISubprogram(name: "quotearg", scope: !36, file: !36, line: 943, type: !2475, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!31, !6}
!2477 = !DILocalVariable(name: "arg", arg: 1, scope: !2474, file: !36, line: 943, type: !6)
!2478 = !DILocation(line: 943, column: 23, scope: !2474)
!2479 = !DILocation(line: 945, column: 25, scope: !2474)
!2480 = !DILocation(line: 945, column: 10, scope: !2474)
!2481 = !DILocation(line: 945, column: 3, scope: !2474)
!2482 = distinct !DISubprogram(name: "quotearg_mem", scope: !36, file: !36, line: 949, type: !2483, scopeLine: 950, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!31, !6, !75}
!2485 = !DILocalVariable(name: "arg", arg: 1, scope: !2482, file: !36, line: 949, type: !6)
!2486 = !DILocation(line: 949, column: 27, scope: !2482)
!2487 = !DILocalVariable(name: "argsize", arg: 2, scope: !2482, file: !36, line: 949, type: !75)
!2488 = !DILocation(line: 949, column: 39, scope: !2482)
!2489 = !DILocation(line: 951, column: 29, scope: !2482)
!2490 = !DILocation(line: 951, column: 34, scope: !2482)
!2491 = !DILocation(line: 951, column: 10, scope: !2482)
!2492 = !DILocation(line: 951, column: 3, scope: !2482)
!2493 = distinct !DISubprogram(name: "quotearg_n_style", scope: !36, file: !36, line: 955, type: !2494, scopeLine: 956, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!31, !24, !38, !6}
!2496 = !DILocalVariable(name: "n", arg: 1, scope: !2493, file: !36, line: 955, type: !24)
!2497 = !DILocation(line: 955, column: 23, scope: !2493)
!2498 = !DILocalVariable(name: "s", arg: 2, scope: !2493, file: !36, line: 955, type: !38)
!2499 = !DILocation(line: 955, column: 45, scope: !2493)
!2500 = !DILocalVariable(name: "arg", arg: 3, scope: !2493, file: !36, line: 955, type: !6)
!2501 = !DILocation(line: 955, column: 60, scope: !2493)
!2502 = !DILocalVariable(name: "o", scope: !2493, file: !36, line: 957, type: !1090)
!2503 = !DILocation(line: 957, column: 32, scope: !2493)
!2504 = !DILocation(line: 957, column: 64, scope: !2493)
!2505 = !DILocation(line: 957, column: 36, scope: !2493)
!2506 = !DILocation(line: 958, column: 30, scope: !2493)
!2507 = !DILocation(line: 958, column: 33, scope: !2493)
!2508 = !DILocation(line: 958, column: 10, scope: !2493)
!2509 = !DILocation(line: 958, column: 3, scope: !2493)
!2510 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !36, file: !36, line: 193, type: !2511, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, retainedNodes: !4)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!87, !38}
!2513 = !DILocalVariable(name: "style", arg: 1, scope: !2510, file: !36, line: 193, type: !38)
!2514 = !DILocation(line: 193, column: 48, scope: !2510)
!2515 = !DILocalVariable(name: "o", scope: !2510, file: !36, line: 195, type: !87)
!2516 = !DILocation(line: 195, column: 26, scope: !2510)
!2517 = !DILocation(line: 196, column: 7, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2510, file: !36, line: 196, column: 7)
!2519 = !DILocation(line: 196, column: 13, scope: !2518)
!2520 = !DILocation(line: 196, column: 7, scope: !2510)
!2521 = !DILocation(line: 197, column: 5, scope: !2518)
!2522 = !DILocation(line: 198, column: 13, scope: !2510)
!2523 = !DILocation(line: 198, column: 5, scope: !2510)
!2524 = !DILocation(line: 198, column: 11, scope: !2510)
!2525 = !DILocation(line: 199, column: 3, scope: !2510)
!2526 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !36, file: !36, line: 962, type: !2527, scopeLine: 964, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!31, !24, !38, !6, !75}
!2529 = !DILocalVariable(name: "n", arg: 1, scope: !2526, file: !36, line: 962, type: !24)
!2530 = !DILocation(line: 962, column: 27, scope: !2526)
!2531 = !DILocalVariable(name: "s", arg: 2, scope: !2526, file: !36, line: 962, type: !38)
!2532 = !DILocation(line: 962, column: 49, scope: !2526)
!2533 = !DILocalVariable(name: "arg", arg: 3, scope: !2526, file: !36, line: 963, type: !6)
!2534 = !DILocation(line: 963, column: 35, scope: !2526)
!2535 = !DILocalVariable(name: "argsize", arg: 4, scope: !2526, file: !36, line: 963, type: !75)
!2536 = !DILocation(line: 963, column: 47, scope: !2526)
!2537 = !DILocalVariable(name: "o", scope: !2526, file: !36, line: 965, type: !1090)
!2538 = !DILocation(line: 965, column: 32, scope: !2526)
!2539 = !DILocation(line: 965, column: 64, scope: !2526)
!2540 = !DILocation(line: 965, column: 36, scope: !2526)
!2541 = !DILocation(line: 966, column: 30, scope: !2526)
!2542 = !DILocation(line: 966, column: 33, scope: !2526)
!2543 = !DILocation(line: 966, column: 38, scope: !2526)
!2544 = !DILocation(line: 966, column: 10, scope: !2526)
!2545 = !DILocation(line: 966, column: 3, scope: !2526)
!2546 = distinct !DISubprogram(name: "quotearg_style", scope: !36, file: !36, line: 970, type: !2547, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!31, !38, !6}
!2549 = !DILocalVariable(name: "s", arg: 1, scope: !2546, file: !36, line: 970, type: !38)
!2550 = !DILocation(line: 970, column: 36, scope: !2546)
!2551 = !DILocalVariable(name: "arg", arg: 2, scope: !2546, file: !36, line: 970, type: !6)
!2552 = !DILocation(line: 970, column: 51, scope: !2546)
!2553 = !DILocation(line: 972, column: 31, scope: !2546)
!2554 = !DILocation(line: 972, column: 34, scope: !2546)
!2555 = !DILocation(line: 972, column: 10, scope: !2546)
!2556 = !DILocation(line: 972, column: 3, scope: !2546)
!2557 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !36, file: !36, line: 976, type: !2558, scopeLine: 977, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!31, !38, !6, !75}
!2560 = !DILocalVariable(name: "s", arg: 1, scope: !2557, file: !36, line: 976, type: !38)
!2561 = !DILocation(line: 976, column: 40, scope: !2557)
!2562 = !DILocalVariable(name: "arg", arg: 2, scope: !2557, file: !36, line: 976, type: !6)
!2563 = !DILocation(line: 976, column: 55, scope: !2557)
!2564 = !DILocalVariable(name: "argsize", arg: 3, scope: !2557, file: !36, line: 976, type: !75)
!2565 = !DILocation(line: 976, column: 67, scope: !2557)
!2566 = !DILocation(line: 978, column: 35, scope: !2557)
!2567 = !DILocation(line: 978, column: 38, scope: !2557)
!2568 = !DILocation(line: 978, column: 43, scope: !2557)
!2569 = !DILocation(line: 978, column: 10, scope: !2557)
!2570 = !DILocation(line: 978, column: 3, scope: !2557)
!2571 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !36, file: !36, line: 982, type: !2572, scopeLine: 983, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!31, !6, !75, !8}
!2574 = !DILocalVariable(name: "arg", arg: 1, scope: !2571, file: !36, line: 982, type: !6)
!2575 = !DILocation(line: 982, column: 32, scope: !2571)
!2576 = !DILocalVariable(name: "argsize", arg: 2, scope: !2571, file: !36, line: 982, type: !75)
!2577 = !DILocation(line: 982, column: 44, scope: !2571)
!2578 = !DILocalVariable(name: "ch", arg: 3, scope: !2571, file: !36, line: 982, type: !8)
!2579 = !DILocation(line: 982, column: 58, scope: !2571)
!2580 = !DILocalVariable(name: "options", scope: !2571, file: !36, line: 984, type: !87)
!2581 = !DILocation(line: 984, column: 26, scope: !2571)
!2582 = !DILocation(line: 985, column: 13, scope: !2571)
!2583 = !DILocation(line: 986, column: 31, scope: !2571)
!2584 = !DILocation(line: 986, column: 3, scope: !2571)
!2585 = !DILocation(line: 987, column: 33, scope: !2571)
!2586 = !DILocation(line: 987, column: 38, scope: !2571)
!2587 = !DILocation(line: 987, column: 10, scope: !2571)
!2588 = !DILocation(line: 987, column: 3, scope: !2571)
!2589 = distinct !DISubprogram(name: "quotearg_char", scope: !36, file: !36, line: 991, type: !2590, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!31, !6, !8}
!2592 = !DILocalVariable(name: "arg", arg: 1, scope: !2589, file: !36, line: 991, type: !6)
!2593 = !DILocation(line: 991, column: 28, scope: !2589)
!2594 = !DILocalVariable(name: "ch", arg: 2, scope: !2589, file: !36, line: 991, type: !8)
!2595 = !DILocation(line: 991, column: 38, scope: !2589)
!2596 = !DILocation(line: 993, column: 29, scope: !2589)
!2597 = !DILocation(line: 993, column: 44, scope: !2589)
!2598 = !DILocation(line: 993, column: 10, scope: !2589)
!2599 = !DILocation(line: 993, column: 3, scope: !2589)
!2600 = distinct !DISubprogram(name: "quotearg_colon", scope: !36, file: !36, line: 997, type: !2475, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!2601 = !DILocalVariable(name: "arg", arg: 1, scope: !2600, file: !36, line: 997, type: !6)
!2602 = !DILocation(line: 997, column: 29, scope: !2600)
!2603 = !DILocation(line: 999, column: 25, scope: !2600)
!2604 = !DILocation(line: 999, column: 10, scope: !2600)
!2605 = !DILocation(line: 999, column: 3, scope: !2600)
!2606 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !36, file: !36, line: 1003, type: !2483, scopeLine: 1004, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!2607 = !DILocalVariable(name: "arg", arg: 1, scope: !2606, file: !36, line: 1003, type: !6)
!2608 = !DILocation(line: 1003, column: 33, scope: !2606)
!2609 = !DILocalVariable(name: "argsize", arg: 2, scope: !2606, file: !36, line: 1003, type: !75)
!2610 = !DILocation(line: 1003, column: 45, scope: !2606)
!2611 = !DILocation(line: 1005, column: 29, scope: !2606)
!2612 = !DILocation(line: 1005, column: 34, scope: !2606)
!2613 = !DILocation(line: 1005, column: 10, scope: !2606)
!2614 = !DILocation(line: 1005, column: 3, scope: !2606)
!2615 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !36, file: !36, line: 1009, type: !2494, scopeLine: 1010, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!2616 = !DILocalVariable(name: "n", arg: 1, scope: !2615, file: !36, line: 1009, type: !24)
!2617 = !DILocation(line: 1009, column: 29, scope: !2615)
!2618 = !DILocalVariable(name: "s", arg: 2, scope: !2615, file: !36, line: 1009, type: !38)
!2619 = !DILocation(line: 1009, column: 51, scope: !2615)
!2620 = !DILocalVariable(name: "arg", arg: 3, scope: !2615, file: !36, line: 1009, type: !6)
!2621 = !DILocation(line: 1009, column: 66, scope: !2615)
!2622 = !DILocalVariable(name: "options", scope: !2615, file: !36, line: 1011, type: !87)
!2623 = !DILocation(line: 1011, column: 26, scope: !2615)
!2624 = !DILocation(line: 1012, column: 41, scope: !2615)
!2625 = !DILocation(line: 1012, column: 13, scope: !2615)
!2626 = !DILocation(line: 1013, column: 3, scope: !2615)
!2627 = !DILocation(line: 1014, column: 30, scope: !2615)
!2628 = !DILocation(line: 1014, column: 33, scope: !2615)
!2629 = !DILocation(line: 1014, column: 10, scope: !2615)
!2630 = !DILocation(line: 1014, column: 3, scope: !2615)
!2631 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !36, file: !36, line: 1018, type: !2632, scopeLine: 1020, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!31, !24, !6, !6, !6}
!2634 = !DILocalVariable(name: "n", arg: 1, scope: !2631, file: !36, line: 1018, type: !24)
!2635 = !DILocation(line: 1018, column: 24, scope: !2631)
!2636 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2631, file: !36, line: 1018, type: !6)
!2637 = !DILocation(line: 1018, column: 39, scope: !2631)
!2638 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2631, file: !36, line: 1019, type: !6)
!2639 = !DILocation(line: 1019, column: 32, scope: !2631)
!2640 = !DILocalVariable(name: "arg", arg: 4, scope: !2631, file: !36, line: 1019, type: !6)
!2641 = !DILocation(line: 1019, column: 57, scope: !2631)
!2642 = !DILocation(line: 1021, column: 33, scope: !2631)
!2643 = !DILocation(line: 1021, column: 36, scope: !2631)
!2644 = !DILocation(line: 1021, column: 48, scope: !2631)
!2645 = !DILocation(line: 1021, column: 61, scope: !2631)
!2646 = !DILocation(line: 1021, column: 10, scope: !2631)
!2647 = !DILocation(line: 1021, column: 3, scope: !2631)
!2648 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !36, file: !36, line: 1026, type: !2649, scopeLine: 1029, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!31, !24, !6, !6, !6, !75}
!2651 = !DILocalVariable(name: "n", arg: 1, scope: !2648, file: !36, line: 1026, type: !24)
!2652 = !DILocation(line: 1026, column: 28, scope: !2648)
!2653 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2648, file: !36, line: 1026, type: !6)
!2654 = !DILocation(line: 1026, column: 43, scope: !2648)
!2655 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2648, file: !36, line: 1027, type: !6)
!2656 = !DILocation(line: 1027, column: 36, scope: !2648)
!2657 = !DILocalVariable(name: "arg", arg: 4, scope: !2648, file: !36, line: 1028, type: !6)
!2658 = !DILocation(line: 1028, column: 36, scope: !2648)
!2659 = !DILocalVariable(name: "argsize", arg: 5, scope: !2648, file: !36, line: 1028, type: !75)
!2660 = !DILocation(line: 1028, column: 48, scope: !2648)
!2661 = !DILocalVariable(name: "o", scope: !2648, file: !36, line: 1030, type: !87)
!2662 = !DILocation(line: 1030, column: 26, scope: !2648)
!2663 = !DILocation(line: 1030, column: 30, scope: !2648)
!2664 = !DILocation(line: 1031, column: 27, scope: !2648)
!2665 = !DILocation(line: 1031, column: 39, scope: !2648)
!2666 = !DILocation(line: 1031, column: 3, scope: !2648)
!2667 = !DILocation(line: 1032, column: 30, scope: !2648)
!2668 = !DILocation(line: 1032, column: 33, scope: !2648)
!2669 = !DILocation(line: 1032, column: 38, scope: !2648)
!2670 = !DILocation(line: 1032, column: 10, scope: !2648)
!2671 = !DILocation(line: 1032, column: 3, scope: !2648)
!2672 = distinct !DISubprogram(name: "quotearg_custom", scope: !36, file: !36, line: 1036, type: !2673, scopeLine: 1038, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!31, !6, !6, !6}
!2675 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2672, file: !36, line: 1036, type: !6)
!2676 = !DILocation(line: 1036, column: 30, scope: !2672)
!2677 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2672, file: !36, line: 1036, type: !6)
!2678 = !DILocation(line: 1036, column: 54, scope: !2672)
!2679 = !DILocalVariable(name: "arg", arg: 3, scope: !2672, file: !36, line: 1037, type: !6)
!2680 = !DILocation(line: 1037, column: 30, scope: !2672)
!2681 = !DILocation(line: 1039, column: 32, scope: !2672)
!2682 = !DILocation(line: 1039, column: 44, scope: !2672)
!2683 = !DILocation(line: 1039, column: 57, scope: !2672)
!2684 = !DILocation(line: 1039, column: 10, scope: !2672)
!2685 = !DILocation(line: 1039, column: 3, scope: !2672)
!2686 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !36, file: !36, line: 1043, type: !2687, scopeLine: 1045, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!31, !6, !6, !6, !75}
!2689 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2686, file: !36, line: 1043, type: !6)
!2690 = !DILocation(line: 1043, column: 34, scope: !2686)
!2691 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2686, file: !36, line: 1043, type: !6)
!2692 = !DILocation(line: 1043, column: 58, scope: !2686)
!2693 = !DILocalVariable(name: "arg", arg: 3, scope: !2686, file: !36, line: 1044, type: !6)
!2694 = !DILocation(line: 1044, column: 34, scope: !2686)
!2695 = !DILocalVariable(name: "argsize", arg: 4, scope: !2686, file: !36, line: 1044, type: !75)
!2696 = !DILocation(line: 1044, column: 46, scope: !2686)
!2697 = !DILocation(line: 1046, column: 36, scope: !2686)
!2698 = !DILocation(line: 1046, column: 48, scope: !2686)
!2699 = !DILocation(line: 1046, column: 61, scope: !2686)
!2700 = !DILocation(line: 1047, column: 33, scope: !2686)
!2701 = !DILocation(line: 1046, column: 10, scope: !2686)
!2702 = !DILocation(line: 1046, column: 3, scope: !2686)
!2703 = distinct !DISubprogram(name: "quote_n_mem", scope: !36, file: !36, line: 1061, type: !2704, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!6, !24, !6, !75}
!2706 = !DILocalVariable(name: "n", arg: 1, scope: !2703, file: !36, line: 1061, type: !24)
!2707 = !DILocation(line: 1061, column: 18, scope: !2703)
!2708 = !DILocalVariable(name: "arg", arg: 2, scope: !2703, file: !36, line: 1061, type: !6)
!2709 = !DILocation(line: 1061, column: 33, scope: !2703)
!2710 = !DILocalVariable(name: "argsize", arg: 3, scope: !2703, file: !36, line: 1061, type: !75)
!2711 = !DILocation(line: 1061, column: 45, scope: !2703)
!2712 = !DILocation(line: 1063, column: 30, scope: !2703)
!2713 = !DILocation(line: 1063, column: 33, scope: !2703)
!2714 = !DILocation(line: 1063, column: 38, scope: !2703)
!2715 = !DILocation(line: 1063, column: 10, scope: !2703)
!2716 = !DILocation(line: 1063, column: 3, scope: !2703)
!2717 = distinct !DISubprogram(name: "quote_mem", scope: !36, file: !36, line: 1067, type: !2718, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!6, !6, !75}
!2720 = !DILocalVariable(name: "arg", arg: 1, scope: !2717, file: !36, line: 1067, type: !6)
!2721 = !DILocation(line: 1067, column: 24, scope: !2717)
!2722 = !DILocalVariable(name: "argsize", arg: 2, scope: !2717, file: !36, line: 1067, type: !75)
!2723 = !DILocation(line: 1067, column: 36, scope: !2717)
!2724 = !DILocation(line: 1069, column: 26, scope: !2717)
!2725 = !DILocation(line: 1069, column: 31, scope: !2717)
!2726 = !DILocation(line: 1069, column: 10, scope: !2717)
!2727 = !DILocation(line: 1069, column: 3, scope: !2717)
!2728 = distinct !DISubprogram(name: "quote_n", scope: !36, file: !36, line: 1073, type: !2729, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!6, !24, !6}
!2731 = !DILocalVariable(name: "n", arg: 1, scope: !2728, file: !36, line: 1073, type: !24)
!2732 = !DILocation(line: 1073, column: 14, scope: !2728)
!2733 = !DILocalVariable(name: "arg", arg: 2, scope: !2728, file: !36, line: 1073, type: !6)
!2734 = !DILocation(line: 1073, column: 29, scope: !2728)
!2735 = !DILocation(line: 1075, column: 23, scope: !2728)
!2736 = !DILocation(line: 1075, column: 26, scope: !2728)
!2737 = !DILocation(line: 1075, column: 10, scope: !2728)
!2738 = !DILocation(line: 1075, column: 3, scope: !2728)
!2739 = distinct !DISubprogram(name: "quote", scope: !36, file: !36, line: 1079, type: !2740, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!6, !6}
!2742 = !DILocalVariable(name: "arg", arg: 1, scope: !2739, file: !36, line: 1079, type: !6)
!2743 = !DILocation(line: 1079, column: 20, scope: !2739)
!2744 = !DILocation(line: 1081, column: 22, scope: !2739)
!2745 = !DILocation(line: 1081, column: 10, scope: !2739)
!2746 = !DILocation(line: 1081, column: 3, scope: !2739)
!2747 = distinct !DISubprogram(name: "version_etc_arn", scope: !135, file: !135, line: 61, type: !2748, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !134, retainedNodes: !4)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{null, !2750, !6, !6, !6, !2805, !75}
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2752, line: 7, baseType: !2753)
!2752 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2754, line: 49, size: 1728, elements: !2755)
!2754 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2755 = !{!2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2771, !2773, !2774, !2775, !2779, !2780, !2782, !2786, !2789, !2791, !2794, !2797, !2798, !2799, !2800, !2801}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2753, file: !2754, line: 51, baseType: !24, size: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2753, file: !2754, line: 54, baseType: !31, size: 64, offset: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2753, file: !2754, line: 55, baseType: !31, size: 64, offset: 128)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2753, file: !2754, line: 56, baseType: !31, size: 64, offset: 192)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2753, file: !2754, line: 57, baseType: !31, size: 64, offset: 256)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2753, file: !2754, line: 58, baseType: !31, size: 64, offset: 320)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2753, file: !2754, line: 59, baseType: !31, size: 64, offset: 384)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2753, file: !2754, line: 60, baseType: !31, size: 64, offset: 448)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2753, file: !2754, line: 61, baseType: !31, size: 64, offset: 512)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2753, file: !2754, line: 64, baseType: !31, size: 64, offset: 576)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2753, file: !2754, line: 65, baseType: !31, size: 64, offset: 640)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2753, file: !2754, line: 66, baseType: !31, size: 64, offset: 704)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2753, file: !2754, line: 68, baseType: !2769, size: 64, offset: 768)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2754, line: 36, flags: DIFlagFwdDecl)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2753, file: !2754, line: 70, baseType: !2772, size: 64, offset: 832)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2753, file: !2754, line: 72, baseType: !24, size: 32, offset: 896)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2753, file: !2754, line: 73, baseType: !24, size: 32, offset: 928)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2753, file: !2754, line: 74, baseType: !2776, size: 64, offset: 960)
!2776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2777, line: 152, baseType: !2778)
!2777 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2778 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2753, file: !2754, line: 77, baseType: !74, size: 16, offset: 1024)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2753, file: !2754, line: 78, baseType: !2781, size: 8, offset: 1040)
!2781 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2753, file: !2754, line: 79, baseType: !2783, size: 8, offset: 1048)
!2783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !2784)
!2784 = !{!2785}
!2785 = !DISubrange(count: 1)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2753, file: !2754, line: 81, baseType: !2787, size: 64, offset: 1088)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2754, line: 43, baseType: null)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2753, file: !2754, line: 89, baseType: !2790, size: 64, offset: 1152)
!2790 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2777, line: 153, baseType: !2778)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2753, file: !2754, line: 91, baseType: !2792, size: 64, offset: 1216)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2754, line: 37, flags: DIFlagFwdDecl)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2753, file: !2754, line: 92, baseType: !2795, size: 64, offset: 1280)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2754, line: 38, flags: DIFlagFwdDecl)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2753, file: !2754, line: 93, baseType: !2772, size: 64, offset: 1344)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2753, file: !2754, line: 94, baseType: !30, size: 64, offset: 1408)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2753, file: !2754, line: 95, baseType: !75, size: 64, offset: 1472)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2753, file: !2754, line: 96, baseType: !24, size: 32, offset: 1536)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2753, file: !2754, line: 98, baseType: !2802, size: 160, offset: 1568)
!2802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2803)
!2803 = !{!2804}
!2804 = !DISubrange(count: 20)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!2806 = !DILocalVariable(name: "stream", arg: 1, scope: !2747, file: !135, line: 61, type: !2750)
!2807 = !DILocation(line: 61, column: 24, scope: !2747)
!2808 = !DILocalVariable(name: "command_name", arg: 2, scope: !2747, file: !135, line: 62, type: !6)
!2809 = !DILocation(line: 62, column: 30, scope: !2747)
!2810 = !DILocalVariable(name: "package", arg: 3, scope: !2747, file: !135, line: 62, type: !6)
!2811 = !DILocation(line: 62, column: 56, scope: !2747)
!2812 = !DILocalVariable(name: "version", arg: 4, scope: !2747, file: !135, line: 63, type: !6)
!2813 = !DILocation(line: 63, column: 30, scope: !2747)
!2814 = !DILocalVariable(name: "authors", arg: 5, scope: !2747, file: !135, line: 64, type: !2805)
!2815 = !DILocation(line: 64, column: 39, scope: !2747)
!2816 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2747, file: !135, line: 64, type: !75)
!2817 = !DILocation(line: 64, column: 55, scope: !2747)
!2818 = !DILocation(line: 66, column: 7, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2747, file: !135, line: 66, column: 7)
!2820 = !DILocation(line: 66, column: 7, scope: !2747)
!2821 = !DILocation(line: 67, column: 14, scope: !2819)
!2822 = !DILocation(line: 67, column: 38, scope: !2819)
!2823 = !DILocation(line: 67, column: 52, scope: !2819)
!2824 = !DILocation(line: 67, column: 61, scope: !2819)
!2825 = !DILocation(line: 67, column: 5, scope: !2819)
!2826 = !DILocation(line: 69, column: 14, scope: !2819)
!2827 = !DILocation(line: 69, column: 33, scope: !2819)
!2828 = !DILocation(line: 69, column: 42, scope: !2819)
!2829 = !DILocation(line: 69, column: 5, scope: !2819)
!2830 = !DILocation(line: 83, column: 12, scope: !2747)
!2831 = !DILocation(line: 83, column: 3, scope: !2747)
!2832 = !DILocation(line: 85, column: 3, scope: !2747)
!2833 = !DILocation(line: 88, column: 12, scope: !2747)
!2834 = !DILocation(line: 88, column: 3, scope: !2747)
!2835 = !DILocation(line: 95, column: 3, scope: !2747)
!2836 = !DILocation(line: 97, column: 11, scope: !2747)
!2837 = !DILocation(line: 97, column: 3, scope: !2747)
!2838 = !DILocation(line: 102, column: 7, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2747, file: !135, line: 98, column: 5)
!2840 = !DILocation(line: 105, column: 16, scope: !2839)
!2841 = !DILocation(line: 105, column: 47, scope: !2839)
!2842 = !DILocation(line: 105, column: 7, scope: !2839)
!2843 = !DILocation(line: 106, column: 7, scope: !2839)
!2844 = !DILocation(line: 109, column: 16, scope: !2839)
!2845 = !DILocation(line: 109, column: 54, scope: !2839)
!2846 = !DILocation(line: 109, column: 66, scope: !2839)
!2847 = !DILocation(line: 109, column: 7, scope: !2839)
!2848 = !DILocation(line: 110, column: 7, scope: !2839)
!2849 = !DILocation(line: 113, column: 16, scope: !2839)
!2850 = !DILocation(line: 114, column: 16, scope: !2839)
!2851 = !DILocation(line: 114, column: 28, scope: !2839)
!2852 = !DILocation(line: 114, column: 40, scope: !2839)
!2853 = !DILocation(line: 113, column: 7, scope: !2839)
!2854 = !DILocation(line: 115, column: 7, scope: !2839)
!2855 = !DILocation(line: 120, column: 16, scope: !2839)
!2856 = !DILocation(line: 121, column: 16, scope: !2839)
!2857 = !DILocation(line: 121, column: 28, scope: !2839)
!2858 = !DILocation(line: 121, column: 40, scope: !2839)
!2859 = !DILocation(line: 121, column: 52, scope: !2839)
!2860 = !DILocation(line: 120, column: 7, scope: !2839)
!2861 = !DILocation(line: 122, column: 7, scope: !2839)
!2862 = !DILocation(line: 127, column: 16, scope: !2839)
!2863 = !DILocation(line: 128, column: 16, scope: !2839)
!2864 = !DILocation(line: 128, column: 28, scope: !2839)
!2865 = !DILocation(line: 128, column: 40, scope: !2839)
!2866 = !DILocation(line: 128, column: 52, scope: !2839)
!2867 = !DILocation(line: 128, column: 64, scope: !2839)
!2868 = !DILocation(line: 127, column: 7, scope: !2839)
!2869 = !DILocation(line: 129, column: 7, scope: !2839)
!2870 = !DILocation(line: 134, column: 16, scope: !2839)
!2871 = !DILocation(line: 135, column: 16, scope: !2839)
!2872 = !DILocation(line: 135, column: 28, scope: !2839)
!2873 = !DILocation(line: 135, column: 40, scope: !2839)
!2874 = !DILocation(line: 135, column: 52, scope: !2839)
!2875 = !DILocation(line: 135, column: 64, scope: !2839)
!2876 = !DILocation(line: 136, column: 16, scope: !2839)
!2877 = !DILocation(line: 134, column: 7, scope: !2839)
!2878 = !DILocation(line: 137, column: 7, scope: !2839)
!2879 = !DILocation(line: 142, column: 16, scope: !2839)
!2880 = !DILocation(line: 143, column: 16, scope: !2839)
!2881 = !DILocation(line: 143, column: 28, scope: !2839)
!2882 = !DILocation(line: 143, column: 40, scope: !2839)
!2883 = !DILocation(line: 143, column: 52, scope: !2839)
!2884 = !DILocation(line: 143, column: 64, scope: !2839)
!2885 = !DILocation(line: 144, column: 16, scope: !2839)
!2886 = !DILocation(line: 144, column: 28, scope: !2839)
!2887 = !DILocation(line: 142, column: 7, scope: !2839)
!2888 = !DILocation(line: 145, column: 7, scope: !2839)
!2889 = !DILocation(line: 150, column: 16, scope: !2839)
!2890 = !DILocation(line: 152, column: 17, scope: !2839)
!2891 = !DILocation(line: 152, column: 29, scope: !2839)
!2892 = !DILocation(line: 152, column: 41, scope: !2839)
!2893 = !DILocation(line: 152, column: 53, scope: !2839)
!2894 = !DILocation(line: 152, column: 65, scope: !2839)
!2895 = !DILocation(line: 153, column: 17, scope: !2839)
!2896 = !DILocation(line: 153, column: 29, scope: !2839)
!2897 = !DILocation(line: 153, column: 41, scope: !2839)
!2898 = !DILocation(line: 150, column: 7, scope: !2839)
!2899 = !DILocation(line: 154, column: 7, scope: !2839)
!2900 = !DILocation(line: 159, column: 16, scope: !2839)
!2901 = !DILocation(line: 161, column: 16, scope: !2839)
!2902 = !DILocation(line: 161, column: 28, scope: !2839)
!2903 = !DILocation(line: 161, column: 40, scope: !2839)
!2904 = !DILocation(line: 161, column: 52, scope: !2839)
!2905 = !DILocation(line: 161, column: 64, scope: !2839)
!2906 = !DILocation(line: 162, column: 16, scope: !2839)
!2907 = !DILocation(line: 162, column: 28, scope: !2839)
!2908 = !DILocation(line: 162, column: 40, scope: !2839)
!2909 = !DILocation(line: 162, column: 52, scope: !2839)
!2910 = !DILocation(line: 159, column: 7, scope: !2839)
!2911 = !DILocation(line: 163, column: 7, scope: !2839)
!2912 = !DILocation(line: 170, column: 16, scope: !2839)
!2913 = !DILocation(line: 172, column: 17, scope: !2839)
!2914 = !DILocation(line: 172, column: 29, scope: !2839)
!2915 = !DILocation(line: 172, column: 41, scope: !2839)
!2916 = !DILocation(line: 172, column: 53, scope: !2839)
!2917 = !DILocation(line: 172, column: 65, scope: !2839)
!2918 = !DILocation(line: 173, column: 17, scope: !2839)
!2919 = !DILocation(line: 173, column: 29, scope: !2839)
!2920 = !DILocation(line: 173, column: 41, scope: !2839)
!2921 = !DILocation(line: 173, column: 53, scope: !2839)
!2922 = !DILocation(line: 170, column: 7, scope: !2839)
!2923 = !DILocation(line: 174, column: 7, scope: !2839)
!2924 = !DILocation(line: 176, column: 1, scope: !2747)
!2925 = distinct !DISubprogram(name: "version_etc_ar", scope: !135, file: !135, line: 183, type: !2926, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !134, retainedNodes: !4)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{null, !2750, !6, !6, !6, !2805}
!2928 = !DILocalVariable(name: "stream", arg: 1, scope: !2925, file: !135, line: 183, type: !2750)
!2929 = !DILocation(line: 183, column: 23, scope: !2925)
!2930 = !DILocalVariable(name: "command_name", arg: 2, scope: !2925, file: !135, line: 184, type: !6)
!2931 = !DILocation(line: 184, column: 29, scope: !2925)
!2932 = !DILocalVariable(name: "package", arg: 3, scope: !2925, file: !135, line: 184, type: !6)
!2933 = !DILocation(line: 184, column: 55, scope: !2925)
!2934 = !DILocalVariable(name: "version", arg: 4, scope: !2925, file: !135, line: 185, type: !6)
!2935 = !DILocation(line: 185, column: 29, scope: !2925)
!2936 = !DILocalVariable(name: "authors", arg: 5, scope: !2925, file: !135, line: 185, type: !2805)
!2937 = !DILocation(line: 185, column: 59, scope: !2925)
!2938 = !DILocalVariable(name: "n_authors", scope: !2925, file: !135, line: 187, type: !75)
!2939 = !DILocation(line: 187, column: 10, scope: !2925)
!2940 = !DILocation(line: 189, column: 18, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2925, file: !135, line: 189, column: 3)
!2942 = !DILocation(line: 189, column: 8, scope: !2941)
!2943 = !DILocation(line: 189, column: 23, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2941, file: !135, line: 189, column: 3)
!2945 = !DILocation(line: 189, column: 31, scope: !2944)
!2946 = !DILocation(line: 189, column: 3, scope: !2941)
!2947 = !DILocation(line: 189, column: 52, scope: !2944)
!2948 = !DILocation(line: 189, column: 3, scope: !2944)
!2949 = distinct !{!2949, !2946, !2950, !627}
!2950 = !DILocation(line: 190, column: 5, scope: !2941)
!2951 = !DILocation(line: 191, column: 20, scope: !2925)
!2952 = !DILocation(line: 191, column: 28, scope: !2925)
!2953 = !DILocation(line: 191, column: 42, scope: !2925)
!2954 = !DILocation(line: 191, column: 51, scope: !2925)
!2955 = !DILocation(line: 191, column: 60, scope: !2925)
!2956 = !DILocation(line: 191, column: 69, scope: !2925)
!2957 = !DILocation(line: 191, column: 3, scope: !2925)
!2958 = !DILocation(line: 192, column: 1, scope: !2925)
!2959 = distinct !DISubprogram(name: "version_etc_va", scope: !135, file: !135, line: 199, type: !2960, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !134, retainedNodes: !4)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{null, !2750, !6, !6, !6, !2962}
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2964)
!2964 = !{!2965, !2966, !2967, !2968}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2963, file: !135, line: 192, baseType: !40, size: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2963, file: !135, line: 192, baseType: !40, size: 32, offset: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2963, file: !135, line: 192, baseType: !30, size: 64, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2963, file: !135, line: 192, baseType: !30, size: 64, offset: 128)
!2969 = !DILocalVariable(name: "stream", arg: 1, scope: !2959, file: !135, line: 199, type: !2750)
!2970 = !DILocation(line: 199, column: 23, scope: !2959)
!2971 = !DILocalVariable(name: "command_name", arg: 2, scope: !2959, file: !135, line: 200, type: !6)
!2972 = !DILocation(line: 200, column: 29, scope: !2959)
!2973 = !DILocalVariable(name: "package", arg: 3, scope: !2959, file: !135, line: 200, type: !6)
!2974 = !DILocation(line: 200, column: 55, scope: !2959)
!2975 = !DILocalVariable(name: "version", arg: 4, scope: !2959, file: !135, line: 201, type: !6)
!2976 = !DILocation(line: 201, column: 29, scope: !2959)
!2977 = !DILocalVariable(name: "authors", arg: 5, scope: !2959, file: !135, line: 201, type: !2962)
!2978 = !DILocation(line: 201, column: 46, scope: !2959)
!2979 = !DILocalVariable(name: "n_authors", scope: !2959, file: !135, line: 203, type: !75)
!2980 = !DILocation(line: 203, column: 10, scope: !2959)
!2981 = !DILocalVariable(name: "authtab", scope: !2959, file: !135, line: 204, type: !2982)
!2982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !83)
!2983 = !DILocation(line: 204, column: 15, scope: !2959)
!2984 = !DILocation(line: 206, column: 18, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2959, file: !135, line: 206, column: 3)
!2986 = !DILocation(line: 206, column: 8, scope: !2985)
!2987 = !DILocation(line: 207, column: 8, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2985, file: !135, line: 206, column: 3)
!2989 = !DILocation(line: 207, column: 18, scope: !2988)
!2990 = !DILocation(line: 208, column: 10, scope: !2988)
!2991 = !DILocation(line: 208, column: 35, scope: !2988)
!2992 = !DILocation(line: 208, column: 22, scope: !2988)
!2993 = !DILocation(line: 208, column: 14, scope: !2988)
!2994 = !DILocation(line: 208, column: 33, scope: !2988)
!2995 = !DILocation(line: 208, column: 67, scope: !2988)
!2996 = !DILocation(line: 0, scope: !2988)
!2997 = !DILocation(line: 206, column: 3, scope: !2985)
!2998 = !DILocation(line: 209, column: 17, scope: !2988)
!2999 = !DILocation(line: 206, column: 3, scope: !2988)
!3000 = distinct !{!3000, !2997, !3001, !627}
!3001 = !DILocation(line: 210, column: 5, scope: !2985)
!3002 = !DILocation(line: 211, column: 20, scope: !2959)
!3003 = !DILocation(line: 211, column: 28, scope: !2959)
!3004 = !DILocation(line: 211, column: 42, scope: !2959)
!3005 = !DILocation(line: 211, column: 51, scope: !2959)
!3006 = !DILocation(line: 212, column: 20, scope: !2959)
!3007 = !DILocation(line: 212, column: 29, scope: !2959)
!3008 = !DILocation(line: 211, column: 3, scope: !2959)
!3009 = !DILocation(line: 213, column: 1, scope: !2959)
!3010 = distinct !DISubprogram(name: "version_etc", scope: !135, file: !135, line: 230, type: !3011, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !134, retainedNodes: !4)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{null, !2750, !6, !6, !6, null}
!3013 = !DILocalVariable(name: "stream", arg: 1, scope: !3010, file: !135, line: 230, type: !2750)
!3014 = !DILocation(line: 230, column: 20, scope: !3010)
!3015 = !DILocalVariable(name: "command_name", arg: 2, scope: !3010, file: !135, line: 231, type: !6)
!3016 = !DILocation(line: 231, column: 26, scope: !3010)
!3017 = !DILocalVariable(name: "package", arg: 3, scope: !3010, file: !135, line: 231, type: !6)
!3018 = !DILocation(line: 231, column: 52, scope: !3010)
!3019 = !DILocalVariable(name: "version", arg: 4, scope: !3010, file: !135, line: 232, type: !6)
!3020 = !DILocation(line: 232, column: 26, scope: !3010)
!3021 = !DILocalVariable(name: "authors", scope: !3010, file: !135, line: 234, type: !3022)
!3022 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3023, line: 52, baseType: !3024)
!3023 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!3024 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3025, line: 32, baseType: !3026)
!3025 = !DIFile(filename: "LLVM_12.0_src/llvm-project/build/lib/clang/12.0.1/include/stdarg.h", directory: "/nobackup")
!3026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !135, baseType: !3027)
!3027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2963, size: 192, elements: !2784)
!3028 = !DILocation(line: 234, column: 11, scope: !3010)
!3029 = !DILocation(line: 236, column: 3, scope: !3010)
!3030 = !DILocation(line: 237, column: 19, scope: !3010)
!3031 = !DILocation(line: 237, column: 27, scope: !3010)
!3032 = !DILocation(line: 237, column: 41, scope: !3010)
!3033 = !DILocation(line: 237, column: 50, scope: !3010)
!3034 = !DILocation(line: 237, column: 59, scope: !3010)
!3035 = !DILocation(line: 237, column: 3, scope: !3010)
!3036 = !DILocation(line: 238, column: 3, scope: !3010)
!3037 = !DILocation(line: 239, column: 1, scope: !3010)
!3038 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !135, file: !135, line: 242, type: !657, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !134, retainedNodes: !4)
!3039 = !DILocation(line: 244, column: 3, scope: !3038)
!3040 = !DILocation(line: 249, column: 3, scope: !3038)
!3041 = !DILocation(line: 255, column: 3, scope: !3038)
!3042 = !DILocation(line: 260, column: 3, scope: !3038)
!3043 = !DILocation(line: 262, column: 1, scope: !3038)
!3044 = distinct !DISubprogram(name: "xnmalloc", scope: !145, file: !145, line: 99, type: !3045, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !141, retainedNodes: !4)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!30, !75, !75}
!3047 = !DILocalVariable(name: "n", arg: 1, scope: !3044, file: !145, line: 99, type: !75)
!3048 = !DILocation(line: 99, column: 18, scope: !3044)
!3049 = !DILocalVariable(name: "s", arg: 2, scope: !3044, file: !145, line: 99, type: !75)
!3050 = !DILocation(line: 99, column: 28, scope: !3044)
!3051 = !DILocation(line: 101, column: 7, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3044, file: !145, line: 101, column: 7)
!3053 = !DILocation(line: 101, column: 7, scope: !3044)
!3054 = !DILocation(line: 102, column: 5, scope: !3052)
!3055 = !DILocation(line: 103, column: 19, scope: !3044)
!3056 = !DILocation(line: 103, column: 23, scope: !3044)
!3057 = !DILocation(line: 103, column: 21, scope: !3044)
!3058 = !DILocation(line: 103, column: 10, scope: !3044)
!3059 = !DILocation(line: 103, column: 3, scope: !3044)
!3060 = distinct !DISubprogram(name: "xmalloc", scope: !142, file: !142, line: 39, type: !3061, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !141, retainedNodes: !4)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!30, !75}
!3063 = !DILocalVariable(name: "n", arg: 1, scope: !3060, file: !142, line: 39, type: !75)
!3064 = !DILocation(line: 39, column: 17, scope: !3060)
!3065 = !DILocalVariable(name: "p", scope: !3060, file: !142, line: 41, type: !30)
!3066 = !DILocation(line: 41, column: 9, scope: !3060)
!3067 = !DILocation(line: 41, column: 21, scope: !3060)
!3068 = !DILocation(line: 41, column: 13, scope: !3060)
!3069 = !DILocation(line: 42, column: 8, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3060, file: !142, line: 42, column: 7)
!3071 = !DILocation(line: 42, column: 10, scope: !3070)
!3072 = !DILocation(line: 42, column: 13, scope: !3070)
!3073 = !DILocation(line: 42, column: 15, scope: !3070)
!3074 = !DILocation(line: 42, column: 7, scope: !3060)
!3075 = !DILocation(line: 43, column: 5, scope: !3070)
!3076 = !DILocation(line: 44, column: 10, scope: !3060)
!3077 = !DILocation(line: 44, column: 3, scope: !3060)
!3078 = distinct !DISubprogram(name: "xnrealloc", scope: !145, file: !145, line: 112, type: !3079, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !141, retainedNodes: !4)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!30, !30, !75, !75}
!3081 = !DILocalVariable(name: "p", arg: 1, scope: !3078, file: !145, line: 112, type: !30)
!3082 = !DILocation(line: 112, column: 18, scope: !3078)
!3083 = !DILocalVariable(name: "n", arg: 2, scope: !3078, file: !145, line: 112, type: !75)
!3084 = !DILocation(line: 112, column: 28, scope: !3078)
!3085 = !DILocalVariable(name: "s", arg: 3, scope: !3078, file: !145, line: 112, type: !75)
!3086 = !DILocation(line: 112, column: 38, scope: !3078)
!3087 = !DILocation(line: 114, column: 7, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3078, file: !145, line: 114, column: 7)
!3089 = !DILocation(line: 114, column: 7, scope: !3078)
!3090 = !DILocation(line: 115, column: 5, scope: !3088)
!3091 = !DILocation(line: 116, column: 20, scope: !3078)
!3092 = !DILocation(line: 116, column: 23, scope: !3078)
!3093 = !DILocation(line: 116, column: 27, scope: !3078)
!3094 = !DILocation(line: 116, column: 25, scope: !3078)
!3095 = !DILocation(line: 116, column: 10, scope: !3078)
!3096 = !DILocation(line: 116, column: 3, scope: !3078)
!3097 = distinct !DISubprogram(name: "xrealloc", scope: !142, file: !142, line: 51, type: !3098, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !141, retainedNodes: !4)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!30, !30, !75}
!3100 = !DILocalVariable(name: "p", arg: 1, scope: !3097, file: !142, line: 51, type: !30)
!3101 = !DILocation(line: 51, column: 17, scope: !3097)
!3102 = !DILocalVariable(name: "n", arg: 2, scope: !3097, file: !142, line: 51, type: !75)
!3103 = !DILocation(line: 51, column: 27, scope: !3097)
!3104 = !DILocation(line: 53, column: 8, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3097, file: !142, line: 53, column: 7)
!3106 = !DILocation(line: 53, column: 10, scope: !3105)
!3107 = !DILocation(line: 53, column: 13, scope: !3105)
!3108 = !DILocation(line: 53, column: 7, scope: !3097)
!3109 = !DILocation(line: 57, column: 13, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3105, file: !142, line: 54, column: 5)
!3111 = !DILocation(line: 57, column: 7, scope: !3110)
!3112 = !DILocation(line: 58, column: 7, scope: !3110)
!3113 = !DILocation(line: 61, column: 16, scope: !3097)
!3114 = !DILocation(line: 61, column: 19, scope: !3097)
!3115 = !DILocation(line: 61, column: 7, scope: !3097)
!3116 = !DILocation(line: 61, column: 5, scope: !3097)
!3117 = !DILocation(line: 62, column: 8, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3097, file: !142, line: 62, column: 7)
!3119 = !DILocation(line: 62, column: 10, scope: !3118)
!3120 = !DILocation(line: 62, column: 13, scope: !3118)
!3121 = !DILocation(line: 62, column: 7, scope: !3097)
!3122 = !DILocation(line: 63, column: 5, scope: !3118)
!3123 = !DILocation(line: 64, column: 10, scope: !3097)
!3124 = !DILocation(line: 64, column: 3, scope: !3097)
!3125 = !DILocation(line: 65, column: 1, scope: !3097)
!3126 = !DILocalVariable(name: "p", arg: 1, scope: !146, file: !145, line: 174, type: !30)
!3127 = !DILocation(line: 174, column: 19, scope: !146)
!3128 = !DILocalVariable(name: "pn", arg: 2, scope: !146, file: !145, line: 174, type: !149)
!3129 = !DILocation(line: 174, column: 30, scope: !146)
!3130 = !DILocalVariable(name: "s", arg: 3, scope: !146, file: !145, line: 174, type: !75)
!3131 = !DILocation(line: 174, column: 41, scope: !146)
!3132 = !DILocalVariable(name: "n", scope: !146, file: !145, line: 176, type: !75)
!3133 = !DILocation(line: 176, column: 10, scope: !146)
!3134 = !DILocation(line: 176, column: 15, scope: !146)
!3135 = !DILocation(line: 176, column: 14, scope: !146)
!3136 = !DILocation(line: 178, column: 9, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !146, file: !145, line: 178, column: 7)
!3138 = !DILocation(line: 178, column: 7, scope: !146)
!3139 = !DILocation(line: 180, column: 13, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !145, line: 180, column: 11)
!3141 = distinct !DILexicalBlock(scope: !3137, file: !145, line: 179, column: 5)
!3142 = !DILocation(line: 180, column: 11, scope: !3141)
!3143 = !DILocation(line: 188, column: 32, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3140, file: !145, line: 181, column: 9)
!3145 = !DILocation(line: 188, column: 30, scope: !3144)
!3146 = !DILocation(line: 188, column: 13, scope: !3144)
!3147 = !DILocation(line: 189, column: 17, scope: !3144)
!3148 = !DILocation(line: 189, column: 16, scope: !3144)
!3149 = !DILocation(line: 189, column: 13, scope: !3144)
!3150 = !DILocation(line: 190, column: 9, scope: !3144)
!3151 = !DILocation(line: 191, column: 11, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3141, file: !145, line: 191, column: 11)
!3153 = !DILocation(line: 191, column: 11, scope: !3141)
!3154 = !DILocation(line: 192, column: 9, scope: !3152)
!3155 = !DILocation(line: 193, column: 5, scope: !3141)
!3156 = !DILocation(line: 200, column: 71, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !145, line: 200, column: 11)
!3158 = distinct !DILexicalBlock(scope: !3137, file: !145, line: 195, column: 5)
!3159 = !DILocation(line: 200, column: 69, scope: !3157)
!3160 = !DILocation(line: 201, column: 14, scope: !3157)
!3161 = !DILocation(line: 201, column: 11, scope: !3157)
!3162 = !DILocation(line: 200, column: 11, scope: !3158)
!3163 = !DILocation(line: 202, column: 9, scope: !3157)
!3164 = !DILocation(line: 203, column: 12, scope: !3158)
!3165 = !DILocation(line: 203, column: 14, scope: !3158)
!3166 = !DILocation(line: 203, column: 18, scope: !3158)
!3167 = !DILocation(line: 203, column: 9, scope: !3158)
!3168 = !DILocation(line: 206, column: 9, scope: !146)
!3169 = !DILocation(line: 206, column: 4, scope: !146)
!3170 = !DILocation(line: 206, column: 7, scope: !146)
!3171 = !DILocation(line: 207, column: 20, scope: !146)
!3172 = !DILocation(line: 207, column: 23, scope: !146)
!3173 = !DILocation(line: 207, column: 27, scope: !146)
!3174 = !DILocation(line: 207, column: 25, scope: !146)
!3175 = !DILocation(line: 207, column: 10, scope: !146)
!3176 = !DILocation(line: 207, column: 3, scope: !146)
!3177 = distinct !DISubprogram(name: "xcharalloc", scope: !145, file: !145, line: 216, type: !3178, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !141, retainedNodes: !4)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!31, !75}
!3180 = !DILocalVariable(name: "n", arg: 1, scope: !3177, file: !145, line: 216, type: !75)
!3181 = !DILocation(line: 216, column: 20, scope: !3177)
!3182 = !DILocation(line: 218, column: 10, scope: !3177)
!3183 = !DILocation(line: 218, column: 3, scope: !3177)
!3184 = distinct !DISubprogram(name: "x2realloc", scope: !142, file: !142, line: 74, type: !3185, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !141, retainedNodes: !4)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!30, !30, !149}
!3187 = !DILocalVariable(name: "p", arg: 1, scope: !3184, file: !142, line: 74, type: !30)
!3188 = !DILocation(line: 74, column: 18, scope: !3184)
!3189 = !DILocalVariable(name: "pn", arg: 2, scope: !3184, file: !142, line: 74, type: !149)
!3190 = !DILocation(line: 74, column: 29, scope: !3184)
!3191 = !DILocation(line: 76, column: 22, scope: !3184)
!3192 = !DILocation(line: 76, column: 25, scope: !3184)
!3193 = !DILocation(line: 76, column: 10, scope: !3184)
!3194 = !DILocation(line: 76, column: 3, scope: !3184)
!3195 = distinct !DISubprogram(name: "xzalloc", scope: !142, file: !142, line: 84, type: !3061, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !141, retainedNodes: !4)
!3196 = !DILocalVariable(name: "n", arg: 1, scope: !3195, file: !142, line: 84, type: !75)
!3197 = !DILocation(line: 84, column: 17, scope: !3195)
!3198 = !DILocation(line: 86, column: 19, scope: !3195)
!3199 = !DILocation(line: 86, column: 10, scope: !3195)
!3200 = !DILocation(line: 86, column: 3, scope: !3195)
!3201 = distinct !DISubprogram(name: "xcalloc", scope: !142, file: !142, line: 93, type: !3045, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !141, retainedNodes: !4)
!3202 = !DILocalVariable(name: "n", arg: 1, scope: !3201, file: !142, line: 93, type: !75)
!3203 = !DILocation(line: 93, column: 17, scope: !3201)
!3204 = !DILocalVariable(name: "s", arg: 2, scope: !3201, file: !142, line: 93, type: !75)
!3205 = !DILocation(line: 93, column: 27, scope: !3201)
!3206 = !DILocalVariable(name: "p", scope: !3201, file: !142, line: 95, type: !30)
!3207 = !DILocation(line: 95, column: 9, scope: !3201)
!3208 = !DILocation(line: 100, column: 7, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3201, file: !142, line: 100, column: 7)
!3210 = !DILocation(line: 101, column: 7, scope: !3209)
!3211 = !DILocation(line: 101, column: 26, scope: !3209)
!3212 = !DILocation(line: 101, column: 29, scope: !3209)
!3213 = !DILocation(line: 101, column: 18, scope: !3209)
!3214 = !DILocation(line: 101, column: 16, scope: !3209)
!3215 = !DILocation(line: 100, column: 7, scope: !3201)
!3216 = !DILocation(line: 102, column: 5, scope: !3209)
!3217 = !DILocation(line: 103, column: 10, scope: !3201)
!3218 = !DILocation(line: 103, column: 3, scope: !3201)
!3219 = distinct !DISubprogram(name: "xmemdup", scope: !142, file: !142, line: 111, type: !3220, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !141, retainedNodes: !4)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!30, !3222, !75}
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3224 = !DILocalVariable(name: "p", arg: 1, scope: !3219, file: !142, line: 111, type: !3222)
!3225 = !DILocation(line: 111, column: 22, scope: !3219)
!3226 = !DILocalVariable(name: "s", arg: 2, scope: !3219, file: !142, line: 111, type: !75)
!3227 = !DILocation(line: 111, column: 32, scope: !3219)
!3228 = !DILocation(line: 113, column: 27, scope: !3219)
!3229 = !DILocation(line: 113, column: 18, scope: !3219)
!3230 = !DILocation(line: 113, column: 31, scope: !3219)
!3231 = !DILocation(line: 113, column: 34, scope: !3219)
!3232 = !DILocation(line: 113, column: 10, scope: !3219)
!3233 = !DILocation(line: 113, column: 3, scope: !3219)
!3234 = distinct !DISubprogram(name: "xstrdup", scope: !142, file: !142, line: 119, type: !2475, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !141, retainedNodes: !4)
!3235 = !DILocalVariable(name: "string", arg: 1, scope: !3234, file: !142, line: 119, type: !6)
!3236 = !DILocation(line: 119, column: 22, scope: !3234)
!3237 = !DILocation(line: 121, column: 19, scope: !3234)
!3238 = !DILocation(line: 121, column: 35, scope: !3234)
!3239 = !DILocation(line: 121, column: 27, scope: !3234)
!3240 = !DILocation(line: 121, column: 43, scope: !3234)
!3241 = !DILocation(line: 121, column: 10, scope: !3234)
!3242 = !DILocation(line: 121, column: 3, scope: !3234)
!3243 = distinct !DISubprogram(name: "xalloc_die", scope: !154, file: !154, line: 32, type: !657, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !4)
!3244 = !DILocation(line: 34, column: 10, scope: !3243)
!3245 = !DILocation(line: 34, column: 3, scope: !3243)
!3246 = !DILocation(line: 40, column: 3, scope: !3243)
!3247 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !156, file: !156, line: 86, type: !3248, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !155, retainedNodes: !4)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!75, !3250, !6, !75, !3251}
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1724, line: 6, baseType: !3253)
!3253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1726, line: 21, baseType: !3254)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1726, line: 13, size: 64, elements: !3255)
!3255 = !{!3256, !3257}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3254, file: !1726, line: 15, baseType: !24, size: 32)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3254, file: !1726, line: 20, baseType: !3258, size: 32, offset: 32)
!3258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3254, file: !1726, line: 16, size: 32, elements: !3259)
!3259 = !{!3260, !3261}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3258, file: !1726, line: 18, baseType: !40, size: 32)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3258, file: !1726, line: 19, baseType: !1735, size: 32)
!3262 = !DILocalVariable(name: "pwc", arg: 1, scope: !3247, file: !156, line: 86, type: !3250)
!3263 = !DILocation(line: 86, column: 23, scope: !3247)
!3264 = !DILocalVariable(name: "s", arg: 2, scope: !3247, file: !156, line: 86, type: !6)
!3265 = !DILocation(line: 86, column: 40, scope: !3247)
!3266 = !DILocalVariable(name: "n", arg: 3, scope: !3247, file: !156, line: 86, type: !75)
!3267 = !DILocation(line: 86, column: 50, scope: !3247)
!3268 = !DILocalVariable(name: "ps", arg: 4, scope: !3247, file: !156, line: 86, type: !3251)
!3269 = !DILocation(line: 86, column: 64, scope: !3247)
!3270 = !DILocalVariable(name: "ret", scope: !3247, file: !156, line: 88, type: !75)
!3271 = !DILocation(line: 88, column: 10, scope: !3247)
!3272 = !DILocalVariable(name: "wc", scope: !3247, file: !156, line: 89, type: !1753)
!3273 = !DILocation(line: 89, column: 11, scope: !3247)
!3274 = !DILocation(line: 105, column: 9, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3247, file: !156, line: 105, column: 7)
!3276 = !DILocation(line: 105, column: 7, scope: !3247)
!3277 = !DILocation(line: 106, column: 9, scope: !3275)
!3278 = !DILocation(line: 106, column: 5, scope: !3275)
!3279 = !DILocation(line: 145, column: 18, scope: !3247)
!3280 = !DILocation(line: 145, column: 23, scope: !3247)
!3281 = !DILocation(line: 145, column: 26, scope: !3247)
!3282 = !DILocation(line: 145, column: 29, scope: !3247)
!3283 = !DILocation(line: 145, column: 9, scope: !3247)
!3284 = !DILocation(line: 145, column: 7, scope: !3247)
!3285 = !DILocation(line: 154, column: 22, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3247, file: !156, line: 154, column: 7)
!3287 = !DILocation(line: 154, column: 19, scope: !3286)
!3288 = !DILocation(line: 154, column: 26, scope: !3286)
!3289 = !DILocation(line: 154, column: 29, scope: !3286)
!3290 = !DILocation(line: 154, column: 31, scope: !3286)
!3291 = !DILocation(line: 154, column: 36, scope: !3286)
!3292 = !DILocation(line: 154, column: 41, scope: !3286)
!3293 = !DILocation(line: 154, column: 7, scope: !3247)
!3294 = !DILocalVariable(name: "uc", scope: !3295, file: !156, line: 156, type: !163)
!3295 = distinct !DILexicalBlock(scope: !3286, file: !156, line: 155, column: 5)
!3296 = !DILocation(line: 156, column: 21, scope: !3295)
!3297 = !DILocation(line: 156, column: 27, scope: !3295)
!3298 = !DILocation(line: 156, column: 26, scope: !3295)
!3299 = !DILocation(line: 157, column: 14, scope: !3295)
!3300 = !DILocation(line: 157, column: 8, scope: !3295)
!3301 = !DILocation(line: 157, column: 12, scope: !3295)
!3302 = !DILocation(line: 158, column: 7, scope: !3295)
!3303 = !DILocation(line: 162, column: 10, scope: !3247)
!3304 = !DILocation(line: 162, column: 3, scope: !3247)
!3305 = !DILocation(line: 163, column: 1, scope: !3247)
!3306 = distinct !DISubprogram(name: "c_strcasecmp", scope: !159, file: !159, line: 27, type: !3307, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !158, retainedNodes: !4)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!24, !6, !6}
!3309 = !DILocalVariable(name: "s1", arg: 1, scope: !3306, file: !159, line: 27, type: !6)
!3310 = !DILocation(line: 27, column: 27, scope: !3306)
!3311 = !DILocalVariable(name: "s2", arg: 2, scope: !3306, file: !159, line: 27, type: !6)
!3312 = !DILocation(line: 27, column: 43, scope: !3306)
!3313 = !DILocalVariable(name: "p1", scope: !3306, file: !159, line: 29, type: !161)
!3314 = !DILocation(line: 29, column: 33, scope: !3306)
!3315 = !DILocation(line: 29, column: 62, scope: !3306)
!3316 = !DILocalVariable(name: "p2", scope: !3306, file: !159, line: 30, type: !161)
!3317 = !DILocation(line: 30, column: 33, scope: !3306)
!3318 = !DILocation(line: 30, column: 62, scope: !3306)
!3319 = !DILocalVariable(name: "c1", scope: !3306, file: !159, line: 31, type: !163)
!3320 = !DILocation(line: 31, column: 17, scope: !3306)
!3321 = !DILocalVariable(name: "c2", scope: !3306, file: !159, line: 31, type: !163)
!3322 = !DILocation(line: 31, column: 21, scope: !3306)
!3323 = !DILocation(line: 33, column: 7, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3306, file: !159, line: 33, column: 7)
!3325 = !DILocation(line: 33, column: 13, scope: !3324)
!3326 = !DILocation(line: 33, column: 10, scope: !3324)
!3327 = !DILocation(line: 33, column: 7, scope: !3306)
!3328 = !DILocation(line: 34, column: 5, scope: !3324)
!3329 = !DILocation(line: 36, column: 3, scope: !3306)
!3330 = !DILocation(line: 38, column: 24, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3306, file: !159, line: 37, column: 5)
!3332 = !DILocation(line: 38, column: 23, scope: !3331)
!3333 = !DILocation(line: 38, column: 12, scope: !3331)
!3334 = !DILocation(line: 38, column: 10, scope: !3331)
!3335 = !DILocation(line: 39, column: 24, scope: !3331)
!3336 = !DILocation(line: 39, column: 23, scope: !3331)
!3337 = !DILocation(line: 39, column: 12, scope: !3331)
!3338 = !DILocation(line: 39, column: 10, scope: !3331)
!3339 = !DILocation(line: 41, column: 11, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3331, file: !159, line: 41, column: 11)
!3341 = !DILocation(line: 41, column: 14, scope: !3340)
!3342 = !DILocation(line: 41, column: 11, scope: !3331)
!3343 = !DILocation(line: 42, column: 9, scope: !3340)
!3344 = !DILocation(line: 44, column: 7, scope: !3331)
!3345 = !DILocation(line: 45, column: 7, scope: !3331)
!3346 = !DILocation(line: 46, column: 5, scope: !3331)
!3347 = !DILocation(line: 47, column: 10, scope: !3306)
!3348 = !DILocation(line: 47, column: 16, scope: !3306)
!3349 = !DILocation(line: 47, column: 13, scope: !3306)
!3350 = distinct !{!3350, !3329, !3351, !627}
!3351 = !DILocation(line: 47, column: 18, scope: !3306)
!3352 = !DILocation(line: 50, column: 12, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3306, file: !159, line: 49, column: 7)
!3354 = !DILocation(line: 50, column: 17, scope: !3353)
!3355 = !DILocation(line: 50, column: 15, scope: !3353)
!3356 = !DILocation(line: 50, column: 5, scope: !3353)
!3357 = !DILocation(line: 56, column: 1, scope: !3306)
!3358 = distinct !DISubprogram(name: "close_stream", scope: !165, file: !165, line: 56, type: !3359, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !164, retainedNodes: !4)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!24, !3361}
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2752, line: 7, baseType: !3363)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2754, line: 49, size: 1728, elements: !3364)
!3364 = !{!3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3363, file: !2754, line: 51, baseType: !24, size: 32)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3363, file: !2754, line: 54, baseType: !31, size: 64, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3363, file: !2754, line: 55, baseType: !31, size: 64, offset: 128)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3363, file: !2754, line: 56, baseType: !31, size: 64, offset: 192)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3363, file: !2754, line: 57, baseType: !31, size: 64, offset: 256)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3363, file: !2754, line: 58, baseType: !31, size: 64, offset: 320)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3363, file: !2754, line: 59, baseType: !31, size: 64, offset: 384)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3363, file: !2754, line: 60, baseType: !31, size: 64, offset: 448)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3363, file: !2754, line: 61, baseType: !31, size: 64, offset: 512)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3363, file: !2754, line: 64, baseType: !31, size: 64, offset: 576)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3363, file: !2754, line: 65, baseType: !31, size: 64, offset: 640)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3363, file: !2754, line: 66, baseType: !31, size: 64, offset: 704)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3363, file: !2754, line: 68, baseType: !2769, size: 64, offset: 768)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3363, file: !2754, line: 70, baseType: !3379, size: 64, offset: 832)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3363, file: !2754, line: 72, baseType: !24, size: 32, offset: 896)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3363, file: !2754, line: 73, baseType: !24, size: 32, offset: 928)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3363, file: !2754, line: 74, baseType: !2776, size: 64, offset: 960)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3363, file: !2754, line: 77, baseType: !74, size: 16, offset: 1024)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3363, file: !2754, line: 78, baseType: !2781, size: 8, offset: 1040)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3363, file: !2754, line: 79, baseType: !2783, size: 8, offset: 1048)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3363, file: !2754, line: 81, baseType: !2787, size: 64, offset: 1088)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3363, file: !2754, line: 89, baseType: !2790, size: 64, offset: 1152)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3363, file: !2754, line: 91, baseType: !2792, size: 64, offset: 1216)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3363, file: !2754, line: 92, baseType: !2795, size: 64, offset: 1280)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3363, file: !2754, line: 93, baseType: !3379, size: 64, offset: 1344)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3363, file: !2754, line: 94, baseType: !30, size: 64, offset: 1408)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3363, file: !2754, line: 95, baseType: !75, size: 64, offset: 1472)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3363, file: !2754, line: 96, baseType: !24, size: 32, offset: 1536)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3363, file: !2754, line: 98, baseType: !2802, size: 160, offset: 1568)
!3395 = !DILocalVariable(name: "stream", arg: 1, scope: !3358, file: !165, line: 56, type: !3361)
!3396 = !DILocation(line: 56, column: 21, scope: !3358)
!3397 = !DILocalVariable(name: "some_pending", scope: !3358, file: !165, line: 58, type: !3398)
!3398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!3399 = !DILocation(line: 58, column: 14, scope: !3358)
!3400 = !DILocation(line: 58, column: 42, scope: !3358)
!3401 = !DILocation(line: 58, column: 30, scope: !3358)
!3402 = !DILocation(line: 58, column: 50, scope: !3358)
!3403 = !DILocalVariable(name: "prev_fail", scope: !3358, file: !165, line: 59, type: !3398)
!3404 = !DILocation(line: 59, column: 14, scope: !3358)
!3405 = !DILocation(line: 59, column: 27, scope: !3358)
!3406 = !DILocation(line: 59, column: 43, scope: !3358)
!3407 = !DILocalVariable(name: "fclose_fail", scope: !3358, file: !165, line: 60, type: !3398)
!3408 = !DILocation(line: 60, column: 14, scope: !3358)
!3409 = !DILocation(line: 60, column: 37, scope: !3358)
!3410 = !DILocation(line: 60, column: 29, scope: !3358)
!3411 = !DILocation(line: 60, column: 45, scope: !3358)
!3412 = !DILocation(line: 70, column: 7, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3358, file: !165, line: 70, column: 7)
!3414 = !DILocation(line: 70, column: 17, scope: !3413)
!3415 = !DILocation(line: 70, column: 21, scope: !3413)
!3416 = !DILocation(line: 70, column: 33, scope: !3413)
!3417 = !DILocation(line: 70, column: 37, scope: !3413)
!3418 = !DILocation(line: 70, column: 50, scope: !3413)
!3419 = !DILocation(line: 70, column: 53, scope: !3413)
!3420 = !DILocation(line: 70, column: 59, scope: !3413)
!3421 = !DILocation(line: 70, column: 7, scope: !3358)
!3422 = !DILocation(line: 72, column: 13, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3424, file: !165, line: 72, column: 11)
!3424 = distinct !DILexicalBlock(scope: !3413, file: !165, line: 71, column: 5)
!3425 = !DILocation(line: 72, column: 11, scope: !3424)
!3426 = !DILocation(line: 73, column: 9, scope: !3423)
!3427 = !DILocation(line: 73, column: 15, scope: !3423)
!3428 = !DILocation(line: 74, column: 7, scope: !3424)
!3429 = !DILocation(line: 77, column: 3, scope: !3358)
!3430 = !DILocation(line: 78, column: 1, scope: !3358)
!3431 = distinct !DISubprogram(name: "hard_locale", scope: !167, file: !167, line: 27, type: !3432, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !166, retainedNodes: !4)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!17, !24}
!3434 = !DILocalVariable(name: "category", arg: 1, scope: !3431, file: !167, line: 27, type: !24)
!3435 = !DILocation(line: 27, column: 18, scope: !3431)
!3436 = !DILocalVariable(name: "locale", scope: !3431, file: !167, line: 29, type: !3437)
!3437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3438)
!3438 = !{!3439}
!3439 = !DISubrange(count: 257)
!3440 = !DILocation(line: 29, column: 8, scope: !3431)
!3441 = !DILocation(line: 31, column: 25, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3431, file: !167, line: 31, column: 7)
!3443 = !DILocation(line: 31, column: 35, scope: !3442)
!3444 = !DILocation(line: 31, column: 7, scope: !3442)
!3445 = !DILocation(line: 31, column: 7, scope: !3431)
!3446 = !DILocation(line: 32, column: 5, scope: !3442)
!3447 = !DILocation(line: 34, column: 20, scope: !3431)
!3448 = !DILocation(line: 34, column: 12, scope: !3431)
!3449 = !DILocation(line: 34, column: 33, scope: !3431)
!3450 = !DILocation(line: 34, column: 38, scope: !3431)
!3451 = !DILocation(line: 34, column: 49, scope: !3431)
!3452 = !DILocation(line: 34, column: 41, scope: !3431)
!3453 = !DILocation(line: 34, column: 66, scope: !3431)
!3454 = !DILocation(line: 34, column: 10, scope: !3431)
!3455 = !DILocation(line: 34, column: 3, scope: !3431)
!3456 = !DILocation(line: 35, column: 1, scope: !3431)
!3457 = distinct !DISubprogram(name: "locale_charset", scope: !169, file: !169, line: 831, type: !3458, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !168, retainedNodes: !4)
!3458 = !DISubroutineType(types: !13)
!3459 = !DILocalVariable(name: "codeset", scope: !3457, file: !169, line: 833, type: !6)
!3460 = !DILocation(line: 833, column: 15, scope: !3457)
!3461 = !DILocation(line: 847, column: 13, scope: !3457)
!3462 = !DILocation(line: 847, column: 11, scope: !3457)
!3463 = !DILocation(line: 911, column: 7, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3457, file: !169, line: 911, column: 7)
!3465 = !DILocation(line: 911, column: 15, scope: !3464)
!3466 = !DILocation(line: 911, column: 7, scope: !3457)
!3467 = !DILocation(line: 913, column: 13, scope: !3464)
!3468 = !DILocation(line: 913, column: 5, scope: !3464)
!3469 = !DILocation(line: 1070, column: 13, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !169, line: 1070, column: 13)
!3471 = distinct !DILexicalBlock(scope: !3472, file: !169, line: 1060, column: 7)
!3472 = distinct !DILexicalBlock(scope: !3457, file: !169, line: 1019, column: 3)
!3473 = !DILocation(line: 1070, column: 24, scope: !3470)
!3474 = !DILocation(line: 1070, column: 13, scope: !3471)
!3475 = !DILocation(line: 1071, column: 19, scope: !3470)
!3476 = !DILocation(line: 1071, column: 11, scope: !3470)
!3477 = !DILocation(line: 1158, column: 10, scope: !3457)
!3478 = !DILocation(line: 1158, column: 3, scope: !3457)
!3479 = distinct !DISubprogram(name: "setlocale_null_r", scope: !559, file: !559, line: 269, type: !3480, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !558, retainedNodes: !4)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!24, !24, !31, !75}
!3482 = !DILocalVariable(name: "category", arg: 1, scope: !3479, file: !559, line: 269, type: !24)
!3483 = !DILocation(line: 269, column: 23, scope: !3479)
!3484 = !DILocalVariable(name: "buf", arg: 2, scope: !3479, file: !559, line: 269, type: !31)
!3485 = !DILocation(line: 269, column: 39, scope: !3479)
!3486 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3479, file: !559, line: 269, type: !75)
!3487 = !DILocation(line: 269, column: 51, scope: !3479)
!3488 = !DILocation(line: 274, column: 35, scope: !3479)
!3489 = !DILocation(line: 274, column: 45, scope: !3479)
!3490 = !DILocation(line: 274, column: 50, scope: !3479)
!3491 = !DILocation(line: 274, column: 10, scope: !3479)
!3492 = !DILocation(line: 274, column: 3, scope: !3479)
!3493 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !559, file: !559, line: 91, type: !3480, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !558, retainedNodes: !4)
!3494 = !DILocalVariable(name: "category", arg: 1, scope: !3493, file: !559, line: 91, type: !24)
!3495 = !DILocation(line: 91, column: 30, scope: !3493)
!3496 = !DILocalVariable(name: "buf", arg: 2, scope: !3493, file: !559, line: 91, type: !31)
!3497 = !DILocation(line: 91, column: 46, scope: !3493)
!3498 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3493, file: !559, line: 91, type: !75)
!3499 = !DILocation(line: 91, column: 58, scope: !3493)
!3500 = !DILocalVariable(name: "result", scope: !3493, file: !559, line: 140, type: !6)
!3501 = !DILocation(line: 140, column: 15, scope: !3493)
!3502 = !DILocation(line: 140, column: 51, scope: !3493)
!3503 = !DILocation(line: 140, column: 24, scope: !3493)
!3504 = !DILocation(line: 142, column: 7, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3493, file: !559, line: 142, column: 7)
!3506 = !DILocation(line: 142, column: 14, scope: !3505)
!3507 = !DILocation(line: 142, column: 7, scope: !3493)
!3508 = !DILocation(line: 145, column: 11, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3510, file: !559, line: 145, column: 11)
!3510 = distinct !DILexicalBlock(scope: !3505, file: !559, line: 143, column: 5)
!3511 = !DILocation(line: 145, column: 19, scope: !3509)
!3512 = !DILocation(line: 145, column: 11, scope: !3510)
!3513 = !DILocation(line: 149, column: 9, scope: !3509)
!3514 = !DILocation(line: 149, column: 16, scope: !3509)
!3515 = !DILocation(line: 150, column: 7, scope: !3510)
!3516 = !DILocalVariable(name: "length", scope: !3517, file: !559, line: 154, type: !75)
!3517 = distinct !DILexicalBlock(scope: !3505, file: !559, line: 153, column: 5)
!3518 = !DILocation(line: 154, column: 14, scope: !3517)
!3519 = !DILocation(line: 154, column: 31, scope: !3517)
!3520 = !DILocation(line: 154, column: 23, scope: !3517)
!3521 = !DILocation(line: 155, column: 11, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3517, file: !559, line: 155, column: 11)
!3523 = !DILocation(line: 155, column: 20, scope: !3522)
!3524 = !DILocation(line: 155, column: 18, scope: !3522)
!3525 = !DILocation(line: 155, column: 11, scope: !3517)
!3526 = !DILocation(line: 157, column: 19, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3522, file: !559, line: 156, column: 9)
!3528 = !DILocation(line: 157, column: 24, scope: !3527)
!3529 = !DILocation(line: 157, column: 32, scope: !3527)
!3530 = !DILocation(line: 157, column: 39, scope: !3527)
!3531 = !DILocation(line: 157, column: 11, scope: !3527)
!3532 = !DILocation(line: 158, column: 11, scope: !3527)
!3533 = !DILocation(line: 162, column: 15, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3535, file: !559, line: 162, column: 15)
!3535 = distinct !DILexicalBlock(scope: !3522, file: !559, line: 161, column: 9)
!3536 = !DILocation(line: 162, column: 23, scope: !3534)
!3537 = !DILocation(line: 162, column: 15, scope: !3535)
!3538 = !DILocation(line: 167, column: 23, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3534, file: !559, line: 163, column: 13)
!3540 = !DILocation(line: 167, column: 28, scope: !3539)
!3541 = !DILocation(line: 167, column: 36, scope: !3539)
!3542 = !DILocation(line: 167, column: 44, scope: !3539)
!3543 = !DILocation(line: 167, column: 15, scope: !3539)
!3544 = !DILocation(line: 168, column: 15, scope: !3539)
!3545 = !DILocation(line: 168, column: 19, scope: !3539)
!3546 = !DILocation(line: 168, column: 27, scope: !3539)
!3547 = !DILocation(line: 168, column: 32, scope: !3539)
!3548 = !DILocation(line: 169, column: 13, scope: !3539)
!3549 = !DILocation(line: 170, column: 11, scope: !3535)
!3550 = !DILocation(line: 174, column: 1, scope: !3493)
!3551 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !559, file: !559, line: 60, type: !3552, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !558, retainedNodes: !4)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!6, !24}
!3554 = !DILocalVariable(name: "category", arg: 1, scope: !3551, file: !559, line: 60, type: !24)
!3555 = !DILocation(line: 60, column: 32, scope: !3551)
!3556 = !DILocalVariable(name: "result", scope: !3551, file: !559, line: 62, type: !6)
!3557 = !DILocation(line: 62, column: 15, scope: !3551)
!3558 = !DILocation(line: 62, column: 35, scope: !3551)
!3559 = !DILocation(line: 62, column: 24, scope: !3551)
!3560 = !DILocation(line: 87, column: 10, scope: !3551)
!3561 = !DILocation(line: 87, column: 3, scope: !3551)
!3562 = distinct !DISubprogram(name: "setlocale_null", scope: !559, file: !559, line: 301, type: !3552, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !558, retainedNodes: !4)
!3563 = !DILocalVariable(name: "category", arg: 1, scope: !3562, file: !559, line: 301, type: !24)
!3564 = !DILocation(line: 301, column: 21, scope: !3562)
!3565 = !DILocation(line: 304, column: 37, scope: !3562)
!3566 = !DILocation(line: 304, column: 10, scope: !3562)
!3567 = !DILocation(line: 304, column: 3, scope: !3562)
!3568 = distinct !DISubprogram(name: "rpl_fclose", scope: !561, file: !561, line: 58, type: !3569, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !560, retainedNodes: !4)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!24, !3571}
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2752, line: 7, baseType: !3573)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2754, line: 49, size: 1728, elements: !3574)
!3574 = !{!3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3573, file: !2754, line: 51, baseType: !24, size: 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3573, file: !2754, line: 54, baseType: !31, size: 64, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3573, file: !2754, line: 55, baseType: !31, size: 64, offset: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3573, file: !2754, line: 56, baseType: !31, size: 64, offset: 192)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3573, file: !2754, line: 57, baseType: !31, size: 64, offset: 256)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3573, file: !2754, line: 58, baseType: !31, size: 64, offset: 320)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3573, file: !2754, line: 59, baseType: !31, size: 64, offset: 384)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3573, file: !2754, line: 60, baseType: !31, size: 64, offset: 448)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3573, file: !2754, line: 61, baseType: !31, size: 64, offset: 512)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3573, file: !2754, line: 64, baseType: !31, size: 64, offset: 576)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3573, file: !2754, line: 65, baseType: !31, size: 64, offset: 640)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3573, file: !2754, line: 66, baseType: !31, size: 64, offset: 704)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3573, file: !2754, line: 68, baseType: !2769, size: 64, offset: 768)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3573, file: !2754, line: 70, baseType: !3589, size: 64, offset: 832)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3573, file: !2754, line: 72, baseType: !24, size: 32, offset: 896)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3573, file: !2754, line: 73, baseType: !24, size: 32, offset: 928)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3573, file: !2754, line: 74, baseType: !2776, size: 64, offset: 960)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3573, file: !2754, line: 77, baseType: !74, size: 16, offset: 1024)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3573, file: !2754, line: 78, baseType: !2781, size: 8, offset: 1040)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3573, file: !2754, line: 79, baseType: !2783, size: 8, offset: 1048)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3573, file: !2754, line: 81, baseType: !2787, size: 64, offset: 1088)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3573, file: !2754, line: 89, baseType: !2790, size: 64, offset: 1152)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3573, file: !2754, line: 91, baseType: !2792, size: 64, offset: 1216)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3573, file: !2754, line: 92, baseType: !2795, size: 64, offset: 1280)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3573, file: !2754, line: 93, baseType: !3589, size: 64, offset: 1344)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3573, file: !2754, line: 94, baseType: !30, size: 64, offset: 1408)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3573, file: !2754, line: 95, baseType: !75, size: 64, offset: 1472)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3573, file: !2754, line: 96, baseType: !24, size: 32, offset: 1536)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3573, file: !2754, line: 98, baseType: !2802, size: 160, offset: 1568)
!3605 = !DILocalVariable(name: "fp", arg: 1, scope: !3568, file: !561, line: 58, type: !3571)
!3606 = !DILocation(line: 58, column: 19, scope: !3568)
!3607 = !DILocalVariable(name: "saved_errno", scope: !3568, file: !561, line: 60, type: !24)
!3608 = !DILocation(line: 60, column: 7, scope: !3568)
!3609 = !DILocalVariable(name: "fd", scope: !3568, file: !561, line: 61, type: !24)
!3610 = !DILocation(line: 61, column: 7, scope: !3568)
!3611 = !DILocalVariable(name: "result", scope: !3568, file: !561, line: 62, type: !24)
!3612 = !DILocation(line: 62, column: 7, scope: !3568)
!3613 = !DILocation(line: 65, column: 16, scope: !3568)
!3614 = !DILocation(line: 65, column: 8, scope: !3568)
!3615 = !DILocation(line: 65, column: 6, scope: !3568)
!3616 = !DILocation(line: 66, column: 7, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3568, file: !561, line: 66, column: 7)
!3618 = !DILocation(line: 66, column: 10, scope: !3617)
!3619 = !DILocation(line: 66, column: 7, scope: !3568)
!3620 = !DILocation(line: 67, column: 28, scope: !3617)
!3621 = !DILocation(line: 67, column: 12, scope: !3617)
!3622 = !DILocation(line: 67, column: 5, scope: !3617)
!3623 = !DILocation(line: 72, column: 9, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3568, file: !561, line: 72, column: 7)
!3625 = !DILocation(line: 72, column: 23, scope: !3624)
!3626 = !DILocation(line: 72, column: 41, scope: !3624)
!3627 = !DILocation(line: 72, column: 33, scope: !3624)
!3628 = !DILocation(line: 72, column: 26, scope: !3624)
!3629 = !DILocation(line: 72, column: 59, scope: !3624)
!3630 = !DILocation(line: 73, column: 7, scope: !3624)
!3631 = !DILocation(line: 73, column: 18, scope: !3624)
!3632 = !DILocation(line: 73, column: 10, scope: !3624)
!3633 = !DILocation(line: 72, column: 7, scope: !3568)
!3634 = !DILocation(line: 74, column: 19, scope: !3624)
!3635 = !DILocation(line: 74, column: 17, scope: !3624)
!3636 = !DILocation(line: 74, column: 5, scope: !3624)
!3637 = !DILocation(line: 100, column: 28, scope: !3568)
!3638 = !DILocation(line: 100, column: 12, scope: !3568)
!3639 = !DILocation(line: 100, column: 10, scope: !3568)
!3640 = !DILocation(line: 105, column: 7, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3568, file: !561, line: 105, column: 7)
!3642 = !DILocation(line: 105, column: 19, scope: !3641)
!3643 = !DILocation(line: 105, column: 7, scope: !3568)
!3644 = !DILocation(line: 107, column: 15, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3641, file: !561, line: 106, column: 5)
!3646 = !DILocation(line: 107, column: 7, scope: !3645)
!3647 = !DILocation(line: 107, column: 13, scope: !3645)
!3648 = !DILocation(line: 108, column: 14, scope: !3645)
!3649 = !DILocation(line: 109, column: 5, scope: !3645)
!3650 = !DILocation(line: 111, column: 10, scope: !3568)
!3651 = !DILocation(line: 111, column: 3, scope: !3568)
!3652 = !DILocation(line: 112, column: 1, scope: !3568)
!3653 = distinct !DISubprogram(name: "rpl_fflush", scope: !563, file: !563, line: 129, type: !3654, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !562, retainedNodes: !4)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!24, !3656}
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2752, line: 7, baseType: !3658)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2754, line: 49, size: 1728, elements: !3659)
!3659 = !{!3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3658, file: !2754, line: 51, baseType: !24, size: 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3658, file: !2754, line: 54, baseType: !31, size: 64, offset: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3658, file: !2754, line: 55, baseType: !31, size: 64, offset: 128)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3658, file: !2754, line: 56, baseType: !31, size: 64, offset: 192)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3658, file: !2754, line: 57, baseType: !31, size: 64, offset: 256)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3658, file: !2754, line: 58, baseType: !31, size: 64, offset: 320)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3658, file: !2754, line: 59, baseType: !31, size: 64, offset: 384)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3658, file: !2754, line: 60, baseType: !31, size: 64, offset: 448)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3658, file: !2754, line: 61, baseType: !31, size: 64, offset: 512)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3658, file: !2754, line: 64, baseType: !31, size: 64, offset: 576)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3658, file: !2754, line: 65, baseType: !31, size: 64, offset: 640)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3658, file: !2754, line: 66, baseType: !31, size: 64, offset: 704)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3658, file: !2754, line: 68, baseType: !2769, size: 64, offset: 768)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3658, file: !2754, line: 70, baseType: !3674, size: 64, offset: 832)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3658, file: !2754, line: 72, baseType: !24, size: 32, offset: 896)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3658, file: !2754, line: 73, baseType: !24, size: 32, offset: 928)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3658, file: !2754, line: 74, baseType: !2776, size: 64, offset: 960)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3658, file: !2754, line: 77, baseType: !74, size: 16, offset: 1024)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3658, file: !2754, line: 78, baseType: !2781, size: 8, offset: 1040)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3658, file: !2754, line: 79, baseType: !2783, size: 8, offset: 1048)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3658, file: !2754, line: 81, baseType: !2787, size: 64, offset: 1088)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3658, file: !2754, line: 89, baseType: !2790, size: 64, offset: 1152)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3658, file: !2754, line: 91, baseType: !2792, size: 64, offset: 1216)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3658, file: !2754, line: 92, baseType: !2795, size: 64, offset: 1280)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3658, file: !2754, line: 93, baseType: !3674, size: 64, offset: 1344)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3658, file: !2754, line: 94, baseType: !30, size: 64, offset: 1408)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3658, file: !2754, line: 95, baseType: !75, size: 64, offset: 1472)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3658, file: !2754, line: 96, baseType: !24, size: 32, offset: 1536)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3658, file: !2754, line: 98, baseType: !2802, size: 160, offset: 1568)
!3690 = !DILocalVariable(name: "stream", arg: 1, scope: !3653, file: !563, line: 129, type: !3656)
!3691 = !DILocation(line: 129, column: 19, scope: !3653)
!3692 = !DILocation(line: 150, column: 7, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3653, file: !563, line: 150, column: 7)
!3694 = !DILocation(line: 150, column: 14, scope: !3693)
!3695 = !DILocation(line: 150, column: 22, scope: !3693)
!3696 = !DILocation(line: 150, column: 27, scope: !3693)
!3697 = !DILocation(line: 150, column: 7, scope: !3653)
!3698 = !DILocation(line: 151, column: 20, scope: !3693)
!3699 = !DILocation(line: 151, column: 12, scope: !3693)
!3700 = !DILocation(line: 151, column: 5, scope: !3693)
!3701 = !DILocation(line: 156, column: 44, scope: !3653)
!3702 = !DILocation(line: 156, column: 3, scope: !3653)
!3703 = !DILocation(line: 158, column: 18, scope: !3653)
!3704 = !DILocation(line: 158, column: 10, scope: !3653)
!3705 = !DILocation(line: 158, column: 3, scope: !3653)
!3706 = !DILocation(line: 235, column: 1, scope: !3653)
!3707 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !563, file: !563, line: 41, type: !3708, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !562, retainedNodes: !4)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{null, !3656}
!3710 = !DILocalVariable(name: "fp", arg: 1, scope: !3707, file: !563, line: 41, type: !3656)
!3711 = !DILocation(line: 41, column: 48, scope: !3707)
!3712 = !DILocation(line: 43, column: 7, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3707, file: !563, line: 43, column: 7)
!3714 = !DILocation(line: 43, column: 11, scope: !3713)
!3715 = !DILocation(line: 43, column: 18, scope: !3713)
!3716 = !DILocation(line: 43, column: 7, scope: !3707)
!3717 = !DILocation(line: 45, column: 13, scope: !3713)
!3718 = !DILocation(line: 45, column: 5, scope: !3713)
!3719 = !DILocation(line: 46, column: 1, scope: !3707)
!3720 = distinct !DISubprogram(name: "rpl_fseeko", scope: !565, file: !565, line: 28, type: !3721, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !564, retainedNodes: !4)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!24, !3723, !3757, !24}
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2752, line: 7, baseType: !3725)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2754, line: 49, size: 1728, elements: !3726)
!3726 = !{!3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3725, file: !2754, line: 51, baseType: !24, size: 32)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3725, file: !2754, line: 54, baseType: !31, size: 64, offset: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3725, file: !2754, line: 55, baseType: !31, size: 64, offset: 128)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3725, file: !2754, line: 56, baseType: !31, size: 64, offset: 192)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3725, file: !2754, line: 57, baseType: !31, size: 64, offset: 256)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3725, file: !2754, line: 58, baseType: !31, size: 64, offset: 320)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3725, file: !2754, line: 59, baseType: !31, size: 64, offset: 384)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3725, file: !2754, line: 60, baseType: !31, size: 64, offset: 448)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3725, file: !2754, line: 61, baseType: !31, size: 64, offset: 512)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3725, file: !2754, line: 64, baseType: !31, size: 64, offset: 576)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3725, file: !2754, line: 65, baseType: !31, size: 64, offset: 640)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3725, file: !2754, line: 66, baseType: !31, size: 64, offset: 704)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3725, file: !2754, line: 68, baseType: !2769, size: 64, offset: 768)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3725, file: !2754, line: 70, baseType: !3741, size: 64, offset: 832)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3725, file: !2754, line: 72, baseType: !24, size: 32, offset: 896)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3725, file: !2754, line: 73, baseType: !24, size: 32, offset: 928)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3725, file: !2754, line: 74, baseType: !2776, size: 64, offset: 960)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3725, file: !2754, line: 77, baseType: !74, size: 16, offset: 1024)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3725, file: !2754, line: 78, baseType: !2781, size: 8, offset: 1040)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3725, file: !2754, line: 79, baseType: !2783, size: 8, offset: 1048)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3725, file: !2754, line: 81, baseType: !2787, size: 64, offset: 1088)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3725, file: !2754, line: 89, baseType: !2790, size: 64, offset: 1152)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3725, file: !2754, line: 91, baseType: !2792, size: 64, offset: 1216)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3725, file: !2754, line: 92, baseType: !2795, size: 64, offset: 1280)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3725, file: !2754, line: 93, baseType: !3741, size: 64, offset: 1344)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3725, file: !2754, line: 94, baseType: !30, size: 64, offset: 1408)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3725, file: !2754, line: 95, baseType: !75, size: 64, offset: 1472)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3725, file: !2754, line: 96, baseType: !24, size: 32, offset: 1536)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3725, file: !2754, line: 98, baseType: !2802, size: 160, offset: 1568)
!3757 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3023, line: 63, baseType: !2776)
!3758 = !DILocalVariable(name: "fp", arg: 1, scope: !3720, file: !565, line: 28, type: !3723)
!3759 = !DILocation(line: 28, column: 15, scope: !3720)
!3760 = !DILocalVariable(name: "offset", arg: 2, scope: !3720, file: !565, line: 28, type: !3757)
!3761 = !DILocation(line: 28, column: 25, scope: !3720)
!3762 = !DILocalVariable(name: "whence", arg: 3, scope: !3720, file: !565, line: 28, type: !24)
!3763 = !DILocation(line: 28, column: 37, scope: !3720)
!3764 = !DILocation(line: 52, column: 7, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3720, file: !565, line: 52, column: 7)
!3766 = !DILocation(line: 52, column: 11, scope: !3765)
!3767 = !DILocation(line: 52, column: 27, scope: !3765)
!3768 = !DILocation(line: 52, column: 31, scope: !3765)
!3769 = !DILocation(line: 52, column: 24, scope: !3765)
!3770 = !DILocation(line: 53, column: 7, scope: !3765)
!3771 = !DILocation(line: 53, column: 10, scope: !3765)
!3772 = !DILocation(line: 53, column: 14, scope: !3765)
!3773 = !DILocation(line: 53, column: 31, scope: !3765)
!3774 = !DILocation(line: 53, column: 35, scope: !3765)
!3775 = !DILocation(line: 53, column: 28, scope: !3765)
!3776 = !DILocation(line: 54, column: 7, scope: !3765)
!3777 = !DILocation(line: 54, column: 10, scope: !3765)
!3778 = !DILocation(line: 54, column: 14, scope: !3765)
!3779 = !DILocation(line: 54, column: 28, scope: !3765)
!3780 = !DILocation(line: 52, column: 7, scope: !3720)
!3781 = !DILocalVariable(name: "pos", scope: !3782, file: !565, line: 117, type: !3757)
!3782 = distinct !DILexicalBlock(scope: !3765, file: !565, line: 113, column: 5)
!3783 = !DILocation(line: 117, column: 13, scope: !3782)
!3784 = !DILocation(line: 117, column: 34, scope: !3782)
!3785 = !DILocation(line: 117, column: 26, scope: !3782)
!3786 = !DILocation(line: 117, column: 39, scope: !3782)
!3787 = !DILocation(line: 117, column: 47, scope: !3782)
!3788 = !DILocation(line: 117, column: 19, scope: !3782)
!3789 = !DILocation(line: 118, column: 11, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3782, file: !565, line: 118, column: 11)
!3791 = !DILocation(line: 118, column: 15, scope: !3790)
!3792 = !DILocation(line: 118, column: 11, scope: !3782)
!3793 = !DILocation(line: 124, column: 11, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3790, file: !565, line: 119, column: 9)
!3795 = !DILocation(line: 129, column: 7, scope: !3782)
!3796 = !DILocation(line: 129, column: 11, scope: !3782)
!3797 = !DILocation(line: 129, column: 18, scope: !3782)
!3798 = !DILocation(line: 130, column: 21, scope: !3782)
!3799 = !DILocation(line: 130, column: 7, scope: !3782)
!3800 = !DILocation(line: 130, column: 11, scope: !3782)
!3801 = !DILocation(line: 130, column: 19, scope: !3782)
!3802 = !DILocation(line: 161, column: 7, scope: !3782)
!3803 = !DILocation(line: 163, column: 18, scope: !3720)
!3804 = !DILocation(line: 163, column: 22, scope: !3720)
!3805 = !DILocation(line: 163, column: 30, scope: !3720)
!3806 = !DILocation(line: 163, column: 10, scope: !3720)
!3807 = !DILocation(line: 163, column: 3, scope: !3720)
!3808 = !DILocation(line: 164, column: 1, scope: !3720)
!3809 = distinct !DISubprogram(name: "c_isalnum", scope: !3810, file: !3810, line: 169, type: !3432, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !566, retainedNodes: !4)
!3810 = !DIFile(filename: "../lib/c-ctype.h", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!3811 = !DILocalVariable(name: "c", arg: 1, scope: !3809, file: !3810, line: 169, type: !24)
!3812 = !DILocation(line: 169, column: 16, scope: !3809)
!3813 = !DILocation(line: 171, column: 11, scope: !3809)
!3814 = !DILocation(line: 171, column: 3, scope: !3809)
!3815 = !DILocation(line: 176, column: 7, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3809, file: !3810, line: 172, column: 5)
!3817 = !DILocation(line: 178, column: 7, scope: !3816)
!3818 = !DILocation(line: 180, column: 1, scope: !3809)
!3819 = distinct !DISubprogram(name: "c_isalpha", scope: !3810, file: !3810, line: 183, type: !3432, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !566, retainedNodes: !4)
!3820 = !DILocalVariable(name: "c", arg: 1, scope: !3819, file: !3810, line: 183, type: !24)
!3821 = !DILocation(line: 183, column: 16, scope: !3819)
!3822 = !DILocation(line: 185, column: 11, scope: !3819)
!3823 = !DILocation(line: 185, column: 3, scope: !3819)
!3824 = !DILocation(line: 189, column: 7, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3819, file: !3810, line: 186, column: 5)
!3826 = !DILocation(line: 191, column: 7, scope: !3825)
!3827 = !DILocation(line: 193, column: 1, scope: !3819)
!3828 = distinct !DISubprogram(name: "c_isascii", scope: !3810, file: !3810, line: 198, type: !3432, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !566, retainedNodes: !4)
!3829 = !DILocalVariable(name: "c", arg: 1, scope: !3828, file: !3810, line: 198, type: !24)
!3830 = !DILocation(line: 198, column: 16, scope: !3828)
!3831 = !DILocation(line: 200, column: 11, scope: !3828)
!3832 = !DILocation(line: 200, column: 3, scope: !3828)
!3833 = !DILocation(line: 208, column: 7, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3828, file: !3810, line: 201, column: 5)
!3835 = !DILocation(line: 210, column: 7, scope: !3834)
!3836 = !DILocation(line: 212, column: 1, scope: !3828)
!3837 = distinct !DISubprogram(name: "c_isblank", scope: !3810, file: !3810, line: 215, type: !3432, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !566, retainedNodes: !4)
!3838 = !DILocalVariable(name: "c", arg: 1, scope: !3837, file: !3810, line: 215, type: !24)
!3839 = !DILocation(line: 215, column: 16, scope: !3837)
!3840 = !DILocation(line: 217, column: 10, scope: !3837)
!3841 = !DILocation(line: 217, column: 12, scope: !3837)
!3842 = !DILocation(line: 217, column: 19, scope: !3837)
!3843 = !DILocation(line: 217, column: 22, scope: !3837)
!3844 = !DILocation(line: 217, column: 24, scope: !3837)
!3845 = !DILocation(line: 217, column: 3, scope: !3837)
!3846 = distinct !DISubprogram(name: "c_iscntrl", scope: !3810, file: !3810, line: 221, type: !3432, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !566, retainedNodes: !4)
!3847 = !DILocalVariable(name: "c", arg: 1, scope: !3846, file: !3810, line: 221, type: !24)
!3848 = !DILocation(line: 221, column: 16, scope: !3846)
!3849 = !DILocation(line: 223, column: 11, scope: !3846)
!3850 = !DILocation(line: 223, column: 3, scope: !3846)
!3851 = !DILocation(line: 226, column: 7, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3846, file: !3810, line: 224, column: 5)
!3853 = !DILocation(line: 228, column: 7, scope: !3852)
!3854 = !DILocation(line: 230, column: 1, scope: !3846)
!3855 = distinct !DISubprogram(name: "c_isdigit", scope: !3810, file: !3810, line: 233, type: !3432, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !566, retainedNodes: !4)
!3856 = !DILocalVariable(name: "c", arg: 1, scope: !3855, file: !3810, line: 233, type: !24)
!3857 = !DILocation(line: 233, column: 16, scope: !3855)
!3858 = !DILocation(line: 235, column: 11, scope: !3855)
!3859 = !DILocation(line: 235, column: 3, scope: !3855)
!3860 = !DILocation(line: 238, column: 7, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3855, file: !3810, line: 236, column: 5)
!3862 = !DILocation(line: 240, column: 7, scope: !3861)
!3863 = !DILocation(line: 242, column: 1, scope: !3855)
!3864 = distinct !DISubprogram(name: "c_isgraph", scope: !3810, file: !3810, line: 245, type: !3432, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !566, retainedNodes: !4)
!3865 = !DILocalVariable(name: "c", arg: 1, scope: !3864, file: !3810, line: 245, type: !24)
!3866 = !DILocation(line: 245, column: 16, scope: !3864)
!3867 = !DILocation(line: 247, column: 11, scope: !3864)
!3868 = !DILocation(line: 247, column: 3, scope: !3864)
!3869 = !DILocation(line: 253, column: 7, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3864, file: !3810, line: 248, column: 5)
!3871 = !DILocation(line: 255, column: 7, scope: !3870)
!3872 = !DILocation(line: 257, column: 1, scope: !3864)
!3873 = distinct !DISubprogram(name: "c_islower", scope: !3810, file: !3810, line: 260, type: !3432, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !566, retainedNodes: !4)
!3874 = !DILocalVariable(name: "c", arg: 1, scope: !3873, file: !3810, line: 260, type: !24)
!3875 = !DILocation(line: 260, column: 16, scope: !3873)
!3876 = !DILocation(line: 262, column: 11, scope: !3873)
!3877 = !DILocation(line: 262, column: 3, scope: !3873)
!3878 = !DILocation(line: 265, column: 7, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3873, file: !3810, line: 263, column: 5)
!3880 = !DILocation(line: 267, column: 7, scope: !3879)
!3881 = !DILocation(line: 269, column: 1, scope: !3873)
!3882 = distinct !DISubprogram(name: "c_isprint", scope: !3810, file: !3810, line: 272, type: !3432, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !566, retainedNodes: !4)
!3883 = !DILocalVariable(name: "c", arg: 1, scope: !3882, file: !3810, line: 272, type: !24)
!3884 = !DILocation(line: 272, column: 16, scope: !3882)
!3885 = !DILocation(line: 274, column: 11, scope: !3882)
!3886 = !DILocation(line: 274, column: 3, scope: !3882)
!3887 = !DILocation(line: 281, column: 7, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3882, file: !3810, line: 275, column: 5)
!3889 = !DILocation(line: 283, column: 7, scope: !3888)
!3890 = !DILocation(line: 285, column: 1, scope: !3882)
!3891 = distinct !DISubprogram(name: "c_ispunct", scope: !3810, file: !3810, line: 288, type: !3432, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !566, retainedNodes: !4)
!3892 = !DILocalVariable(name: "c", arg: 1, scope: !3891, file: !3810, line: 288, type: !24)
!3893 = !DILocation(line: 288, column: 16, scope: !3891)
!3894 = !DILocation(line: 290, column: 11, scope: !3891)
!3895 = !DILocation(line: 290, column: 3, scope: !3891)
!3896 = !DILocation(line: 293, column: 7, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3891, file: !3810, line: 291, column: 5)
!3898 = !DILocation(line: 295, column: 7, scope: !3897)
!3899 = !DILocation(line: 297, column: 1, scope: !3891)
!3900 = distinct !DISubprogram(name: "c_isspace", scope: !3810, file: !3810, line: 300, type: !3432, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !566, retainedNodes: !4)
!3901 = !DILocalVariable(name: "c", arg: 1, scope: !3900, file: !3810, line: 300, type: !24)
!3902 = !DILocation(line: 300, column: 16, scope: !3900)
!3903 = !DILocation(line: 302, column: 11, scope: !3900)
!3904 = !DILocation(line: 302, column: 3, scope: !3900)
!3905 = !DILocation(line: 305, column: 7, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3900, file: !3810, line: 303, column: 5)
!3907 = !DILocation(line: 307, column: 7, scope: !3906)
!3908 = !DILocation(line: 309, column: 1, scope: !3900)
!3909 = distinct !DISubprogram(name: "c_isupper", scope: !3810, file: !3810, line: 312, type: !3432, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !566, retainedNodes: !4)
!3910 = !DILocalVariable(name: "c", arg: 1, scope: !3909, file: !3810, line: 312, type: !24)
!3911 = !DILocation(line: 312, column: 16, scope: !3909)
!3912 = !DILocation(line: 314, column: 11, scope: !3909)
!3913 = !DILocation(line: 314, column: 3, scope: !3909)
!3914 = !DILocation(line: 317, column: 7, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3909, file: !3810, line: 315, column: 5)
!3916 = !DILocation(line: 319, column: 7, scope: !3915)
!3917 = !DILocation(line: 321, column: 1, scope: !3909)
!3918 = distinct !DISubprogram(name: "c_isxdigit", scope: !3810, file: !3810, line: 324, type: !3432, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !566, retainedNodes: !4)
!3919 = !DILocalVariable(name: "c", arg: 1, scope: !3918, file: !3810, line: 324, type: !24)
!3920 = !DILocation(line: 324, column: 17, scope: !3918)
!3921 = !DILocation(line: 326, column: 11, scope: !3918)
!3922 = !DILocation(line: 326, column: 3, scope: !3918)
!3923 = !DILocation(line: 330, column: 7, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3918, file: !3810, line: 327, column: 5)
!3925 = !DILocation(line: 332, column: 7, scope: !3924)
!3926 = !DILocation(line: 334, column: 1, scope: !3918)
!3927 = distinct !DISubprogram(name: "c_tolower", scope: !3810, file: !3810, line: 337, type: !3928, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !566, retainedNodes: !4)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!24, !24}
!3930 = !DILocalVariable(name: "c", arg: 1, scope: !3927, file: !3810, line: 337, type: !24)
!3931 = !DILocation(line: 337, column: 16, scope: !3927)
!3932 = !DILocation(line: 339, column: 11, scope: !3927)
!3933 = !DILocation(line: 339, column: 3, scope: !3927)
!3934 = !DILocation(line: 342, column: 14, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3927, file: !3810, line: 340, column: 5)
!3936 = !DILocation(line: 342, column: 16, scope: !3935)
!3937 = !DILocation(line: 342, column: 22, scope: !3935)
!3938 = !DILocation(line: 342, column: 7, scope: !3935)
!3939 = !DILocation(line: 344, column: 14, scope: !3935)
!3940 = !DILocation(line: 344, column: 7, scope: !3935)
!3941 = !DILocation(line: 346, column: 1, scope: !3927)
!3942 = distinct !DISubprogram(name: "c_toupper", scope: !3810, file: !3810, line: 349, type: !3928, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !566, retainedNodes: !4)
!3943 = !DILocalVariable(name: "c", arg: 1, scope: !3942, file: !3810, line: 349, type: !24)
!3944 = !DILocation(line: 349, column: 16, scope: !3942)
!3945 = !DILocation(line: 351, column: 11, scope: !3942)
!3946 = !DILocation(line: 351, column: 3, scope: !3942)
!3947 = !DILocation(line: 354, column: 14, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3942, file: !3810, line: 352, column: 5)
!3949 = !DILocation(line: 354, column: 16, scope: !3948)
!3950 = !DILocation(line: 354, column: 22, scope: !3948)
!3951 = !DILocation(line: 354, column: 7, scope: !3948)
!3952 = !DILocation(line: 356, column: 14, scope: !3948)
!3953 = !DILocation(line: 356, column: 7, scope: !3948)
!3954 = !DILocation(line: 358, column: 1, scope: !3942)
