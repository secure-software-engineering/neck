; ModuleID = 'id.bc'
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
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [USER]...\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [105 x i8] c"Print user and group information for each specified USER,\0Aor (when USER omitted) for the current user.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [521 x i8] c"  -a             ignore, for compatibility with other versions\0A  -Z, --context  print only the security context of the process\0A  -g, --group    print only the effective group ID\0A  -G, --groups   print all group IDs\0A  -n, --name     print a name instead of a number, for -ugG\0A  -r, --real     print the real ID instead of the effective ID, with -ugG\0A  -u, --user     print only the effective user ID\0A  -z, --zero     delimit entries with NUL characters, not whitespace;\0A                   not permitted in default format\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"\0AWithout any OPTION, print some useful set of identified information.\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.34 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.35 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.37 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.39 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"agnruzGZ\00", align 1
@longopts = internal constant [10 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 90 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 103 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 71 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.10 = private unnamed_addr constant [55 x i8] c"--context (-Z) works only on an SELinux-enabled kernel\00", align 1
@just_context = internal global i8 0, align 1, !dbg !27
@just_group = internal global i8 0, align 1, !dbg !30
@use_name = internal global i8 0, align 1, !dbg !32
@use_real = internal global i8 0, align 1, !dbg !34
@just_user = internal global i8 0, align 1, !dbg !36
@opt_zero = internal global i8 0, align 1, !dbg !38
@just_group_list = internal global i8 0, align 1, !dbg !40
@.str.12 = private unnamed_addr constant [15 x i8] c"Arnold Robbins\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external dso_local global i32, align 4
@.str.14 = private unnamed_addr constant [50 x i8] c"cannot print security context when user specified\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"cannot print \22only\22 of more than one choice\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"cannot print only names or real IDs in default format\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"option --zero not permitted in default format\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@context = internal global i8* null, align 8, !dbg !42
@.str.19 = private unnamed_addr constant [26 x i8] c"can't get process context\00", align 1
@multiple_users = internal global i8 0, align 1, !dbg !44
@euid = internal global i32 0, align 4, !dbg !19
@.str.20 = private unnamed_addr constant [17 x i8] c"%s: no such user\00", align 1
@ok = internal global i8 1, align 1, !dbg !46
@ruid = internal global i32 0, align 4, !dbg !12
@egid = internal global i32 0, align 4, !dbg !25
@rgid = internal global i32 0, align 4, !dbg !21
@.str.21 = private unnamed_addr constant [25 x i8] c"cannot get effective UID\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"cannot get real UID\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"cannot get effective GID\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"cannot get real GID\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"uid=%s\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c" gid=%s\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c" euid=%s\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c" egid=%s\00", align 1
@.str.56 = private unnamed_addr constant [33 x i8] c"failed to get groups for user %s\00", align 1
@.str.57 = private unnamed_addr constant [45 x i8] c"failed to get groups for the current process\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c" groups=\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c" context=%s\00", align 1
@gidtostr_ptr.buf = internal global [21 x i8] zeroinitializer, align 16, !dbg !58
@uidtostr_ptr.buf = internal global [21 x i8] zeroinitializer, align 16, !dbg !48
@.str.50 = private unnamed_addr constant [32 x i8] c"cannot find name for user ID %s\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.60 = private unnamed_addr constant [33 x i8] c"failed to get groups for user %s\00", align 1
@.str.1.61 = private unnamed_addr constant [45 x i8] c"failed to get groups for the current process\00", align 1
@.str.2.62 = private unnamed_addr constant [34 x i8] c"cannot find name for group ID %lu\00", align 1
@gidtostr_ptr.buf.64 = internal global [21 x i8] zeroinitializer, align 16, !dbg !78
@Version = dso_local global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), align 8, !dbg !86
@.str.67 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal global i8* null, align 8, !dbg !91
@ignore_EPIPE = internal global i8 0, align 1, !dbg !97
@.str.70 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.71 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.72 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !99
@program_name = dso_local global i8* null, align 8, !dbg !105
@.str.81 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.82 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.83 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external dso_local global i8*, align 8
@program_invocation_name = external dso_local global i8*, align 8
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.85, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.86, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.87, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.88, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.89, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.90, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.91, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.92, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.93, i32 0, i32 0), i8* null], align 16, !dbg !111
@.str.84 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.85 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.86 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.87 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.88 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.89 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.90 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.91 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.92 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.93 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !155
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !159
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !171
@.str.10.94 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.95 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.96 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.97 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.14.98 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.99 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.16.100 = private unnamed_addr constant [8 x i8] c"GB18030\00", align 1
@.str.17.101 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.102 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !178
@nslots = internal global i32 1, align 4, !dbg !185
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !173
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !187
@parse_with_separator.E_bad_spec = internal global i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.112, i32 0, i32 0), align 8, !dbg !193
@.str.3.109 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@parse_with_separator.E_invalid_user = internal global i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.111, i32 0, i32 0), align 8, !dbg !214
@parse_with_separator.E_invalid_group = internal global i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.110, i32 0, i32 0), align 8, !dbg !216
@.str.1.110 = private unnamed_addr constant [14 x i8] c"invalid group\00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"invalid user\00", align 1
@.str.2.112 = private unnamed_addr constant [13 x i8] c"invalid spec\00", align 1
@.str.113 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.114 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.115 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.116 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.117 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.118 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.119 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.120 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.121 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.122 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.123 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.124 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.125 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.126 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.127 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.128 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.131 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.132 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.133 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.134 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.135 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.136 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.137 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !218
@.str.150 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.151 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.156 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.157 = private unnamed_addr constant [17 x i8] c"../lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoul = private unnamed_addr constant [81 x i8] c"strtol_error xstrtoul(const char *, char **, int, unsigned long *, const char *)\00", align 1
@.str.166 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.167 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.170 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.171 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 %0) #0 !dbg !690 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !693, metadata !DIExpression()), !dbg !694
  %3 = load i32, i32* %2, align 4, !dbg !695
  %4 = icmp ne i32 %3, 0, !dbg !697
  br i1 %4, label %5, label %11, !dbg !698

5:                                                ; preds = %1
  br label %6, !dbg !699

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !700
  %8 = load i8*, i8** @program_name, align 8, !dbg !700
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %8), !dbg !700
  br label %10, !dbg !700

10:                                               ; preds = %6
  br label %24, !dbg !700

11:                                               ; preds = %1
  %12 = load i8*, i8** @program_name, align 8, !dbg !702
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %12), !dbg !704
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !705
  %15 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* %14), !dbg !705
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !706
  %17 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([521 x i8], [521 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* %16), !dbg !706
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !707
  %19 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* %18), !dbg !707
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !708
  %21 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), %struct._IO_FILE* %20), !dbg !708
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !709
  %23 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0), %struct._IO_FILE* %22), !dbg !709
  call void @emit_ancillary_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)), !dbg !710
  br label %24

24:                                               ; preds = %11, %10
  %25 = load i32, i32* %2, align 4, !dbg !711
  call void @exit(i32 %25) #13, !dbg !712
  unreachable, !dbg !712
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @fputs_unlocked(i8*, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* %0) #3 !dbg !713 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 16
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !717, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !719, metadata !DIExpression()), !dbg !728
  %7 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !728
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !728
  call void @llvm.dbg.declare(metadata i8** %4, metadata !729, metadata !DIExpression()), !dbg !730
  %8 = load i8*, i8** %2, align 8, !dbg !731
  store i8* %8, i8** %4, align 8, !dbg !730
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !732, metadata !DIExpression()), !dbg !734
  %9 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !735
  store %struct.infomap* %9, %struct.infomap** %5, align 8, !dbg !734
  br label %10, !dbg !736

10:                                               ; preds = %25, %1
  %11 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !737
  %12 = getelementptr inbounds %struct.infomap, %struct.infomap* %11, i32 0, i32 0, !dbg !738
  %13 = load i8*, i8** %12, align 8, !dbg !738
  %14 = icmp ne i8* %13, null, !dbg !737
  br i1 %14, label %15, label %23, !dbg !739

15:                                               ; preds = %10
  %16 = load i8*, i8** %2, align 8, !dbg !740
  %17 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !740
  %18 = getelementptr inbounds %struct.infomap, %struct.infomap* %17, i32 0, i32 0, !dbg !740
  %19 = load i8*, i8** %18, align 8, !dbg !740
  %20 = call i32 @strcmp(i8* %16, i8* %19) #14, !dbg !740
  %21 = icmp eq i32 %20, 0, !dbg !740
  %22 = xor i1 %21, true, !dbg !741
  br label %23

23:                                               ; preds = %15, %10
  %24 = phi i1 [ false, %10 ], [ %22, %15 ], !dbg !742
  br i1 %24, label %25, label %28, !dbg !736

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !743
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !743
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !743
  br label %10, !dbg !736, !llvm.loop !744

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !746
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !748
  %31 = load i8*, i8** %30, align 8, !dbg !748
  %32 = icmp ne i8* %31, null, !dbg !746
  br i1 %32, label %33, label %37, !dbg !749

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !750
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !751
  %36 = load i8*, i8** %35, align 8, !dbg !751
  store i8* %36, i8** %4, align 8, !dbg !752
  br label %37, !dbg !753

37:                                               ; preds = %33, %28
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0)), !dbg !754
  call void @llvm.dbg.declare(metadata i8** %6, metadata !755, metadata !DIExpression()), !dbg !756
  %39 = call i8* @setlocale(i32 5, i8* null) #15, !dbg !757
  store i8* %39, i8** %6, align 8, !dbg !756
  %40 = load i8*, i8** %6, align 8, !dbg !758
  %41 = icmp ne i8* %40, null, !dbg !758
  br i1 %41, label %42, label %49, !dbg !760

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8, !dbg !761
  %44 = call i32 @strncmp(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0), i64 3) #14, !dbg !761
  %45 = icmp ne i32 %44, 0, !dbg !761
  br i1 %45, label %46, label %49, !dbg !762

46:                                               ; preds = %42
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !763
  %48 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.37, i64 0, i64 0), %struct._IO_FILE* %47), !dbg !763
  br label %49, !dbg !765

49:                                               ; preds = %46, %42, %37
  %50 = load i8*, i8** %2, align 8, !dbg !766
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0), i8* %50), !dbg !767
  %52 = load i8*, i8** %4, align 8, !dbg !768
  %53 = load i8*, i8** %4, align 8, !dbg !769
  %54 = load i8*, i8** %2, align 8, !dbg !770
  %55 = icmp eq i8* %53, %54, !dbg !771
  %56 = zext i1 %55 to i64, !dbg !769
  %57 = select i1 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !769
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.39, i64 0, i64 0), i8* %52, i8* %57), !dbg !772
  ret void, !dbg !773
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
define dso_local void @klee_dump_memory() #3 !dbg !774 {
  ret void, !dbg !777
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #3 !dbg !778 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.passwd*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !781, metadata !DIExpression()), !dbg !782
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !783, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.declare(metadata i32* %6, metadata !785, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.declare(metadata i32* %7, metadata !787, metadata !DIExpression()), !dbg !788
  %16 = call i32 @is_selinux_enabled(), !dbg !789
  %17 = icmp sgt i32 %16, 0, !dbg !790
  %18 = zext i1 %17 to i32, !dbg !790
  store i32 %18, i32* %7, align 4, !dbg !788
  call void @llvm.dbg.declare(metadata i8* %8, metadata !791, metadata !DIExpression()), !dbg !792
  %19 = call zeroext i1 @is_smack_enabled(), !dbg !793
  %20 = zext i1 %19 to i8, !dbg !792
  store i8 %20, i8* %8, align 1, !dbg !792
  call void @llvm.dbg.declare(metadata i8** %9, metadata !794, metadata !DIExpression()), !dbg !795
  store i8* null, i8** %9, align 8, !dbg !795
  %21 = load i8**, i8*** %5, align 8, !dbg !796
  %22 = getelementptr inbounds i8*, i8** %21, i64 0, !dbg !796
  %23 = load i8*, i8** %22, align 8, !dbg !796
  call void @set_program_name(i8* %23), !dbg !797
  %24 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #15, !dbg !798
  %25 = call i32 @atexit(void ()* @close_stdout) #15, !dbg !799
  br label %26, !dbg !800

26:                                               ; preds = %50, %2
  %27 = load i32, i32* %4, align 4, !dbg !801
  %28 = load i8**, i8*** %5, align 8, !dbg !802
  %29 = call i32 @getopt_long(i32 %27, i8** %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), %struct.option* getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #15, !dbg !803
  store i32 %29, i32* %6, align 4, !dbg !804
  %30 = icmp ne i32 %29, -1, !dbg !805
  br i1 %30, label %31, label %51, !dbg !800

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4, !dbg !806
  switch i32 %32, label %49 [
    i32 97, label %33
    i32 90, label %34
    i32 103, label %39
    i32 110, label %40
    i32 114, label %41
    i32 117, label %42
    i32 122, label %43
    i32 71, label %44
    i32 -130, label %45
    i32 -131, label %46
  ], !dbg !808

33:                                               ; preds = %31
  br label %50, !dbg !809

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4, !dbg !811
  %36 = icmp ne i32 %35, 0, !dbg !811
  br i1 %36, label %38, label %37, !dbg !813

37:                                               ; preds = %34
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0)), !dbg !814
  unreachable, !dbg !814

38:                                               ; preds = %34
  store i8 1, i8* @just_context, align 1, !dbg !815
  br label %50, !dbg !816

39:                                               ; preds = %31
  store i8 1, i8* @just_group, align 1, !dbg !817
  br label %50, !dbg !818

40:                                               ; preds = %31
  store i8 1, i8* @use_name, align 1, !dbg !819
  br label %50, !dbg !820

41:                                               ; preds = %31
  store i8 1, i8* @use_real, align 1, !dbg !821
  br label %50, !dbg !822

42:                                               ; preds = %31
  store i8 1, i8* @just_user, align 1, !dbg !823
  br label %50, !dbg !824

43:                                               ; preds = %31
  store i8 1, i8* @opt_zero, align 1, !dbg !825
  br label %50, !dbg !826

44:                                               ; preds = %31
  store i8 1, i8* @just_group_list, align 1, !dbg !827
  br label %50, !dbg !828

45:                                               ; preds = %31
  call void @usage(i32 0) #16, !dbg !829
  unreachable, !dbg !829

46:                                               ; preds = %31
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !830
  %48 = load i8*, i8** @Version, align 8, !dbg !830
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null), !dbg !830
  call void @exit(i32 0) #13, !dbg !830
  unreachable, !dbg !830

49:                                               ; preds = %31
  call void @usage(i32 1) #16, !dbg !831
  unreachable, !dbg !831

50:                                               ; preds = %44, %43, %42, %41, %40, %39, %38, %33
  br label %26, !dbg !800, !llvm.loop !832

51:                                               ; preds = %26
  call void @klee_dump_memory(), !dbg !834
  call void @llvm.dbg.declare(metadata i64* %10, metadata !835, metadata !DIExpression()), !dbg !836
  %52 = load i32, i32* %4, align 4, !dbg !837
  %53 = load i32, i32* @optind, align 4, !dbg !838
  %54 = sub nsw i32 %52, %53, !dbg !839
  %55 = sext i32 %54 to i64, !dbg !837
  store i64 %55, i64* %10, align 8, !dbg !836
  %56 = load i64, i64* %10, align 8, !dbg !840
  %57 = icmp ne i64 %56, 0, !dbg !840
  br i1 %57, label %58, label %62, !dbg !842

58:                                               ; preds = %51
  %59 = load i8, i8* @just_context, align 1, !dbg !843
  %60 = trunc i8 %59 to i1, !dbg !843
  br i1 %60, label %61, label %62, !dbg !844

61:                                               ; preds = %58
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i64 0, i64 0)), !dbg !845
  unreachable, !dbg !845

62:                                               ; preds = %58, %51
  %63 = load i8, i8* @just_user, align 1, !dbg !846
  %64 = trunc i8 %63 to i1, !dbg !846
  %65 = zext i1 %64 to i32, !dbg !846
  %66 = load i8, i8* @just_group, align 1, !dbg !848
  %67 = trunc i8 %66 to i1, !dbg !848
  %68 = zext i1 %67 to i32, !dbg !848
  %69 = add nsw i32 %65, %68, !dbg !849
  %70 = load i8, i8* @just_group_list, align 1, !dbg !850
  %71 = trunc i8 %70 to i1, !dbg !850
  %72 = zext i1 %71 to i32, !dbg !850
  %73 = add nsw i32 %69, %72, !dbg !851
  %74 = load i8, i8* @just_context, align 1, !dbg !852
  %75 = trunc i8 %74 to i1, !dbg !852
  %76 = zext i1 %75 to i32, !dbg !852
  %77 = add nsw i32 %73, %76, !dbg !853
  %78 = icmp sgt i32 %77, 1, !dbg !854
  br i1 %78, label %79, label %80, !dbg !855

79:                                               ; preds = %62
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0)), !dbg !856
  unreachable, !dbg !856

80:                                               ; preds = %62
  call void @llvm.dbg.declare(metadata i8* %11, metadata !857, metadata !DIExpression()), !dbg !858
  %81 = load i8, i8* @just_user, align 1, !dbg !859
  %82 = trunc i8 %81 to i1, !dbg !859
  br i1 %82, label %92, label %83, !dbg !860

83:                                               ; preds = %80
  %84 = load i8, i8* @just_group, align 1, !dbg !861
  %85 = trunc i8 %84 to i1, !dbg !861
  br i1 %85, label %92, label %86, !dbg !862

86:                                               ; preds = %83
  %87 = load i8, i8* @just_group_list, align 1, !dbg !863
  %88 = trunc i8 %87 to i1, !dbg !863
  br i1 %88, label %92, label %89, !dbg !864

89:                                               ; preds = %86
  %90 = load i8, i8* @just_context, align 1, !dbg !865
  %91 = trunc i8 %90 to i1, !dbg !865
  br label %92, !dbg !864

92:                                               ; preds = %89, %86, %83, %80
  %93 = phi i1 [ true, %86 ], [ true, %83 ], [ true, %80 ], [ %91, %89 ]
  %94 = xor i1 %93, true, !dbg !866
  %95 = zext i1 %94 to i8, !dbg !858
  store i8 %95, i8* %11, align 1, !dbg !858
  %96 = load i8, i8* %11, align 1, !dbg !867
  %97 = trunc i8 %96 to i1, !dbg !867
  br i1 %97, label %98, label %105, !dbg !869

98:                                               ; preds = %92
  %99 = load i8, i8* @use_real, align 1, !dbg !870
  %100 = trunc i8 %99 to i1, !dbg !870
  br i1 %100, label %104, label %101, !dbg !871

101:                                              ; preds = %98
  %102 = load i8, i8* @use_name, align 1, !dbg !872
  %103 = trunc i8 %102 to i1, !dbg !872
  br i1 %103, label %104, label %105, !dbg !873

104:                                              ; preds = %101, %98
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i64 0, i64 0)), !dbg !874
  unreachable, !dbg !874

105:                                              ; preds = %101, %92
  %106 = load i8, i8* %11, align 1, !dbg !875
  %107 = trunc i8 %106 to i1, !dbg !875
  br i1 %107, label %108, label %112, !dbg !877

108:                                              ; preds = %105
  %109 = load i8, i8* @opt_zero, align 1, !dbg !878
  %110 = trunc i8 %109 to i1, !dbg !878
  br i1 %110, label %111, label %112, !dbg !879

111:                                              ; preds = %108
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i64 0, i64 0)), !dbg !880
  unreachable, !dbg !880

112:                                              ; preds = %108, %105
  %113 = load i64, i64* %10, align 8, !dbg !881
  %114 = icmp eq i64 %113, 0, !dbg !883
  br i1 %114, label %115, label %144, !dbg !884

115:                                              ; preds = %112
  %116 = load i8, i8* @just_context, align 1, !dbg !885
  %117 = trunc i8 %116 to i1, !dbg !885
  br i1 %117, label %124, label %118, !dbg !886

118:                                              ; preds = %115
  %119 = load i8, i8* %11, align 1, !dbg !887
  %120 = trunc i8 %119 to i1, !dbg !887
  br i1 %120, label %121, label %144, !dbg !888

121:                                              ; preds = %118
  %122 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0)) #15, !dbg !889
  %123 = icmp ne i8* %122, null, !dbg !889
  br i1 %123, label %144, label %124, !dbg !890

124:                                              ; preds = %121, %115
  %125 = load i32, i32* %7, align 4, !dbg !891
  %126 = icmp ne i32 %125, 0, !dbg !891
  br i1 %126, label %127, label %133, !dbg !894

127:                                              ; preds = %124
  %128 = call i32 @getcon(i8** @context), !dbg !895
  %129 = icmp ne i32 %128, 0, !dbg !895
  br i1 %129, label %130, label %133, !dbg !896

130:                                              ; preds = %127
  %131 = load i8, i8* @just_context, align 1, !dbg !897
  %132 = trunc i8 %131 to i1, !dbg !897
  br i1 %132, label %142, label %133, !dbg !898

133:                                              ; preds = %130, %127, %124
  %134 = load i8, i8* %8, align 1, !dbg !899
  %135 = trunc i8 %134 to i1, !dbg !899
  br i1 %135, label %136, label %143, !dbg !900

136:                                              ; preds = %133
  %137 = call i64 @smack_new_label_from_self(i8** @context), !dbg !901
  %138 = icmp slt i64 %137, 0, !dbg !902
  br i1 %138, label %139, label %143, !dbg !903

139:                                              ; preds = %136
  %140 = load i8, i8* @just_context, align 1, !dbg !904
  %141 = trunc i8 %140 to i1, !dbg !904
  br i1 %141, label %142, label %143, !dbg !905

142:                                              ; preds = %139, %130
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0)), !dbg !906
  unreachable, !dbg !906

143:                                              ; preds = %139, %136, %133
  br label %144, !dbg !907

144:                                              ; preds = %143, %121, %118, %112
  %145 = load i64, i64* %10, align 8, !dbg !908
  %146 = icmp uge i64 %145, 1, !dbg !910
  br i1 %146, label %147, label %215, !dbg !911

147:                                              ; preds = %144
  %148 = load i64, i64* %10, align 8, !dbg !912
  %149 = icmp ugt i64 %148, 1, !dbg !914
  %150 = zext i1 %149 to i64, !dbg !912
  %151 = select i1 %149, i32 1, i32 0, !dbg !912
  %152 = icmp ne i32 %151, 0, !dbg !912
  %153 = zext i1 %152 to i8, !dbg !915
  store i8 %153, i8* @multiple_users, align 1, !dbg !915
  %154 = load i32, i32* @optind, align 4, !dbg !916
  %155 = sext i32 %154 to i64, !dbg !916
  %156 = load i64, i64* %10, align 8, !dbg !917
  %157 = add i64 %156, %155, !dbg !917
  store i64 %157, i64* %10, align 8, !dbg !917
  br label %158, !dbg !918

158:                                              ; preds = %211, %147
  %159 = load i32, i32* @optind, align 4, !dbg !919
  %160 = sext i32 %159 to i64, !dbg !919
  %161 = load i64, i64* %10, align 8, !dbg !922
  %162 = icmp ult i64 %160, %161, !dbg !923
  br i1 %162, label %163, label %214, !dbg !924

163:                                              ; preds = %158
  call void @llvm.dbg.declare(metadata %struct.passwd** %12, metadata !925, metadata !DIExpression()), !dbg !938
  store %struct.passwd* null, %struct.passwd** %12, align 8, !dbg !938
  call void @llvm.dbg.declare(metadata i8** %13, metadata !939, metadata !DIExpression()), !dbg !940
  %164 = load i8**, i8*** %5, align 8, !dbg !941
  %165 = load i32, i32* @optind, align 4, !dbg !942
  %166 = sext i32 %165 to i64, !dbg !941
  %167 = getelementptr inbounds i8*, i8** %164, i64 %166, !dbg !941
  %168 = load i8*, i8** %167, align 8, !dbg !941
  store i8* %168, i8** %13, align 8, !dbg !940
  %169 = load i8*, i8** %13, align 8, !dbg !943
  %170 = load i8, i8* %169, align 1, !dbg !945
  %171 = icmp ne i8 %170, 0, !dbg !945
  br i1 %171, label %172, label %180, !dbg !946

172:                                              ; preds = %163
  %173 = load i8*, i8** %13, align 8, !dbg !947
  %174 = call i8* @parse_user_spec(i8* %173, i32* @euid, i32* null, i8** null, i8** null), !dbg !950
  %175 = icmp eq i8* %174, null, !dbg !951
  br i1 %175, label %176, label %179, !dbg !952

176:                                              ; preds = %172
  %177 = load i32, i32* @euid, align 4, !dbg !953
  %178 = call %struct.passwd* @getpwuid(i32 %177), !dbg !955
  store %struct.passwd* %178, %struct.passwd** %12, align 8, !dbg !956
  br label %179, !dbg !957

179:                                              ; preds = %176, %172
  br label %180, !dbg !958

180:                                              ; preds = %179, %163
  %181 = load %struct.passwd*, %struct.passwd** %12, align 8, !dbg !959
  %182 = icmp eq %struct.passwd* %181, null, !dbg !961
  br i1 %182, label %183, label %198, !dbg !962

183:                                              ; preds = %180
  %184 = call i32* @__errno_location() #17, !dbg !963
  %185 = load i32, i32* %184, align 4, !dbg !963
  %186 = load i8**, i8*** %5, align 8, !dbg !965
  %187 = load i32, i32* @optind, align 4, !dbg !966
  %188 = sext i32 %187 to i64, !dbg !965
  %189 = getelementptr inbounds i8*, i8** %186, i64 %188, !dbg !965
  %190 = load i8*, i8** %189, align 8, !dbg !965
  %191 = call i8* @quote(i8* %190), !dbg !967
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %185, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i8* %191), !dbg !968
  %192 = load i8, i8* @ok, align 1, !dbg !969
  %193 = trunc i8 %192 to i1, !dbg !969
  %194 = zext i1 %193 to i32, !dbg !969
  %195 = and i32 %194, 0, !dbg !969
  %196 = icmp ne i32 %195, 0, !dbg !969
  %197 = zext i1 %196 to i8, !dbg !969
  store i8 %197, i8* @ok, align 1, !dbg !969
  br label %211, !dbg !970

198:                                              ; preds = %180
  %199 = load %struct.passwd*, %struct.passwd** %12, align 8, !dbg !971
  %200 = getelementptr inbounds %struct.passwd, %struct.passwd* %199, i32 0, i32 0, !dbg !972
  %201 = load i8*, i8** %200, align 8, !dbg !972
  %202 = call noalias i8* @xstrdup(i8* %201), !dbg !973
  store i8* %202, i8** %9, align 8, !dbg !974
  %203 = load %struct.passwd*, %struct.passwd** %12, align 8, !dbg !975
  %204 = getelementptr inbounds %struct.passwd, %struct.passwd* %203, i32 0, i32 2, !dbg !976
  %205 = load i32, i32* %204, align 8, !dbg !976
  store i32 %205, i32* @euid, align 4, !dbg !977
  store i32 %205, i32* @ruid, align 4, !dbg !978
  %206 = load %struct.passwd*, %struct.passwd** %12, align 8, !dbg !979
  %207 = getelementptr inbounds %struct.passwd, %struct.passwd* %206, i32 0, i32 3, !dbg !980
  %208 = load i32, i32* %207, align 4, !dbg !980
  store i32 %208, i32* @egid, align 4, !dbg !981
  store i32 %208, i32* @rgid, align 4, !dbg !982
  %209 = load i8*, i8** %9, align 8, !dbg !983
  call void @print_stuff(i8* %209), !dbg !984
  %210 = load i8*, i8** %9, align 8, !dbg !985
  call void @free(i8* %210) #15, !dbg !986
  br label %211, !dbg !987

211:                                              ; preds = %198, %183
  %212 = load i32, i32* @optind, align 4, !dbg !988
  %213 = add nsw i32 %212, 1, !dbg !988
  store i32 %213, i32* @optind, align 4, !dbg !988
  br label %158, !dbg !989, !llvm.loop !990

214:                                              ; preds = %158
  br label %314, !dbg !992

215:                                              ; preds = %144
  call void @llvm.dbg.declare(metadata i32* %14, metadata !993, metadata !DIExpression()), !dbg !995
  store i32 -1, i32* %14, align 4, !dbg !995
  call void @llvm.dbg.declare(metadata i32* %15, metadata !996, metadata !DIExpression()), !dbg !997
  store i32 -1, i32* %15, align 4, !dbg !997
  %216 = load i8, i8* @just_user, align 1, !dbg !998
  %217 = trunc i8 %216 to i1, !dbg !998
  br i1 %217, label %218, label %221, !dbg !1000

218:                                              ; preds = %215
  %219 = load i8, i8* @use_real, align 1, !dbg !1001
  %220 = trunc i8 %219 to i1, !dbg !1001
  br i1 %220, label %244, label %230, !dbg !998

221:                                              ; preds = %215
  %222 = load i8, i8* @just_group, align 1, !dbg !1002
  %223 = trunc i8 %222 to i1, !dbg !1002
  br i1 %223, label %244, label %224, !dbg !1003

224:                                              ; preds = %221
  %225 = load i8, i8* @just_group_list, align 1, !dbg !1004
  %226 = trunc i8 %225 to i1, !dbg !1004
  br i1 %226, label %244, label %227, !dbg !1005

227:                                              ; preds = %224
  %228 = load i8, i8* @just_context, align 1, !dbg !1006
  %229 = trunc i8 %228 to i1, !dbg !1006
  br i1 %229, label %244, label %230, !dbg !1000

230:                                              ; preds = %227, %218
  %231 = call i32* @__errno_location() #17, !dbg !1007
  store i32 0, i32* %231, align 4, !dbg !1009
  %232 = call i32 @geteuid() #15, !dbg !1010
  store i32 %232, i32* @euid, align 4, !dbg !1011
  %233 = load i32, i32* @euid, align 4, !dbg !1012
  %234 = load i32, i32* %14, align 4, !dbg !1014
  %235 = icmp eq i32 %233, %234, !dbg !1015
  br i1 %235, label %236, label %243, !dbg !1016

236:                                              ; preds = %230
  %237 = call i32* @__errno_location() #17, !dbg !1017
  %238 = load i32, i32* %237, align 4, !dbg !1017
  %239 = icmp ne i32 %238, 0, !dbg !1017
  br i1 %239, label %240, label %243, !dbg !1018

240:                                              ; preds = %236
  %241 = call i32* @__errno_location() #17, !dbg !1019
  %242 = load i32, i32* %241, align 4, !dbg !1019
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %242, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0)), !dbg !1019
  unreachable, !dbg !1019

243:                                              ; preds = %236, %230
  br label %244, !dbg !1020

244:                                              ; preds = %243, %227, %224, %221, %218
  %245 = load i8, i8* @just_user, align 1, !dbg !1021
  %246 = trunc i8 %245 to i1, !dbg !1021
  br i1 %246, label %247, label %250, !dbg !1023

247:                                              ; preds = %244
  %248 = load i8, i8* @use_real, align 1, !dbg !1024
  %249 = trunc i8 %248 to i1, !dbg !1024
  br i1 %249, label %259, label %273, !dbg !1021

250:                                              ; preds = %244
  %251 = load i8, i8* @just_group, align 1, !dbg !1025
  %252 = trunc i8 %251 to i1, !dbg !1025
  br i1 %252, label %273, label %253, !dbg !1026

253:                                              ; preds = %250
  %254 = load i8, i8* @just_group_list, align 1, !dbg !1027
  %255 = trunc i8 %254 to i1, !dbg !1027
  br i1 %255, label %259, label %256, !dbg !1028

256:                                              ; preds = %253
  %257 = load i8, i8* @just_context, align 1, !dbg !1029
  %258 = trunc i8 %257 to i1, !dbg !1029
  br i1 %258, label %273, label %259, !dbg !1023

259:                                              ; preds = %256, %253, %247
  %260 = call i32* @__errno_location() #17, !dbg !1030
  store i32 0, i32* %260, align 4, !dbg !1032
  %261 = call i32 @getuid() #15, !dbg !1033
  store i32 %261, i32* @ruid, align 4, !dbg !1034
  %262 = load i32, i32* @ruid, align 4, !dbg !1035
  %263 = load i32, i32* %14, align 4, !dbg !1037
  %264 = icmp eq i32 %262, %263, !dbg !1038
  br i1 %264, label %265, label %272, !dbg !1039

265:                                              ; preds = %259
  %266 = call i32* @__errno_location() #17, !dbg !1040
  %267 = load i32, i32* %266, align 4, !dbg !1040
  %268 = icmp ne i32 %267, 0, !dbg !1040
  br i1 %268, label %269, label %272, !dbg !1041

269:                                              ; preds = %265
  %270 = call i32* @__errno_location() #17, !dbg !1042
  %271 = load i32, i32* %270, align 4, !dbg !1042
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %271, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0)), !dbg !1042
  unreachable, !dbg !1042

272:                                              ; preds = %265, %259
  br label %273, !dbg !1043

273:                                              ; preds = %272, %256, %250, %247
  %274 = load i8, i8* @just_user, align 1, !dbg !1044
  %275 = trunc i8 %274 to i1, !dbg !1044
  br i1 %275, label %312, label %276, !dbg !1046

276:                                              ; preds = %273
  %277 = load i8, i8* @just_group, align 1, !dbg !1047
  %278 = trunc i8 %277 to i1, !dbg !1047
  br i1 %278, label %285, label %279, !dbg !1048

279:                                              ; preds = %276
  %280 = load i8, i8* @just_group_list, align 1, !dbg !1049
  %281 = trunc i8 %280 to i1, !dbg !1049
  br i1 %281, label %285, label %282, !dbg !1050

282:                                              ; preds = %279
  %283 = load i8, i8* @just_context, align 1, !dbg !1051
  %284 = trunc i8 %283 to i1, !dbg !1051
  br i1 %284, label %312, label %285, !dbg !1052

285:                                              ; preds = %282, %279, %276
  %286 = call i32* @__errno_location() #17, !dbg !1053
  store i32 0, i32* %286, align 4, !dbg !1055
  %287 = call i32 @getegid() #15, !dbg !1056
  store i32 %287, i32* @egid, align 4, !dbg !1057
  %288 = load i32, i32* @egid, align 4, !dbg !1058
  %289 = load i32, i32* %15, align 4, !dbg !1060
  %290 = icmp eq i32 %288, %289, !dbg !1061
  br i1 %290, label %291, label %298, !dbg !1062

291:                                              ; preds = %285
  %292 = call i32* @__errno_location() #17, !dbg !1063
  %293 = load i32, i32* %292, align 4, !dbg !1063
  %294 = icmp ne i32 %293, 0, !dbg !1063
  br i1 %294, label %295, label %298, !dbg !1064

295:                                              ; preds = %291
  %296 = call i32* @__errno_location() #17, !dbg !1065
  %297 = load i32, i32* %296, align 4, !dbg !1065
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %297, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0)), !dbg !1065
  unreachable, !dbg !1065

298:                                              ; preds = %291, %285
  %299 = call i32* @__errno_location() #17, !dbg !1066
  store i32 0, i32* %299, align 4, !dbg !1067
  %300 = call i32 @getgid() #15, !dbg !1068
  store i32 %300, i32* @rgid, align 4, !dbg !1069
  %301 = load i32, i32* @rgid, align 4, !dbg !1070
  %302 = load i32, i32* %15, align 4, !dbg !1072
  %303 = icmp eq i32 %301, %302, !dbg !1073
  br i1 %303, label %304, label %311, !dbg !1074

304:                                              ; preds = %298
  %305 = call i32* @__errno_location() #17, !dbg !1075
  %306 = load i32, i32* %305, align 4, !dbg !1075
  %307 = icmp ne i32 %306, 0, !dbg !1075
  br i1 %307, label %308, label %311, !dbg !1076

308:                                              ; preds = %304
  %309 = call i32* @__errno_location() #17, !dbg !1077
  %310 = load i32, i32* %309, align 4, !dbg !1077
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %310, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0)), !dbg !1077
  unreachable, !dbg !1077

311:                                              ; preds = %304, %298
  br label %312, !dbg !1078

312:                                              ; preds = %311, %282, %273
  %313 = load i8*, i8** %9, align 8, !dbg !1079
  call void @print_stuff(i8* %313), !dbg !1080
  br label %314

314:                                              ; preds = %312, %214
  %315 = load i8, i8* @ok, align 1, !dbg !1081
  %316 = trunc i8 %315 to i1, !dbg !1081
  %317 = zext i1 %316 to i64, !dbg !1081
  %318 = select i1 %316, i32 0, i32 1, !dbg !1081
  ret i32 %318, !dbg !1082
}

declare dso_local i32 @is_selinux_enabled() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @is_smack_enabled() #3 !dbg !1083 {
  ret i1 false, !dbg !1087
}

; Function Attrs: nounwind
declare dso_local i32 @atexit(void ()*) #7

; Function Attrs: nounwind
declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #7

declare dso_local void @error(i32, i32, i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #7

declare dso_local i32 @getcon(i8**) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smack_new_label_from_self(i8** %0) #3 !dbg !1088 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !1095, metadata !DIExpression()), !dbg !1096
  ret i64 -1, !dbg !1097
}

declare dso_local %struct.passwd* @getpwuid(i32) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #8

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_stuff(i8* %0) #3 !dbg !1098 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1099, metadata !DIExpression()), !dbg !1100
  %3 = load i8, i8* @just_user, align 1, !dbg !1101
  %4 = trunc i8 %3 to i1, !dbg !1101
  br i1 %4, label %5, label %14, !dbg !1103

5:                                                ; preds = %1
  %6 = load i8, i8* @use_real, align 1, !dbg !1104
  %7 = trunc i8 %6 to i1, !dbg !1104
  br i1 %7, label %8, label %10, !dbg !1104

8:                                                ; preds = %5
  %9 = load i32, i32* @ruid, align 4, !dbg !1105
  br label %12, !dbg !1104

10:                                               ; preds = %5
  %11 = load i32, i32* @euid, align 4, !dbg !1106
  br label %12, !dbg !1104

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ], !dbg !1104
  call void @print_user(i32 %13), !dbg !1107
  br label %71, !dbg !1107

14:                                               ; preds = %1
  %15 = load i8, i8* @just_group, align 1, !dbg !1108
  %16 = trunc i8 %15 to i1, !dbg !1108
  br i1 %16, label %17, label %36, !dbg !1110

17:                                               ; preds = %14
  %18 = load i8, i8* @use_real, align 1, !dbg !1111
  %19 = trunc i8 %18 to i1, !dbg !1111
  br i1 %19, label %20, label %22, !dbg !1111

20:                                               ; preds = %17
  %21 = load i32, i32* @rgid, align 4, !dbg !1112
  br label %24, !dbg !1111

22:                                               ; preds = %17
  %23 = load i32, i32* @egid, align 4, !dbg !1113
  br label %24, !dbg !1111

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ], !dbg !1111
  %26 = load i8, i8* @use_name, align 1, !dbg !1114
  %27 = trunc i8 %26 to i1, !dbg !1114
  %28 = call zeroext i1 @print_group(i32 %25, i1 zeroext %27), !dbg !1115
  %29 = zext i1 %28 to i32, !dbg !1115
  %30 = load i8, i8* @ok, align 1, !dbg !1116
  %31 = trunc i8 %30 to i1, !dbg !1116
  %32 = zext i1 %31 to i32, !dbg !1116
  %33 = and i32 %32, %29, !dbg !1116
  %34 = icmp ne i32 %33, 0, !dbg !1116
  %35 = zext i1 %34 to i8, !dbg !1116
  store i8 %35, i8* @ok, align 1, !dbg !1116
  br label %70, !dbg !1117

36:                                               ; preds = %14
  %37 = load i8, i8* @just_group_list, align 1, !dbg !1118
  %38 = trunc i8 %37 to i1, !dbg !1118
  br i1 %38, label %39, label %59, !dbg !1120

39:                                               ; preds = %36
  %40 = load i8*, i8** %2, align 8, !dbg !1121
  %41 = load i32, i32* @ruid, align 4, !dbg !1122
  %42 = load i32, i32* @rgid, align 4, !dbg !1123
  %43 = load i32, i32* @egid, align 4, !dbg !1124
  %44 = load i8, i8* @use_name, align 1, !dbg !1125
  %45 = trunc i8 %44 to i1, !dbg !1125
  %46 = load i8, i8* @opt_zero, align 1, !dbg !1126
  %47 = trunc i8 %46 to i1, !dbg !1126
  %48 = zext i1 %47 to i64, !dbg !1126
  %49 = select i1 %47, i32 0, i32 32, !dbg !1126
  %50 = trunc i32 %49 to i8, !dbg !1126
  %51 = call zeroext i1 @print_group_list(i8* %40, i32 %41, i32 %42, i32 %43, i1 zeroext %45, i8 signext %50), !dbg !1127
  %52 = zext i1 %51 to i32, !dbg !1127
  %53 = load i8, i8* @ok, align 1, !dbg !1128
  %54 = trunc i8 %53 to i1, !dbg !1128
  %55 = zext i1 %54 to i32, !dbg !1128
  %56 = and i32 %55, %52, !dbg !1128
  %57 = icmp ne i32 %56, 0, !dbg !1128
  %58 = zext i1 %57 to i8, !dbg !1128
  store i8 %58, i8* @ok, align 1, !dbg !1128
  br label %69, !dbg !1129

59:                                               ; preds = %36
  %60 = load i8, i8* @just_context, align 1, !dbg !1130
  %61 = trunc i8 %60 to i1, !dbg !1130
  br i1 %61, label %62, label %66, !dbg !1132

62:                                               ; preds = %59
  %63 = load i8*, i8** @context, align 8, !dbg !1133
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1133
  %65 = call i32 @fputs_unlocked(i8* %63, %struct._IO_FILE* %64), !dbg !1133
  br label %68, !dbg !1133

66:                                               ; preds = %59
  %67 = load i8*, i8** %2, align 8, !dbg !1134
  call void @print_full_info(i8* %67), !dbg !1135
  br label %68

68:                                               ; preds = %66, %62
  br label %69

69:                                               ; preds = %68, %39
  br label %70

70:                                               ; preds = %69, %24
  br label %71

71:                                               ; preds = %70, %12
  %72 = load i8, i8* @opt_zero, align 1, !dbg !1136
  %73 = trunc i8 %72 to i1, !dbg !1136
  br i1 %73, label %74, label %83, !dbg !1138

74:                                               ; preds = %71
  %75 = load i8, i8* @just_group_list, align 1, !dbg !1139
  %76 = trunc i8 %75 to i1, !dbg !1139
  br i1 %76, label %77, label %83, !dbg !1140

77:                                               ; preds = %74
  %78 = load i8, i8* @multiple_users, align 1, !dbg !1141
  %79 = trunc i8 %78 to i1, !dbg !1141
  br i1 %79, label %80, label %83, !dbg !1142

80:                                               ; preds = %77
  %81 = call i32 @putchar_unlocked(i32 0), !dbg !1143
  %82 = call i32 @putchar_unlocked(i32 0), !dbg !1145
  br label %89, !dbg !1146

83:                                               ; preds = %77, %74, %71
  %84 = load i8, i8* @opt_zero, align 1, !dbg !1147
  %85 = trunc i8 %84 to i1, !dbg !1147
  %86 = zext i1 %85 to i64, !dbg !1147
  %87 = select i1 %85, i32 0, i32 10, !dbg !1147
  %88 = call i32 @putchar_unlocked(i32 %87), !dbg !1147
  br label %89

89:                                               ; preds = %83, %80
  ret void, !dbg !1149
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #7

; Function Attrs: nounwind
declare dso_local i32 @geteuid() #7

; Function Attrs: nounwind
declare dso_local i32 @getuid() #7

; Function Attrs: nounwind
declare dso_local i32 @getegid() #7

; Function Attrs: nounwind
declare dso_local i32 @getgid() #7

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_user(i32 %0) #3 !dbg !1150 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.passwd*, align 8
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1153, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.declare(metadata %struct.passwd** %3, metadata !1155, metadata !DIExpression()), !dbg !1156
  store %struct.passwd* null, %struct.passwd** %3, align 8, !dbg !1156
  %5 = load i8, i8* @use_name, align 1, !dbg !1157
  %6 = trunc i8 %5 to i1, !dbg !1157
  br i1 %6, label %7, label %21, !dbg !1159

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4, !dbg !1160
  %9 = call %struct.passwd* @getpwuid(i32 %8), !dbg !1162
  store %struct.passwd* %9, %struct.passwd** %3, align 8, !dbg !1163
  %10 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !1164
  %11 = icmp eq %struct.passwd* %10, null, !dbg !1166
  br i1 %11, label %12, label %20, !dbg !1167

12:                                               ; preds = %7
  %13 = call i8* @uidtostr_ptr(i32* %2), !dbg !1168
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.50, i64 0, i64 0), i8* %13), !dbg !1170
  %14 = load i8, i8* @ok, align 1, !dbg !1171
  %15 = trunc i8 %14 to i1, !dbg !1171
  %16 = zext i1 %15 to i32, !dbg !1171
  %17 = and i32 %16, 0, !dbg !1171
  %18 = icmp ne i32 %17, 0, !dbg !1171
  %19 = zext i1 %18 to i8, !dbg !1171
  store i8 %19, i8* @ok, align 1, !dbg !1171
  br label %20, !dbg !1172

20:                                               ; preds = %12, %7
  br label %21, !dbg !1173

21:                                               ; preds = %20, %1
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1174, metadata !DIExpression()), !dbg !1175
  %22 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !1176
  %23 = icmp ne %struct.passwd* %22, null, !dbg !1176
  br i1 %23, label %24, label %28, !dbg !1176

24:                                               ; preds = %21
  %25 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !1177
  %26 = getelementptr inbounds %struct.passwd, %struct.passwd* %25, i32 0, i32 0, !dbg !1178
  %27 = load i8*, i8** %26, align 8, !dbg !1178
  br label %30, !dbg !1176

28:                                               ; preds = %21
  %29 = call i8* @uidtostr_ptr(i32* %2), !dbg !1179
  br label %30, !dbg !1176

30:                                               ; preds = %28, %24
  %31 = phi i8* [ %27, %24 ], [ %29, %28 ], !dbg !1176
  store i8* %31, i8** %4, align 8, !dbg !1175
  %32 = load i8*, i8** %4, align 8, !dbg !1180
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1180
  %34 = call i32 @fputs_unlocked(i8* %32, %struct._IO_FILE* %33), !dbg !1180
  ret void, !dbg !1181
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_full_info(i8* %0) #3 !dbg !1182 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.passwd*, align 8
  %4 = alloca %struct.group*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1183, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.declare(metadata %struct.passwd** %3, metadata !1185, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.declare(metadata %struct.group** %4, metadata !1187, metadata !DIExpression()), !dbg !1196
  %9 = call i8* @uidtostr_ptr(i32* @ruid), !dbg !1197
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), i8* %9), !dbg !1198
  %11 = load i32, i32* @ruid, align 4, !dbg !1199
  %12 = call %struct.passwd* @getpwuid(i32 %11), !dbg !1200
  store %struct.passwd* %12, %struct.passwd** %3, align 8, !dbg !1201
  %13 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !1202
  %14 = icmp ne %struct.passwd* %13, null, !dbg !1202
  br i1 %14, label %15, label %20, !dbg !1204

15:                                               ; preds = %1
  %16 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !1205
  %17 = getelementptr inbounds %struct.passwd, %struct.passwd* %16, i32 0, i32 0, !dbg !1206
  %18 = load i8*, i8** %17, align 8, !dbg !1206
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), i8* %18), !dbg !1207
  br label %20, !dbg !1207

20:                                               ; preds = %15, %1
  %21 = call i8* @gidtostr_ptr(i32* @rgid), !dbg !1208
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0), i8* %21), !dbg !1209
  %23 = load i32, i32* @rgid, align 4, !dbg !1210
  %24 = call %struct.group* @getgrgid(i32 %23), !dbg !1211
  store %struct.group* %24, %struct.group** %4, align 8, !dbg !1212
  %25 = load %struct.group*, %struct.group** %4, align 8, !dbg !1213
  %26 = icmp ne %struct.group* %25, null, !dbg !1213
  br i1 %26, label %27, label %32, !dbg !1215

27:                                               ; preds = %20
  %28 = load %struct.group*, %struct.group** %4, align 8, !dbg !1216
  %29 = getelementptr inbounds %struct.group, %struct.group* %28, i32 0, i32 0, !dbg !1217
  %30 = load i8*, i8** %29, align 8, !dbg !1217
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), i8* %30), !dbg !1218
  br label %32, !dbg !1218

32:                                               ; preds = %27, %20
  %33 = load i32, i32* @euid, align 4, !dbg !1219
  %34 = load i32, i32* @ruid, align 4, !dbg !1221
  %35 = icmp ne i32 %33, %34, !dbg !1222
  br i1 %35, label %36, label %49, !dbg !1223

36:                                               ; preds = %32
  %37 = call i8* @uidtostr_ptr(i32* @euid), !dbg !1224
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i64 0, i64 0), i8* %37), !dbg !1226
  %39 = load i32, i32* @euid, align 4, !dbg !1227
  %40 = call %struct.passwd* @getpwuid(i32 %39), !dbg !1228
  store %struct.passwd* %40, %struct.passwd** %3, align 8, !dbg !1229
  %41 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !1230
  %42 = icmp ne %struct.passwd* %41, null, !dbg !1230
  br i1 %42, label %43, label %48, !dbg !1232

43:                                               ; preds = %36
  %44 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !1233
  %45 = getelementptr inbounds %struct.passwd, %struct.passwd* %44, i32 0, i32 0, !dbg !1234
  %46 = load i8*, i8** %45, align 8, !dbg !1234
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), i8* %46), !dbg !1235
  br label %48, !dbg !1235

48:                                               ; preds = %43, %36
  br label %49, !dbg !1236

49:                                               ; preds = %48, %32
  %50 = load i32, i32* @egid, align 4, !dbg !1237
  %51 = load i32, i32* @rgid, align 4, !dbg !1239
  %52 = icmp ne i32 %50, %51, !dbg !1240
  br i1 %52, label %53, label %66, !dbg !1241

53:                                               ; preds = %49
  %54 = call i8* @gidtostr_ptr(i32* @egid), !dbg !1242
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0), i8* %54), !dbg !1244
  %56 = load i32, i32* @egid, align 4, !dbg !1245
  %57 = call %struct.group* @getgrgid(i32 %56), !dbg !1246
  store %struct.group* %57, %struct.group** %4, align 8, !dbg !1247
  %58 = load %struct.group*, %struct.group** %4, align 8, !dbg !1248
  %59 = icmp ne %struct.group* %58, null, !dbg !1248
  br i1 %59, label %60, label %65, !dbg !1250

60:                                               ; preds = %53
  %61 = load %struct.group*, %struct.group** %4, align 8, !dbg !1251
  %62 = getelementptr inbounds %struct.group, %struct.group* %61, i32 0, i32 0, !dbg !1252
  %63 = load i8*, i8** %62, align 8, !dbg !1252
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), i8* %63), !dbg !1253
  br label %65, !dbg !1253

65:                                               ; preds = %60, %53
  br label %66, !dbg !1254

66:                                               ; preds = %65, %49
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1255, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1258, metadata !DIExpression()), !dbg !1259
  %67 = load i8*, i8** %2, align 8, !dbg !1260
  %68 = icmp ne i8* %67, null, !dbg !1260
  br i1 %68, label %69, label %79, !dbg !1262

69:                                               ; preds = %66
  %70 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !1263
  %71 = icmp ne %struct.passwd* %70, null, !dbg !1263
  br i1 %71, label %72, label %76, !dbg !1263

72:                                               ; preds = %69
  %73 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !1264
  %74 = getelementptr inbounds %struct.passwd, %struct.passwd* %73, i32 0, i32 3, !dbg !1265
  %75 = load i32, i32* %74, align 4, !dbg !1265
  br label %77, !dbg !1263

76:                                               ; preds = %69
  br label %77, !dbg !1263

77:                                               ; preds = %76, %72
  %78 = phi i32 [ %75, %72 ], [ -1, %76 ], !dbg !1263
  store i32 %78, i32* %6, align 4, !dbg !1266
  br label %81, !dbg !1267

79:                                               ; preds = %66
  %80 = load i32, i32* @egid, align 4, !dbg !1268
  store i32 %80, i32* %6, align 4, !dbg !1269
  br label %81

81:                                               ; preds = %79, %77
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1270, metadata !DIExpression()), !dbg !1271
  %82 = load i8*, i8** %2, align 8, !dbg !1272
  %83 = load i32, i32* %6, align 4, !dbg !1273
  %84 = call i32 @xgetgroups(i8* %82, i32 %83, i32** %5), !dbg !1274
  store i32 %84, i32* %7, align 4, !dbg !1271
  %85 = load i32, i32* %7, align 4, !dbg !1275
  %86 = icmp slt i32 %85, 0, !dbg !1277
  br i1 %86, label %87, label %105, !dbg !1278

87:                                               ; preds = %81
  %88 = load i8*, i8** %2, align 8, !dbg !1279
  %89 = icmp ne i8* %88, null, !dbg !1279
  br i1 %89, label %90, label %95, !dbg !1282

90:                                               ; preds = %87
  %91 = call i32* @__errno_location() #17, !dbg !1283
  %92 = load i32, i32* %91, align 4, !dbg !1283
  %93 = load i8*, i8** %2, align 8, !dbg !1284
  %94 = call i8* @quote(i8* %93), !dbg !1285
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.56, i64 0, i64 0), i8* %94), !dbg !1286
  br label %98, !dbg !1286

95:                                               ; preds = %87
  %96 = call i32* @__errno_location() #17, !dbg !1287
  %97 = load i32, i32* %96, align 4, !dbg !1287
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %97, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.57, i64 0, i64 0)), !dbg !1288
  br label %98

98:                                               ; preds = %95, %90
  %99 = load i8, i8* @ok, align 1, !dbg !1289
  %100 = trunc i8 %99 to i1, !dbg !1289
  %101 = zext i1 %100 to i32, !dbg !1289
  %102 = and i32 %101, 0, !dbg !1289
  %103 = icmp ne i32 %102, 0, !dbg !1289
  %104 = zext i1 %103 to i8, !dbg !1289
  store i8 %104, i8* @ok, align 1, !dbg !1289
  br label %154, !dbg !1290

105:                                              ; preds = %81
  %106 = load i32, i32* %7, align 4, !dbg !1291
  %107 = icmp sgt i32 %106, 0, !dbg !1293
  br i1 %107, label %108, label %111, !dbg !1294

108:                                              ; preds = %105
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1295
  %110 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i64 0, i64 0), %struct._IO_FILE* %109), !dbg !1295
  br label %111, !dbg !1295

111:                                              ; preds = %108, %105
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1296, metadata !DIExpression()), !dbg !1298
  store i32 0, i32* %8, align 4, !dbg !1298
  br label %112, !dbg !1299

112:                                              ; preds = %143, %111
  %113 = load i32, i32* %8, align 4, !dbg !1300
  %114 = load i32, i32* %7, align 4, !dbg !1302
  %115 = icmp slt i32 %113, %114, !dbg !1303
  br i1 %115, label %116, label %146, !dbg !1304

116:                                              ; preds = %112
  %117 = load i32, i32* %8, align 4, !dbg !1305
  %118 = icmp sgt i32 %117, 0, !dbg !1308
  br i1 %118, label %119, label %121, !dbg !1309

119:                                              ; preds = %116
  %120 = call i32 @putchar_unlocked(i32 44), !dbg !1310
  br label %121, !dbg !1310

121:                                              ; preds = %119, %116
  %122 = load i32*, i32** %5, align 8, !dbg !1311
  %123 = load i32, i32* %8, align 4, !dbg !1311
  %124 = sext i32 %123 to i64, !dbg !1311
  %125 = getelementptr inbounds i32, i32* %122, i64 %124, !dbg !1311
  %126 = call i8* @gidtostr_ptr(i32* %125), !dbg !1311
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1311
  %128 = call i32 @fputs_unlocked(i8* %126, %struct._IO_FILE* %127), !dbg !1311
  %129 = load i32*, i32** %5, align 8, !dbg !1312
  %130 = load i32, i32* %8, align 4, !dbg !1313
  %131 = sext i32 %130 to i64, !dbg !1312
  %132 = getelementptr inbounds i32, i32* %129, i64 %131, !dbg !1312
  %133 = load i32, i32* %132, align 4, !dbg !1312
  %134 = call %struct.group* @getgrgid(i32 %133), !dbg !1314
  store %struct.group* %134, %struct.group** %4, align 8, !dbg !1315
  %135 = load %struct.group*, %struct.group** %4, align 8, !dbg !1316
  %136 = icmp ne %struct.group* %135, null, !dbg !1316
  br i1 %136, label %137, label %142, !dbg !1318

137:                                              ; preds = %121
  %138 = load %struct.group*, %struct.group** %4, align 8, !dbg !1319
  %139 = getelementptr inbounds %struct.group, %struct.group* %138, i32 0, i32 0, !dbg !1320
  %140 = load i8*, i8** %139, align 8, !dbg !1320
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), i8* %140), !dbg !1321
  br label %142, !dbg !1321

142:                                              ; preds = %137, %121
  br label %143, !dbg !1322

143:                                              ; preds = %142
  %144 = load i32, i32* %8, align 4, !dbg !1323
  %145 = add nsw i32 %144, 1, !dbg !1323
  store i32 %145, i32* %8, align 4, !dbg !1323
  br label %112, !dbg !1324, !llvm.loop !1325

146:                                              ; preds = %112
  %147 = load i32*, i32** %5, align 8, !dbg !1327
  %148 = bitcast i32* %147 to i8*, !dbg !1327
  call void @free(i8* %148) #15, !dbg !1328
  %149 = load i8*, i8** @context, align 8, !dbg !1329
  %150 = icmp ne i8* %149, null, !dbg !1329
  br i1 %150, label %151, label %154, !dbg !1331

151:                                              ; preds = %146
  %152 = load i8*, i8** @context, align 8, !dbg !1332
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i64 0, i64 0), i8* %152), !dbg !1333
  br label %154, !dbg !1333

154:                                              ; preds = %98, %151, %146
  ret void, !dbg !1334
}

declare dso_local i32 @putchar_unlocked(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @uidtostr_ptr(i32* %0) #3 !dbg !50 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !1335, metadata !DIExpression()), !dbg !1336
  %3 = load i32*, i32** %2, align 8, !dbg !1337
  %4 = load i32, i32* %3, align 4, !dbg !1338
  %5 = zext i32 %4 to i64, !dbg !1338
  %6 = call i8* @umaxtostr(i64 %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @uidtostr_ptr.buf, i64 0, i64 0)), !dbg !1339
  ret i8* %6, !dbg !1340
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gidtostr_ptr(i32* %0) #3 !dbg !60 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !1341, metadata !DIExpression()), !dbg !1342
  %3 = load i32*, i32** %2, align 8, !dbg !1343
  %4 = load i32, i32* %3, align 4, !dbg !1344
  %5 = zext i32 %4 to i64, !dbg !1344
  %6 = call i8* @umaxtostr(i64 %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)), !dbg !1345
  ret i8* %6, !dbg !1346
}

declare dso_local %struct.group* @getgrgid(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @print_group_list(i8* %0, i32 %1, i32 %2, i32 %3, i1 zeroext %4, i8 signext %5) #3 !dbg !1347 {
  %7 = alloca i1, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca %struct.passwd*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1350, metadata !DIExpression()), !dbg !1351
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1352, metadata !DIExpression()), !dbg !1353
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1354, metadata !DIExpression()), !dbg !1355
  store i32 %3, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1356, metadata !DIExpression()), !dbg !1357
  %19 = zext i1 %4 to i8
  store i8 %19, i8* %12, align 1
  call void @llvm.dbg.declare(metadata i8* %12, metadata !1358, metadata !DIExpression()), !dbg !1359
  store i8 %5, i8* %13, align 1
  call void @llvm.dbg.declare(metadata i8* %13, metadata !1360, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.declare(metadata i8* %14, metadata !1362, metadata !DIExpression()), !dbg !1363
  store i8 1, i8* %14, align 1, !dbg !1363
  call void @llvm.dbg.declare(metadata %struct.passwd** %15, metadata !1364, metadata !DIExpression()), !dbg !1375
  store %struct.passwd* null, %struct.passwd** %15, align 8, !dbg !1375
  %20 = load i8*, i8** %8, align 8, !dbg !1376
  %21 = icmp ne i8* %20, null, !dbg !1376
  br i1 %21, label %22, label %29, !dbg !1378

22:                                               ; preds = %6
  %23 = load i32, i32* %9, align 4, !dbg !1379
  %24 = call %struct.passwd* @getpwuid(i32 %23), !dbg !1381
  store %struct.passwd* %24, %struct.passwd** %15, align 8, !dbg !1382
  %25 = load %struct.passwd*, %struct.passwd** %15, align 8, !dbg !1383
  %26 = icmp eq %struct.passwd* %25, null, !dbg !1385
  br i1 %26, label %27, label %28, !dbg !1386

27:                                               ; preds = %22
  store i8 0, i8* %14, align 1, !dbg !1387
  br label %28, !dbg !1388

28:                                               ; preds = %27, %22
  br label %29, !dbg !1389

29:                                               ; preds = %28, %6
  %30 = load i32, i32* %10, align 4, !dbg !1390
  %31 = load i8, i8* %12, align 1, !dbg !1392
  %32 = trunc i8 %31 to i1, !dbg !1392
  %33 = call zeroext i1 @print_group(i32 %30, i1 zeroext %32), !dbg !1393
  br i1 %33, label %35, label %34, !dbg !1394

34:                                               ; preds = %29
  store i8 0, i8* %14, align 1, !dbg !1395
  br label %35, !dbg !1396

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %11, align 4, !dbg !1397
  %37 = load i32, i32* %10, align 4, !dbg !1399
  %38 = icmp ne i32 %36, %37, !dbg !1400
  br i1 %38, label %39, label %49, !dbg !1401

39:                                               ; preds = %35
  %40 = load i8, i8* %13, align 1, !dbg !1402
  %41 = sext i8 %40 to i32, !dbg !1402
  %42 = call i32 @putchar_unlocked(i32 %41), !dbg !1402
  %43 = load i32, i32* %11, align 4, !dbg !1404
  %44 = load i8, i8* %12, align 1, !dbg !1406
  %45 = trunc i8 %44 to i1, !dbg !1406
  %46 = call zeroext i1 @print_group(i32 %43, i1 zeroext %45), !dbg !1407
  br i1 %46, label %48, label %47, !dbg !1408

47:                                               ; preds = %39
  store i8 0, i8* %14, align 1, !dbg !1409
  br label %48, !dbg !1410

48:                                               ; preds = %47, %39
  br label %49, !dbg !1411

49:                                               ; preds = %48, %35
  call void @llvm.dbg.declare(metadata i32** %16, metadata !1412, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1415, metadata !DIExpression()), !dbg !1416
  %50 = load i8*, i8** %8, align 8, !dbg !1417
  %51 = load %struct.passwd*, %struct.passwd** %15, align 8, !dbg !1418
  %52 = icmp ne %struct.passwd* %51, null, !dbg !1418
  br i1 %52, label %53, label %57, !dbg !1418

53:                                               ; preds = %49
  %54 = load %struct.passwd*, %struct.passwd** %15, align 8, !dbg !1419
  %55 = getelementptr inbounds %struct.passwd, %struct.passwd* %54, i32 0, i32 3, !dbg !1420
  %56 = load i32, i32* %55, align 4, !dbg !1420
  br label %59, !dbg !1418

57:                                               ; preds = %49
  %58 = load i32, i32* %11, align 4, !dbg !1421
  br label %59, !dbg !1418

59:                                               ; preds = %57, %53
  %60 = phi i32 [ %56, %53 ], [ %58, %57 ], !dbg !1418
  %61 = call i32 @xgetgroups(i8* %50, i32 %60, i32** %16), !dbg !1422
  store i32 %61, i32* %17, align 4, !dbg !1416
  %62 = load i32, i32* %17, align 4, !dbg !1423
  %63 = icmp slt i32 %62, 0, !dbg !1425
  br i1 %63, label %64, label %76, !dbg !1426

64:                                               ; preds = %59
  %65 = load i8*, i8** %8, align 8, !dbg !1427
  %66 = icmp ne i8* %65, null, !dbg !1427
  br i1 %66, label %67, label %72, !dbg !1430

67:                                               ; preds = %64
  %68 = call i32* @__errno_location() #17, !dbg !1431
  %69 = load i32, i32* %68, align 4, !dbg !1431
  %70 = load i8*, i8** %8, align 8, !dbg !1433
  %71 = call i8* @quote(i8* %70), !dbg !1434
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.60, i64 0, i64 0), i8* %71), !dbg !1435
  br label %75, !dbg !1436

72:                                               ; preds = %64
  %73 = call i32* @__errno_location() #17, !dbg !1437
  %74 = load i32, i32* %73, align 4, !dbg !1437
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %74, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1.61, i64 0, i64 0)), !dbg !1439
  br label %75

75:                                               ; preds = %72, %67
  store i1 false, i1* %7, align 1, !dbg !1440
  br label %120, !dbg !1440

76:                                               ; preds = %59
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1441, metadata !DIExpression()), !dbg !1443
  store i32 0, i32* %18, align 4, !dbg !1443
  br label %77, !dbg !1444

77:                                               ; preds = %112, %76
  %78 = load i32, i32* %18, align 4, !dbg !1445
  %79 = load i32, i32* %17, align 4, !dbg !1447
  %80 = icmp slt i32 %78, %79, !dbg !1448
  br i1 %80, label %81, label %115, !dbg !1449

81:                                               ; preds = %77
  %82 = load i32*, i32** %16, align 8, !dbg !1450
  %83 = load i32, i32* %18, align 4, !dbg !1452
  %84 = sext i32 %83 to i64, !dbg !1450
  %85 = getelementptr inbounds i32, i32* %82, i64 %84, !dbg !1450
  %86 = load i32, i32* %85, align 4, !dbg !1450
  %87 = load i32, i32* %10, align 4, !dbg !1453
  %88 = icmp ne i32 %86, %87, !dbg !1454
  br i1 %88, label %89, label %111, !dbg !1455

89:                                               ; preds = %81
  %90 = load i32*, i32** %16, align 8, !dbg !1456
  %91 = load i32, i32* %18, align 4, !dbg !1457
  %92 = sext i32 %91 to i64, !dbg !1456
  %93 = getelementptr inbounds i32, i32* %90, i64 %92, !dbg !1456
  %94 = load i32, i32* %93, align 4, !dbg !1456
  %95 = load i32, i32* %11, align 4, !dbg !1458
  %96 = icmp ne i32 %94, %95, !dbg !1459
  br i1 %96, label %97, label %111, !dbg !1460

97:                                               ; preds = %89
  %98 = load i8, i8* %13, align 1, !dbg !1461
  %99 = sext i8 %98 to i32, !dbg !1461
  %100 = call i32 @putchar_unlocked(i32 %99), !dbg !1461
  %101 = load i32*, i32** %16, align 8, !dbg !1463
  %102 = load i32, i32* %18, align 4, !dbg !1465
  %103 = sext i32 %102 to i64, !dbg !1463
  %104 = getelementptr inbounds i32, i32* %101, i64 %103, !dbg !1463
  %105 = load i32, i32* %104, align 4, !dbg !1463
  %106 = load i8, i8* %12, align 1, !dbg !1466
  %107 = trunc i8 %106 to i1, !dbg !1466
  %108 = call zeroext i1 @print_group(i32 %105, i1 zeroext %107), !dbg !1467
  br i1 %108, label %110, label %109, !dbg !1468

109:                                              ; preds = %97
  store i8 0, i8* %14, align 1, !dbg !1469
  br label %110, !dbg !1470

110:                                              ; preds = %109, %97
  br label %111, !dbg !1471

111:                                              ; preds = %110, %89, %81
  br label %112, !dbg !1458

112:                                              ; preds = %111
  %113 = load i32, i32* %18, align 4, !dbg !1472
  %114 = add nsw i32 %113, 1, !dbg !1472
  store i32 %114, i32* %18, align 4, !dbg !1472
  br label %77, !dbg !1473, !llvm.loop !1474

115:                                              ; preds = %77
  %116 = load i32*, i32** %16, align 8, !dbg !1476
  %117 = bitcast i32* %116 to i8*, !dbg !1476
  call void @free(i8* %117) #15, !dbg !1477
  %118 = load i8, i8* %14, align 1, !dbg !1478
  %119 = trunc i8 %118 to i1, !dbg !1478
  store i1 %119, i1* %7, align 1, !dbg !1479
  br label %120, !dbg !1479

120:                                              ; preds = %115, %75
  %121 = load i1, i1* %7, align 1, !dbg !1480
  ret i1 %121, !dbg !1480
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @print_group(i32 %0, i1 zeroext %1) #3 !dbg !1481 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca %struct.group*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1484, metadata !DIExpression()), !dbg !1485
  %8 = zext i1 %1 to i8
  store i8 %8, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1486, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.declare(metadata %struct.group** %5, metadata !1488, metadata !DIExpression()), !dbg !1496
  store %struct.group* null, %struct.group** %5, align 8, !dbg !1496
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1497, metadata !DIExpression()), !dbg !1498
  store i8 1, i8* %6, align 1, !dbg !1498
  %9 = load i8, i8* %4, align 1, !dbg !1499
  %10 = trunc i8 %9 to i1, !dbg !1499
  br i1 %10, label %11, label %20, !dbg !1501

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4, !dbg !1502
  %13 = call %struct.group* @getgrgid(i32 %12), !dbg !1504
  store %struct.group* %13, %struct.group** %5, align 8, !dbg !1505
  %14 = load %struct.group*, %struct.group** %5, align 8, !dbg !1506
  %15 = icmp eq %struct.group* %14, null, !dbg !1508
  br i1 %15, label %16, label %19, !dbg !1509

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4, !dbg !1510
  %18 = zext i32 %17 to i64, !dbg !1512
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.62, i64 0, i64 0), i64 %18), !dbg !1513
  store i8 0, i8* %6, align 1, !dbg !1514
  br label %19, !dbg !1515

19:                                               ; preds = %16, %11
  br label %20, !dbg !1516

20:                                               ; preds = %19, %2
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1517, metadata !DIExpression()), !dbg !1518
  %21 = load %struct.group*, %struct.group** %5, align 8, !dbg !1519
  %22 = icmp ne %struct.group* %21, null, !dbg !1519
  br i1 %22, label %23, label %27, !dbg !1519

23:                                               ; preds = %20
  %24 = load %struct.group*, %struct.group** %5, align 8, !dbg !1520
  %25 = getelementptr inbounds %struct.group, %struct.group* %24, i32 0, i32 0, !dbg !1521
  %26 = load i8*, i8** %25, align 8, !dbg !1521
  br label %29, !dbg !1519

27:                                               ; preds = %20
  %28 = call i8* @gidtostr_ptr.63(i32* %3), !dbg !1522
  br label %29, !dbg !1519

29:                                               ; preds = %27, %23
  %30 = phi i8* [ %26, %23 ], [ %28, %27 ], !dbg !1519
  store i8* %30, i8** %7, align 8, !dbg !1518
  %31 = load i8*, i8** %7, align 8, !dbg !1523
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1523
  %33 = call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !1523
  %34 = load i8, i8* %6, align 1, !dbg !1524
  %35 = trunc i8 %34 to i1, !dbg !1524
  ret i1 %35, !dbg !1525
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gidtostr_ptr.63(i32* %0) #3 !dbg !80 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !1526, metadata !DIExpression()), !dbg !1527
  %3 = load i32*, i32** %2, align 8, !dbg !1528
  %4 = load i32, i32* %3, align 4, !dbg !1529
  %5 = zext i32 %4 to i64, !dbg !1529
  %6 = call i8* @umaxtostr(i64 %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.64, i64 0, i64 0)), !dbg !1530
  ret i8* %6, !dbg !1531
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* %0) #3 !dbg !1532 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1533, metadata !DIExpression()), !dbg !1534
  %3 = load i8*, i8** %2, align 8, !dbg !1535
  store i8* %3, i8** @file_name, align 8, !dbg !1536
  ret void, !dbg !1537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) #3 !dbg !1538 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1541, metadata !DIExpression()), !dbg !1542
  %4 = load i8, i8* %2, align 1, !dbg !1543
  %5 = trunc i8 %4 to i1, !dbg !1543
  %6 = zext i1 %5 to i8, !dbg !1544
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !1544
  ret void, !dbg !1545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #3 !dbg !1546 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1547
  %3 = call i32 @close_stream(%struct._IO_FILE* %2), !dbg !1549
  %4 = icmp ne i32 %3, 0, !dbg !1550
  br i1 %4, label %5, label %27, !dbg !1551

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1552
  %7 = trunc i8 %6 to i1, !dbg !1552
  br i1 %7, label %8, label %12, !dbg !1553

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #17, !dbg !1554
  %10 = load i32, i32* %9, align 4, !dbg !1554
  %11 = icmp eq i32 %10, 32, !dbg !1555
  br i1 %11, label %27, label %12, !dbg !1556

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !1557, metadata !DIExpression()), !dbg !1559
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i64 0, i64 0), i8** %1, align 8, !dbg !1559
  %13 = load i8*, i8** @file_name, align 8, !dbg !1560
  %14 = icmp ne i8* %13, null, !dbg !1560
  br i1 %14, label %15, label %21, !dbg !1562

15:                                               ; preds = %12
  %16 = call i32* @__errno_location() #17, !dbg !1563
  %17 = load i32, i32* %16, align 4, !dbg !1563
  %18 = load i8*, i8** @file_name, align 8, !dbg !1564
  %19 = call i8* @quotearg_colon(i8* %18), !dbg !1565
  %20 = load i8*, i8** %1, align 8, !dbg !1566
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.71, i64 0, i64 0), i8* %19, i8* %20), !dbg !1567
  br label %25, !dbg !1567

21:                                               ; preds = %12
  %22 = call i32* @__errno_location() #17, !dbg !1568
  %23 = load i32, i32* %22, align 4, !dbg !1568
  %24 = load i8*, i8** %1, align 8, !dbg !1569
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.72, i64 0, i64 0), i8* %24), !dbg !1570
  br label %25

25:                                               ; preds = %21, %15
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1571
  call void @_exit(i32 %26) #16, !dbg !1572
  unreachable, !dbg !1572

27:                                               ; preds = %8, %0
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1573
  %29 = call i32 @close_stream(%struct._IO_FILE* %28), !dbg !1575
  %30 = icmp ne i32 %29, 0, !dbg !1576
  br i1 %30, label %31, label %33, !dbg !1577

31:                                               ; preds = %27
  %32 = load volatile i32, i32* @exit_failure, align 4, !dbg !1578
  call void @_exit(i32 %32) #16, !dbg !1579
  unreachable, !dbg !1579

33:                                               ; preds = %27
  ret void, !dbg !1580
}

; Function Attrs: noreturn
declare dso_local void @_exit(i32) #9

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @umaxtostr(i64 %0, i8* %1) #3 !dbg !1581 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1585, metadata !DIExpression()), !dbg !1586
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1587, metadata !DIExpression()), !dbg !1588
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1589, metadata !DIExpression()), !dbg !1590
  %6 = load i8*, i8** %4, align 8, !dbg !1591
  %7 = getelementptr inbounds i8, i8* %6, i64 20, !dbg !1592
  store i8* %7, i8** %5, align 8, !dbg !1590
  %8 = load i8*, i8** %5, align 8, !dbg !1593
  store i8 0, i8* %8, align 1, !dbg !1594
  %9 = load i64, i64* %3, align 8, !dbg !1595
  %10 = icmp ult i64 %9, 0, !dbg !1597
  br i1 %10, label %11, label %26, !dbg !1598

11:                                               ; preds = %2
  br label %12, !dbg !1599

12:                                               ; preds = %19, %11
  %13 = load i64, i64* %3, align 8, !dbg !1601
  %14 = urem i64 %13, 10, !dbg !1602
  %15 = sub i64 48, %14, !dbg !1603
  %16 = trunc i64 %15 to i8, !dbg !1604
  %17 = load i8*, i8** %5, align 8, !dbg !1605
  %18 = getelementptr inbounds i8, i8* %17, i32 -1, !dbg !1605
  store i8* %18, i8** %5, align 8, !dbg !1605
  store i8 %16, i8* %18, align 1, !dbg !1606
  br label %19, !dbg !1607

19:                                               ; preds = %12
  %20 = load i64, i64* %3, align 8, !dbg !1608
  %21 = udiv i64 %20, 10, !dbg !1608
  store i64 %21, i64* %3, align 8, !dbg !1608
  %22 = icmp ne i64 %21, 0, !dbg !1609
  br i1 %22, label %12, label %23, !dbg !1607, !llvm.loop !1610

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8, !dbg !1612
  %25 = getelementptr inbounds i8, i8* %24, i32 -1, !dbg !1612
  store i8* %25, i8** %5, align 8, !dbg !1612
  store i8 45, i8* %25, align 1, !dbg !1613
  br label %39, !dbg !1614

26:                                               ; preds = %2
  br label %27, !dbg !1615

27:                                               ; preds = %34, %26
  %28 = load i64, i64* %3, align 8, !dbg !1617
  %29 = urem i64 %28, 10, !dbg !1618
  %30 = add i64 48, %29, !dbg !1619
  %31 = trunc i64 %30 to i8, !dbg !1620
  %32 = load i8*, i8** %5, align 8, !dbg !1621
  %33 = getelementptr inbounds i8, i8* %32, i32 -1, !dbg !1621
  store i8* %33, i8** %5, align 8, !dbg !1621
  store i8 %31, i8* %33, align 1, !dbg !1622
  br label %34, !dbg !1623

34:                                               ; preds = %27
  %35 = load i64, i64* %3, align 8, !dbg !1624
  %36 = udiv i64 %35, 10, !dbg !1624
  store i64 %36, i64* %3, align 8, !dbg !1624
  %37 = icmp ne i64 %36, 0, !dbg !1625
  br i1 %37, label %27, label %38, !dbg !1623, !llvm.loop !1626

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38, %23
  %40 = load i8*, i8** %5, align 8, !dbg !1628
  ret i8* %40, !dbg !1629
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* %0) #3 !dbg !1630 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1631, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1633, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1635, metadata !DIExpression()), !dbg !1636
  %5 = load i8*, i8** %2, align 8, !dbg !1637
  %6 = icmp eq i8* %5, null, !dbg !1639
  br i1 %6, label %7, label %10, !dbg !1640

7:                                                ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1641
  %9 = call i32 @fputs(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.81, i64 0, i64 0), %struct._IO_FILE* %8), !dbg !1643
  call void @abort() #13, !dbg !1644
  unreachable, !dbg !1644

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8, !dbg !1645
  %12 = call i8* @strrchr(i8* %11, i32 47) #14, !dbg !1646
  store i8* %12, i8** %3, align 8, !dbg !1647
  %13 = load i8*, i8** %3, align 8, !dbg !1648
  %14 = icmp ne i8* %13, null, !dbg !1649
  br i1 %14, label %15, label %18, !dbg !1648

15:                                               ; preds = %10
  %16 = load i8*, i8** %3, align 8, !dbg !1650
  %17 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !1651
  br label %20, !dbg !1648

18:                                               ; preds = %10
  %19 = load i8*, i8** %2, align 8, !dbg !1652
  br label %20, !dbg !1648

20:                                               ; preds = %18, %15
  %21 = phi i8* [ %17, %15 ], [ %19, %18 ], !dbg !1648
  store i8* %21, i8** %4, align 8, !dbg !1653
  %22 = load i8*, i8** %4, align 8, !dbg !1654
  %23 = load i8*, i8** %2, align 8, !dbg !1656
  %24 = ptrtoint i8* %22 to i64, !dbg !1657
  %25 = ptrtoint i8* %23 to i64, !dbg !1657
  %26 = sub i64 %24, %25, !dbg !1657
  %27 = icmp sge i64 %26, 7, !dbg !1658
  br i1 %27, label %28, label %43, !dbg !1659

28:                                               ; preds = %20
  %29 = load i8*, i8** %4, align 8, !dbg !1660
  %30 = getelementptr inbounds i8, i8* %29, i64 -7, !dbg !1661
  %31 = call i32 @strncmp(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.82, i64 0, i64 0), i64 7) #14, !dbg !1662
  %32 = icmp eq i32 %31, 0, !dbg !1663
  br i1 %32, label %33, label %43, !dbg !1664

33:                                               ; preds = %28
  %34 = load i8*, i8** %4, align 8, !dbg !1665
  store i8* %34, i8** %2, align 8, !dbg !1667
  %35 = load i8*, i8** %4, align 8, !dbg !1668
  %36 = call i32 @strncmp(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.83, i64 0, i64 0), i64 3) #14, !dbg !1670
  %37 = icmp eq i32 %36, 0, !dbg !1671
  br i1 %37, label %38, label %42, !dbg !1672

38:                                               ; preds = %33
  %39 = load i8*, i8** %4, align 8, !dbg !1673
  %40 = getelementptr inbounds i8, i8* %39, i64 3, !dbg !1675
  store i8* %40, i8** %2, align 8, !dbg !1676
  %41 = load i8*, i8** %2, align 8, !dbg !1677
  store i8* %41, i8** @program_invocation_short_name, align 8, !dbg !1678
  br label %42, !dbg !1679

42:                                               ; preds = %38, %33
  br label %43, !dbg !1680

43:                                               ; preds = %42, %28, %20
  %44 = load i8*, i8** %2, align 8, !dbg !1681
  store i8* %44, i8** @program_name, align 8, !dbg !1682
  %45 = load i8*, i8** %2, align 8, !dbg !1683
  store i8* %45, i8** @program_invocation_name, align 8, !dbg !1684
  ret void, !dbg !1685
}

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strrchr(i8*, i32) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) #3 !dbg !1686 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1690, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1692, metadata !DIExpression()), !dbg !1693
  %5 = call i32* @__errno_location() #17, !dbg !1694
  %6 = load i32, i32* %5, align 4, !dbg !1694
  store i32 %6, i32* %3, align 4, !dbg !1693
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1695, metadata !DIExpression()), !dbg !1696
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1697
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1697
  br i1 %8, label %9, label %11, !dbg !1697

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1698
  br label %12, !dbg !1697

11:                                               ; preds = %1
  br label %12, !dbg !1697

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !1697
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !1697
  %15 = call i8* @xmemdup(i8* %14, i64 56), !dbg !1699
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !1699
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !1696
  %17 = load i32, i32* %3, align 4, !dbg !1700
  %18 = call i32* @__errno_location() #17, !dbg !1701
  store i32 %17, i32* %18, align 4, !dbg !1702
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1703
  ret %struct.quoting_options* %19, !dbg !1704
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* %0) #3 !dbg !1705 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1710, metadata !DIExpression()), !dbg !1711
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1712
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !1712
  br i1 %4, label %5, label %7, !dbg !1712

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1713
  br label %8, !dbg !1712

7:                                                ; preds = %1
  br label %8, !dbg !1712

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !1712
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !1714
  %11 = load i32, i32* %10, align 8, !dbg !1714
  ret i32 %11, !dbg !1715
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) #3 !dbg !1716 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1719, metadata !DIExpression()), !dbg !1720
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1721, metadata !DIExpression()), !dbg !1722
  %5 = load i32, i32* %4, align 4, !dbg !1723
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1724
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1724
  br i1 %7, label %8, label %10, !dbg !1724

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1725
  br label %11, !dbg !1724

10:                                               ; preds = %2
  br label %11, !dbg !1724

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !1724
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !1726
  store i32 %5, i32* %13, align 8, !dbg !1727
  ret void, !dbg !1728
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) #3 !dbg !1729 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1732, metadata !DIExpression()), !dbg !1733
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1734, metadata !DIExpression()), !dbg !1735
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1736, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1738, metadata !DIExpression()), !dbg !1739
  %11 = load i8, i8* %5, align 1, !dbg !1740
  store i8 %11, i8* %7, align 1, !dbg !1739
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1741, metadata !DIExpression()), !dbg !1743
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1744
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !1744
  br i1 %13, label %14, label %16, !dbg !1744

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1745
  br label %17, !dbg !1744

16:                                               ; preds = %3
  br label %17, !dbg !1744

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !1744
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !1746
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !1747
  %21 = load i8, i8* %7, align 1, !dbg !1748
  %22 = zext i8 %21 to i64, !dbg !1748
  %23 = udiv i64 %22, 32, !dbg !1749
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !1750
  store i32* %24, i32** %8, align 8, !dbg !1743
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1751, metadata !DIExpression()), !dbg !1752
  %25 = load i8, i8* %7, align 1, !dbg !1753
  %26 = zext i8 %25 to i64, !dbg !1753
  %27 = urem i64 %26, 32, !dbg !1754
  %28 = trunc i64 %27 to i32, !dbg !1753
  store i32 %28, i32* %9, align 4, !dbg !1752
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1755, metadata !DIExpression()), !dbg !1756
  %29 = load i32*, i32** %8, align 8, !dbg !1757
  %30 = load i32, i32* %29, align 4, !dbg !1758
  %31 = load i32, i32* %9, align 4, !dbg !1759
  %32 = lshr i32 %30, %31, !dbg !1760
  %33 = and i32 %32, 1, !dbg !1761
  store i32 %33, i32* %10, align 4, !dbg !1756
  %34 = load i32, i32* %6, align 4, !dbg !1762
  %35 = and i32 %34, 1, !dbg !1763
  %36 = load i32, i32* %10, align 4, !dbg !1764
  %37 = xor i32 %35, %36, !dbg !1765
  %38 = load i32, i32* %9, align 4, !dbg !1766
  %39 = shl i32 %37, %38, !dbg !1767
  %40 = load i32*, i32** %8, align 8, !dbg !1768
  %41 = load i32, i32* %40, align 4, !dbg !1769
  %42 = xor i32 %41, %39, !dbg !1769
  store i32 %42, i32* %40, align 4, !dbg !1769
  %43 = load i32, i32* %10, align 4, !dbg !1770
  ret i32 %43, !dbg !1771
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) #3 !dbg !1772 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1775, metadata !DIExpression()), !dbg !1776
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1777, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1779, metadata !DIExpression()), !dbg !1780
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1781
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1781
  br i1 %7, label %9, label %8, !dbg !1783

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1784
  br label %9, !dbg !1785

9:                                                ; preds = %8, %2
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1786
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1787
  %12 = load i32, i32* %11, align 4, !dbg !1787
  store i32 %12, i32* %5, align 4, !dbg !1788
  %13 = load i32, i32* %4, align 4, !dbg !1789
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1790
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1791
  store i32 %13, i32* %15, align 4, !dbg !1792
  %16 = load i32, i32* %5, align 4, !dbg !1793
  ret i32 %16, !dbg !1794
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) #3 !dbg !1795 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1798, metadata !DIExpression()), !dbg !1799
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1800, metadata !DIExpression()), !dbg !1801
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1802, metadata !DIExpression()), !dbg !1803
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1804
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1804
  br i1 %8, label %10, label %9, !dbg !1806

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1807
  br label %10, !dbg !1808

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1809
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1810
  store i32 10, i32* %12, align 8, !dbg !1811
  %13 = load i8*, i8** %5, align 8, !dbg !1812
  %14 = icmp ne i8* %13, null, !dbg !1812
  br i1 %14, label %15, label %18, !dbg !1814

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1815
  %17 = icmp ne i8* %16, null, !dbg !1815
  br i1 %17, label %19, label %18, !dbg !1816

18:                                               ; preds = %15, %10
  call void @abort() #13, !dbg !1817
  unreachable, !dbg !1817

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1818
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1819
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1820
  store i8* %20, i8** %22, align 8, !dbg !1821
  %23 = load i8*, i8** %6, align 8, !dbg !1822
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1823
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !1824
  store i8* %23, i8** %25, align 8, !dbg !1825
  ret void, !dbg !1826
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* %4) #3 !dbg !1827 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1830, metadata !DIExpression()), !dbg !1831
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1832, metadata !DIExpression()), !dbg !1833
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1834, metadata !DIExpression()), !dbg !1835
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1836, metadata !DIExpression()), !dbg !1837
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !1838, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !1840, metadata !DIExpression()), !dbg !1841
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1842
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !1842
  br i1 %15, label %16, label %18, !dbg !1842

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1843
  br label %19, !dbg !1842

18:                                               ; preds = %5
  br label %19, !dbg !1842

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !1842
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !1841
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1844, metadata !DIExpression()), !dbg !1845
  %21 = call i32* @__errno_location() #17, !dbg !1846
  %22 = load i32, i32* %21, align 4, !dbg !1846
  store i32 %22, i32* %12, align 4, !dbg !1845
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1847, metadata !DIExpression()), !dbg !1848
  %23 = load i8*, i8** %6, align 8, !dbg !1849
  %24 = load i64, i64* %7, align 8, !dbg !1850
  %25 = load i8*, i8** %8, align 8, !dbg !1851
  %26 = load i64, i64* %9, align 8, !dbg !1852
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1853
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !1854
  %29 = load i32, i32* %28, align 8, !dbg !1854
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1855
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !1856
  %32 = load i32, i32* %31, align 4, !dbg !1856
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1857
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !1858
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !1857
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1859
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !1860
  %38 = load i8*, i8** %37, align 8, !dbg !1860
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1861
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !1862
  %41 = load i8*, i8** %40, align 8, !dbg !1862
  %42 = call i64 @quotearg_buffer_restyled(i8* %23, i64 %24, i8* %25, i64 %26, i32 %29, i32 %32, i32* %35, i8* %38, i8* %41), !dbg !1863
  store i64 %42, i64* %13, align 8, !dbg !1848
  %43 = load i32, i32* %12, align 4, !dbg !1864
  %44 = call i32* @__errno_location() #17, !dbg !1865
  store i32 %43, i32* %44, align 4, !dbg !1866
  %45 = load i64, i64* %13, align 8, !dbg !1867
  ret i64 %45, !dbg !1868
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* %6, i8* %7, i8* %8) #3 !dbg !1869 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1874, metadata !DIExpression()), !dbg !1875
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1876, metadata !DIExpression()), !dbg !1877
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1878, metadata !DIExpression()), !dbg !1879
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1880, metadata !DIExpression()), !dbg !1881
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1882, metadata !DIExpression()), !dbg !1883
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1884, metadata !DIExpression()), !dbg !1885
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1886, metadata !DIExpression()), !dbg !1887
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1888, metadata !DIExpression()), !dbg !1889
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1890, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.declare(metadata i64* %20, metadata !1892, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1894, metadata !DIExpression()), !dbg !1895
  store i64 0, i64* %21, align 8, !dbg !1895
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1896, metadata !DIExpression()), !dbg !1897
  store i64 0, i64* %22, align 8, !dbg !1897
  call void @llvm.dbg.declare(metadata i8** %23, metadata !1898, metadata !DIExpression()), !dbg !1899
  store i8* null, i8** %23, align 8, !dbg !1899
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1900, metadata !DIExpression()), !dbg !1901
  store i64 0, i64* %24, align 8, !dbg !1901
  call void @llvm.dbg.declare(metadata i8* %25, metadata !1902, metadata !DIExpression()), !dbg !1903
  store i8 0, i8* %25, align 1, !dbg !1903
  call void @llvm.dbg.declare(metadata i8* %26, metadata !1904, metadata !DIExpression()), !dbg !1905
  %43 = call i64 @__ctype_get_mb_cur_max() #15, !dbg !1906
  %44 = icmp eq i64 %43, 1, !dbg !1907
  %45 = zext i1 %44 to i8, !dbg !1905
  store i8 %45, i8* %26, align 1, !dbg !1905
  call void @llvm.dbg.declare(metadata i8* %27, metadata !1908, metadata !DIExpression()), !dbg !1909
  %46 = load i32, i32* %16, align 4, !dbg !1910
  %47 = and i32 %46, 2, !dbg !1911
  %48 = icmp ne i32 %47, 0, !dbg !1912
  %49 = zext i1 %48 to i8, !dbg !1909
  store i8 %49, i8* %27, align 1, !dbg !1909
  call void @llvm.dbg.declare(metadata i8* %28, metadata !1913, metadata !DIExpression()), !dbg !1914
  store i8 0, i8* %28, align 1, !dbg !1914
  call void @llvm.dbg.declare(metadata i8* %29, metadata !1915, metadata !DIExpression()), !dbg !1916
  store i8 0, i8* %29, align 1, !dbg !1916
  call void @llvm.dbg.declare(metadata i8* %30, metadata !1917, metadata !DIExpression()), !dbg !1918
  store i8 1, i8* %30, align 1, !dbg !1918
  br label %50, !dbg !1919

50:                                               ; preds = %1042, %9
  call void @llvm.dbg.label(metadata !1920), !dbg !1921
  %51 = load i32, i32* %15, align 4, !dbg !1922
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
  ], !dbg !1923

52:                                               ; preds = %50
  store i32 5, i32* %15, align 4, !dbg !1924
  store i8 1, i8* %27, align 1, !dbg !1926
  br label %53, !dbg !1927

53:                                               ; preds = %50, %52
  %54 = load i8, i8* %27, align 1, !dbg !1928
  %55 = trunc i8 %54 to i1, !dbg !1928
  br i1 %55, label %69, label %56, !dbg !1930

56:                                               ; preds = %53
  br label %57, !dbg !1931

57:                                               ; preds = %56
  %58 = load i64, i64* %21, align 8, !dbg !1932
  %59 = load i64, i64* %12, align 8, !dbg !1932
  %60 = icmp ult i64 %58, %59, !dbg !1932
  br i1 %60, label %61, label %65, !dbg !1935

61:                                               ; preds = %57
  %62 = load i8*, i8** %11, align 8, !dbg !1932
  %63 = load i64, i64* %21, align 8, !dbg !1932
  %64 = getelementptr inbounds i8, i8* %62, i64 %63, !dbg !1932
  store i8 34, i8* %64, align 1, !dbg !1932
  br label %65, !dbg !1932

65:                                               ; preds = %61, %57
  %66 = load i64, i64* %21, align 8, !dbg !1935
  %67 = add i64 %66, 1, !dbg !1935
  store i64 %67, i64* %21, align 8, !dbg !1935
  br label %68, !dbg !1935

68:                                               ; preds = %65
  br label %69, !dbg !1935

69:                                               ; preds = %68, %53
  store i8 1, i8* %25, align 1, !dbg !1936
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), i8** %23, align 8, !dbg !1937
  store i64 1, i64* %24, align 8, !dbg !1938
  br label %137, !dbg !1939

70:                                               ; preds = %50
  store i8 1, i8* %25, align 1, !dbg !1940
  store i8 0, i8* %27, align 1, !dbg !1941
  br label %137, !dbg !1942

71:                                               ; preds = %50, %50, %50
  %72 = load i32, i32* %15, align 4, !dbg !1943
  %73 = icmp ne i32 %72, 10, !dbg !1946
  br i1 %73, label %74, label %79, !dbg !1947

74:                                               ; preds = %71
  %75 = load i32, i32* %15, align 4, !dbg !1948
  %76 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.95, i64 0, i64 0), i32 %75), !dbg !1950
  store i8* %76, i8** %18, align 8, !dbg !1951
  %77 = load i32, i32* %15, align 4, !dbg !1952
  %78 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.96, i64 0, i64 0), i32 %77), !dbg !1953
  store i8* %78, i8** %19, align 8, !dbg !1954
  br label %79, !dbg !1955

79:                                               ; preds = %74, %71
  %80 = load i8, i8* %27, align 1, !dbg !1956
  %81 = trunc i8 %80 to i1, !dbg !1956
  br i1 %81, label %107, label %82, !dbg !1958

82:                                               ; preds = %79
  %83 = load i8*, i8** %18, align 8, !dbg !1959
  store i8* %83, i8** %23, align 8, !dbg !1961
  br label %84, !dbg !1962

84:                                               ; preds = %103, %82
  %85 = load i8*, i8** %23, align 8, !dbg !1963
  %86 = load i8, i8* %85, align 1, !dbg !1965
  %87 = icmp ne i8 %86, 0, !dbg !1966
  br i1 %87, label %88, label %106, !dbg !1966

88:                                               ; preds = %84
  br label %89, !dbg !1967

89:                                               ; preds = %88
  %90 = load i64, i64* %21, align 8, !dbg !1968
  %91 = load i64, i64* %12, align 8, !dbg !1968
  %92 = icmp ult i64 %90, %91, !dbg !1968
  br i1 %92, label %93, label %99, !dbg !1971

93:                                               ; preds = %89
  %94 = load i8*, i8** %23, align 8, !dbg !1968
  %95 = load i8, i8* %94, align 1, !dbg !1968
  %96 = load i8*, i8** %11, align 8, !dbg !1968
  %97 = load i64, i64* %21, align 8, !dbg !1968
  %98 = getelementptr inbounds i8, i8* %96, i64 %97, !dbg !1968
  store i8 %95, i8* %98, align 1, !dbg !1968
  br label %99, !dbg !1968

99:                                               ; preds = %93, %89
  %100 = load i64, i64* %21, align 8, !dbg !1971
  %101 = add i64 %100, 1, !dbg !1971
  store i64 %101, i64* %21, align 8, !dbg !1971
  br label %102, !dbg !1971

102:                                              ; preds = %99
  br label %103, !dbg !1971

103:                                              ; preds = %102
  %104 = load i8*, i8** %23, align 8, !dbg !1972
  %105 = getelementptr inbounds i8, i8* %104, i32 1, !dbg !1972
  store i8* %105, i8** %23, align 8, !dbg !1972
  br label %84, !dbg !1973, !llvm.loop !1974

106:                                              ; preds = %84
  br label %107, !dbg !1975

107:                                              ; preds = %106, %79
  store i8 1, i8* %25, align 1, !dbg !1976
  %108 = load i8*, i8** %19, align 8, !dbg !1977
  store i8* %108, i8** %23, align 8, !dbg !1978
  %109 = load i8*, i8** %23, align 8, !dbg !1979
  %110 = call i64 @strlen(i8* %109) #14, !dbg !1980
  store i64 %110, i64* %24, align 8, !dbg !1981
  br label %137, !dbg !1982

111:                                              ; preds = %50
  store i8 1, i8* %25, align 1, !dbg !1983
  br label %112, !dbg !1984

112:                                              ; preds = %50, %111
  store i8 1, i8* %27, align 1, !dbg !1985
  br label %113, !dbg !1986

113:                                              ; preds = %50, %112
  %114 = load i8, i8* %27, align 1, !dbg !1987
  %115 = trunc i8 %114 to i1, !dbg !1987
  br i1 %115, label %117, label %116, !dbg !1989

116:                                              ; preds = %113
  store i8 1, i8* %25, align 1, !dbg !1990
  br label %117, !dbg !1991

117:                                              ; preds = %116, %113
  br label %118, !dbg !1992

118:                                              ; preds = %50, %117
  store i32 2, i32* %15, align 4, !dbg !1993
  %119 = load i8, i8* %27, align 1, !dbg !1994
  %120 = trunc i8 %119 to i1, !dbg !1994
  br i1 %120, label %134, label %121, !dbg !1996

121:                                              ; preds = %118
  br label %122, !dbg !1997

122:                                              ; preds = %121
  %123 = load i64, i64* %21, align 8, !dbg !1998
  %124 = load i64, i64* %12, align 8, !dbg !1998
  %125 = icmp ult i64 %123, %124, !dbg !1998
  br i1 %125, label %126, label %130, !dbg !2001

126:                                              ; preds = %122
  %127 = load i8*, i8** %11, align 8, !dbg !1998
  %128 = load i64, i64* %21, align 8, !dbg !1998
  %129 = getelementptr inbounds i8, i8* %127, i64 %128, !dbg !1998
  store i8 39, i8* %129, align 1, !dbg !1998
  br label %130, !dbg !1998

130:                                              ; preds = %126, %122
  %131 = load i64, i64* %21, align 8, !dbg !2001
  %132 = add i64 %131, 1, !dbg !2001
  store i64 %132, i64* %21, align 8, !dbg !2001
  br label %133, !dbg !2001

133:                                              ; preds = %130
  br label %134, !dbg !2001

134:                                              ; preds = %133, %118
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.96, i64 0, i64 0), i8** %23, align 8, !dbg !2002
  store i64 1, i64* %24, align 8, !dbg !2003
  br label %137, !dbg !2004

135:                                              ; preds = %50
  store i8 0, i8* %27, align 1, !dbg !2005
  br label %137, !dbg !2006

136:                                              ; preds = %50
  call void @abort() #13, !dbg !2007
  unreachable, !dbg !2007

137:                                              ; preds = %135, %134, %107, %70, %69
  store i64 0, i64* %20, align 8, !dbg !2008
  br label %138, !dbg !2010

138:                                              ; preds = %1001, %137
  %139 = load i64, i64* %14, align 8, !dbg !2011
  %140 = icmp eq i64 %139, -1, !dbg !2013
  br i1 %140, label %141, label %149, !dbg !2011

141:                                              ; preds = %138
  %142 = load i8*, i8** %13, align 8, !dbg !2014
  %143 = load i64, i64* %20, align 8, !dbg !2015
  %144 = getelementptr inbounds i8, i8* %142, i64 %143, !dbg !2014
  %145 = load i8, i8* %144, align 1, !dbg !2014
  %146 = sext i8 %145 to i32, !dbg !2014
  %147 = icmp eq i32 %146, 0, !dbg !2016
  %148 = zext i1 %147 to i32, !dbg !2016
  br label %154, !dbg !2011

149:                                              ; preds = %138
  %150 = load i64, i64* %20, align 8, !dbg !2017
  %151 = load i64, i64* %14, align 8, !dbg !2018
  %152 = icmp eq i64 %150, %151, !dbg !2019
  %153 = zext i1 %152 to i32, !dbg !2019
  br label %154, !dbg !2011

154:                                              ; preds = %149, %141
  %155 = phi i32 [ %148, %141 ], [ %153, %149 ], !dbg !2011
  %156 = icmp ne i32 %155, 0, !dbg !2020
  %157 = xor i1 %156, true, !dbg !2020
  br i1 %157, label %158, label %1004, !dbg !2021

158:                                              ; preds = %154
  call void @llvm.dbg.declare(metadata i8* %31, metadata !2022, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.declare(metadata i8* %32, metadata !2025, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.declare(metadata i8* %33, metadata !2027, metadata !DIExpression()), !dbg !2028
  store i8 0, i8* %33, align 1, !dbg !2028
  call void @llvm.dbg.declare(metadata i8* %34, metadata !2029, metadata !DIExpression()), !dbg !2030
  store i8 0, i8* %34, align 1, !dbg !2030
  call void @llvm.dbg.declare(metadata i8* %35, metadata !2031, metadata !DIExpression()), !dbg !2032
  store i8 0, i8* %35, align 1, !dbg !2032
  %159 = load i8, i8* %25, align 1, !dbg !2033
  %160 = trunc i8 %159 to i1, !dbg !2033
  br i1 %160, label %161, label %197, !dbg !2035

161:                                              ; preds = %158
  %162 = load i32, i32* %15, align 4, !dbg !2036
  %163 = icmp ne i32 %162, 2, !dbg !2037
  br i1 %163, label %164, label %197, !dbg !2038

164:                                              ; preds = %161
  %165 = load i64, i64* %24, align 8, !dbg !2039
  %166 = icmp ne i64 %165, 0, !dbg !2039
  br i1 %166, label %167, label %197, !dbg !2040

167:                                              ; preds = %164
  %168 = load i64, i64* %20, align 8, !dbg !2041
  %169 = load i64, i64* %24, align 8, !dbg !2042
  %170 = add i64 %168, %169, !dbg !2043
  %171 = load i64, i64* %14, align 8, !dbg !2044
  %172 = icmp eq i64 %171, -1, !dbg !2045
  br i1 %172, label %173, label %179, !dbg !2046

173:                                              ; preds = %167
  %174 = load i64, i64* %24, align 8, !dbg !2047
  %175 = icmp ult i64 1, %174, !dbg !2048
  br i1 %175, label %176, label %179, !dbg !2044

176:                                              ; preds = %173
  %177 = load i8*, i8** %13, align 8, !dbg !2049
  %178 = call i64 @strlen(i8* %177) #14, !dbg !2050
  store i64 %178, i64* %14, align 8, !dbg !2051
  br label %181, !dbg !2044

179:                                              ; preds = %173, %167
  %180 = load i64, i64* %14, align 8, !dbg !2052
  br label %181, !dbg !2044

181:                                              ; preds = %179, %176
  %182 = phi i64 [ %178, %176 ], [ %180, %179 ], !dbg !2044
  %183 = icmp ule i64 %170, %182, !dbg !2053
  br i1 %183, label %184, label %197, !dbg !2054

184:                                              ; preds = %181
  %185 = load i8*, i8** %13, align 8, !dbg !2055
  %186 = load i64, i64* %20, align 8, !dbg !2056
  %187 = getelementptr inbounds i8, i8* %185, i64 %186, !dbg !2057
  %188 = load i8*, i8** %23, align 8, !dbg !2058
  %189 = load i64, i64* %24, align 8, !dbg !2059
  %190 = call i32 @memcmp(i8* %187, i8* %188, i64 %189) #14, !dbg !2060
  %191 = icmp eq i32 %190, 0, !dbg !2061
  br i1 %191, label %192, label %197, !dbg !2062

192:                                              ; preds = %184
  %193 = load i8, i8* %27, align 1, !dbg !2063
  %194 = trunc i8 %193 to i1, !dbg !2063
  br i1 %194, label %195, label %196, !dbg !2066

195:                                              ; preds = %192
  br label %1086, !dbg !2067

196:                                              ; preds = %192
  store i8 1, i8* %33, align 1, !dbg !2068
  br label %197, !dbg !2069

197:                                              ; preds = %196, %184, %181, %164, %161, %158
  %198 = load i8*, i8** %13, align 8, !dbg !2070
  %199 = load i64, i64* %20, align 8, !dbg !2071
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !2070
  %201 = load i8, i8* %200, align 1, !dbg !2070
  store i8 %201, i8* %31, align 1, !dbg !2072
  %202 = load i8, i8* %31, align 1, !dbg !2073
  %203 = zext i8 %202 to i32, !dbg !2073
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
  ], !dbg !2074

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !2075
  %206 = trunc i8 %205 to i1, !dbg !2075
  br i1 %206, label %207, label %318, !dbg !2078

207:                                              ; preds = %204
  br label %208, !dbg !2079

208:                                              ; preds = %207
  %209 = load i8, i8* %27, align 1, !dbg !2081
  %210 = trunc i8 %209 to i1, !dbg !2081
  br i1 %210, label %211, label %212, !dbg !2084

211:                                              ; preds = %208
  br label %1086, !dbg !2081

212:                                              ; preds = %208
  store i8 1, i8* %34, align 1, !dbg !2084
  %213 = load i32, i32* %15, align 4, !dbg !2085
  %214 = icmp eq i32 %213, 2, !dbg !2085
  br i1 %214, label %215, label %255, !dbg !2085

215:                                              ; preds = %212
  %216 = load i8, i8* %28, align 1, !dbg !2085
  %217 = trunc i8 %216 to i1, !dbg !2085
  br i1 %217, label %255, label %218, !dbg !2084

218:                                              ; preds = %215
  br label %219, !dbg !2087

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !2089
  %221 = load i64, i64* %12, align 8, !dbg !2089
  %222 = icmp ult i64 %220, %221, !dbg !2089
  br i1 %222, label %223, label %227, !dbg !2092

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !2089
  %225 = load i64, i64* %21, align 8, !dbg !2089
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !2089
  store i8 39, i8* %226, align 1, !dbg !2089
  br label %227, !dbg !2089

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !2092
  %229 = add i64 %228, 1, !dbg !2092
  store i64 %229, i64* %21, align 8, !dbg !2092
  br label %230, !dbg !2092

230:                                              ; preds = %227
  br label %231, !dbg !2087

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !2093
  %233 = load i64, i64* %12, align 8, !dbg !2093
  %234 = icmp ult i64 %232, %233, !dbg !2093
  br i1 %234, label %235, label %239, !dbg !2096

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !2093
  %237 = load i64, i64* %21, align 8, !dbg !2093
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !2093
  store i8 36, i8* %238, align 1, !dbg !2093
  br label %239, !dbg !2093

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !2096
  %241 = add i64 %240, 1, !dbg !2096
  store i64 %241, i64* %21, align 8, !dbg !2096
  br label %242, !dbg !2096

242:                                              ; preds = %239
  br label %243, !dbg !2087

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !2097
  %245 = load i64, i64* %12, align 8, !dbg !2097
  %246 = icmp ult i64 %244, %245, !dbg !2097
  br i1 %246, label %247, label %251, !dbg !2100

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !2097
  %249 = load i64, i64* %21, align 8, !dbg !2097
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !2097
  store i8 39, i8* %250, align 1, !dbg !2097
  br label %251, !dbg !2097

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !2100
  %253 = add i64 %252, 1, !dbg !2100
  store i64 %253, i64* %21, align 8, !dbg !2100
  br label %254, !dbg !2100

254:                                              ; preds = %251
  store i8 1, i8* %28, align 1, !dbg !2087
  br label %255, !dbg !2087

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !2084

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !2101
  %258 = load i64, i64* %12, align 8, !dbg !2101
  %259 = icmp ult i64 %257, %258, !dbg !2101
  br i1 %259, label %260, label %264, !dbg !2104

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !2101
  %262 = load i64, i64* %21, align 8, !dbg !2101
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !2101
  store i8 92, i8* %263, align 1, !dbg !2101
  br label %264, !dbg !2101

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !2104
  %266 = add i64 %265, 1, !dbg !2104
  store i64 %266, i64* %21, align 8, !dbg !2104
  br label %267, !dbg !2104

267:                                              ; preds = %264
  br label %268, !dbg !2084

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !2105
  %270 = icmp ne i32 %269, 2, !dbg !2107
  br i1 %270, label %271, label %317, !dbg !2108

271:                                              ; preds = %268
  %272 = load i64, i64* %20, align 8, !dbg !2109
  %273 = add i64 %272, 1, !dbg !2110
  %274 = load i64, i64* %14, align 8, !dbg !2111
  %275 = icmp ult i64 %273, %274, !dbg !2112
  br i1 %275, label %276, label %317, !dbg !2113

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !2114
  %278 = load i64, i64* %20, align 8, !dbg !2115
  %279 = add i64 %278, 1, !dbg !2116
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !2114
  %281 = load i8, i8* %280, align 1, !dbg !2114
  %282 = sext i8 %281 to i32, !dbg !2114
  %283 = icmp sle i32 48, %282, !dbg !2117
  br i1 %283, label %284, label %317, !dbg !2118

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !2119
  %286 = load i64, i64* %20, align 8, !dbg !2120
  %287 = add i64 %286, 1, !dbg !2121
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !2119
  %289 = load i8, i8* %288, align 1, !dbg !2119
  %290 = sext i8 %289 to i32, !dbg !2119
  %291 = icmp sle i32 %290, 57, !dbg !2122
  br i1 %291, label %292, label %317, !dbg !2123

292:                                              ; preds = %284
  br label %293, !dbg !2124

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !2126
  %295 = load i64, i64* %12, align 8, !dbg !2126
  %296 = icmp ult i64 %294, %295, !dbg !2126
  br i1 %296, label %297, label %301, !dbg !2129

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !2126
  %299 = load i64, i64* %21, align 8, !dbg !2126
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !2126
  store i8 48, i8* %300, align 1, !dbg !2126
  br label %301, !dbg !2126

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !2129
  %303 = add i64 %302, 1, !dbg !2129
  store i64 %303, i64* %21, align 8, !dbg !2129
  br label %304, !dbg !2129

304:                                              ; preds = %301
  br label %305, !dbg !2130

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !2131
  %307 = load i64, i64* %12, align 8, !dbg !2131
  %308 = icmp ult i64 %306, %307, !dbg !2131
  br i1 %308, label %309, label %313, !dbg !2134

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !2131
  %311 = load i64, i64* %21, align 8, !dbg !2131
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !2131
  store i8 48, i8* %312, align 1, !dbg !2131
  br label %313, !dbg !2131

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !2134
  %315 = add i64 %314, 1, !dbg !2134
  store i64 %315, i64* %21, align 8, !dbg !2134
  br label %316, !dbg !2134

316:                                              ; preds = %313
  br label %317, !dbg !2135

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %31, align 1, !dbg !2136
  br label %324, !dbg !2137

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !2138
  %320 = and i32 %319, 1, !dbg !2140
  %321 = icmp ne i32 %320, 0, !dbg !2140
  br i1 %321, label %322, label %323, !dbg !2141

322:                                              ; preds = %318
  br label %1001, !dbg !2142

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %857, !dbg !2143

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !2144
  switch i32 %326, label %419 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !2145

327:                                              ; preds = %325
  %328 = load i8, i8* %27, align 1, !dbg !2146
  %329 = trunc i8 %328 to i1, !dbg !2146
  br i1 %329, label %330, label %331, !dbg !2149

330:                                              ; preds = %327
  br label %1086, !dbg !2150

331:                                              ; preds = %327
  br label %420, !dbg !2151

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !2152
  %334 = and i32 %333, 4, !dbg !2154
  %335 = icmp ne i32 %334, 0, !dbg !2154
  br i1 %335, label %336, label %418, !dbg !2155

336:                                              ; preds = %332
  %337 = load i64, i64* %20, align 8, !dbg !2156
  %338 = add i64 %337, 2, !dbg !2157
  %339 = load i64, i64* %14, align 8, !dbg !2158
  %340 = icmp ult i64 %338, %339, !dbg !2159
  br i1 %340, label %341, label %418, !dbg !2160

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !2161
  %343 = load i64, i64* %20, align 8, !dbg !2162
  %344 = add i64 %343, 1, !dbg !2163
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !2161
  %346 = load i8, i8* %345, align 1, !dbg !2161
  %347 = sext i8 %346 to i32, !dbg !2161
  %348 = icmp eq i32 %347, 63, !dbg !2164
  br i1 %348, label %349, label %418, !dbg !2165

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !2166
  %351 = load i64, i64* %20, align 8, !dbg !2167
  %352 = add i64 %351, 2, !dbg !2168
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !2166
  %354 = load i8, i8* %353, align 1, !dbg !2166
  %355 = sext i8 %354 to i32, !dbg !2166
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
  ], !dbg !2169

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %27, align 1, !dbg !2170
  %358 = trunc i8 %357 to i1, !dbg !2170
  br i1 %358, label %359, label %360, !dbg !2173

359:                                              ; preds = %356
  br label %1086, !dbg !2174

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !2175
  %362 = load i64, i64* %20, align 8, !dbg !2176
  %363 = add i64 %362, 2, !dbg !2177
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !2175
  %365 = load i8, i8* %364, align 1, !dbg !2175
  store i8 %365, i8* %31, align 1, !dbg !2178
  %366 = load i64, i64* %20, align 8, !dbg !2179
  %367 = add i64 %366, 2, !dbg !2179
  store i64 %367, i64* %20, align 8, !dbg !2179
  br label %368, !dbg !2180

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !2181
  %370 = load i64, i64* %12, align 8, !dbg !2181
  %371 = icmp ult i64 %369, %370, !dbg !2181
  br i1 %371, label %372, label %376, !dbg !2184

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !2181
  %374 = load i64, i64* %21, align 8, !dbg !2181
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !2181
  store i8 63, i8* %375, align 1, !dbg !2181
  br label %376, !dbg !2181

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !2184
  %378 = add i64 %377, 1, !dbg !2184
  store i64 %378, i64* %21, align 8, !dbg !2184
  br label %379, !dbg !2184

379:                                              ; preds = %376
  br label %380, !dbg !2185

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !2186
  %382 = load i64, i64* %12, align 8, !dbg !2186
  %383 = icmp ult i64 %381, %382, !dbg !2186
  br i1 %383, label %384, label %388, !dbg !2189

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !2186
  %386 = load i64, i64* %21, align 8, !dbg !2186
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !2186
  store i8 34, i8* %387, align 1, !dbg !2186
  br label %388, !dbg !2186

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !2189
  %390 = add i64 %389, 1, !dbg !2189
  store i64 %390, i64* %21, align 8, !dbg !2189
  br label %391, !dbg !2189

391:                                              ; preds = %388
  br label %392, !dbg !2190

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !2191
  %394 = load i64, i64* %12, align 8, !dbg !2191
  %395 = icmp ult i64 %393, %394, !dbg !2191
  br i1 %395, label %396, label %400, !dbg !2194

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !2191
  %398 = load i64, i64* %21, align 8, !dbg !2191
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !2191
  store i8 34, i8* %399, align 1, !dbg !2191
  br label %400, !dbg !2191

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !2194
  %402 = add i64 %401, 1, !dbg !2194
  store i64 %402, i64* %21, align 8, !dbg !2194
  br label %403, !dbg !2194

403:                                              ; preds = %400
  br label %404, !dbg !2195

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !2196
  %406 = load i64, i64* %12, align 8, !dbg !2196
  %407 = icmp ult i64 %405, %406, !dbg !2196
  br i1 %407, label %408, label %412, !dbg !2199

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !2196
  %410 = load i64, i64* %21, align 8, !dbg !2196
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !2196
  store i8 63, i8* %411, align 1, !dbg !2196
  br label %412, !dbg !2196

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !2199
  %414 = add i64 %413, 1, !dbg !2199
  store i64 %414, i64* %21, align 8, !dbg !2199
  br label %415, !dbg !2199

415:                                              ; preds = %412
  br label %417, !dbg !2200

416:                                              ; preds = %349
  br label %417, !dbg !2201

417:                                              ; preds = %416, %415
  br label %418, !dbg !2202

418:                                              ; preds = %417, %341, %336, %332
  br label %420, !dbg !2203

419:                                              ; preds = %325
  br label %420, !dbg !2204

420:                                              ; preds = %419, %418, %331
  br label %857, !dbg !2205

421:                                              ; preds = %197
  store i8 97, i8* %32, align 1, !dbg !2206
  br label %456, !dbg !2207

422:                                              ; preds = %197
  store i8 98, i8* %32, align 1, !dbg !2208
  br label %456, !dbg !2209

423:                                              ; preds = %197
  store i8 102, i8* %32, align 1, !dbg !2210
  br label %456, !dbg !2211

424:                                              ; preds = %197
  store i8 110, i8* %32, align 1, !dbg !2212
  br label %448, !dbg !2213

425:                                              ; preds = %197
  store i8 114, i8* %32, align 1, !dbg !2214
  br label %448, !dbg !2215

426:                                              ; preds = %197
  store i8 116, i8* %32, align 1, !dbg !2216
  br label %448, !dbg !2217

427:                                              ; preds = %197
  store i8 118, i8* %32, align 1, !dbg !2218
  br label %456, !dbg !2219

428:                                              ; preds = %197
  %429 = load i8, i8* %31, align 1, !dbg !2220
  store i8 %429, i8* %32, align 1, !dbg !2221
  %430 = load i32, i32* %15, align 4, !dbg !2222
  %431 = icmp eq i32 %430, 2, !dbg !2224
  br i1 %431, label %432, label %437, !dbg !2225

432:                                              ; preds = %428
  %433 = load i8, i8* %27, align 1, !dbg !2226
  %434 = trunc i8 %433 to i1, !dbg !2226
  br i1 %434, label %435, label %436, !dbg !2229

435:                                              ; preds = %432
  br label %1086, !dbg !2230

436:                                              ; preds = %432
  br label %950, !dbg !2231

437:                                              ; preds = %428
  %438 = load i8, i8* %25, align 1, !dbg !2232
  %439 = trunc i8 %438 to i1, !dbg !2232
  br i1 %439, label %440, label %447, !dbg !2234

440:                                              ; preds = %437
  %441 = load i8, i8* %27, align 1, !dbg !2235
  %442 = trunc i8 %441 to i1, !dbg !2235
  br i1 %442, label %443, label %447, !dbg !2236

443:                                              ; preds = %440
  %444 = load i64, i64* %24, align 8, !dbg !2237
  %445 = icmp ne i64 %444, 0, !dbg !2237
  br i1 %445, label %446, label %447, !dbg !2238

446:                                              ; preds = %443
  br label %950, !dbg !2239

447:                                              ; preds = %443, %440, %437
  br label %448, !dbg !2237

448:                                              ; preds = %447, %426, %425, %424
  call void @llvm.dbg.label(metadata !2240), !dbg !2241
  %449 = load i32, i32* %15, align 4, !dbg !2242
  %450 = icmp eq i32 %449, 2, !dbg !2244
  br i1 %450, label %451, label %455, !dbg !2245

451:                                              ; preds = %448
  %452 = load i8, i8* %27, align 1, !dbg !2246
  %453 = trunc i8 %452 to i1, !dbg !2246
  br i1 %453, label %454, label %455, !dbg !2247

454:                                              ; preds = %451
  br label %1086, !dbg !2248

455:                                              ; preds = %451, %448
  br label %456, !dbg !2246

456:                                              ; preds = %455, %427, %423, %422, %421
  call void @llvm.dbg.label(metadata !2249), !dbg !2250
  %457 = load i8, i8* %25, align 1, !dbg !2251
  %458 = trunc i8 %457 to i1, !dbg !2251
  br i1 %458, label %459, label %461, !dbg !2253

459:                                              ; preds = %456
  %460 = load i8, i8* %32, align 1, !dbg !2254
  store i8 %460, i8* %31, align 1, !dbg !2256
  br label %888, !dbg !2257

461:                                              ; preds = %456
  br label %857, !dbg !2258

462:                                              ; preds = %197, %197
  %463 = load i64, i64* %14, align 8, !dbg !2259
  %464 = icmp eq i64 %463, -1, !dbg !2261
  br i1 %464, label %465, label %471, !dbg !2262

465:                                              ; preds = %462
  %466 = load i8*, i8** %13, align 8, !dbg !2263
  %467 = getelementptr inbounds i8, i8* %466, i64 1, !dbg !2263
  %468 = load i8, i8* %467, align 1, !dbg !2263
  %469 = sext i8 %468 to i32, !dbg !2263
  %470 = icmp eq i32 %469, 0, !dbg !2264
  br i1 %470, label %475, label %474, !dbg !2259

471:                                              ; preds = %462
  %472 = load i64, i64* %14, align 8, !dbg !2265
  %473 = icmp eq i64 %472, 1, !dbg !2266
  br i1 %473, label %475, label %474, !dbg !2262

474:                                              ; preds = %471, %465
  br label %857, !dbg !2267

475:                                              ; preds = %471, %465
  br label %476, !dbg !2268

476:                                              ; preds = %197, %197, %475
  %477 = load i64, i64* %20, align 8, !dbg !2269
  %478 = icmp ne i64 %477, 0, !dbg !2271
  br i1 %478, label %479, label %480, !dbg !2272

479:                                              ; preds = %476
  br label %857, !dbg !2273

480:                                              ; preds = %476
  br label %481, !dbg !2274

481:                                              ; preds = %197, %480
  store i8 1, i8* %35, align 1, !dbg !2275
  br label %482, !dbg !2276

482:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %481
  %483 = load i32, i32* %15, align 4, !dbg !2277
  %484 = icmp eq i32 %483, 2, !dbg !2279
  br i1 %484, label %485, label %489, !dbg !2280

485:                                              ; preds = %482
  %486 = load i8, i8* %27, align 1, !dbg !2281
  %487 = trunc i8 %486 to i1, !dbg !2281
  br i1 %487, label %488, label %489, !dbg !2282

488:                                              ; preds = %485
  br label %1086, !dbg !2283

489:                                              ; preds = %485, %482
  br label %857, !dbg !2284

490:                                              ; preds = %197
  store i8 1, i8* %29, align 1, !dbg !2285
  store i8 1, i8* %35, align 1, !dbg !2286
  %491 = load i32, i32* %15, align 4, !dbg !2287
  %492 = icmp eq i32 %491, 2, !dbg !2289
  br i1 %492, label %493, label %542, !dbg !2290

493:                                              ; preds = %490
  %494 = load i8, i8* %27, align 1, !dbg !2291
  %495 = trunc i8 %494 to i1, !dbg !2291
  br i1 %495, label %496, label %497, !dbg !2294

496:                                              ; preds = %493
  br label %1086, !dbg !2295

497:                                              ; preds = %493
  %498 = load i64, i64* %12, align 8, !dbg !2296
  %499 = icmp ne i64 %498, 0, !dbg !2296
  br i1 %499, label %500, label %505, !dbg !2298

500:                                              ; preds = %497
  %501 = load i64, i64* %22, align 8, !dbg !2299
  %502 = icmp ne i64 %501, 0, !dbg !2299
  br i1 %502, label %505, label %503, !dbg !2300

503:                                              ; preds = %500
  %504 = load i64, i64* %12, align 8, !dbg !2301
  store i64 %504, i64* %22, align 8, !dbg !2303
  store i64 0, i64* %12, align 8, !dbg !2304
  br label %505, !dbg !2305

505:                                              ; preds = %503, %500, %497
  br label %506, !dbg !2306

506:                                              ; preds = %505
  %507 = load i64, i64* %21, align 8, !dbg !2307
  %508 = load i64, i64* %12, align 8, !dbg !2307
  %509 = icmp ult i64 %507, %508, !dbg !2307
  br i1 %509, label %510, label %514, !dbg !2310

510:                                              ; preds = %506
  %511 = load i8*, i8** %11, align 8, !dbg !2307
  %512 = load i64, i64* %21, align 8, !dbg !2307
  %513 = getelementptr inbounds i8, i8* %511, i64 %512, !dbg !2307
  store i8 39, i8* %513, align 1, !dbg !2307
  br label %514, !dbg !2307

514:                                              ; preds = %510, %506
  %515 = load i64, i64* %21, align 8, !dbg !2310
  %516 = add i64 %515, 1, !dbg !2310
  store i64 %516, i64* %21, align 8, !dbg !2310
  br label %517, !dbg !2310

517:                                              ; preds = %514
  br label %518, !dbg !2311

518:                                              ; preds = %517
  %519 = load i64, i64* %21, align 8, !dbg !2312
  %520 = load i64, i64* %12, align 8, !dbg !2312
  %521 = icmp ult i64 %519, %520, !dbg !2312
  br i1 %521, label %522, label %526, !dbg !2315

522:                                              ; preds = %518
  %523 = load i8*, i8** %11, align 8, !dbg !2312
  %524 = load i64, i64* %21, align 8, !dbg !2312
  %525 = getelementptr inbounds i8, i8* %523, i64 %524, !dbg !2312
  store i8 92, i8* %525, align 1, !dbg !2312
  br label %526, !dbg !2312

526:                                              ; preds = %522, %518
  %527 = load i64, i64* %21, align 8, !dbg !2315
  %528 = add i64 %527, 1, !dbg !2315
  store i64 %528, i64* %21, align 8, !dbg !2315
  br label %529, !dbg !2315

529:                                              ; preds = %526
  br label %530, !dbg !2316

530:                                              ; preds = %529
  %531 = load i64, i64* %21, align 8, !dbg !2317
  %532 = load i64, i64* %12, align 8, !dbg !2317
  %533 = icmp ult i64 %531, %532, !dbg !2317
  br i1 %533, label %534, label %538, !dbg !2320

534:                                              ; preds = %530
  %535 = load i8*, i8** %11, align 8, !dbg !2317
  %536 = load i64, i64* %21, align 8, !dbg !2317
  %537 = getelementptr inbounds i8, i8* %535, i64 %536, !dbg !2317
  store i8 39, i8* %537, align 1, !dbg !2317
  br label %538, !dbg !2317

538:                                              ; preds = %534, %530
  %539 = load i64, i64* %21, align 8, !dbg !2320
  %540 = add i64 %539, 1, !dbg !2320
  store i64 %540, i64* %21, align 8, !dbg !2320
  br label %541, !dbg !2320

541:                                              ; preds = %538
  store i8 0, i8* %28, align 1, !dbg !2321
  br label %542, !dbg !2322

542:                                              ; preds = %541, %490
  br label %857, !dbg !2323

543:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %35, align 1, !dbg !2324
  br label %857, !dbg !2325

544:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %36, metadata !2326, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.declare(metadata i8* %37, metadata !2329, metadata !DIExpression()), !dbg !2330
  %545 = load i8, i8* %26, align 1, !dbg !2331
  %546 = trunc i8 %545 to i1, !dbg !2331
  br i1 %546, label %547, label %559, !dbg !2333

547:                                              ; preds = %544
  store i64 1, i64* %36, align 8, !dbg !2334
  %548 = call i16** @__ctype_b_loc() #17, !dbg !2336
  %549 = load i16*, i16** %548, align 8, !dbg !2336
  %550 = load i8, i8* %31, align 1, !dbg !2336
  %551 = zext i8 %550 to i32, !dbg !2336
  %552 = sext i32 %551 to i64, !dbg !2336
  %553 = getelementptr inbounds i16, i16* %549, i64 %552, !dbg !2336
  %554 = load i16, i16* %553, align 2, !dbg !2336
  %555 = zext i16 %554 to i32, !dbg !2336
  %556 = and i32 %555, 16384, !dbg !2336
  %557 = icmp ne i32 %556, 0, !dbg !2337
  %558 = zext i1 %557 to i8, !dbg !2338
  store i8 %558, i8* %37, align 1, !dbg !2338
  br label %656, !dbg !2339

559:                                              ; preds = %544
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %38, metadata !2340, metadata !DIExpression()), !dbg !2357
  %560 = bitcast %struct.__mbstate_t* %38 to i8*, !dbg !2358
  call void @llvm.memset.p0i8.i64(i8* align 4 %560, i8 0, i64 8, i1 false), !dbg !2358
  store i64 0, i64* %36, align 8, !dbg !2359
  store i8 1, i8* %37, align 1, !dbg !2360
  %561 = load i64, i64* %14, align 8, !dbg !2361
  %562 = icmp eq i64 %561, -1, !dbg !2363
  br i1 %562, label %563, label %566, !dbg !2364

563:                                              ; preds = %559
  %564 = load i8*, i8** %13, align 8, !dbg !2365
  %565 = call i64 @strlen(i8* %564) #14, !dbg !2366
  store i64 %565, i64* %14, align 8, !dbg !2367
  br label %566, !dbg !2368

566:                                              ; preds = %563, %559
  br label %567, !dbg !2369

567:                                              ; preds = %651, %566
  call void @llvm.dbg.declare(metadata i32* %39, metadata !2370, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.declare(metadata i64* %40, metadata !2374, metadata !DIExpression()), !dbg !2375
  %568 = load i8*, i8** %13, align 8, !dbg !2376
  %569 = load i64, i64* %20, align 8, !dbg !2377
  %570 = load i64, i64* %36, align 8, !dbg !2378
  %571 = add i64 %569, %570, !dbg !2379
  %572 = getelementptr inbounds i8, i8* %568, i64 %571, !dbg !2376
  %573 = load i64, i64* %14, align 8, !dbg !2380
  %574 = load i64, i64* %20, align 8, !dbg !2381
  %575 = load i64, i64* %36, align 8, !dbg !2382
  %576 = add i64 %574, %575, !dbg !2383
  %577 = sub i64 %573, %576, !dbg !2384
  %578 = call i64 @rpl_mbrtowc(i32* %39, i8* %572, i64 %577, %struct.__mbstate_t* %38), !dbg !2385
  store i64 %578, i64* %40, align 8, !dbg !2375
  %579 = load i64, i64* %40, align 8, !dbg !2386
  %580 = icmp eq i64 %579, 0, !dbg !2388
  br i1 %580, label %581, label %582, !dbg !2389

581:                                              ; preds = %567
  br label %655, !dbg !2390

582:                                              ; preds = %567
  %583 = load i64, i64* %40, align 8, !dbg !2391
  %584 = icmp eq i64 %583, -1, !dbg !2393
  br i1 %584, label %585, label %586, !dbg !2394

585:                                              ; preds = %582
  store i8 0, i8* %37, align 1, !dbg !2395
  br label %655, !dbg !2397

586:                                              ; preds = %582
  %587 = load i64, i64* %40, align 8, !dbg !2398
  %588 = icmp eq i64 %587, -2, !dbg !2400
  br i1 %588, label %589, label %611, !dbg !2401

589:                                              ; preds = %586
  store i8 0, i8* %37, align 1, !dbg !2402
  br label %590, !dbg !2404

590:                                              ; preds = %607, %589
  %591 = load i64, i64* %20, align 8, !dbg !2405
  %592 = load i64, i64* %36, align 8, !dbg !2406
  %593 = add i64 %591, %592, !dbg !2407
  %594 = load i64, i64* %14, align 8, !dbg !2408
  %595 = icmp ult i64 %593, %594, !dbg !2409
  br i1 %595, label %596, label %605, !dbg !2410

596:                                              ; preds = %590
  %597 = load i8*, i8** %13, align 8, !dbg !2411
  %598 = load i64, i64* %20, align 8, !dbg !2412
  %599 = load i64, i64* %36, align 8, !dbg !2413
  %600 = add i64 %598, %599, !dbg !2414
  %601 = getelementptr inbounds i8, i8* %597, i64 %600, !dbg !2411
  %602 = load i8, i8* %601, align 1, !dbg !2411
  %603 = sext i8 %602 to i32, !dbg !2411
  %604 = icmp ne i32 %603, 0, !dbg !2410
  br label %605

605:                                              ; preds = %596, %590
  %606 = phi i1 [ false, %590 ], [ %604, %596 ], !dbg !2415
  br i1 %606, label %607, label %610, !dbg !2404

607:                                              ; preds = %605
  %608 = load i64, i64* %36, align 8, !dbg !2416
  %609 = add i64 %608, 1, !dbg !2416
  store i64 %609, i64* %36, align 8, !dbg !2416
  br label %590, !dbg !2404, !llvm.loop !2417

610:                                              ; preds = %605
  br label %655, !dbg !2418

611:                                              ; preds = %586
  %612 = load i8, i8* %27, align 1, !dbg !2419
  %613 = trunc i8 %612 to i1, !dbg !2419
  br i1 %613, label %614, label %639, !dbg !2422

614:                                              ; preds = %611
  %615 = load i32, i32* %15, align 4, !dbg !2423
  %616 = icmp eq i32 %615, 2, !dbg !2424
  br i1 %616, label %617, label %639, !dbg !2425

617:                                              ; preds = %614
  call void @llvm.dbg.declare(metadata i64* %41, metadata !2426, metadata !DIExpression()), !dbg !2428
  store i64 1, i64* %41, align 8, !dbg !2429
  br label %618, !dbg !2431

618:                                              ; preds = %635, %617
  %619 = load i64, i64* %41, align 8, !dbg !2432
  %620 = load i64, i64* %40, align 8, !dbg !2434
  %621 = icmp ult i64 %619, %620, !dbg !2435
  br i1 %621, label %622, label %638, !dbg !2436

622:                                              ; preds = %618
  %623 = load i8*, i8** %13, align 8, !dbg !2437
  %624 = load i64, i64* %20, align 8, !dbg !2438
  %625 = load i64, i64* %36, align 8, !dbg !2439
  %626 = add i64 %624, %625, !dbg !2440
  %627 = load i64, i64* %41, align 8, !dbg !2441
  %628 = add i64 %626, %627, !dbg !2442
  %629 = getelementptr inbounds i8, i8* %623, i64 %628, !dbg !2437
  %630 = load i8, i8* %629, align 1, !dbg !2437
  %631 = sext i8 %630 to i32, !dbg !2437
  switch i32 %631, label %633 [
    i32 91, label %632
    i32 92, label %632
    i32 94, label %632
    i32 96, label %632
    i32 124, label %632
  ], !dbg !2443

632:                                              ; preds = %622, %622, %622, %622, %622
  br label %1086, !dbg !2444

633:                                              ; preds = %622
  br label %634, !dbg !2446

634:                                              ; preds = %633
  br label %635, !dbg !2447

635:                                              ; preds = %634
  %636 = load i64, i64* %41, align 8, !dbg !2448
  %637 = add i64 %636, 1, !dbg !2448
  store i64 %637, i64* %41, align 8, !dbg !2448
  br label %618, !dbg !2449, !llvm.loop !2450

638:                                              ; preds = %618
  br label %639, !dbg !2452

639:                                              ; preds = %638, %614, %611
  %640 = load i32, i32* %39, align 4, !dbg !2453
  %641 = call i32 @iswprint(i32 %640) #15, !dbg !2455
  %642 = icmp ne i32 %641, 0, !dbg !2455
  br i1 %642, label %644, label %643, !dbg !2456

643:                                              ; preds = %639
  store i8 0, i8* %37, align 1, !dbg !2457
  br label %644, !dbg !2458

644:                                              ; preds = %643, %639
  %645 = load i64, i64* %40, align 8, !dbg !2459
  %646 = load i64, i64* %36, align 8, !dbg !2460
  %647 = add i64 %646, %645, !dbg !2460
  store i64 %647, i64* %36, align 8, !dbg !2460
  br label %648

648:                                              ; preds = %644
  br label %649

649:                                              ; preds = %648
  br label %650

650:                                              ; preds = %649
  br label %651, !dbg !2461

651:                                              ; preds = %650
  %652 = call i32 @mbsinit(%struct.__mbstate_t* %38) #14, !dbg !2462
  %653 = icmp ne i32 %652, 0, !dbg !2463
  %654 = xor i1 %653, true, !dbg !2463
  br i1 %654, label %567, label %655, !dbg !2461, !llvm.loop !2464

655:                                              ; preds = %651, %610, %585, %581
  br label %656

656:                                              ; preds = %655, %547
  %657 = load i8, i8* %37, align 1, !dbg !2466
  %658 = trunc i8 %657 to i1, !dbg !2466
  %659 = zext i1 %658 to i8, !dbg !2467
  store i8 %659, i8* %35, align 1, !dbg !2467
  %660 = load i64, i64* %36, align 8, !dbg !2468
  %661 = icmp ult i64 1, %660, !dbg !2470
  br i1 %661, label %668, label %662, !dbg !2471

662:                                              ; preds = %656
  %663 = load i8, i8* %25, align 1, !dbg !2472
  %664 = trunc i8 %663 to i1, !dbg !2472
  br i1 %664, label %665, label %856, !dbg !2473

665:                                              ; preds = %662
  %666 = load i8, i8* %37, align 1, !dbg !2474
  %667 = trunc i8 %666 to i1, !dbg !2474
  br i1 %667, label %856, label %668, !dbg !2475

668:                                              ; preds = %665, %656
  call void @llvm.dbg.declare(metadata i64* %42, metadata !2476, metadata !DIExpression()), !dbg !2478
  %669 = load i64, i64* %20, align 8, !dbg !2479
  %670 = load i64, i64* %36, align 8, !dbg !2480
  %671 = add i64 %669, %670, !dbg !2481
  store i64 %671, i64* %42, align 8, !dbg !2478
  br label %672, !dbg !2482

672:                                              ; preds = %849, %668
  %673 = load i8, i8* %25, align 1, !dbg !2483
  %674 = trunc i8 %673 to i1, !dbg !2483
  br i1 %674, label %675, label %780, !dbg !2488

675:                                              ; preds = %672
  %676 = load i8, i8* %37, align 1, !dbg !2489
  %677 = trunc i8 %676 to i1, !dbg !2489
  br i1 %677, label %780, label %678, !dbg !2490

678:                                              ; preds = %675
  br label %679, !dbg !2491

679:                                              ; preds = %678
  %680 = load i8, i8* %27, align 1, !dbg !2493
  %681 = trunc i8 %680 to i1, !dbg !2493
  br i1 %681, label %682, label %683, !dbg !2496

682:                                              ; preds = %679
  br label %1086, !dbg !2493

683:                                              ; preds = %679
  store i8 1, i8* %34, align 1, !dbg !2496
  %684 = load i32, i32* %15, align 4, !dbg !2497
  %685 = icmp eq i32 %684, 2, !dbg !2497
  br i1 %685, label %686, label %726, !dbg !2497

686:                                              ; preds = %683
  %687 = load i8, i8* %28, align 1, !dbg !2497
  %688 = trunc i8 %687 to i1, !dbg !2497
  br i1 %688, label %726, label %689, !dbg !2496

689:                                              ; preds = %686
  br label %690, !dbg !2499

690:                                              ; preds = %689
  %691 = load i64, i64* %21, align 8, !dbg !2501
  %692 = load i64, i64* %12, align 8, !dbg !2501
  %693 = icmp ult i64 %691, %692, !dbg !2501
  br i1 %693, label %694, label %698, !dbg !2504

694:                                              ; preds = %690
  %695 = load i8*, i8** %11, align 8, !dbg !2501
  %696 = load i64, i64* %21, align 8, !dbg !2501
  %697 = getelementptr inbounds i8, i8* %695, i64 %696, !dbg !2501
  store i8 39, i8* %697, align 1, !dbg !2501
  br label %698, !dbg !2501

698:                                              ; preds = %694, %690
  %699 = load i64, i64* %21, align 8, !dbg !2504
  %700 = add i64 %699, 1, !dbg !2504
  store i64 %700, i64* %21, align 8, !dbg !2504
  br label %701, !dbg !2504

701:                                              ; preds = %698
  br label %702, !dbg !2499

702:                                              ; preds = %701
  %703 = load i64, i64* %21, align 8, !dbg !2505
  %704 = load i64, i64* %12, align 8, !dbg !2505
  %705 = icmp ult i64 %703, %704, !dbg !2505
  br i1 %705, label %706, label %710, !dbg !2508

706:                                              ; preds = %702
  %707 = load i8*, i8** %11, align 8, !dbg !2505
  %708 = load i64, i64* %21, align 8, !dbg !2505
  %709 = getelementptr inbounds i8, i8* %707, i64 %708, !dbg !2505
  store i8 36, i8* %709, align 1, !dbg !2505
  br label %710, !dbg !2505

710:                                              ; preds = %706, %702
  %711 = load i64, i64* %21, align 8, !dbg !2508
  %712 = add i64 %711, 1, !dbg !2508
  store i64 %712, i64* %21, align 8, !dbg !2508
  br label %713, !dbg !2508

713:                                              ; preds = %710
  br label %714, !dbg !2499

714:                                              ; preds = %713
  %715 = load i64, i64* %21, align 8, !dbg !2509
  %716 = load i64, i64* %12, align 8, !dbg !2509
  %717 = icmp ult i64 %715, %716, !dbg !2509
  br i1 %717, label %718, label %722, !dbg !2512

718:                                              ; preds = %714
  %719 = load i8*, i8** %11, align 8, !dbg !2509
  %720 = load i64, i64* %21, align 8, !dbg !2509
  %721 = getelementptr inbounds i8, i8* %719, i64 %720, !dbg !2509
  store i8 39, i8* %721, align 1, !dbg !2509
  br label %722, !dbg !2509

722:                                              ; preds = %718, %714
  %723 = load i64, i64* %21, align 8, !dbg !2512
  %724 = add i64 %723, 1, !dbg !2512
  store i64 %724, i64* %21, align 8, !dbg !2512
  br label %725, !dbg !2512

725:                                              ; preds = %722
  store i8 1, i8* %28, align 1, !dbg !2499
  br label %726, !dbg !2499

726:                                              ; preds = %725, %686, %683
  br label %727, !dbg !2496

727:                                              ; preds = %726
  %728 = load i64, i64* %21, align 8, !dbg !2513
  %729 = load i64, i64* %12, align 8, !dbg !2513
  %730 = icmp ult i64 %728, %729, !dbg !2513
  br i1 %730, label %731, label %735, !dbg !2516

731:                                              ; preds = %727
  %732 = load i8*, i8** %11, align 8, !dbg !2513
  %733 = load i64, i64* %21, align 8, !dbg !2513
  %734 = getelementptr inbounds i8, i8* %732, i64 %733, !dbg !2513
  store i8 92, i8* %734, align 1, !dbg !2513
  br label %735, !dbg !2513

735:                                              ; preds = %731, %727
  %736 = load i64, i64* %21, align 8, !dbg !2516
  %737 = add i64 %736, 1, !dbg !2516
  store i64 %737, i64* %21, align 8, !dbg !2516
  br label %738, !dbg !2516

738:                                              ; preds = %735
  br label %739, !dbg !2496

739:                                              ; preds = %738
  br label %740, !dbg !2517

740:                                              ; preds = %739
  %741 = load i64, i64* %21, align 8, !dbg !2518
  %742 = load i64, i64* %12, align 8, !dbg !2518
  %743 = icmp ult i64 %741, %742, !dbg !2518
  br i1 %743, label %744, label %753, !dbg !2521

744:                                              ; preds = %740
  %745 = load i8, i8* %31, align 1, !dbg !2518
  %746 = zext i8 %745 to i32, !dbg !2518
  %747 = ashr i32 %746, 6, !dbg !2518
  %748 = add nsw i32 48, %747, !dbg !2518
  %749 = trunc i32 %748 to i8, !dbg !2518
  %750 = load i8*, i8** %11, align 8, !dbg !2518
  %751 = load i64, i64* %21, align 8, !dbg !2518
  %752 = getelementptr inbounds i8, i8* %750, i64 %751, !dbg !2518
  store i8 %749, i8* %752, align 1, !dbg !2518
  br label %753, !dbg !2518

753:                                              ; preds = %744, %740
  %754 = load i64, i64* %21, align 8, !dbg !2521
  %755 = add i64 %754, 1, !dbg !2521
  store i64 %755, i64* %21, align 8, !dbg !2521
  br label %756, !dbg !2521

756:                                              ; preds = %753
  br label %757, !dbg !2522

757:                                              ; preds = %756
  %758 = load i64, i64* %21, align 8, !dbg !2523
  %759 = load i64, i64* %12, align 8, !dbg !2523
  %760 = icmp ult i64 %758, %759, !dbg !2523
  br i1 %760, label %761, label %771, !dbg !2526

761:                                              ; preds = %757
  %762 = load i8, i8* %31, align 1, !dbg !2523
  %763 = zext i8 %762 to i32, !dbg !2523
  %764 = ashr i32 %763, 3, !dbg !2523
  %765 = and i32 %764, 7, !dbg !2523
  %766 = add nsw i32 48, %765, !dbg !2523
  %767 = trunc i32 %766 to i8, !dbg !2523
  %768 = load i8*, i8** %11, align 8, !dbg !2523
  %769 = load i64, i64* %21, align 8, !dbg !2523
  %770 = getelementptr inbounds i8, i8* %768, i64 %769, !dbg !2523
  store i8 %767, i8* %770, align 1, !dbg !2523
  br label %771, !dbg !2523

771:                                              ; preds = %761, %757
  %772 = load i64, i64* %21, align 8, !dbg !2526
  %773 = add i64 %772, 1, !dbg !2526
  store i64 %773, i64* %21, align 8, !dbg !2526
  br label %774, !dbg !2526

774:                                              ; preds = %771
  %775 = load i8, i8* %31, align 1, !dbg !2527
  %776 = zext i8 %775 to i32, !dbg !2527
  %777 = and i32 %776, 7, !dbg !2528
  %778 = add nsw i32 48, %777, !dbg !2529
  %779 = trunc i32 %778 to i8, !dbg !2530
  store i8 %779, i8* %31, align 1, !dbg !2531
  br label %797, !dbg !2532

780:                                              ; preds = %675, %672
  %781 = load i8, i8* %33, align 1, !dbg !2533
  %782 = trunc i8 %781 to i1, !dbg !2533
  br i1 %782, label %783, label %796, !dbg !2535

783:                                              ; preds = %780
  br label %784, !dbg !2536

784:                                              ; preds = %783
  %785 = load i64, i64* %21, align 8, !dbg !2538
  %786 = load i64, i64* %12, align 8, !dbg !2538
  %787 = icmp ult i64 %785, %786, !dbg !2538
  br i1 %787, label %788, label %792, !dbg !2541

788:                                              ; preds = %784
  %789 = load i8*, i8** %11, align 8, !dbg !2538
  %790 = load i64, i64* %21, align 8, !dbg !2538
  %791 = getelementptr inbounds i8, i8* %789, i64 %790, !dbg !2538
  store i8 92, i8* %791, align 1, !dbg !2538
  br label %792, !dbg !2538

792:                                              ; preds = %788, %784
  %793 = load i64, i64* %21, align 8, !dbg !2541
  %794 = add i64 %793, 1, !dbg !2541
  store i64 %794, i64* %21, align 8, !dbg !2541
  br label %795, !dbg !2541

795:                                              ; preds = %792
  store i8 0, i8* %33, align 1, !dbg !2542
  br label %796, !dbg !2543

796:                                              ; preds = %795, %780
  br label %797

797:                                              ; preds = %796, %774
  %798 = load i64, i64* %42, align 8, !dbg !2544
  %799 = load i64, i64* %20, align 8, !dbg !2546
  %800 = add i64 %799, 1, !dbg !2547
  %801 = icmp ule i64 %798, %800, !dbg !2548
  br i1 %801, label %802, label %803, !dbg !2549

802:                                              ; preds = %797
  br label %855, !dbg !2550

803:                                              ; preds = %797
  br label %804, !dbg !2551

804:                                              ; preds = %803
  %805 = load i8, i8* %28, align 1, !dbg !2552
  %806 = trunc i8 %805 to i1, !dbg !2552
  br i1 %806, label %807, label %835, !dbg !2552

807:                                              ; preds = %804
  %808 = load i8, i8* %34, align 1, !dbg !2552
  %809 = trunc i8 %808 to i1, !dbg !2552
  br i1 %809, label %835, label %810, !dbg !2555

810:                                              ; preds = %807
  br label %811, !dbg !2556

811:                                              ; preds = %810
  %812 = load i64, i64* %21, align 8, !dbg !2558
  %813 = load i64, i64* %12, align 8, !dbg !2558
  %814 = icmp ult i64 %812, %813, !dbg !2558
  br i1 %814, label %815, label %819, !dbg !2561

815:                                              ; preds = %811
  %816 = load i8*, i8** %11, align 8, !dbg !2558
  %817 = load i64, i64* %21, align 8, !dbg !2558
  %818 = getelementptr inbounds i8, i8* %816, i64 %817, !dbg !2558
  store i8 39, i8* %818, align 1, !dbg !2558
  br label %819, !dbg !2558

819:                                              ; preds = %815, %811
  %820 = load i64, i64* %21, align 8, !dbg !2561
  %821 = add i64 %820, 1, !dbg !2561
  store i64 %821, i64* %21, align 8, !dbg !2561
  br label %822, !dbg !2561

822:                                              ; preds = %819
  br label %823, !dbg !2556

823:                                              ; preds = %822
  %824 = load i64, i64* %21, align 8, !dbg !2562
  %825 = load i64, i64* %12, align 8, !dbg !2562
  %826 = icmp ult i64 %824, %825, !dbg !2562
  br i1 %826, label %827, label %831, !dbg !2565

827:                                              ; preds = %823
  %828 = load i8*, i8** %11, align 8, !dbg !2562
  %829 = load i64, i64* %21, align 8, !dbg !2562
  %830 = getelementptr inbounds i8, i8* %828, i64 %829, !dbg !2562
  store i8 39, i8* %830, align 1, !dbg !2562
  br label %831, !dbg !2562

831:                                              ; preds = %827, %823
  %832 = load i64, i64* %21, align 8, !dbg !2565
  %833 = add i64 %832, 1, !dbg !2565
  store i64 %833, i64* %21, align 8, !dbg !2565
  br label %834, !dbg !2565

834:                                              ; preds = %831
  store i8 0, i8* %28, align 1, !dbg !2556
  br label %835, !dbg !2556

835:                                              ; preds = %834, %807, %804
  br label %836, !dbg !2555

836:                                              ; preds = %835
  br label %837, !dbg !2566

837:                                              ; preds = %836
  %838 = load i64, i64* %21, align 8, !dbg !2567
  %839 = load i64, i64* %12, align 8, !dbg !2567
  %840 = icmp ult i64 %838, %839, !dbg !2567
  br i1 %840, label %841, label %846, !dbg !2570

841:                                              ; preds = %837
  %842 = load i8, i8* %31, align 1, !dbg !2567
  %843 = load i8*, i8** %11, align 8, !dbg !2567
  %844 = load i64, i64* %21, align 8, !dbg !2567
  %845 = getelementptr inbounds i8, i8* %843, i64 %844, !dbg !2567
  store i8 %842, i8* %845, align 1, !dbg !2567
  br label %846, !dbg !2567

846:                                              ; preds = %841, %837
  %847 = load i64, i64* %21, align 8, !dbg !2570
  %848 = add i64 %847, 1, !dbg !2570
  store i64 %848, i64* %21, align 8, !dbg !2570
  br label %849, !dbg !2570

849:                                              ; preds = %846
  %850 = load i8*, i8** %13, align 8, !dbg !2571
  %851 = load i64, i64* %20, align 8, !dbg !2572
  %852 = add i64 %851, 1, !dbg !2572
  store i64 %852, i64* %20, align 8, !dbg !2572
  %853 = getelementptr inbounds i8, i8* %850, i64 %852, !dbg !2571
  %854 = load i8, i8* %853, align 1, !dbg !2571
  store i8 %854, i8* %31, align 1, !dbg !2573
  br label %672, !dbg !2574, !llvm.loop !2575

855:                                              ; preds = %802
  br label %950, !dbg !2578

856:                                              ; preds = %665, %662
  br label %857, !dbg !2579

857:                                              ; preds = %856, %543, %542, %489, %479, %474, %461, %420, %324
  %858 = load i8, i8* %25, align 1, !dbg !2580
  %859 = trunc i8 %858 to i1, !dbg !2580
  br i1 %859, label %860, label %863, !dbg !2582

860:                                              ; preds = %857
  %861 = load i32, i32* %15, align 4, !dbg !2583
  %862 = icmp ne i32 %861, 2, !dbg !2584
  br i1 %862, label %866, label %863, !dbg !2585

863:                                              ; preds = %860, %857
  %864 = load i8, i8* %27, align 1, !dbg !2586
  %865 = trunc i8 %864 to i1, !dbg !2586
  br i1 %865, label %866, label %883, !dbg !2587

866:                                              ; preds = %863, %860
  %867 = load i32*, i32** %17, align 8, !dbg !2588
  %868 = icmp ne i32* %867, null, !dbg !2588
  br i1 %868, label %869, label %883, !dbg !2589

869:                                              ; preds = %866
  %870 = load i32*, i32** %17, align 8, !dbg !2590
  %871 = load i8, i8* %31, align 1, !dbg !2591
  %872 = zext i8 %871 to i64, !dbg !2591
  %873 = udiv i64 %872, 32, !dbg !2592
  %874 = getelementptr inbounds i32, i32* %870, i64 %873, !dbg !2590
  %875 = load i32, i32* %874, align 4, !dbg !2590
  %876 = load i8, i8* %31, align 1, !dbg !2593
  %877 = zext i8 %876 to i64, !dbg !2593
  %878 = urem i64 %877, 32, !dbg !2594
  %879 = trunc i64 %878 to i32, !dbg !2595
  %880 = lshr i32 %875, %879, !dbg !2595
  %881 = and i32 %880, 1, !dbg !2596
  %882 = icmp ne i32 %881, 0, !dbg !2596
  br i1 %882, label %887, label %883, !dbg !2597

883:                                              ; preds = %869, %866, %863
  %884 = load i8, i8* %33, align 1, !dbg !2598
  %885 = trunc i8 %884 to i1, !dbg !2598
  br i1 %885, label %887, label %886, !dbg !2599

886:                                              ; preds = %883
  br label %950, !dbg !2600

887:                                              ; preds = %883, %869
  br label %888, !dbg !2598

888:                                              ; preds = %887, %459
  call void @llvm.dbg.label(metadata !2601), !dbg !2602
  br label %889, !dbg !2603

889:                                              ; preds = %888
  %890 = load i8, i8* %27, align 1, !dbg !2604
  %891 = trunc i8 %890 to i1, !dbg !2604
  br i1 %891, label %892, label %893, !dbg !2607

892:                                              ; preds = %889
  br label %1086, !dbg !2604

893:                                              ; preds = %889
  store i8 1, i8* %34, align 1, !dbg !2607
  %894 = load i32, i32* %15, align 4, !dbg !2608
  %895 = icmp eq i32 %894, 2, !dbg !2608
  br i1 %895, label %896, label %936, !dbg !2608

896:                                              ; preds = %893
  %897 = load i8, i8* %28, align 1, !dbg !2608
  %898 = trunc i8 %897 to i1, !dbg !2608
  br i1 %898, label %936, label %899, !dbg !2607

899:                                              ; preds = %896
  br label %900, !dbg !2610

900:                                              ; preds = %899
  %901 = load i64, i64* %21, align 8, !dbg !2612
  %902 = load i64, i64* %12, align 8, !dbg !2612
  %903 = icmp ult i64 %901, %902, !dbg !2612
  br i1 %903, label %904, label %908, !dbg !2615

904:                                              ; preds = %900
  %905 = load i8*, i8** %11, align 8, !dbg !2612
  %906 = load i64, i64* %21, align 8, !dbg !2612
  %907 = getelementptr inbounds i8, i8* %905, i64 %906, !dbg !2612
  store i8 39, i8* %907, align 1, !dbg !2612
  br label %908, !dbg !2612

908:                                              ; preds = %904, %900
  %909 = load i64, i64* %21, align 8, !dbg !2615
  %910 = add i64 %909, 1, !dbg !2615
  store i64 %910, i64* %21, align 8, !dbg !2615
  br label %911, !dbg !2615

911:                                              ; preds = %908
  br label %912, !dbg !2610

912:                                              ; preds = %911
  %913 = load i64, i64* %21, align 8, !dbg !2616
  %914 = load i64, i64* %12, align 8, !dbg !2616
  %915 = icmp ult i64 %913, %914, !dbg !2616
  br i1 %915, label %916, label %920, !dbg !2619

916:                                              ; preds = %912
  %917 = load i8*, i8** %11, align 8, !dbg !2616
  %918 = load i64, i64* %21, align 8, !dbg !2616
  %919 = getelementptr inbounds i8, i8* %917, i64 %918, !dbg !2616
  store i8 36, i8* %919, align 1, !dbg !2616
  br label %920, !dbg !2616

920:                                              ; preds = %916, %912
  %921 = load i64, i64* %21, align 8, !dbg !2619
  %922 = add i64 %921, 1, !dbg !2619
  store i64 %922, i64* %21, align 8, !dbg !2619
  br label %923, !dbg !2619

923:                                              ; preds = %920
  br label %924, !dbg !2610

924:                                              ; preds = %923
  %925 = load i64, i64* %21, align 8, !dbg !2620
  %926 = load i64, i64* %12, align 8, !dbg !2620
  %927 = icmp ult i64 %925, %926, !dbg !2620
  br i1 %927, label %928, label %932, !dbg !2623

928:                                              ; preds = %924
  %929 = load i8*, i8** %11, align 8, !dbg !2620
  %930 = load i64, i64* %21, align 8, !dbg !2620
  %931 = getelementptr inbounds i8, i8* %929, i64 %930, !dbg !2620
  store i8 39, i8* %931, align 1, !dbg !2620
  br label %932, !dbg !2620

932:                                              ; preds = %928, %924
  %933 = load i64, i64* %21, align 8, !dbg !2623
  %934 = add i64 %933, 1, !dbg !2623
  store i64 %934, i64* %21, align 8, !dbg !2623
  br label %935, !dbg !2623

935:                                              ; preds = %932
  store i8 1, i8* %28, align 1, !dbg !2610
  br label %936, !dbg !2610

936:                                              ; preds = %935, %896, %893
  br label %937, !dbg !2607

937:                                              ; preds = %936
  %938 = load i64, i64* %21, align 8, !dbg !2624
  %939 = load i64, i64* %12, align 8, !dbg !2624
  %940 = icmp ult i64 %938, %939, !dbg !2624
  br i1 %940, label %941, label %945, !dbg !2627

941:                                              ; preds = %937
  %942 = load i8*, i8** %11, align 8, !dbg !2624
  %943 = load i64, i64* %21, align 8, !dbg !2624
  %944 = getelementptr inbounds i8, i8* %942, i64 %943, !dbg !2624
  store i8 92, i8* %944, align 1, !dbg !2624
  br label %945, !dbg !2624

945:                                              ; preds = %941, %937
  %946 = load i64, i64* %21, align 8, !dbg !2627
  %947 = add i64 %946, 1, !dbg !2627
  store i64 %947, i64* %21, align 8, !dbg !2627
  br label %948, !dbg !2627

948:                                              ; preds = %945
  br label %949, !dbg !2607

949:                                              ; preds = %948
  br label %950, !dbg !2607

950:                                              ; preds = %949, %886, %855, %446, %436
  call void @llvm.dbg.label(metadata !2628), !dbg !2629
  br label %951, !dbg !2630

951:                                              ; preds = %950
  %952 = load i8, i8* %28, align 1, !dbg !2631
  %953 = trunc i8 %952 to i1, !dbg !2631
  br i1 %953, label %954, label %982, !dbg !2631

954:                                              ; preds = %951
  %955 = load i8, i8* %34, align 1, !dbg !2631
  %956 = trunc i8 %955 to i1, !dbg !2631
  br i1 %956, label %982, label %957, !dbg !2634

957:                                              ; preds = %954
  br label %958, !dbg !2635

958:                                              ; preds = %957
  %959 = load i64, i64* %21, align 8, !dbg !2637
  %960 = load i64, i64* %12, align 8, !dbg !2637
  %961 = icmp ult i64 %959, %960, !dbg !2637
  br i1 %961, label %962, label %966, !dbg !2640

962:                                              ; preds = %958
  %963 = load i8*, i8** %11, align 8, !dbg !2637
  %964 = load i64, i64* %21, align 8, !dbg !2637
  %965 = getelementptr inbounds i8, i8* %963, i64 %964, !dbg !2637
  store i8 39, i8* %965, align 1, !dbg !2637
  br label %966, !dbg !2637

966:                                              ; preds = %962, %958
  %967 = load i64, i64* %21, align 8, !dbg !2640
  %968 = add i64 %967, 1, !dbg !2640
  store i64 %968, i64* %21, align 8, !dbg !2640
  br label %969, !dbg !2640

969:                                              ; preds = %966
  br label %970, !dbg !2635

970:                                              ; preds = %969
  %971 = load i64, i64* %21, align 8, !dbg !2641
  %972 = load i64, i64* %12, align 8, !dbg !2641
  %973 = icmp ult i64 %971, %972, !dbg !2641
  br i1 %973, label %974, label %978, !dbg !2644

974:                                              ; preds = %970
  %975 = load i8*, i8** %11, align 8, !dbg !2641
  %976 = load i64, i64* %21, align 8, !dbg !2641
  %977 = getelementptr inbounds i8, i8* %975, i64 %976, !dbg !2641
  store i8 39, i8* %977, align 1, !dbg !2641
  br label %978, !dbg !2641

978:                                              ; preds = %974, %970
  %979 = load i64, i64* %21, align 8, !dbg !2644
  %980 = add i64 %979, 1, !dbg !2644
  store i64 %980, i64* %21, align 8, !dbg !2644
  br label %981, !dbg !2644

981:                                              ; preds = %978
  store i8 0, i8* %28, align 1, !dbg !2635
  br label %982, !dbg !2635

982:                                              ; preds = %981, %954, %951
  br label %983, !dbg !2634

983:                                              ; preds = %982
  br label %984, !dbg !2645

984:                                              ; preds = %983
  %985 = load i64, i64* %21, align 8, !dbg !2646
  %986 = load i64, i64* %12, align 8, !dbg !2646
  %987 = icmp ult i64 %985, %986, !dbg !2646
  br i1 %987, label %988, label %993, !dbg !2649

988:                                              ; preds = %984
  %989 = load i8, i8* %31, align 1, !dbg !2646
  %990 = load i8*, i8** %11, align 8, !dbg !2646
  %991 = load i64, i64* %21, align 8, !dbg !2646
  %992 = getelementptr inbounds i8, i8* %990, i64 %991, !dbg !2646
  store i8 %989, i8* %992, align 1, !dbg !2646
  br label %993, !dbg !2646

993:                                              ; preds = %988, %984
  %994 = load i64, i64* %21, align 8, !dbg !2649
  %995 = add i64 %994, 1, !dbg !2649
  store i64 %995, i64* %21, align 8, !dbg !2649
  br label %996, !dbg !2649

996:                                              ; preds = %993
  %997 = load i8, i8* %35, align 1, !dbg !2650
  %998 = trunc i8 %997 to i1, !dbg !2650
  br i1 %998, label %1000, label %999, !dbg !2652

999:                                              ; preds = %996
  store i8 0, i8* %30, align 1, !dbg !2653
  br label %1000, !dbg !2654

1000:                                             ; preds = %999, %996
  br label %1001, !dbg !2655

1001:                                             ; preds = %1000, %322
  %1002 = load i64, i64* %20, align 8, !dbg !2656
  %1003 = add i64 %1002, 1, !dbg !2656
  store i64 %1003, i64* %20, align 8, !dbg !2656
  br label %138, !dbg !2657, !llvm.loop !2658

1004:                                             ; preds = %154
  %1005 = load i64, i64* %21, align 8, !dbg !2660
  %1006 = icmp eq i64 %1005, 0, !dbg !2662
  br i1 %1006, label %1007, label %1014, !dbg !2663

1007:                                             ; preds = %1004
  %1008 = load i32, i32* %15, align 4, !dbg !2664
  %1009 = icmp eq i32 %1008, 2, !dbg !2665
  br i1 %1009, label %1010, label %1014, !dbg !2666

1010:                                             ; preds = %1007
  %1011 = load i8, i8* %27, align 1, !dbg !2667
  %1012 = trunc i8 %1011 to i1, !dbg !2667
  br i1 %1012, label %1013, label %1014, !dbg !2668

1013:                                             ; preds = %1010
  br label %1086, !dbg !2669

1014:                                             ; preds = %1010, %1007, %1004
  %1015 = load i32, i32* %15, align 4, !dbg !2670
  %1016 = icmp eq i32 %1015, 2, !dbg !2672
  br i1 %1016, label %1017, label %1046, !dbg !2673

1017:                                             ; preds = %1014
  %1018 = load i8, i8* %27, align 1, !dbg !2674
  %1019 = trunc i8 %1018 to i1, !dbg !2674
  br i1 %1019, label %1046, label %1020, !dbg !2675

1020:                                             ; preds = %1017
  %1021 = load i8, i8* %29, align 1, !dbg !2676
  %1022 = trunc i8 %1021 to i1, !dbg !2676
  br i1 %1022, label %1023, label %1046, !dbg !2677

1023:                                             ; preds = %1020
  %1024 = load i8, i8* %30, align 1, !dbg !2678
  %1025 = trunc i8 %1024 to i1, !dbg !2678
  br i1 %1025, label %1026, label %1036, !dbg !2681

1026:                                             ; preds = %1023
  %1027 = load i8*, i8** %11, align 8, !dbg !2682
  %1028 = load i64, i64* %22, align 8, !dbg !2683
  %1029 = load i8*, i8** %13, align 8, !dbg !2684
  %1030 = load i64, i64* %14, align 8, !dbg !2685
  %1031 = load i32, i32* %16, align 4, !dbg !2686
  %1032 = load i32*, i32** %17, align 8, !dbg !2687
  %1033 = load i8*, i8** %18, align 8, !dbg !2688
  %1034 = load i8*, i8** %19, align 8, !dbg !2689
  %1035 = call i64 @quotearg_buffer_restyled(i8* %1027, i64 %1028, i8* %1029, i64 %1030, i32 5, i32 %1031, i32* %1032, i8* %1033, i8* %1034), !dbg !2690
  store i64 %1035, i64* %10, align 8, !dbg !2691
  br label %1104, !dbg !2691

1036:                                             ; preds = %1023
  %1037 = load i64, i64* %12, align 8, !dbg !2692
  %1038 = icmp ne i64 %1037, 0, !dbg !2692
  br i1 %1038, label %1044, label %1039, !dbg !2694

1039:                                             ; preds = %1036
  %1040 = load i64, i64* %22, align 8, !dbg !2695
  %1041 = icmp ne i64 %1040, 0, !dbg !2695
  br i1 %1041, label %1042, label %1044, !dbg !2696

1042:                                             ; preds = %1039
  %1043 = load i64, i64* %22, align 8, !dbg !2697
  store i64 %1043, i64* %12, align 8, !dbg !2699
  store i64 0, i64* %21, align 8, !dbg !2700
  br label %50, !dbg !2701

1044:                                             ; preds = %1039, %1036
  br label %1045

1045:                                             ; preds = %1044
  br label %1046, !dbg !2702

1046:                                             ; preds = %1045, %1020, %1017, %1014
  %1047 = load i8*, i8** %23, align 8, !dbg !2703
  %1048 = icmp ne i8* %1047, null, !dbg !2703
  br i1 %1048, label %1049, label %1076, !dbg !2705

1049:                                             ; preds = %1046
  %1050 = load i8, i8* %27, align 1, !dbg !2706
  %1051 = trunc i8 %1050 to i1, !dbg !2706
  br i1 %1051, label %1076, label %1052, !dbg !2707

1052:                                             ; preds = %1049
  br label %1053, !dbg !2708

1053:                                             ; preds = %1072, %1052
  %1054 = load i8*, i8** %23, align 8, !dbg !2709
  %1055 = load i8, i8* %1054, align 1, !dbg !2712
  %1056 = icmp ne i8 %1055, 0, !dbg !2713
  br i1 %1056, label %1057, label %1075, !dbg !2713

1057:                                             ; preds = %1053
  br label %1058, !dbg !2714

1058:                                             ; preds = %1057
  %1059 = load i64, i64* %21, align 8, !dbg !2715
  %1060 = load i64, i64* %12, align 8, !dbg !2715
  %1061 = icmp ult i64 %1059, %1060, !dbg !2715
  br i1 %1061, label %1062, label %1068, !dbg !2718

1062:                                             ; preds = %1058
  %1063 = load i8*, i8** %23, align 8, !dbg !2715
  %1064 = load i8, i8* %1063, align 1, !dbg !2715
  %1065 = load i8*, i8** %11, align 8, !dbg !2715
  %1066 = load i64, i64* %21, align 8, !dbg !2715
  %1067 = getelementptr inbounds i8, i8* %1065, i64 %1066, !dbg !2715
  store i8 %1064, i8* %1067, align 1, !dbg !2715
  br label %1068, !dbg !2715

1068:                                             ; preds = %1062, %1058
  %1069 = load i64, i64* %21, align 8, !dbg !2718
  %1070 = add i64 %1069, 1, !dbg !2718
  store i64 %1070, i64* %21, align 8, !dbg !2718
  br label %1071, !dbg !2718

1071:                                             ; preds = %1068
  br label %1072, !dbg !2718

1072:                                             ; preds = %1071
  %1073 = load i8*, i8** %23, align 8, !dbg !2719
  %1074 = getelementptr inbounds i8, i8* %1073, i32 1, !dbg !2719
  store i8* %1074, i8** %23, align 8, !dbg !2719
  br label %1053, !dbg !2720, !llvm.loop !2721

1075:                                             ; preds = %1053
  br label %1076, !dbg !2722

1076:                                             ; preds = %1075, %1049, %1046
  %1077 = load i64, i64* %21, align 8, !dbg !2723
  %1078 = load i64, i64* %12, align 8, !dbg !2725
  %1079 = icmp ult i64 %1077, %1078, !dbg !2726
  br i1 %1079, label %1080, label %1084, !dbg !2727

1080:                                             ; preds = %1076
  %1081 = load i8*, i8** %11, align 8, !dbg !2728
  %1082 = load i64, i64* %21, align 8, !dbg !2729
  %1083 = getelementptr inbounds i8, i8* %1081, i64 %1082, !dbg !2728
  store i8 0, i8* %1083, align 1, !dbg !2730
  br label %1084, !dbg !2728

1084:                                             ; preds = %1080, %1076
  %1085 = load i64, i64* %21, align 8, !dbg !2731
  store i64 %1085, i64* %10, align 8, !dbg !2732
  br label %1104, !dbg !2732

1086:                                             ; preds = %1013, %892, %682, %632, %496, %488, %454, %435, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !2733), !dbg !2734
  %1087 = load i32, i32* %15, align 4, !dbg !2735
  %1088 = icmp eq i32 %1087, 2, !dbg !2737
  br i1 %1088, label %1089, label %1093, !dbg !2738

1089:                                             ; preds = %1086
  %1090 = load i8, i8* %25, align 1, !dbg !2739
  %1091 = trunc i8 %1090 to i1, !dbg !2739
  br i1 %1091, label %1092, label %1093, !dbg !2740

1092:                                             ; preds = %1089
  store i32 4, i32* %15, align 4, !dbg !2741
  br label %1093, !dbg !2742

1093:                                             ; preds = %1092, %1089, %1086
  %1094 = load i8*, i8** %11, align 8, !dbg !2743
  %1095 = load i64, i64* %12, align 8, !dbg !2744
  %1096 = load i8*, i8** %13, align 8, !dbg !2745
  %1097 = load i64, i64* %14, align 8, !dbg !2746
  %1098 = load i32, i32* %15, align 4, !dbg !2747
  %1099 = load i32, i32* %16, align 4, !dbg !2748
  %1100 = and i32 %1099, -3, !dbg !2749
  %1101 = load i8*, i8** %18, align 8, !dbg !2750
  %1102 = load i8*, i8** %19, align 8, !dbg !2751
  %1103 = call i64 @quotearg_buffer_restyled(i8* %1094, i64 %1095, i8* %1096, i64 %1097, i32 %1098, i32 %1100, i32* null, i8* %1101, i8* %1102), !dbg !2752
  store i64 %1103, i64* %10, align 8, !dbg !2753
  br label %1104, !dbg !2753

1104:                                             ; preds = %1093, %1084, %1026
  %1105 = load i64, i64* %10, align 8, !dbg !2754
  ret i64 %1105, !dbg !2754
}

; Function Attrs: nounwind
declare dso_local i64 @__ctype_get_mb_cur_max() #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* %0, i32 %1) #3 !dbg !2755 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2758, metadata !DIExpression()), !dbg !2759
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2760, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2762, metadata !DIExpression()), !dbg !2763
  %8 = load i8*, i8** %4, align 8, !dbg !2764
  store i8* %8, i8** %6, align 8, !dbg !2763
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2765, metadata !DIExpression()), !dbg !2766
  %9 = load i8*, i8** %6, align 8, !dbg !2767
  %10 = load i8*, i8** %4, align 8, !dbg !2769
  %11 = icmp ne i8* %9, %10, !dbg !2770
  br i1 %11, label %12, label %14, !dbg !2771

12:                                               ; preds = %2
  %13 = load i8*, i8** %6, align 8, !dbg !2772
  store i8* %13, i8** %3, align 8, !dbg !2773
  br label %44, !dbg !2773

14:                                               ; preds = %2
  %15 = call i8* @locale_charset(), !dbg !2774
  store i8* %15, i8** %7, align 8, !dbg !2775
  %16 = load i8*, i8** %7, align 8, !dbg !2776
  %17 = call i32 @c_strcasecmp(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13.97, i64 0, i64 0)) #14, !dbg !2776
  %18 = icmp eq i32 %17, 0, !dbg !2776
  br i1 %18, label %19, label %27, !dbg !2778

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8, !dbg !2779
  %21 = getelementptr inbounds i8, i8* %20, i64 0, !dbg !2779
  %22 = load i8, i8* %21, align 1, !dbg !2779
  %23 = sext i8 %22 to i32, !dbg !2779
  %24 = icmp eq i32 %23, 96, !dbg !2780
  %25 = zext i1 %24 to i64, !dbg !2779
  %26 = select i1 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.98, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.99, i64 0, i64 0), !dbg !2779
  store i8* %26, i8** %3, align 8, !dbg !2781
  br label %44, !dbg !2781

27:                                               ; preds = %14
  %28 = load i8*, i8** %7, align 8, !dbg !2782
  %29 = call i32 @c_strcasecmp(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16.100, i64 0, i64 0)) #14, !dbg !2782
  %30 = icmp eq i32 %29, 0, !dbg !2782
  br i1 %30, label %31, label %39, !dbg !2784

31:                                               ; preds = %27
  %32 = load i8*, i8** %4, align 8, !dbg !2785
  %33 = getelementptr inbounds i8, i8* %32, i64 0, !dbg !2785
  %34 = load i8, i8* %33, align 1, !dbg !2785
  %35 = sext i8 %34 to i32, !dbg !2785
  %36 = icmp eq i32 %35, 96, !dbg !2786
  %37 = zext i1 %36 to i64, !dbg !2785
  %38 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.101, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.102, i64 0, i64 0), !dbg !2785
  store i8* %38, i8** %3, align 8, !dbg !2787
  br label %44, !dbg !2787

39:                                               ; preds = %27
  %40 = load i32, i32* %5, align 4, !dbg !2788
  %41 = icmp eq i32 %40, 9, !dbg !2789
  %42 = zext i1 %41 to i64, !dbg !2788
  %43 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.96, i64 0, i64 0), !dbg !2788
  store i8* %43, i8** %3, align 8, !dbg !2790
  br label %44, !dbg !2790

44:                                               ; preds = %39, %31, %19, %12
  %45 = load i8*, i8** %3, align 8, !dbg !2791
  ret i8* %45, !dbg !2791
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #6

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8*, i8*, i64) #6

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nounwind
declare dso_local i32 @iswprint(i32) #7

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @mbsinit(%struct.__mbstate_t*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) #3 !dbg !2792 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2795, metadata !DIExpression()), !dbg !2796
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2797, metadata !DIExpression()), !dbg !2798
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2799, metadata !DIExpression()), !dbg !2800
  %7 = load i8*, i8** %4, align 8, !dbg !2801
  %8 = load i64, i64* %5, align 8, !dbg !2802
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2803
  %10 = call i8* @quotearg_alloc_mem(i8* %7, i64 %8, i64* null, %struct.quoting_options* %9), !dbg !2804
  ret i8* %10, !dbg !2805
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) #3 !dbg !2806 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2809, metadata !DIExpression()), !dbg !2810
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2811, metadata !DIExpression()), !dbg !2812
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2813, metadata !DIExpression()), !dbg !2814
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2815, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2817, metadata !DIExpression()), !dbg !2818
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2819
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2819
  br i1 %15, label %16, label %18, !dbg !2819

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2820
  br label %19, !dbg !2819

18:                                               ; preds = %4
  br label %19, !dbg !2819

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2819
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2818
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2821, metadata !DIExpression()), !dbg !2822
  %21 = call i32* @__errno_location() #17, !dbg !2823
  %22 = load i32, i32* %21, align 4, !dbg !2823
  store i32 %22, i32* %10, align 4, !dbg !2822
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2824, metadata !DIExpression()), !dbg !2825
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2826
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2827
  %25 = load i32, i32* %24, align 4, !dbg !2827
  %26 = load i64*, i64** %7, align 8, !dbg !2828
  %27 = icmp ne i64* %26, null, !dbg !2828
  %28 = zext i1 %27 to i64, !dbg !2828
  %29 = select i1 %27, i32 0, i32 1, !dbg !2828
  %30 = or i32 %25, %29, !dbg !2829
  store i32 %30, i32* %11, align 4, !dbg !2825
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2830, metadata !DIExpression()), !dbg !2831
  %31 = load i8*, i8** %5, align 8, !dbg !2832
  %32 = load i64, i64* %6, align 8, !dbg !2833
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2834
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2835
  %35 = load i32, i32* %34, align 8, !dbg !2835
  %36 = load i32, i32* %11, align 4, !dbg !2836
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2837
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2838
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2837
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2839
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2840
  %42 = load i8*, i8** %41, align 8, !dbg !2840
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2841
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !2842
  %45 = load i8*, i8** %44, align 8, !dbg !2842
  %46 = call i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %31, i64 %32, i32 %35, i32 %36, i32* %39, i8* %42, i8* %45), !dbg !2843
  %47 = add i64 %46, 1, !dbg !2844
  store i64 %47, i64* %12, align 8, !dbg !2831
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2845, metadata !DIExpression()), !dbg !2846
  %48 = load i64, i64* %12, align 8, !dbg !2847
  %49 = call noalias i8* @xcharalloc(i64 %48), !dbg !2848
  store i8* %49, i8** %13, align 8, !dbg !2846
  %50 = load i8*, i8** %13, align 8, !dbg !2849
  %51 = load i64, i64* %12, align 8, !dbg !2850
  %52 = load i8*, i8** %5, align 8, !dbg !2851
  %53 = load i64, i64* %6, align 8, !dbg !2852
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2853
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !2854
  %56 = load i32, i32* %55, align 8, !dbg !2854
  %57 = load i32, i32* %11, align 4, !dbg !2855
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2856
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !2857
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !2856
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2858
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2859
  %63 = load i8*, i8** %62, align 8, !dbg !2859
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2860
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !2861
  %66 = load i8*, i8** %65, align 8, !dbg !2861
  %67 = call i64 @quotearg_buffer_restyled(i8* %50, i64 %51, i8* %52, i64 %53, i32 %56, i32 %57, i32* %60, i8* %63, i8* %66), !dbg !2862
  %68 = load i32, i32* %10, align 4, !dbg !2863
  %69 = call i32* @__errno_location() #17, !dbg !2864
  store i32 %68, i32* %69, align 4, !dbg !2865
  %70 = load i64*, i64** %7, align 8, !dbg !2866
  %71 = icmp ne i64* %70, null, !dbg !2866
  br i1 %71, label %72, label %76, !dbg !2868

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !2869
  %74 = sub i64 %73, 1, !dbg !2870
  %75 = load i64*, i64** %7, align 8, !dbg !2871
  store i64 %74, i64* %75, align 8, !dbg !2872
  br label %76, !dbg !2873

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !2874
  ret i8* %77, !dbg !2875
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #3 !dbg !2876 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !2877, metadata !DIExpression()), !dbg !2878
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2879
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !2878
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2880, metadata !DIExpression()), !dbg !2881
  store i32 1, i32* %2, align 4, !dbg !2882
  br label %4, !dbg !2884

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !2885
  %6 = load i32, i32* @nslots, align 4, !dbg !2887
  %7 = icmp slt i32 %5, %6, !dbg !2888
  br i1 %7, label %8, label %18, !dbg !2889

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2890
  %10 = load i32, i32* %2, align 4, !dbg !2891
  %11 = sext i32 %10 to i64, !dbg !2890
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !2890
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !2892
  %14 = load i8*, i8** %13, align 8, !dbg !2892
  call void @free(i8* %14) #15, !dbg !2893
  br label %15, !dbg !2893

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !2894
  %17 = add nsw i32 %16, 1, !dbg !2894
  store i32 %17, i32* %2, align 4, !dbg !2894
  br label %4, !dbg !2895, !llvm.loop !2896

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2898
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !2898
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !2900
  %22 = load i8*, i8** %21, align 8, !dbg !2900
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2901
  br i1 %23, label %24, label %29, !dbg !2902

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2903
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !2903
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !2905
  %28 = load i8*, i8** %27, align 8, !dbg !2905
  call void @free(i8* %28) #15, !dbg !2906
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !2907
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !2908
  br label %29, !dbg !2909

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2910
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !2912
  br i1 %31, label %32, label %35, !dbg !2913

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2914
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !2914
  call void @free(i8* %34) #15, !dbg !2916
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2917
  br label %35, !dbg !2918

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !2919
  ret void, !dbg !2920
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) #3 !dbg !2921 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2924, metadata !DIExpression()), !dbg !2925
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2926, metadata !DIExpression()), !dbg !2927
  %5 = load i32, i32* %3, align 4, !dbg !2928
  %6 = load i8*, i8** %4, align 8, !dbg !2929
  %7 = call i8* @quotearg_n_options(i32 %5, i8* %6, i64 -1, %struct.quoting_options* @default_quoting_options), !dbg !2930
  ret i8* %7, !dbg !2931
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) #3 !dbg !2932 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2935, metadata !DIExpression()), !dbg !2936
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2937, metadata !DIExpression()), !dbg !2938
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2939, metadata !DIExpression()), !dbg !2940
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2941, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2943, metadata !DIExpression()), !dbg !2944
  %17 = call i32* @__errno_location() #17, !dbg !2945
  %18 = load i32, i32* %17, align 4, !dbg !2945
  store i32 %18, i32* %9, align 4, !dbg !2944
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !2946, metadata !DIExpression()), !dbg !2947
  %19 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2948
  store %struct.slotvec* %19, %struct.slotvec** %10, align 8, !dbg !2947
  %20 = load i32, i32* %5, align 4, !dbg !2949
  %21 = icmp slt i32 %20, 0, !dbg !2951
  br i1 %21, label %22, label %23, !dbg !2952

22:                                               ; preds = %4
  call void @abort() #13, !dbg !2953
  unreachable, !dbg !2953

23:                                               ; preds = %4
  %24 = load i32, i32* @nslots, align 4, !dbg !2954
  %25 = load i32, i32* %5, align 4, !dbg !2956
  %26 = icmp sle i32 %24, %25, !dbg !2957
  br i1 %26, label %27, label %69, !dbg !2958

27:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata i8* %11, metadata !2959, metadata !DIExpression()), !dbg !2961
  %28 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2962
  %29 = icmp eq %struct.slotvec* %28, @slotvec0, !dbg !2963
  %30 = zext i1 %29 to i8, !dbg !2961
  store i8 %30, i8* %11, align 1, !dbg !2961
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2964, metadata !DIExpression()), !dbg !2965
  store i32 2147483646, i32* %12, align 4, !dbg !2965
  %31 = load i32, i32* %12, align 4, !dbg !2966
  %32 = load i32, i32* %5, align 4, !dbg !2968
  %33 = icmp slt i32 %31, %32, !dbg !2969
  br i1 %33, label %34, label %35, !dbg !2970

34:                                               ; preds = %27
  call void @xalloc_die() #16, !dbg !2971
  unreachable, !dbg !2971

35:                                               ; preds = %27
  %36 = load i8, i8* %11, align 1, !dbg !2972
  %37 = trunc i8 %36 to i1, !dbg !2972
  br i1 %37, label %38, label %39, !dbg !2972

38:                                               ; preds = %35
  br label %41, !dbg !2972

39:                                               ; preds = %35
  %40 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2973
  br label %41, !dbg !2972

41:                                               ; preds = %39, %38
  %42 = phi %struct.slotvec* [ null, %38 ], [ %40, %39 ], !dbg !2972
  %43 = bitcast %struct.slotvec* %42 to i8*, !dbg !2972
  %44 = load i32, i32* %5, align 4, !dbg !2974
  %45 = add nsw i32 %44, 1, !dbg !2975
  %46 = sext i32 %45 to i64, !dbg !2976
  %47 = mul i64 %46, 16, !dbg !2977
  %48 = call i8* @xrealloc(i8* %43, i64 %47), !dbg !2978
  %49 = bitcast i8* %48 to %struct.slotvec*, !dbg !2978
  store %struct.slotvec* %49, %struct.slotvec** %10, align 8, !dbg !2979
  store %struct.slotvec* %49, %struct.slotvec** @slotvec, align 8, !dbg !2980
  %50 = load i8, i8* %11, align 1, !dbg !2981
  %51 = trunc i8 %50 to i1, !dbg !2981
  br i1 %51, label %52, label %55, !dbg !2983

52:                                               ; preds = %41
  %53 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2984
  %54 = bitcast %struct.slotvec* %53 to i8*, !dbg !2985
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2985
  br label %55, !dbg !2986

55:                                               ; preds = %52, %41
  %56 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2987
  %57 = load i32, i32* @nslots, align 4, !dbg !2988
  %58 = sext i32 %57 to i64, !dbg !2989
  %59 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %56, i64 %58, !dbg !2989
  %60 = bitcast %struct.slotvec* %59 to i8*, !dbg !2990
  %61 = load i32, i32* %5, align 4, !dbg !2991
  %62 = add nsw i32 %61, 1, !dbg !2992
  %63 = load i32, i32* @nslots, align 4, !dbg !2993
  %64 = sub nsw i32 %62, %63, !dbg !2994
  %65 = sext i32 %64 to i64, !dbg !2995
  %66 = mul i64 %65, 16, !dbg !2996
  call void @llvm.memset.p0i8.i64(i8* align 8 %60, i8 0, i64 %66, i1 false), !dbg !2990
  %67 = load i32, i32* %5, align 4, !dbg !2997
  %68 = add nsw i32 %67, 1, !dbg !2998
  store i32 %68, i32* @nslots, align 4, !dbg !2999
  br label %69, !dbg !3000

69:                                               ; preds = %55, %23
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3001, metadata !DIExpression()), !dbg !3003
  %70 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3004
  %71 = load i32, i32* %5, align 4, !dbg !3005
  %72 = sext i32 %71 to i64, !dbg !3004
  %73 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %70, i64 %72, !dbg !3004
  %74 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %73, i32 0, i32 0, !dbg !3006
  %75 = load i64, i64* %74, align 8, !dbg !3006
  store i64 %75, i64* %13, align 8, !dbg !3003
  call void @llvm.dbg.declare(metadata i8** %14, metadata !3007, metadata !DIExpression()), !dbg !3008
  %76 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3009
  %77 = load i32, i32* %5, align 4, !dbg !3010
  %78 = sext i32 %77 to i64, !dbg !3009
  %79 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %76, i64 %78, !dbg !3009
  %80 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %79, i32 0, i32 1, !dbg !3011
  %81 = load i8*, i8** %80, align 8, !dbg !3011
  store i8* %81, i8** %14, align 8, !dbg !3008
  call void @llvm.dbg.declare(metadata i32* %15, metadata !3012, metadata !DIExpression()), !dbg !3013
  %82 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3014
  %83 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %82, i32 0, i32 1, !dbg !3015
  %84 = load i32, i32* %83, align 4, !dbg !3015
  %85 = or i32 %84, 1, !dbg !3016
  store i32 %85, i32* %15, align 4, !dbg !3013
  call void @llvm.dbg.declare(metadata i64* %16, metadata !3017, metadata !DIExpression()), !dbg !3018
  %86 = load i8*, i8** %14, align 8, !dbg !3019
  %87 = load i64, i64* %13, align 8, !dbg !3020
  %88 = load i8*, i8** %6, align 8, !dbg !3021
  %89 = load i64, i64* %7, align 8, !dbg !3022
  %90 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3023
  %91 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %90, i32 0, i32 0, !dbg !3024
  %92 = load i32, i32* %91, align 8, !dbg !3024
  %93 = load i32, i32* %15, align 4, !dbg !3025
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3026
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 2, !dbg !3027
  %96 = getelementptr inbounds [8 x i32], [8 x i32]* %95, i64 0, i64 0, !dbg !3026
  %97 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3028
  %98 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %97, i32 0, i32 3, !dbg !3029
  %99 = load i8*, i8** %98, align 8, !dbg !3029
  %100 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3030
  %101 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %100, i32 0, i32 4, !dbg !3031
  %102 = load i8*, i8** %101, align 8, !dbg !3031
  %103 = call i64 @quotearg_buffer_restyled(i8* %86, i64 %87, i8* %88, i64 %89, i32 %92, i32 %93, i32* %96, i8* %99, i8* %102), !dbg !3032
  store i64 %103, i64* %16, align 8, !dbg !3018
  %104 = load i64, i64* %13, align 8, !dbg !3033
  %105 = load i64, i64* %16, align 8, !dbg !3035
  %106 = icmp ule i64 %104, %105, !dbg !3036
  br i1 %106, label %107, label %145, !dbg !3037

107:                                              ; preds = %69
  %108 = load i64, i64* %16, align 8, !dbg !3038
  %109 = add i64 %108, 1, !dbg !3040
  store i64 %109, i64* %13, align 8, !dbg !3041
  %110 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3042
  %111 = load i32, i32* %5, align 4, !dbg !3043
  %112 = sext i32 %111 to i64, !dbg !3042
  %113 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %110, i64 %112, !dbg !3042
  %114 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %113, i32 0, i32 0, !dbg !3044
  store i64 %109, i64* %114, align 8, !dbg !3045
  %115 = load i8*, i8** %14, align 8, !dbg !3046
  %116 = icmp ne i8* %115, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3048
  br i1 %116, label %117, label %119, !dbg !3049

117:                                              ; preds = %107
  %118 = load i8*, i8** %14, align 8, !dbg !3050
  call void @free(i8* %118) #15, !dbg !3051
  br label %119, !dbg !3051

119:                                              ; preds = %117, %107
  %120 = load i64, i64* %13, align 8, !dbg !3052
  %121 = call noalias i8* @xcharalloc(i64 %120), !dbg !3053
  store i8* %121, i8** %14, align 8, !dbg !3054
  %122 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3055
  %123 = load i32, i32* %5, align 4, !dbg !3056
  %124 = sext i32 %123 to i64, !dbg !3055
  %125 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %122, i64 %124, !dbg !3055
  %126 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %125, i32 0, i32 1, !dbg !3057
  store i8* %121, i8** %126, align 8, !dbg !3058
  %127 = load i8*, i8** %14, align 8, !dbg !3059
  %128 = load i64, i64* %13, align 8, !dbg !3060
  %129 = load i8*, i8** %6, align 8, !dbg !3061
  %130 = load i64, i64* %7, align 8, !dbg !3062
  %131 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3063
  %132 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %131, i32 0, i32 0, !dbg !3064
  %133 = load i32, i32* %132, align 8, !dbg !3064
  %134 = load i32, i32* %15, align 4, !dbg !3065
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3066
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 2, !dbg !3067
  %137 = getelementptr inbounds [8 x i32], [8 x i32]* %136, i64 0, i64 0, !dbg !3066
  %138 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3068
  %139 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %138, i32 0, i32 3, !dbg !3069
  %140 = load i8*, i8** %139, align 8, !dbg !3069
  %141 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3070
  %142 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %141, i32 0, i32 4, !dbg !3071
  %143 = load i8*, i8** %142, align 8, !dbg !3071
  %144 = call i64 @quotearg_buffer_restyled(i8* %127, i64 %128, i8* %129, i64 %130, i32 %133, i32 %134, i32* %137, i8* %140, i8* %143), !dbg !3072
  br label %145, !dbg !3073

145:                                              ; preds = %119, %69
  %146 = load i32, i32* %9, align 4, !dbg !3074
  %147 = call i32* @__errno_location() #17, !dbg !3075
  store i32 %146, i32* %147, align 4, !dbg !3076
  %148 = load i8*, i8** %14, align 8, !dbg !3077
  ret i8* %148, !dbg !3078
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) #3 !dbg !3079 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3082, metadata !DIExpression()), !dbg !3083
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3084, metadata !DIExpression()), !dbg !3085
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3086, metadata !DIExpression()), !dbg !3087
  %7 = load i32, i32* %4, align 4, !dbg !3088
  %8 = load i8*, i8** %5, align 8, !dbg !3089
  %9 = load i64, i64* %6, align 8, !dbg !3090
  %10 = call i8* @quotearg_n_options(i32 %7, i8* %8, i64 %9, %struct.quoting_options* @default_quoting_options), !dbg !3091
  ret i8* %10, !dbg !3092
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* %0) #3 !dbg !3093 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3096, metadata !DIExpression()), !dbg !3097
  %3 = load i8*, i8** %2, align 8, !dbg !3098
  %4 = call i8* @quotearg_n(i32 0, i8* %3), !dbg !3099
  ret i8* %4, !dbg !3100
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) #3 !dbg !3101 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3104, metadata !DIExpression()), !dbg !3105
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3106, metadata !DIExpression()), !dbg !3107
  %5 = load i8*, i8** %3, align 8, !dbg !3108
  %6 = load i64, i64* %4, align 8, !dbg !3109
  %7 = call i8* @quotearg_n_mem(i32 0, i8* %5, i64 %6), !dbg !3110
  ret i8* %7, !dbg !3111
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) #3 !dbg !3112 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3115, metadata !DIExpression()), !dbg !3116
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3117, metadata !DIExpression()), !dbg !3118
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3119, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3121, metadata !DIExpression()), !dbg !3122
  %8 = load i32, i32* %5, align 4, !dbg !3123
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 %8), !dbg !3124
  %9 = load i32, i32* %4, align 4, !dbg !3125
  %10 = load i8*, i8** %6, align 8, !dbg !3126
  %11 = call i8* @quotearg_n_options(i32 %9, i8* %10, i64 -1, %struct.quoting_options* %7), !dbg !3127
  ret i8* %11, !dbg !3128
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 %1) #3 !dbg !3129 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3132, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !3134, metadata !DIExpression()), !dbg !3135
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !3135
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !3135
  %5 = load i32, i32* %3, align 4, !dbg !3136
  %6 = icmp eq i32 %5, 10, !dbg !3138
  br i1 %6, label %7, label %8, !dbg !3139

7:                                                ; preds = %2
  call void @abort() #13, !dbg !3140
  unreachable, !dbg !3140

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !3141
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !3142
  store i32 %9, i32* %10, align 8, !dbg !3143
  ret void, !dbg !3144
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) #3 !dbg !3145 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3148, metadata !DIExpression()), !dbg !3149
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3150, metadata !DIExpression()), !dbg !3151
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3152, metadata !DIExpression()), !dbg !3153
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3154, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !3156, metadata !DIExpression()), !dbg !3157
  %10 = load i32, i32* %6, align 4, !dbg !3158
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 %10), !dbg !3159
  %11 = load i32, i32* %5, align 4, !dbg !3160
  %12 = load i8*, i8** %7, align 8, !dbg !3161
  %13 = load i64, i64* %8, align 8, !dbg !3162
  %14 = call i8* @quotearg_n_options(i32 %11, i8* %12, i64 %13, %struct.quoting_options* %9), !dbg !3163
  ret i8* %14, !dbg !3164
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) #3 !dbg !3165 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3168, metadata !DIExpression()), !dbg !3169
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3170, metadata !DIExpression()), !dbg !3171
  %5 = load i32, i32* %3, align 4, !dbg !3172
  %6 = load i8*, i8** %4, align 8, !dbg !3173
  %7 = call i8* @quotearg_n_style(i32 0, i32 %5, i8* %6), !dbg !3174
  ret i8* %7, !dbg !3175
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) #3 !dbg !3176 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3179, metadata !DIExpression()), !dbg !3180
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3181, metadata !DIExpression()), !dbg !3182
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3183, metadata !DIExpression()), !dbg !3184
  %7 = load i32, i32* %4, align 4, !dbg !3185
  %8 = load i8*, i8** %5, align 8, !dbg !3186
  %9 = load i64, i64* %6, align 8, !dbg !3187
  %10 = call i8* @quotearg_n_style_mem(i32 0, i32 %7, i8* %8, i64 %9), !dbg !3188
  ret i8* %10, !dbg !3189
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) #3 !dbg !3190 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3193, metadata !DIExpression()), !dbg !3194
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3195, metadata !DIExpression()), !dbg !3196
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3197, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3199, metadata !DIExpression()), !dbg !3200
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3201
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3201
  %9 = load i8, i8* %6, align 1, !dbg !3202
  %10 = call i32 @set_char_quoting(%struct.quoting_options* %7, i8 signext %9, i32 1), !dbg !3203
  %11 = load i8*, i8** %4, align 8, !dbg !3204
  %12 = load i64, i64* %5, align 8, !dbg !3205
  %13 = call i8* @quotearg_n_options(i32 0, i8* %11, i64 %12, %struct.quoting_options* %7), !dbg !3206
  ret i8* %13, !dbg !3207
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) #3 !dbg !3208 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3211, metadata !DIExpression()), !dbg !3212
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3213, metadata !DIExpression()), !dbg !3214
  %5 = load i8*, i8** %3, align 8, !dbg !3215
  %6 = load i8, i8* %4, align 1, !dbg !3216
  %7 = call i8* @quotearg_char_mem(i8* %5, i64 -1, i8 signext %6), !dbg !3217
  ret i8* %7, !dbg !3218
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* %0) #3 !dbg !3219 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3220, metadata !DIExpression()), !dbg !3221
  %3 = load i8*, i8** %2, align 8, !dbg !3222
  %4 = call i8* @quotearg_char(i8* %3, i8 signext 58), !dbg !3223
  ret i8* %4, !dbg !3224
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) #3 !dbg !3225 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3226, metadata !DIExpression()), !dbg !3227
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3228, metadata !DIExpression()), !dbg !3229
  %5 = load i8*, i8** %3, align 8, !dbg !3230
  %6 = load i64, i64* %4, align 8, !dbg !3231
  %7 = call i8* @quotearg_char_mem(i8* %5, i64 %6, i8 signext 58), !dbg !3232
  ret i8* %7, !dbg !3233
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) #3 !dbg !3234 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3235, metadata !DIExpression()), !dbg !3236
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3237, metadata !DIExpression()), !dbg !3238
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3239, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3241, metadata !DIExpression()), !dbg !3242
  %9 = load i32, i32* %5, align 4, !dbg !3243
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 %9), !dbg !3244
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3244
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !3244
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !3244
  %12 = call i32 @set_char_quoting(%struct.quoting_options* %7, i8 signext 58, i32 1), !dbg !3245
  %13 = load i32, i32* %4, align 4, !dbg !3246
  %14 = load i8*, i8** %6, align 8, !dbg !3247
  %15 = call i8* @quotearg_n_options(i32 %13, i8* %14, i64 -1, %struct.quoting_options* %7), !dbg !3248
  ret i8* %15, !dbg !3249
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) #3 !dbg !3250 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3253, metadata !DIExpression()), !dbg !3254
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3255, metadata !DIExpression()), !dbg !3256
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3257, metadata !DIExpression()), !dbg !3258
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3259, metadata !DIExpression()), !dbg !3260
  %9 = load i32, i32* %5, align 4, !dbg !3261
  %10 = load i8*, i8** %6, align 8, !dbg !3262
  %11 = load i8*, i8** %7, align 8, !dbg !3263
  %12 = load i8*, i8** %8, align 8, !dbg !3264
  %13 = call i8* @quotearg_n_custom_mem(i32 %9, i8* %10, i8* %11, i8* %12, i64 -1), !dbg !3265
  ret i8* %13, !dbg !3266
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) #3 !dbg !3267 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3270, metadata !DIExpression()), !dbg !3271
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3272, metadata !DIExpression()), !dbg !3273
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3274, metadata !DIExpression()), !dbg !3275
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3276, metadata !DIExpression()), !dbg !3277
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3278, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !3280, metadata !DIExpression()), !dbg !3281
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !3282
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3282
  %13 = load i8*, i8** %7, align 8, !dbg !3283
  %14 = load i8*, i8** %8, align 8, !dbg !3284
  call void @set_custom_quoting(%struct.quoting_options* %11, i8* %13, i8* %14), !dbg !3285
  %15 = load i32, i32* %6, align 4, !dbg !3286
  %16 = load i8*, i8** %9, align 8, !dbg !3287
  %17 = load i64, i64* %10, align 8, !dbg !3288
  %18 = call i8* @quotearg_n_options(i32 %15, i8* %16, i64 %17, %struct.quoting_options* %11), !dbg !3289
  ret i8* %18, !dbg !3290
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) #3 !dbg !3291 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3294, metadata !DIExpression()), !dbg !3295
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3296, metadata !DIExpression()), !dbg !3297
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3298, metadata !DIExpression()), !dbg !3299
  %7 = load i8*, i8** %4, align 8, !dbg !3300
  %8 = load i8*, i8** %5, align 8, !dbg !3301
  %9 = load i8*, i8** %6, align 8, !dbg !3302
  %10 = call i8* @quotearg_n_custom(i32 0, i8* %7, i8* %8, i8* %9), !dbg !3303
  ret i8* %10, !dbg !3304
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) #3 !dbg !3305 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3308, metadata !DIExpression()), !dbg !3309
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3310, metadata !DIExpression()), !dbg !3311
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3312, metadata !DIExpression()), !dbg !3313
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3314, metadata !DIExpression()), !dbg !3315
  %9 = load i8*, i8** %5, align 8, !dbg !3316
  %10 = load i8*, i8** %6, align 8, !dbg !3317
  %11 = load i8*, i8** %7, align 8, !dbg !3318
  %12 = load i64, i64* %8, align 8, !dbg !3319
  %13 = call i8* @quotearg_n_custom_mem(i32 0, i8* %9, i8* %10, i8* %11, i64 %12), !dbg !3320
  ret i8* %13, !dbg !3321
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) #3 !dbg !3322 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3325, metadata !DIExpression()), !dbg !3326
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3327, metadata !DIExpression()), !dbg !3328
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3329, metadata !DIExpression()), !dbg !3330
  %7 = load i32, i32* %4, align 4, !dbg !3331
  %8 = load i8*, i8** %5, align 8, !dbg !3332
  %9 = load i64, i64* %6, align 8, !dbg !3333
  %10 = call i8* @quotearg_n_options(i32 %7, i8* %8, i64 %9, %struct.quoting_options* @quote_quoting_options), !dbg !3334
  ret i8* %10, !dbg !3335
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) #3 !dbg !3336 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3339, metadata !DIExpression()), !dbg !3340
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3341, metadata !DIExpression()), !dbg !3342
  %5 = load i8*, i8** %3, align 8, !dbg !3343
  %6 = load i64, i64* %4, align 8, !dbg !3344
  %7 = call i8* @quote_n_mem(i32 0, i8* %5, i64 %6), !dbg !3345
  ret i8* %7, !dbg !3346
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) #3 !dbg !3347 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3350, metadata !DIExpression()), !dbg !3351
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3352, metadata !DIExpression()), !dbg !3353
  %5 = load i32, i32* %3, align 4, !dbg !3354
  %6 = load i8*, i8** %4, align 8, !dbg !3355
  %7 = call i8* @quote_n_mem(i32 %5, i8* %6, i64 -1), !dbg !3356
  ret i8* %7, !dbg !3357
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* %0) #3 !dbg !3358 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3361, metadata !DIExpression()), !dbg !3362
  %3 = load i8*, i8** %2, align 8, !dbg !3363
  %4 = call i8* @quote_n(i32 0, i8* %3), !dbg !3364
  ret i8* %4, !dbg !3365
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @parse_user_spec(i8* %0, i32* %1, i32* %2, i8** %3, i8** %4) #3 !dbg !3366 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3369, metadata !DIExpression()), !dbg !3370
  store i32* %1, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !3371, metadata !DIExpression()), !dbg !3372
  store i32* %2, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !3373, metadata !DIExpression()), !dbg !3374
  store i8** %3, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !3375, metadata !DIExpression()), !dbg !3376
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !3377, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3379, metadata !DIExpression()), !dbg !3380
  %14 = load i32*, i32** %8, align 8, !dbg !3381
  %15 = icmp ne i32* %14, null, !dbg !3381
  br i1 %15, label %16, label %19, !dbg !3381

16:                                               ; preds = %5
  %17 = load i8*, i8** %6, align 8, !dbg !3382
  %18 = call i8* @strchr(i8* %17, i32 58) #14, !dbg !3383
  br label %20, !dbg !3381

19:                                               ; preds = %5
  br label %20, !dbg !3381

20:                                               ; preds = %19, %16
  %21 = phi i8* [ %18, %16 ], [ null, %19 ], !dbg !3381
  store i8* %21, i8** %11, align 8, !dbg !3380
  call void @llvm.dbg.declare(metadata i8** %12, metadata !3384, metadata !DIExpression()), !dbg !3385
  %22 = load i8*, i8** %6, align 8, !dbg !3386
  %23 = load i8*, i8** %11, align 8, !dbg !3387
  %24 = load i32*, i32** %7, align 8, !dbg !3388
  %25 = load i32*, i32** %8, align 8, !dbg !3389
  %26 = load i8**, i8*** %9, align 8, !dbg !3390
  %27 = load i8**, i8*** %10, align 8, !dbg !3391
  %28 = call i8* @parse_with_separator(i8* %22, i8* %23, i32* %24, i32* %25, i8** %26, i8** %27), !dbg !3392
  store i8* %28, i8** %12, align 8, !dbg !3385
  %29 = load i32*, i32** %8, align 8, !dbg !3393
  %30 = icmp ne i32* %29, null, !dbg !3393
  br i1 %30, label %31, label %53, !dbg !3395

31:                                               ; preds = %20
  %32 = load i8*, i8** %11, align 8, !dbg !3396
  %33 = icmp ne i8* %32, null, !dbg !3396
  br i1 %33, label %53, label %34, !dbg !3397

34:                                               ; preds = %31
  %35 = load i8*, i8** %12, align 8, !dbg !3398
  %36 = icmp ne i8* %35, null, !dbg !3398
  br i1 %36, label %37, label %53, !dbg !3399

37:                                               ; preds = %34
  call void @llvm.dbg.declare(metadata i8** %13, metadata !3400, metadata !DIExpression()), !dbg !3402
  %38 = load i8*, i8** %6, align 8, !dbg !3403
  %39 = call i8* @strchr(i8* %38, i32 46) #14, !dbg !3404
  store i8* %39, i8** %13, align 8, !dbg !3402
  %40 = load i8*, i8** %13, align 8, !dbg !3405
  %41 = icmp ne i8* %40, null, !dbg !3405
  br i1 %41, label %42, label %52, !dbg !3407

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8, !dbg !3408
  %44 = load i8*, i8** %13, align 8, !dbg !3409
  %45 = load i32*, i32** %7, align 8, !dbg !3410
  %46 = load i32*, i32** %8, align 8, !dbg !3411
  %47 = load i8**, i8*** %9, align 8, !dbg !3412
  %48 = load i8**, i8*** %10, align 8, !dbg !3413
  %49 = call i8* @parse_with_separator(i8* %43, i8* %44, i32* %45, i32* %46, i8** %47, i8** %48), !dbg !3414
  %50 = icmp ne i8* %49, null, !dbg !3414
  br i1 %50, label %52, label %51, !dbg !3415

51:                                               ; preds = %42
  store i8* null, i8** %12, align 8, !dbg !3416
  br label %52, !dbg !3417

52:                                               ; preds = %51, %42, %37
  br label %53, !dbg !3418

53:                                               ; preds = %52, %34, %31, %20
  %54 = load i8*, i8** %12, align 8, !dbg !3419
  ret i8* %54, !dbg !3420
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_with_separator(i8* %0, i8* %1, i32* %2, i32* %3, i8** %4, i8** %5) #3 !dbg !195 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.passwd*, align 8
  %15 = alloca %struct.group*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i8, align 1
  %23 = alloca i64, align 8
  %24 = alloca [21 x i8], align 16
  %25 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3421, metadata !DIExpression()), !dbg !3422
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3423, metadata !DIExpression()), !dbg !3424
  store i32* %2, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !3425, metadata !DIExpression()), !dbg !3426
  store i32* %3, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !3427, metadata !DIExpression()), !dbg !3428
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !3429, metadata !DIExpression()), !dbg !3430
  store i8** %5, i8*** %12, align 8
  call void @llvm.dbg.declare(metadata i8*** %12, metadata !3431, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.declare(metadata i8** %13, metadata !3433, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.declare(metadata %struct.passwd** %14, metadata !3435, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.declare(metadata %struct.group** %15, metadata !3447, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.declare(metadata i8** %16, metadata !3456, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.declare(metadata i8** %17, metadata !3458, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.declare(metadata i8** %18, metadata !3460, metadata !DIExpression()), !dbg !3461
  store i8* null, i8** %18, align 8, !dbg !3461
  call void @llvm.dbg.declare(metadata i32* %19, metadata !3462, metadata !DIExpression()), !dbg !3463
  %26 = load i32*, i32** %9, align 8, !dbg !3464
  %27 = load i32, i32* %26, align 4, !dbg !3465
  store i32 %27, i32* %19, align 4, !dbg !3463
  call void @llvm.dbg.declare(metadata i32* %20, metadata !3466, metadata !DIExpression()), !dbg !3467
  %28 = load i32*, i32** %10, align 8, !dbg !3468
  %29 = icmp ne i32* %28, null, !dbg !3468
  br i1 %29, label %30, label %33, !dbg !3468

30:                                               ; preds = %6
  %31 = load i32*, i32** %10, align 8, !dbg !3469
  %32 = load i32, i32* %31, align 4, !dbg !3470
  br label %34, !dbg !3468

33:                                               ; preds = %6
  br label %34, !dbg !3468

34:                                               ; preds = %33, %30
  %35 = phi i32 [ %32, %30 ], [ -1, %33 ], !dbg !3468
  store i32 %35, i32* %20, align 4, !dbg !3467
  store i8* null, i8** %13, align 8, !dbg !3471
  %36 = load i8**, i8*** %11, align 8, !dbg !3472
  %37 = icmp ne i8** %36, null, !dbg !3472
  br i1 %37, label %38, label %40, !dbg !3474

38:                                               ; preds = %34
  %39 = load i8**, i8*** %11, align 8, !dbg !3475
  store i8* null, i8** %39, align 8, !dbg !3476
  br label %40, !dbg !3477

40:                                               ; preds = %38, %34
  %41 = load i8**, i8*** %12, align 8, !dbg !3478
  %42 = icmp ne i8** %41, null, !dbg !3478
  br i1 %42, label %43, label %45, !dbg !3480

43:                                               ; preds = %40
  %44 = load i8**, i8*** %12, align 8, !dbg !3481
  store i8* null, i8** %44, align 8, !dbg !3482
  br label %45, !dbg !3483

45:                                               ; preds = %43, %40
  store i8* null, i8** %16, align 8, !dbg !3484
  %46 = load i8*, i8** %8, align 8, !dbg !3485
  %47 = icmp eq i8* %46, null, !dbg !3487
  br i1 %47, label %48, label %56, !dbg !3488

48:                                               ; preds = %45
  %49 = load i8*, i8** %7, align 8, !dbg !3489
  %50 = load i8, i8* %49, align 1, !dbg !3492
  %51 = icmp ne i8 %50, 0, !dbg !3492
  br i1 %51, label %52, label %55, !dbg !3493

52:                                               ; preds = %48
  %53 = load i8*, i8** %7, align 8, !dbg !3494
  %54 = call noalias i8* @xstrdup(i8* %53), !dbg !3495
  store i8* %54, i8** %16, align 8, !dbg !3496
  br label %55, !dbg !3497

55:                                               ; preds = %52, %48
  br label %73, !dbg !3498

56:                                               ; preds = %45
  call void @llvm.dbg.declare(metadata i64* %21, metadata !3499, metadata !DIExpression()), !dbg !3501
  %57 = load i8*, i8** %8, align 8, !dbg !3502
  %58 = load i8*, i8** %7, align 8, !dbg !3503
  %59 = ptrtoint i8* %57 to i64, !dbg !3504
  %60 = ptrtoint i8* %58 to i64, !dbg !3504
  %61 = sub i64 %59, %60, !dbg !3504
  store i64 %61, i64* %21, align 8, !dbg !3501
  %62 = load i64, i64* %21, align 8, !dbg !3505
  %63 = icmp ne i64 %62, 0, !dbg !3507
  br i1 %63, label %64, label %72, !dbg !3508

64:                                               ; preds = %56
  %65 = load i8*, i8** %7, align 8, !dbg !3509
  %66 = load i64, i64* %21, align 8, !dbg !3511
  %67 = add i64 %66, 1, !dbg !3512
  %68 = call i8* @xmemdup(i8* %65, i64 %67), !dbg !3513
  store i8* %68, i8** %16, align 8, !dbg !3514
  %69 = load i8*, i8** %16, align 8, !dbg !3515
  %70 = load i64, i64* %21, align 8, !dbg !3516
  %71 = getelementptr inbounds i8, i8* %69, i64 %70, !dbg !3515
  store i8 0, i8* %71, align 1, !dbg !3517
  br label %72, !dbg !3518

72:                                               ; preds = %64, %56
  br label %73

73:                                               ; preds = %72, %55
  %74 = load i8*, i8** %8, align 8, !dbg !3519
  %75 = icmp eq i8* %74, null, !dbg !3520
  br i1 %75, label %82, label %76, !dbg !3521

76:                                               ; preds = %73
  %77 = load i8*, i8** %8, align 8, !dbg !3522
  %78 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !3523
  %79 = load i8, i8* %78, align 1, !dbg !3524
  %80 = sext i8 %79 to i32, !dbg !3524
  %81 = icmp eq i32 %80, 0, !dbg !3525
  br i1 %81, label %82, label %83, !dbg !3519

82:                                               ; preds = %76, %73
  br label %86, !dbg !3519

83:                                               ; preds = %76
  %84 = load i8*, i8** %8, align 8, !dbg !3526
  %85 = getelementptr inbounds i8, i8* %84, i64 1, !dbg !3527
  br label %86, !dbg !3519

86:                                               ; preds = %83, %82
  %87 = phi i8* [ null, %82 ], [ %85, %83 ], !dbg !3519
  store i8* %87, i8** %17, align 8, !dbg !3528
  %88 = load i8*, i8** %16, align 8, !dbg !3529
  %89 = icmp ne i8* %88, null, !dbg !3531
  br i1 %89, label %90, label %165, !dbg !3532

90:                                               ; preds = %86
  %91 = load i8*, i8** %16, align 8, !dbg !3533
  %92 = load i8, i8* %91, align 1, !dbg !3535
  %93 = sext i8 %92 to i32, !dbg !3535
  %94 = icmp eq i32 %93, 43, !dbg !3536
  br i1 %94, label %95, label %96, !dbg !3535

95:                                               ; preds = %90
  br label %99, !dbg !3535

96:                                               ; preds = %90
  %97 = load i8*, i8** %16, align 8, !dbg !3537
  %98 = call %struct.passwd* @getpwnam(i8* %97), !dbg !3538
  br label %99, !dbg !3535

99:                                               ; preds = %96, %95
  %100 = phi %struct.passwd* [ null, %95 ], [ %98, %96 ], !dbg !3535
  store %struct.passwd* %100, %struct.passwd** %14, align 8, !dbg !3539
  %101 = load %struct.passwd*, %struct.passwd** %14, align 8, !dbg !3540
  %102 = icmp eq %struct.passwd* %101, null, !dbg !3542
  br i1 %102, label %103, label %134, !dbg !3543

103:                                              ; preds = %99
  call void @llvm.dbg.declare(metadata i8* %22, metadata !3544, metadata !DIExpression()), !dbg !3546
  %104 = load i8*, i8** %8, align 8, !dbg !3547
  %105 = icmp ne i8* %104, null, !dbg !3548
  br i1 %105, label %106, label %109, !dbg !3549

106:                                              ; preds = %103
  %107 = load i8*, i8** %17, align 8, !dbg !3550
  %108 = icmp eq i8* %107, null, !dbg !3551
  br label %109

109:                                              ; preds = %106, %103
  %110 = phi i1 [ false, %103 ], [ %108, %106 ], !dbg !3552
  %111 = zext i1 %110 to i8, !dbg !3546
  store i8 %111, i8* %22, align 1, !dbg !3546
  %112 = load i8, i8* %22, align 1, !dbg !3553
  %113 = trunc i8 %112 to i1, !dbg !3553
  br i1 %113, label %114, label %116, !dbg !3555

114:                                              ; preds = %109
  %115 = load i8*, i8** @parse_with_separator.E_bad_spec, align 8, !dbg !3556
  store i8* %115, i8** %13, align 8, !dbg !3558
  br label %133, !dbg !3559

116:                                              ; preds = %109
  call void @llvm.dbg.declare(metadata i64* %23, metadata !3560, metadata !DIExpression()), !dbg !3562
  %117 = load i8*, i8** %16, align 8, !dbg !3563
  %118 = call i32 @xstrtoul(i8* %117, i8** null, i32 10, i64* %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.109, i64 0, i64 0)), !dbg !3565
  %119 = icmp eq i32 %118, 0, !dbg !3566
  br i1 %119, label %120, label %130, !dbg !3567

120:                                              ; preds = %116
  %121 = load i64, i64* %23, align 8, !dbg !3568
  %122 = icmp ule i64 %121, 4294967295, !dbg !3569
  br i1 %122, label %123, label %130, !dbg !3570

123:                                              ; preds = %120
  %124 = load i64, i64* %23, align 8, !dbg !3571
  %125 = trunc i64 %124 to i32, !dbg !3572
  %126 = icmp ne i32 %125, -1, !dbg !3573
  br i1 %126, label %127, label %130, !dbg !3574

127:                                              ; preds = %123
  %128 = load i64, i64* %23, align 8, !dbg !3575
  %129 = trunc i64 %128 to i32, !dbg !3575
  store i32 %129, i32* %19, align 4, !dbg !3576
  br label %132, !dbg !3577

130:                                              ; preds = %123, %120, %116
  %131 = load i8*, i8** @parse_with_separator.E_invalid_user, align 8, !dbg !3578
  store i8* %131, i8** %13, align 8, !dbg !3579
  br label %132

132:                                              ; preds = %130, %127
  br label %133

133:                                              ; preds = %132, %114
  br label %164, !dbg !3580

134:                                              ; preds = %99
  %135 = load %struct.passwd*, %struct.passwd** %14, align 8, !dbg !3581
  %136 = getelementptr inbounds %struct.passwd, %struct.passwd* %135, i32 0, i32 2, !dbg !3583
  %137 = load i32, i32* %136, align 8, !dbg !3583
  store i32 %137, i32* %19, align 4, !dbg !3584
  %138 = load i8*, i8** %17, align 8, !dbg !3585
  %139 = icmp eq i8* %138, null, !dbg !3587
  br i1 %139, label %140, label %163, !dbg !3588

140:                                              ; preds = %134
  %141 = load i8*, i8** %8, align 8, !dbg !3589
  %142 = icmp ne i8* %141, null, !dbg !3590
  br i1 %142, label %143, label %163, !dbg !3591

143:                                              ; preds = %140
  call void @llvm.dbg.declare(metadata [21 x i8]* %24, metadata !3592, metadata !DIExpression()), !dbg !3594
  %144 = load %struct.passwd*, %struct.passwd** %14, align 8, !dbg !3595
  %145 = getelementptr inbounds %struct.passwd, %struct.passwd* %144, i32 0, i32 3, !dbg !3596
  %146 = load i32, i32* %145, align 4, !dbg !3596
  store i32 %146, i32* %20, align 4, !dbg !3597
  %147 = load i32, i32* %20, align 4, !dbg !3598
  %148 = call %struct.group* @getgrgid(i32 %147), !dbg !3599
  store %struct.group* %148, %struct.group** %15, align 8, !dbg !3600
  %149 = load %struct.group*, %struct.group** %15, align 8, !dbg !3601
  %150 = icmp ne %struct.group* %149, null, !dbg !3601
  br i1 %150, label %151, label %155, !dbg !3601

151:                                              ; preds = %143
  %152 = load %struct.group*, %struct.group** %15, align 8, !dbg !3602
  %153 = getelementptr inbounds %struct.group, %struct.group* %152, i32 0, i32 0, !dbg !3603
  %154 = load i8*, i8** %153, align 8, !dbg !3603
  br label %160, !dbg !3601

155:                                              ; preds = %143
  %156 = load i32, i32* %20, align 4, !dbg !3604
  %157 = zext i32 %156 to i64, !dbg !3604
  %158 = getelementptr inbounds [21 x i8], [21 x i8]* %24, i64 0, i64 0, !dbg !3605
  %159 = call i8* @umaxtostr(i64 %157, i8* %158), !dbg !3606
  br label %160, !dbg !3601

160:                                              ; preds = %155, %151
  %161 = phi i8* [ %154, %151 ], [ %159, %155 ], !dbg !3601
  %162 = call noalias i8* @xstrdup(i8* %161), !dbg !3607
  store i8* %162, i8** %18, align 8, !dbg !3608
  call void @endgrent(), !dbg !3609
  br label %163, !dbg !3610

163:                                              ; preds = %160, %140, %134
  br label %164

164:                                              ; preds = %163, %133
  call void @endpwent(), !dbg !3611
  br label %165, !dbg !3612

165:                                              ; preds = %164, %86
  %166 = load i8*, i8** %17, align 8, !dbg !3613
  %167 = icmp ne i8* %166, null, !dbg !3615
  br i1 %167, label %168, label %208, !dbg !3616

168:                                              ; preds = %165
  %169 = load i8*, i8** %13, align 8, !dbg !3617
  %170 = icmp eq i8* %169, null, !dbg !3618
  br i1 %170, label %171, label %208, !dbg !3619

171:                                              ; preds = %168
  %172 = load i8*, i8** %17, align 8, !dbg !3620
  %173 = load i8, i8* %172, align 1, !dbg !3622
  %174 = sext i8 %173 to i32, !dbg !3622
  %175 = icmp eq i32 %174, 43, !dbg !3623
  br i1 %175, label %176, label %177, !dbg !3622

176:                                              ; preds = %171
  br label %180, !dbg !3622

177:                                              ; preds = %171
  %178 = load i8*, i8** %17, align 8, !dbg !3624
  %179 = call %struct.group* @getgrnam(i8* %178), !dbg !3625
  br label %180, !dbg !3622

180:                                              ; preds = %177, %176
  %181 = phi %struct.group* [ null, %176 ], [ %179, %177 ], !dbg !3622
  store %struct.group* %181, %struct.group** %15, align 8, !dbg !3626
  %182 = load %struct.group*, %struct.group** %15, align 8, !dbg !3627
  %183 = icmp eq %struct.group* %182, null, !dbg !3629
  br i1 %183, label %184, label %201, !dbg !3630

184:                                              ; preds = %180
  call void @llvm.dbg.declare(metadata i64* %25, metadata !3631, metadata !DIExpression()), !dbg !3633
  %185 = load i8*, i8** %17, align 8, !dbg !3634
  %186 = call i32 @xstrtoul(i8* %185, i8** null, i32 10, i64* %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.109, i64 0, i64 0)), !dbg !3636
  %187 = icmp eq i32 %186, 0, !dbg !3637
  br i1 %187, label %188, label %198, !dbg !3638

188:                                              ; preds = %184
  %189 = load i64, i64* %25, align 8, !dbg !3639
  %190 = icmp ule i64 %189, 4294967295, !dbg !3640
  br i1 %190, label %191, label %198, !dbg !3641

191:                                              ; preds = %188
  %192 = load i64, i64* %25, align 8, !dbg !3642
  %193 = trunc i64 %192 to i32, !dbg !3643
  %194 = icmp ne i32 %193, -1, !dbg !3644
  br i1 %194, label %195, label %198, !dbg !3645

195:                                              ; preds = %191
  %196 = load i64, i64* %25, align 8, !dbg !3646
  %197 = trunc i64 %196 to i32, !dbg !3646
  store i32 %197, i32* %20, align 4, !dbg !3647
  br label %200, !dbg !3648

198:                                              ; preds = %191, %188, %184
  %199 = load i8*, i8** @parse_with_separator.E_invalid_group, align 8, !dbg !3649
  store i8* %199, i8** %13, align 8, !dbg !3650
  br label %200

200:                                              ; preds = %198, %195
  br label %205, !dbg !3651

201:                                              ; preds = %180
  %202 = load %struct.group*, %struct.group** %15, align 8, !dbg !3652
  %203 = getelementptr inbounds %struct.group, %struct.group* %202, i32 0, i32 2, !dbg !3653
  %204 = load i32, i32* %203, align 8, !dbg !3653
  store i32 %204, i32* %20, align 4, !dbg !3654
  br label %205

205:                                              ; preds = %201, %200
  call void @endgrent(), !dbg !3655
  %206 = load i8*, i8** %17, align 8, !dbg !3656
  %207 = call noalias i8* @xstrdup(i8* %206), !dbg !3657
  store i8* %207, i8** %18, align 8, !dbg !3658
  br label %208, !dbg !3659

208:                                              ; preds = %205, %168, %165
  %209 = load i8*, i8** %13, align 8, !dbg !3660
  %210 = icmp eq i8* %209, null, !dbg !3662
  br i1 %210, label %211, label %232, !dbg !3663

211:                                              ; preds = %208
  %212 = load i32, i32* %19, align 4, !dbg !3664
  %213 = load i32*, i32** %9, align 8, !dbg !3666
  store i32 %212, i32* %213, align 4, !dbg !3667
  %214 = load i32*, i32** %10, align 8, !dbg !3668
  %215 = icmp ne i32* %214, null, !dbg !3668
  br i1 %215, label %216, label %219, !dbg !3670

216:                                              ; preds = %211
  %217 = load i32, i32* %20, align 4, !dbg !3671
  %218 = load i32*, i32** %10, align 8, !dbg !3672
  store i32 %217, i32* %218, align 4, !dbg !3673
  br label %219, !dbg !3674

219:                                              ; preds = %216, %211
  %220 = load i8**, i8*** %11, align 8, !dbg !3675
  %221 = icmp ne i8** %220, null, !dbg !3675
  br i1 %221, label %222, label %225, !dbg !3677

222:                                              ; preds = %219
  %223 = load i8*, i8** %16, align 8, !dbg !3678
  %224 = load i8**, i8*** %11, align 8, !dbg !3680
  store i8* %223, i8** %224, align 8, !dbg !3681
  store i8* null, i8** %16, align 8, !dbg !3682
  br label %225, !dbg !3683

225:                                              ; preds = %222, %219
  %226 = load i8**, i8*** %12, align 8, !dbg !3684
  %227 = icmp ne i8** %226, null, !dbg !3684
  br i1 %227, label %228, label %231, !dbg !3686

228:                                              ; preds = %225
  %229 = load i8*, i8** %18, align 8, !dbg !3687
  %230 = load i8**, i8*** %12, align 8, !dbg !3689
  store i8* %229, i8** %230, align 8, !dbg !3690
  store i8* null, i8** %18, align 8, !dbg !3691
  br label %231, !dbg !3692

231:                                              ; preds = %228, %225
  br label %232, !dbg !3693

232:                                              ; preds = %231, %208
  %233 = load i8*, i8** %16, align 8, !dbg !3694
  call void @free(i8* %233) #15, !dbg !3695
  %234 = load i8*, i8** %18, align 8, !dbg !3696
  call void @free(i8* %234) #15, !dbg !3697
  %235 = load i8*, i8** %13, align 8, !dbg !3698
  %236 = icmp ne i8* %235, null, !dbg !3698
  br i1 %236, label %237, label %239, !dbg !3698

237:                                              ; preds = %232
  %238 = load i8*, i8** %13, align 8, !dbg !3699
  br label %240, !dbg !3698

239:                                              ; preds = %232
  br label %240, !dbg !3698

240:                                              ; preds = %239, %237
  %241 = phi i8* [ %238, %237 ], [ null, %239 ], !dbg !3698
  ret i8* %241, !dbg !3700
}

declare dso_local %struct.passwd* @getpwnam(i8*) #2

declare dso_local void @endgrent() #2

declare dso_local void @endpwent() #2

declare dso_local %struct.group* @getgrnam(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** %4, i64 %5) #3 !dbg !3701 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !3758, metadata !DIExpression()), !dbg !3759
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3760, metadata !DIExpression()), !dbg !3761
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3762, metadata !DIExpression()), !dbg !3763
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3764, metadata !DIExpression()), !dbg !3765
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !3766, metadata !DIExpression()), !dbg !3767
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3768, metadata !DIExpression()), !dbg !3769
  %13 = load i8*, i8** %8, align 8, !dbg !3770
  %14 = icmp ne i8* %13, null, !dbg !3770
  br i1 %14, label %15, label %21, !dbg !3772

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3773
  %17 = load i8*, i8** %8, align 8, !dbg !3774
  %18 = load i8*, i8** %9, align 8, !dbg !3775
  %19 = load i8*, i8** %10, align 8, !dbg !3776
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.113, i64 0, i64 0), i8* %17, i8* %18, i8* %19), !dbg !3777
  br label %26, !dbg !3777

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3778
  %23 = load i8*, i8** %9, align 8, !dbg !3779
  %24 = load i8*, i8** %10, align 8, !dbg !3780
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.114, i64 0, i64 0), i8* %23, i8* %24), !dbg !3781
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3782
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.115, i64 0, i64 0), i32 2020), !dbg !3783
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3784
  %30 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.116, i64 0, i64 0), %struct._IO_FILE* %29), !dbg !3784
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3785
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.117, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.118, i64 0, i64 0)), !dbg !3786
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3787
  %34 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.116, i64 0, i64 0), %struct._IO_FILE* %33), !dbg !3787
  %35 = load i64, i64* %12, align 8, !dbg !3788
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
  ], !dbg !3789

36:                                               ; preds = %26
  br label %229, !dbg !3790

37:                                               ; preds = %26
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3792
  %39 = load i8**, i8*** %11, align 8, !dbg !3793
  %40 = getelementptr inbounds i8*, i8** %39, i64 0, !dbg !3793
  %41 = load i8*, i8** %40, align 8, !dbg !3793
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.119, i64 0, i64 0), i8* %41), !dbg !3794
  br label %229, !dbg !3795

43:                                               ; preds = %26
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3796
  %45 = load i8**, i8*** %11, align 8, !dbg !3797
  %46 = getelementptr inbounds i8*, i8** %45, i64 0, !dbg !3797
  %47 = load i8*, i8** %46, align 8, !dbg !3797
  %48 = load i8**, i8*** %11, align 8, !dbg !3798
  %49 = getelementptr inbounds i8*, i8** %48, i64 1, !dbg !3798
  %50 = load i8*, i8** %49, align 8, !dbg !3798
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.120, i64 0, i64 0), i8* %47, i8* %50), !dbg !3799
  br label %229, !dbg !3800

52:                                               ; preds = %26
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3801
  %54 = load i8**, i8*** %11, align 8, !dbg !3802
  %55 = getelementptr inbounds i8*, i8** %54, i64 0, !dbg !3802
  %56 = load i8*, i8** %55, align 8, !dbg !3802
  %57 = load i8**, i8*** %11, align 8, !dbg !3803
  %58 = getelementptr inbounds i8*, i8** %57, i64 1, !dbg !3803
  %59 = load i8*, i8** %58, align 8, !dbg !3803
  %60 = load i8**, i8*** %11, align 8, !dbg !3804
  %61 = getelementptr inbounds i8*, i8** %60, i64 2, !dbg !3804
  %62 = load i8*, i8** %61, align 8, !dbg !3804
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.121, i64 0, i64 0), i8* %56, i8* %59, i8* %62), !dbg !3805
  br label %229, !dbg !3806

64:                                               ; preds = %26
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3807
  %66 = load i8**, i8*** %11, align 8, !dbg !3808
  %67 = getelementptr inbounds i8*, i8** %66, i64 0, !dbg !3808
  %68 = load i8*, i8** %67, align 8, !dbg !3808
  %69 = load i8**, i8*** %11, align 8, !dbg !3809
  %70 = getelementptr inbounds i8*, i8** %69, i64 1, !dbg !3809
  %71 = load i8*, i8** %70, align 8, !dbg !3809
  %72 = load i8**, i8*** %11, align 8, !dbg !3810
  %73 = getelementptr inbounds i8*, i8** %72, i64 2, !dbg !3810
  %74 = load i8*, i8** %73, align 8, !dbg !3810
  %75 = load i8**, i8*** %11, align 8, !dbg !3811
  %76 = getelementptr inbounds i8*, i8** %75, i64 3, !dbg !3811
  %77 = load i8*, i8** %76, align 8, !dbg !3811
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.122, i64 0, i64 0), i8* %68, i8* %71, i8* %74, i8* %77), !dbg !3812
  br label %229, !dbg !3813

79:                                               ; preds = %26
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3814
  %81 = load i8**, i8*** %11, align 8, !dbg !3815
  %82 = getelementptr inbounds i8*, i8** %81, i64 0, !dbg !3815
  %83 = load i8*, i8** %82, align 8, !dbg !3815
  %84 = load i8**, i8*** %11, align 8, !dbg !3816
  %85 = getelementptr inbounds i8*, i8** %84, i64 1, !dbg !3816
  %86 = load i8*, i8** %85, align 8, !dbg !3816
  %87 = load i8**, i8*** %11, align 8, !dbg !3817
  %88 = getelementptr inbounds i8*, i8** %87, i64 2, !dbg !3817
  %89 = load i8*, i8** %88, align 8, !dbg !3817
  %90 = load i8**, i8*** %11, align 8, !dbg !3818
  %91 = getelementptr inbounds i8*, i8** %90, i64 3, !dbg !3818
  %92 = load i8*, i8** %91, align 8, !dbg !3818
  %93 = load i8**, i8*** %11, align 8, !dbg !3819
  %94 = getelementptr inbounds i8*, i8** %93, i64 4, !dbg !3819
  %95 = load i8*, i8** %94, align 8, !dbg !3819
  %96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.123, i64 0, i64 0), i8* %83, i8* %86, i8* %89, i8* %92, i8* %95), !dbg !3820
  br label %229, !dbg !3821

97:                                               ; preds = %26
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3822
  %99 = load i8**, i8*** %11, align 8, !dbg !3823
  %100 = getelementptr inbounds i8*, i8** %99, i64 0, !dbg !3823
  %101 = load i8*, i8** %100, align 8, !dbg !3823
  %102 = load i8**, i8*** %11, align 8, !dbg !3824
  %103 = getelementptr inbounds i8*, i8** %102, i64 1, !dbg !3824
  %104 = load i8*, i8** %103, align 8, !dbg !3824
  %105 = load i8**, i8*** %11, align 8, !dbg !3825
  %106 = getelementptr inbounds i8*, i8** %105, i64 2, !dbg !3825
  %107 = load i8*, i8** %106, align 8, !dbg !3825
  %108 = load i8**, i8*** %11, align 8, !dbg !3826
  %109 = getelementptr inbounds i8*, i8** %108, i64 3, !dbg !3826
  %110 = load i8*, i8** %109, align 8, !dbg !3826
  %111 = load i8**, i8*** %11, align 8, !dbg !3827
  %112 = getelementptr inbounds i8*, i8** %111, i64 4, !dbg !3827
  %113 = load i8*, i8** %112, align 8, !dbg !3827
  %114 = load i8**, i8*** %11, align 8, !dbg !3828
  %115 = getelementptr inbounds i8*, i8** %114, i64 5, !dbg !3828
  %116 = load i8*, i8** %115, align 8, !dbg !3828
  %117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.124, i64 0, i64 0), i8* %101, i8* %104, i8* %107, i8* %110, i8* %113, i8* %116), !dbg !3829
  br label %229, !dbg !3830

118:                                              ; preds = %26
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3831
  %120 = load i8**, i8*** %11, align 8, !dbg !3832
  %121 = getelementptr inbounds i8*, i8** %120, i64 0, !dbg !3832
  %122 = load i8*, i8** %121, align 8, !dbg !3832
  %123 = load i8**, i8*** %11, align 8, !dbg !3833
  %124 = getelementptr inbounds i8*, i8** %123, i64 1, !dbg !3833
  %125 = load i8*, i8** %124, align 8, !dbg !3833
  %126 = load i8**, i8*** %11, align 8, !dbg !3834
  %127 = getelementptr inbounds i8*, i8** %126, i64 2, !dbg !3834
  %128 = load i8*, i8** %127, align 8, !dbg !3834
  %129 = load i8**, i8*** %11, align 8, !dbg !3835
  %130 = getelementptr inbounds i8*, i8** %129, i64 3, !dbg !3835
  %131 = load i8*, i8** %130, align 8, !dbg !3835
  %132 = load i8**, i8*** %11, align 8, !dbg !3836
  %133 = getelementptr inbounds i8*, i8** %132, i64 4, !dbg !3836
  %134 = load i8*, i8** %133, align 8, !dbg !3836
  %135 = load i8**, i8*** %11, align 8, !dbg !3837
  %136 = getelementptr inbounds i8*, i8** %135, i64 5, !dbg !3837
  %137 = load i8*, i8** %136, align 8, !dbg !3837
  %138 = load i8**, i8*** %11, align 8, !dbg !3838
  %139 = getelementptr inbounds i8*, i8** %138, i64 6, !dbg !3838
  %140 = load i8*, i8** %139, align 8, !dbg !3838
  %141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %119, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.125, i64 0, i64 0), i8* %122, i8* %125, i8* %128, i8* %131, i8* %134, i8* %137, i8* %140), !dbg !3839
  br label %229, !dbg !3840

142:                                              ; preds = %26
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3841
  %144 = load i8**, i8*** %11, align 8, !dbg !3842
  %145 = getelementptr inbounds i8*, i8** %144, i64 0, !dbg !3842
  %146 = load i8*, i8** %145, align 8, !dbg !3842
  %147 = load i8**, i8*** %11, align 8, !dbg !3843
  %148 = getelementptr inbounds i8*, i8** %147, i64 1, !dbg !3843
  %149 = load i8*, i8** %148, align 8, !dbg !3843
  %150 = load i8**, i8*** %11, align 8, !dbg !3844
  %151 = getelementptr inbounds i8*, i8** %150, i64 2, !dbg !3844
  %152 = load i8*, i8** %151, align 8, !dbg !3844
  %153 = load i8**, i8*** %11, align 8, !dbg !3845
  %154 = getelementptr inbounds i8*, i8** %153, i64 3, !dbg !3845
  %155 = load i8*, i8** %154, align 8, !dbg !3845
  %156 = load i8**, i8*** %11, align 8, !dbg !3846
  %157 = getelementptr inbounds i8*, i8** %156, i64 4, !dbg !3846
  %158 = load i8*, i8** %157, align 8, !dbg !3846
  %159 = load i8**, i8*** %11, align 8, !dbg !3847
  %160 = getelementptr inbounds i8*, i8** %159, i64 5, !dbg !3847
  %161 = load i8*, i8** %160, align 8, !dbg !3847
  %162 = load i8**, i8*** %11, align 8, !dbg !3848
  %163 = getelementptr inbounds i8*, i8** %162, i64 6, !dbg !3848
  %164 = load i8*, i8** %163, align 8, !dbg !3848
  %165 = load i8**, i8*** %11, align 8, !dbg !3849
  %166 = getelementptr inbounds i8*, i8** %165, i64 7, !dbg !3849
  %167 = load i8*, i8** %166, align 8, !dbg !3849
  %168 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %143, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.126, i64 0, i64 0), i8* %146, i8* %149, i8* %152, i8* %155, i8* %158, i8* %161, i8* %164, i8* %167), !dbg !3850
  br label %229, !dbg !3851

169:                                              ; preds = %26
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3852
  %171 = load i8**, i8*** %11, align 8, !dbg !3853
  %172 = getelementptr inbounds i8*, i8** %171, i64 0, !dbg !3853
  %173 = load i8*, i8** %172, align 8, !dbg !3853
  %174 = load i8**, i8*** %11, align 8, !dbg !3854
  %175 = getelementptr inbounds i8*, i8** %174, i64 1, !dbg !3854
  %176 = load i8*, i8** %175, align 8, !dbg !3854
  %177 = load i8**, i8*** %11, align 8, !dbg !3855
  %178 = getelementptr inbounds i8*, i8** %177, i64 2, !dbg !3855
  %179 = load i8*, i8** %178, align 8, !dbg !3855
  %180 = load i8**, i8*** %11, align 8, !dbg !3856
  %181 = getelementptr inbounds i8*, i8** %180, i64 3, !dbg !3856
  %182 = load i8*, i8** %181, align 8, !dbg !3856
  %183 = load i8**, i8*** %11, align 8, !dbg !3857
  %184 = getelementptr inbounds i8*, i8** %183, i64 4, !dbg !3857
  %185 = load i8*, i8** %184, align 8, !dbg !3857
  %186 = load i8**, i8*** %11, align 8, !dbg !3858
  %187 = getelementptr inbounds i8*, i8** %186, i64 5, !dbg !3858
  %188 = load i8*, i8** %187, align 8, !dbg !3858
  %189 = load i8**, i8*** %11, align 8, !dbg !3859
  %190 = getelementptr inbounds i8*, i8** %189, i64 6, !dbg !3859
  %191 = load i8*, i8** %190, align 8, !dbg !3859
  %192 = load i8**, i8*** %11, align 8, !dbg !3860
  %193 = getelementptr inbounds i8*, i8** %192, i64 7, !dbg !3860
  %194 = load i8*, i8** %193, align 8, !dbg !3860
  %195 = load i8**, i8*** %11, align 8, !dbg !3861
  %196 = getelementptr inbounds i8*, i8** %195, i64 8, !dbg !3861
  %197 = load i8*, i8** %196, align 8, !dbg !3861
  %198 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %170, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.127, i64 0, i64 0), i8* %173, i8* %176, i8* %179, i8* %182, i8* %185, i8* %188, i8* %191, i8* %194, i8* %197), !dbg !3862
  br label %229, !dbg !3863

199:                                              ; preds = %26
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3864
  %201 = load i8**, i8*** %11, align 8, !dbg !3865
  %202 = getelementptr inbounds i8*, i8** %201, i64 0, !dbg !3865
  %203 = load i8*, i8** %202, align 8, !dbg !3865
  %204 = load i8**, i8*** %11, align 8, !dbg !3866
  %205 = getelementptr inbounds i8*, i8** %204, i64 1, !dbg !3866
  %206 = load i8*, i8** %205, align 8, !dbg !3866
  %207 = load i8**, i8*** %11, align 8, !dbg !3867
  %208 = getelementptr inbounds i8*, i8** %207, i64 2, !dbg !3867
  %209 = load i8*, i8** %208, align 8, !dbg !3867
  %210 = load i8**, i8*** %11, align 8, !dbg !3868
  %211 = getelementptr inbounds i8*, i8** %210, i64 3, !dbg !3868
  %212 = load i8*, i8** %211, align 8, !dbg !3868
  %213 = load i8**, i8*** %11, align 8, !dbg !3869
  %214 = getelementptr inbounds i8*, i8** %213, i64 4, !dbg !3869
  %215 = load i8*, i8** %214, align 8, !dbg !3869
  %216 = load i8**, i8*** %11, align 8, !dbg !3870
  %217 = getelementptr inbounds i8*, i8** %216, i64 5, !dbg !3870
  %218 = load i8*, i8** %217, align 8, !dbg !3870
  %219 = load i8**, i8*** %11, align 8, !dbg !3871
  %220 = getelementptr inbounds i8*, i8** %219, i64 6, !dbg !3871
  %221 = load i8*, i8** %220, align 8, !dbg !3871
  %222 = load i8**, i8*** %11, align 8, !dbg !3872
  %223 = getelementptr inbounds i8*, i8** %222, i64 7, !dbg !3872
  %224 = load i8*, i8** %223, align 8, !dbg !3872
  %225 = load i8**, i8*** %11, align 8, !dbg !3873
  %226 = getelementptr inbounds i8*, i8** %225, i64 8, !dbg !3873
  %227 = load i8*, i8** %226, align 8, !dbg !3873
  %228 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %200, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.128, i64 0, i64 0), i8* %203, i8* %206, i8* %209, i8* %212, i8* %215, i8* %218, i8* %221, i8* %224, i8* %227), !dbg !3874
  br label %229, !dbg !3875

229:                                              ; preds = %199, %169, %142, %118, %97, %79, %64, %52, %43, %37, %36
  ret void, !dbg !3876
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** %4) #3 !dbg !3877 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3880, metadata !DIExpression()), !dbg !3881
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3882, metadata !DIExpression()), !dbg !3883
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3884, metadata !DIExpression()), !dbg !3885
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3886, metadata !DIExpression()), !dbg !3887
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !3888, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3890, metadata !DIExpression()), !dbg !3891
  store i64 0, i64* %11, align 8, !dbg !3892
  br label %12, !dbg !3894

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !3895
  %14 = load i64, i64* %11, align 8, !dbg !3897
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !3895
  %16 = load i8*, i8** %15, align 8, !dbg !3895
  %17 = icmp ne i8* %16, null, !dbg !3898
  br i1 %17, label %18, label %22, !dbg !3898

18:                                               ; preds = %12
  br label %19, !dbg !3898

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !3899
  %21 = add i64 %20, 1, !dbg !3899
  store i64 %21, i64* %11, align 8, !dbg !3899
  br label %12, !dbg !3900, !llvm.loop !3901

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3903
  %24 = load i8*, i8** %7, align 8, !dbg !3904
  %25 = load i8*, i8** %8, align 8, !dbg !3905
  %26 = load i8*, i8** %9, align 8, !dbg !3906
  %27 = load i8**, i8*** %10, align 8, !dbg !3907
  %28 = load i64, i64* %11, align 8, !dbg !3908
  call void @version_etc_arn(%struct._IO_FILE* %23, i8* %24, i8* %25, i8* %26, i8** %27, i64 %28), !dbg !3909
  ret void, !dbg !3910
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* %4) #3 !dbg !3911 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.__va_list_tag*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [10 x i8*], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3921, metadata !DIExpression()), !dbg !3922
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3923, metadata !DIExpression()), !dbg !3924
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3925, metadata !DIExpression()), !dbg !3926
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3927, metadata !DIExpression()), !dbg !3928
  store %struct.__va_list_tag* %4, %struct.__va_list_tag** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %10, metadata !3929, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3931, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.declare(metadata [10 x i8*]* %12, metadata !3933, metadata !DIExpression()), !dbg !3935
  store i64 0, i64* %11, align 8, !dbg !3936
  br label %13, !dbg !3938

13:                                               ; preds = %41, %5
  %14 = load i64, i64* %11, align 8, !dbg !3939
  %15 = icmp ult i64 %14, 10, !dbg !3941
  br i1 %15, label %16, label %38, !dbg !3942

16:                                               ; preds = %13
  %17 = load %struct.__va_list_tag*, %struct.__va_list_tag** %10, align 8, !dbg !3943
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %17, i32 0, i32 0, !dbg !3943
  %19 = load i32, i32* %18, align 8, !dbg !3943
  %20 = icmp ule i32 %19, 40, !dbg !3943
  br i1 %20, label %21, label %27, !dbg !3943

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %17, i32 0, i32 3, !dbg !3943
  %23 = load i8*, i8** %22, align 8, !dbg !3943
  %24 = getelementptr i8, i8* %23, i32 %19, !dbg !3943
  %25 = bitcast i8* %24 to i8**, !dbg !3943
  %26 = add i32 %19, 8, !dbg !3943
  store i32 %26, i32* %18, align 8, !dbg !3943
  br label %32, !dbg !3943

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %17, i32 0, i32 2, !dbg !3943
  %29 = load i8*, i8** %28, align 8, !dbg !3943
  %30 = bitcast i8* %29 to i8**, !dbg !3943
  %31 = getelementptr i8, i8* %29, i32 8, !dbg !3943
  store i8* %31, i8** %28, align 8, !dbg !3943
  br label %32, !dbg !3943

32:                                               ; preds = %27, %21
  %33 = phi i8** [ %25, %21 ], [ %30, %27 ], !dbg !3943
  %34 = load i8*, i8** %33, align 8, !dbg !3943
  %35 = load i64, i64* %11, align 8, !dbg !3944
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %12, i64 0, i64 %35, !dbg !3945
  store i8* %34, i8** %36, align 8, !dbg !3946
  %37 = icmp ne i8* %34, null, !dbg !3947
  br label %38

38:                                               ; preds = %32, %13
  %39 = phi i1 [ false, %13 ], [ %37, %32 ], !dbg !3948
  br i1 %39, label %40, label %44, !dbg !3949

40:                                               ; preds = %38
  br label %41, !dbg !3949

41:                                               ; preds = %40
  %42 = load i64, i64* %11, align 8, !dbg !3950
  %43 = add i64 %42, 1, !dbg !3950
  store i64 %43, i64* %11, align 8, !dbg !3950
  br label %13, !dbg !3951, !llvm.loop !3952

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3954
  %46 = load i8*, i8** %7, align 8, !dbg !3955
  %47 = load i8*, i8** %8, align 8, !dbg !3956
  %48 = load i8*, i8** %9, align 8, !dbg !3957
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %12, i64 0, i64 0, !dbg !3958
  %50 = load i64, i64* %11, align 8, !dbg !3959
  call void @version_etc_arn(%struct._IO_FILE* %45, i8* %46, i8* %47, i8* %48, i8** %49, i64 %50), !dbg !3960
  ret void, !dbg !3961
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) #3 !dbg !3962 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3965, metadata !DIExpression()), !dbg !3966
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3967, metadata !DIExpression()), !dbg !3968
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3969, metadata !DIExpression()), !dbg !3970
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3971, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %9, metadata !3973, metadata !DIExpression()), !dbg !3979
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0, !dbg !3980
  %11 = bitcast %struct.__va_list_tag* %10 to i8*, !dbg !3980
  call void @llvm.va_start(i8* %11), !dbg !3980
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3981
  %13 = load i8*, i8** %6, align 8, !dbg !3982
  %14 = load i8*, i8** %7, align 8, !dbg !3983
  %15 = load i8*, i8** %8, align 8, !dbg !3984
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0, !dbg !3985
  call void @version_etc_va(%struct._IO_FILE* %12, i8* %13, i8* %14, i8* %15, %struct.__va_list_tag* %16), !dbg !3986
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0, !dbg !3987
  %18 = bitcast %struct.__va_list_tag* %17 to i8*, !dbg !3987
  call void @llvm.va_end(i8* %18), !dbg !3987
  ret void, !dbg !3988
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #11

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #11

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #3 !dbg !3989 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3990
  %2 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.116, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3990
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.131, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.132, i64 0, i64 0)), !dbg !3991
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.133, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.134, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.135, i64 0, i64 0)), !dbg !3992
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.136, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.137, i64 0, i64 0)), !dbg !3993
  ret void, !dbg !3994
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) #3 !dbg !3995 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3998, metadata !DIExpression()), !dbg !3999
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4000, metadata !DIExpression()), !dbg !4001
  %5 = load i64, i64* %4, align 8, !dbg !4002
  %6 = udiv i64 9223372036854775807, %5, !dbg !4002
  %7 = load i64, i64* %3, align 8, !dbg !4002
  %8 = icmp ult i64 %6, %7, !dbg !4002
  br i1 %8, label %9, label %10, !dbg !4004

9:                                                ; preds = %2
  call void @xalloc_die() #16, !dbg !4005
  unreachable, !dbg !4005

10:                                               ; preds = %2
  %11 = load i64, i64* %3, align 8, !dbg !4006
  %12 = load i64, i64* %4, align 8, !dbg !4007
  %13 = mul i64 %11, %12, !dbg !4008
  %14 = call noalias i8* @xmalloc(i64 %13), !dbg !4009
  ret i8* %14, !dbg !4010
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @xmalloc(i64 %0) #3 !dbg !4011 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4014, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4016, metadata !DIExpression()), !dbg !4017
  %4 = load i64, i64* %2, align 8, !dbg !4018
  %5 = call noalias i8* @malloc(i64 %4) #15, !dbg !4019
  store i8* %5, i8** %3, align 8, !dbg !4017
  %6 = load i8*, i8** %3, align 8, !dbg !4020
  %7 = icmp ne i8* %6, null, !dbg !4020
  br i1 %7, label %12, label %8, !dbg !4022

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8, !dbg !4023
  %10 = icmp ne i64 %9, 0, !dbg !4024
  br i1 %10, label %11, label %12, !dbg !4025

11:                                               ; preds = %8
  call void @xalloc_die() #16, !dbg !4026
  unreachable, !dbg !4026

12:                                               ; preds = %8, %1
  %13 = load i8*, i8** %3, align 8, !dbg !4027
  ret i8* %13, !dbg !4028
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xnrealloc(i8* %0, i64 %1, i64 %2) #3 !dbg !4029 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4032, metadata !DIExpression()), !dbg !4033
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4034, metadata !DIExpression()), !dbg !4035
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4036, metadata !DIExpression()), !dbg !4037
  %7 = load i64, i64* %6, align 8, !dbg !4038
  %8 = udiv i64 9223372036854775807, %7, !dbg !4038
  %9 = load i64, i64* %5, align 8, !dbg !4038
  %10 = icmp ult i64 %8, %9, !dbg !4038
  br i1 %10, label %11, label %12, !dbg !4040

11:                                               ; preds = %3
  call void @xalloc_die() #16, !dbg !4041
  unreachable, !dbg !4041

12:                                               ; preds = %3
  %13 = load i8*, i8** %4, align 8, !dbg !4042
  %14 = load i64, i64* %5, align 8, !dbg !4043
  %15 = load i64, i64* %6, align 8, !dbg !4044
  %16 = mul i64 %14, %15, !dbg !4045
  %17 = call i8* @xrealloc(i8* %13, i64 %16), !dbg !4046
  ret i8* %17, !dbg !4047
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xrealloc(i8* %0, i64 %1) #3 !dbg !4048 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4051, metadata !DIExpression()), !dbg !4052
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4053, metadata !DIExpression()), !dbg !4054
  %6 = load i64, i64* %5, align 8, !dbg !4055
  %7 = icmp ne i64 %6, 0, !dbg !4055
  br i1 %7, label %13, label %8, !dbg !4057

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !4058
  %10 = icmp ne i8* %9, null, !dbg !4058
  br i1 %10, label %11, label %13, !dbg !4059

11:                                               ; preds = %8
  %12 = load i8*, i8** %4, align 8, !dbg !4060
  call void @free(i8* %12) #15, !dbg !4062
  store i8* null, i8** %3, align 8, !dbg !4063
  br label %25, !dbg !4063

13:                                               ; preds = %8, %2
  %14 = load i8*, i8** %4, align 8, !dbg !4064
  %15 = load i64, i64* %5, align 8, !dbg !4065
  %16 = call i8* @realloc(i8* %14, i64 %15) #15, !dbg !4066
  store i8* %16, i8** %4, align 8, !dbg !4067
  %17 = load i8*, i8** %4, align 8, !dbg !4068
  %18 = icmp ne i8* %17, null, !dbg !4068
  br i1 %18, label %23, label %19, !dbg !4070

19:                                               ; preds = %13
  %20 = load i64, i64* %5, align 8, !dbg !4071
  %21 = icmp ne i64 %20, 0, !dbg !4071
  br i1 %21, label %22, label %23, !dbg !4072

22:                                               ; preds = %19
  call void @xalloc_die() #16, !dbg !4073
  unreachable, !dbg !4073

23:                                               ; preds = %19, %13
  %24 = load i8*, i8** %4, align 8, !dbg !4074
  store i8* %24, i8** %3, align 8, !dbg !4075
  br label %25, !dbg !4075

25:                                               ; preds = %23, %11
  %26 = load i8*, i8** %3, align 8, !dbg !4076
  ret i8* %26, !dbg !4076
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @x2nrealloc(i8* %0, i64* %1, i64 %2) #3 !dbg !244 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4077, metadata !DIExpression()), !dbg !4078
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !4079, metadata !DIExpression()), !dbg !4080
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4081, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4083, metadata !DIExpression()), !dbg !4084
  %8 = load i64*, i64** %5, align 8, !dbg !4085
  %9 = load i64, i64* %8, align 8, !dbg !4086
  store i64 %9, i64* %7, align 8, !dbg !4084
  %10 = load i8*, i8** %4, align 8, !dbg !4087
  %11 = icmp ne i8* %10, null, !dbg !4087
  br i1 %11, label %32, label %12, !dbg !4089

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !4090
  %14 = icmp ne i64 %13, 0, !dbg !4090
  br i1 %14, label %25, label %15, !dbg !4093

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !4094
  %17 = udiv i64 128, %16, !dbg !4096
  store i64 %17, i64* %7, align 8, !dbg !4097
  %18 = load i64, i64* %7, align 8, !dbg !4098
  %19 = icmp ne i64 %18, 0, !dbg !4099
  %20 = xor i1 %19, true, !dbg !4099
  %21 = zext i1 %20 to i32, !dbg !4099
  %22 = sext i32 %21 to i64, !dbg !4099
  %23 = load i64, i64* %7, align 8, !dbg !4100
  %24 = add i64 %23, %22, !dbg !4100
  store i64 %24, i64* %7, align 8, !dbg !4100
  br label %25, !dbg !4101

25:                                               ; preds = %15, %12
  %26 = load i64, i64* %6, align 8, !dbg !4102
  %27 = udiv i64 9223372036854775807, %26, !dbg !4102
  %28 = load i64, i64* %7, align 8, !dbg !4102
  %29 = icmp ult i64 %27, %28, !dbg !4102
  br i1 %29, label %30, label %31, !dbg !4104

30:                                               ; preds = %25
  call void @xalloc_die() #16, !dbg !4105
  unreachable, !dbg !4105

31:                                               ; preds = %25
  br label %44, !dbg !4106

32:                                               ; preds = %3
  %33 = load i64, i64* %6, align 8, !dbg !4107
  %34 = udiv i64 6148914691236517204, %33, !dbg !4110
  %35 = load i64, i64* %7, align 8, !dbg !4111
  %36 = icmp ule i64 %34, %35, !dbg !4112
  br i1 %36, label %37, label %38, !dbg !4113

37:                                               ; preds = %32
  call void @xalloc_die() #16, !dbg !4114
  unreachable, !dbg !4114

38:                                               ; preds = %32
  %39 = load i64, i64* %7, align 8, !dbg !4115
  %40 = udiv i64 %39, 2, !dbg !4116
  %41 = add i64 %40, 1, !dbg !4117
  %42 = load i64, i64* %7, align 8, !dbg !4118
  %43 = add i64 %42, %41, !dbg !4118
  store i64 %43, i64* %7, align 8, !dbg !4118
  br label %44

44:                                               ; preds = %38, %31
  %45 = load i64, i64* %7, align 8, !dbg !4119
  %46 = load i64*, i64** %5, align 8, !dbg !4120
  store i64 %45, i64* %46, align 8, !dbg !4121
  %47 = load i8*, i8** %4, align 8, !dbg !4122
  %48 = load i64, i64* %7, align 8, !dbg !4123
  %49 = load i64, i64* %6, align 8, !dbg !4124
  %50 = mul i64 %48, %49, !dbg !4125
  %51 = call i8* @xrealloc(i8* %47, i64 %50), !dbg !4126
  ret i8* %51, !dbg !4127
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) #3 !dbg !4128 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4131, metadata !DIExpression()), !dbg !4132
  %3 = load i64, i64* %2, align 8, !dbg !4133
  %4 = call noalias i8* @xmalloc(i64 %3), !dbg !4133
  ret i8* %4, !dbg !4134
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @x2realloc(i8* %0, i64* %1) #3 !dbg !4135 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4138, metadata !DIExpression()), !dbg !4139
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4140, metadata !DIExpression()), !dbg !4141
  %5 = load i8*, i8** %3, align 8, !dbg !4142
  %6 = load i64*, i64** %4, align 8, !dbg !4143
  %7 = call i8* @x2nrealloc(i8* %5, i64* %6, i64 1), !dbg !4144
  ret i8* %7, !dbg !4145
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @xzalloc(i64 %0) #3 !dbg !4146 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4147, metadata !DIExpression()), !dbg !4148
  %3 = load i64, i64* %2, align 8, !dbg !4149
  %4 = call noalias i8* @xcalloc(i64 %3, i64 1), !dbg !4150
  ret i8* %4, !dbg !4151
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) #3 !dbg !4152 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4153, metadata !DIExpression()), !dbg !4154
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4155, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4157, metadata !DIExpression()), !dbg !4158
  %6 = load i64, i64* %4, align 8, !dbg !4159
  %7 = udiv i64 9223372036854775807, %6, !dbg !4159
  %8 = load i64, i64* %3, align 8, !dbg !4159
  %9 = icmp ult i64 %7, %8, !dbg !4159
  br i1 %9, label %15, label %10, !dbg !4161

10:                                               ; preds = %2
  %11 = load i64, i64* %3, align 8, !dbg !4162
  %12 = load i64, i64* %4, align 8, !dbg !4163
  %13 = call noalias i8* @calloc(i64 %11, i64 %12) #15, !dbg !4164
  store i8* %13, i8** %5, align 8, !dbg !4165
  %14 = icmp ne i8* %13, null, !dbg !4165
  br i1 %14, label %16, label %15, !dbg !4166

15:                                               ; preds = %10, %2
  call void @xalloc_die() #16, !dbg !4167
  unreachable, !dbg !4167

16:                                               ; preds = %10
  %17 = load i8*, i8** %5, align 8, !dbg !4168
  ret i8* %17, !dbg !4169
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) #3 !dbg !4170 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4175, metadata !DIExpression()), !dbg !4176
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4177, metadata !DIExpression()), !dbg !4178
  %5 = load i64, i64* %4, align 8, !dbg !4179
  %6 = call noalias i8* @xmalloc(i64 %5), !dbg !4180
  %7 = load i8*, i8** %3, align 8, !dbg !4181
  %8 = load i64, i64* %4, align 8, !dbg !4182
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !4183
  ret i8* %6, !dbg !4184
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @xstrdup(i8* %0) #3 !dbg !4185 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4186, metadata !DIExpression()), !dbg !4187
  %3 = load i8*, i8** %2, align 8, !dbg !4188
  %4 = load i8*, i8** %2, align 8, !dbg !4189
  %5 = call i64 @strlen(i8* %4) #14, !dbg !4190
  %6 = add i64 %5, 1, !dbg !4191
  %7 = call i8* @xmemdup(i8* %3, i64 %6), !dbg !4192
  ret i8* %7, !dbg !4193
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !4194 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4195
  call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.150, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.151, i64 0, i64 0)), !dbg !4196
  call void @abort() #13, !dbg !4197
  unreachable, !dbg !4197
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xgetgroups(i8* %0, i32 %1, i32** %2) #3 !dbg !4198 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4199, metadata !DIExpression()), !dbg !4200
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4201, metadata !DIExpression()), !dbg !4202
  store i32** %2, i32*** %6, align 8
  call void @llvm.dbg.declare(metadata i32*** %6, metadata !4203, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4205, metadata !DIExpression()), !dbg !4206
  %8 = load i8*, i8** %4, align 8, !dbg !4207
  %9 = load i32, i32* %5, align 4, !dbg !4208
  %10 = load i32**, i32*** %6, align 8, !dbg !4209
  %11 = call i32 @mgetgroups(i8* %8, i32 %9, i32** %10), !dbg !4210
  store i32 %11, i32* %7, align 4, !dbg !4206
  %12 = load i32, i32* %7, align 4, !dbg !4211
  %13 = icmp eq i32 %12, -1, !dbg !4213
  br i1 %13, label %14, label %19, !dbg !4214

14:                                               ; preds = %3
  %15 = call i32* @__errno_location() #17, !dbg !4215
  %16 = load i32, i32* %15, align 4, !dbg !4215
  %17 = icmp eq i32 %16, 12, !dbg !4216
  br i1 %17, label %18, label %19, !dbg !4217

18:                                               ; preds = %14
  call void @xalloc_die() #16, !dbg !4218
  unreachable, !dbg !4218

19:                                               ; preds = %14, %3
  %20 = load i32, i32* %7, align 4, !dbg !4219
  ret i32 %20, !dbg !4220
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xstrtoul(i8* %0, i8** %1, i32 %2, i64* %3, i8* %4) #3 !dbg !4221 {
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
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4227, metadata !DIExpression()), !dbg !4228
  store i8** %1, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !4229, metadata !DIExpression()), !dbg !4230
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4231, metadata !DIExpression()), !dbg !4232
  store i64* %3, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !4233, metadata !DIExpression()), !dbg !4234
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !4235, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.declare(metadata i8** %12, metadata !4237, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.declare(metadata i8*** %13, metadata !4239, metadata !DIExpression()), !dbg !4240
  call void @llvm.dbg.declare(metadata i64* %14, metadata !4241, metadata !DIExpression()), !dbg !4242
  call void @llvm.dbg.declare(metadata i32* %15, metadata !4243, metadata !DIExpression()), !dbg !4244
  store i32 0, i32* %15, align 4, !dbg !4244
  %21 = load i32, i32* %9, align 4, !dbg !4245
  %22 = icmp sle i32 0, %21, !dbg !4245
  br i1 %22, label %23, label %27, !dbg !4245

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4, !dbg !4245
  %25 = icmp sle i32 %24, 36, !dbg !4245
  br i1 %25, label %26, label %27, !dbg !4248

26:                                               ; preds = %23
  br label %28, !dbg !4248

27:                                               ; preds = %23, %5
  call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.156, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.157, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.xstrtoul, i64 0, i64 0)) #13, !dbg !4245
  unreachable, !dbg !4245

28:                                               ; preds = %26
  %29 = load i8**, i8*** %8, align 8, !dbg !4249
  %30 = icmp ne i8** %29, null, !dbg !4249
  br i1 %30, label %31, label %33, !dbg !4249

31:                                               ; preds = %28
  %32 = load i8**, i8*** %8, align 8, !dbg !4250
  br label %34, !dbg !4249

33:                                               ; preds = %28
  br label %34, !dbg !4249

34:                                               ; preds = %33, %31
  %35 = phi i8** [ %32, %31 ], [ %12, %33 ], !dbg !4249
  store i8** %35, i8*** %13, align 8, !dbg !4251
  %36 = call i32* @__errno_location() #17, !dbg !4252
  store i32 0, i32* %36, align 4, !dbg !4253
  call void @llvm.dbg.declare(metadata i8** %16, metadata !4254, metadata !DIExpression()), !dbg !4257
  %37 = load i8*, i8** %7, align 8, !dbg !4258
  store i8* %37, i8** %16, align 8, !dbg !4257
  call void @llvm.dbg.declare(metadata i8* %17, metadata !4259, metadata !DIExpression()), !dbg !4260
  %38 = load i8*, i8** %16, align 8, !dbg !4261
  %39 = load i8, i8* %38, align 1, !dbg !4262
  store i8 %39, i8* %17, align 1, !dbg !4260
  br label %40, !dbg !4263

40:                                               ; preds = %51, %34
  %41 = call i16** @__ctype_b_loc() #17, !dbg !4264
  %42 = load i16*, i16** %41, align 8, !dbg !4264
  %43 = load i8, i8* %17, align 1, !dbg !4264
  %44 = zext i8 %43 to i32, !dbg !4264
  %45 = sext i32 %44 to i64, !dbg !4264
  %46 = getelementptr inbounds i16, i16* %42, i64 %45, !dbg !4264
  %47 = load i16, i16* %46, align 2, !dbg !4264
  %48 = zext i16 %47 to i32, !dbg !4264
  %49 = and i32 %48, 8192, !dbg !4264
  %50 = icmp ne i32 %49, 0, !dbg !4263
  br i1 %50, label %51, label %55, !dbg !4263

51:                                               ; preds = %40
  %52 = load i8*, i8** %16, align 8, !dbg !4265
  %53 = getelementptr inbounds i8, i8* %52, i32 1, !dbg !4265
  store i8* %53, i8** %16, align 8, !dbg !4265
  %54 = load i8, i8* %53, align 1, !dbg !4266
  store i8 %54, i8* %17, align 1, !dbg !4267
  br label %40, !dbg !4263, !llvm.loop !4268

55:                                               ; preds = %40
  %56 = load i8, i8* %17, align 1, !dbg !4270
  %57 = zext i8 %56 to i32, !dbg !4270
  %58 = icmp eq i32 %57, 45, !dbg !4272
  br i1 %58, label %59, label %60, !dbg !4273

59:                                               ; preds = %55
  store i32 4, i32* %6, align 4, !dbg !4274
  br label %221, !dbg !4274

60:                                               ; preds = %55
  %61 = load i8*, i8** %7, align 8, !dbg !4275
  %62 = load i8**, i8*** %13, align 8, !dbg !4276
  %63 = load i32, i32* %9, align 4, !dbg !4277
  %64 = call i64 @strtoul(i8* %61, i8** %62, i32 %63) #15, !dbg !4278
  store i64 %64, i64* %14, align 8, !dbg !4279
  %65 = load i8**, i8*** %13, align 8, !dbg !4280
  %66 = load i8*, i8** %65, align 8, !dbg !4282
  %67 = load i8*, i8** %7, align 8, !dbg !4283
  %68 = icmp eq i8* %66, %67, !dbg !4284
  br i1 %68, label %69, label %89, !dbg !4285

69:                                               ; preds = %60
  %70 = load i8*, i8** %11, align 8, !dbg !4286
  %71 = icmp ne i8* %70, null, !dbg !4286
  br i1 %71, label %72, label %87, !dbg !4289

72:                                               ; preds = %69
  %73 = load i8**, i8*** %13, align 8, !dbg !4290
  %74 = load i8*, i8** %73, align 8, !dbg !4291
  %75 = load i8, i8* %74, align 1, !dbg !4292
  %76 = sext i8 %75 to i32, !dbg !4292
  %77 = icmp ne i32 %76, 0, !dbg !4292
  br i1 %77, label %78, label %87, !dbg !4293

78:                                               ; preds = %72
  %79 = load i8*, i8** %11, align 8, !dbg !4294
  %80 = load i8**, i8*** %13, align 8, !dbg !4295
  %81 = load i8*, i8** %80, align 8, !dbg !4296
  %82 = load i8, i8* %81, align 1, !dbg !4297
  %83 = sext i8 %82 to i32, !dbg !4297
  %84 = call i8* @strchr(i8* %79, i32 %83) #14, !dbg !4298
  %85 = icmp ne i8* %84, null, !dbg !4298
  br i1 %85, label %86, label %87, !dbg !4299

86:                                               ; preds = %78
  store i64 1, i64* %14, align 8, !dbg !4300
  br label %88, !dbg !4301

87:                                               ; preds = %78, %72, %69
  store i32 4, i32* %6, align 4, !dbg !4302
  br label %221, !dbg !4302

88:                                               ; preds = %86
  br label %100, !dbg !4303

89:                                               ; preds = %60
  %90 = call i32* @__errno_location() #17, !dbg !4304
  %91 = load i32, i32* %90, align 4, !dbg !4304
  %92 = icmp ne i32 %91, 0, !dbg !4306
  br i1 %92, label %93, label %99, !dbg !4307

93:                                               ; preds = %89
  %94 = call i32* @__errno_location() #17, !dbg !4308
  %95 = load i32, i32* %94, align 4, !dbg !4308
  %96 = icmp ne i32 %95, 34, !dbg !4311
  br i1 %96, label %97, label %98, !dbg !4312

97:                                               ; preds = %93
  store i32 4, i32* %6, align 4, !dbg !4313
  br label %221, !dbg !4313

98:                                               ; preds = %93
  store i32 1, i32* %15, align 4, !dbg !4314
  br label %99, !dbg !4315

99:                                               ; preds = %98, %89
  br label %100

100:                                              ; preds = %99, %88
  %101 = load i8*, i8** %11, align 8, !dbg !4316
  %102 = icmp ne i8* %101, null, !dbg !4316
  br i1 %102, label %107, label %103, !dbg !4318

103:                                              ; preds = %100
  %104 = load i64, i64* %14, align 8, !dbg !4319
  %105 = load i64*, i64** %10, align 8, !dbg !4321
  store i64 %104, i64* %105, align 8, !dbg !4322
  %106 = load i32, i32* %15, align 4, !dbg !4323
  store i32 %106, i32* %6, align 4, !dbg !4324
  br label %221, !dbg !4324

107:                                              ; preds = %100
  %108 = load i8**, i8*** %13, align 8, !dbg !4325
  %109 = load i8*, i8** %108, align 8, !dbg !4327
  %110 = load i8, i8* %109, align 1, !dbg !4328
  %111 = sext i8 %110 to i32, !dbg !4328
  %112 = icmp ne i32 %111, 0, !dbg !4329
  br i1 %112, label %113, label %217, !dbg !4330

113:                                              ; preds = %107
  call void @llvm.dbg.declare(metadata i32* %18, metadata !4331, metadata !DIExpression()), !dbg !4333
  store i32 1024, i32* %18, align 4, !dbg !4333
  call void @llvm.dbg.declare(metadata i32* %19, metadata !4334, metadata !DIExpression()), !dbg !4335
  store i32 1, i32* %19, align 4, !dbg !4335
  call void @llvm.dbg.declare(metadata i32* %20, metadata !4336, metadata !DIExpression()), !dbg !4337
  %114 = load i8*, i8** %11, align 8, !dbg !4338
  %115 = load i8**, i8*** %13, align 8, !dbg !4340
  %116 = load i8*, i8** %115, align 8, !dbg !4341
  %117 = load i8, i8* %116, align 1, !dbg !4342
  %118 = sext i8 %117 to i32, !dbg !4342
  %119 = call i8* @strchr(i8* %114, i32 %118) #14, !dbg !4343
  %120 = icmp ne i8* %119, null, !dbg !4343
  br i1 %120, label %126, label %121, !dbg !4344

121:                                              ; preds = %113
  %122 = load i64, i64* %14, align 8, !dbg !4345
  %123 = load i64*, i64** %10, align 8, !dbg !4347
  store i64 %122, i64* %123, align 8, !dbg !4348
  %124 = load i32, i32* %15, align 4, !dbg !4349
  %125 = or i32 %124, 2, !dbg !4350
  store i32 %125, i32* %6, align 4, !dbg !4351
  br label %221, !dbg !4351

126:                                              ; preds = %113
  %127 = load i8**, i8*** %13, align 8, !dbg !4352
  %128 = load i8*, i8** %127, align 8, !dbg !4353
  %129 = load i8, i8* %128, align 1, !dbg !4354
  %130 = sext i8 %129 to i32, !dbg !4354
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
  ], !dbg !4355

131:                                              ; preds = %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126
  %132 = load i8*, i8** %11, align 8, !dbg !4356
  %133 = call i8* @strchr(i8* %132, i32 48) #14, !dbg !4359
  %134 = icmp ne i8* %133, null, !dbg !4359
  br i1 %134, label %135, label %158, !dbg !4360

135:                                              ; preds = %131
  %136 = load i8**, i8*** %13, align 8, !dbg !4361
  %137 = getelementptr inbounds i8*, i8** %136, i64 0, !dbg !4361
  %138 = load i8*, i8** %137, align 8, !dbg !4361
  %139 = getelementptr inbounds i8, i8* %138, i64 1, !dbg !4361
  %140 = load i8, i8* %139, align 1, !dbg !4361
  %141 = sext i8 %140 to i32, !dbg !4361
  switch i32 %141, label %157 [
    i32 105, label %142
    i32 66, label %154
    i32 68, label %154
  ], !dbg !4362

142:                                              ; preds = %135
  %143 = load i8**, i8*** %13, align 8, !dbg !4363
  %144 = getelementptr inbounds i8*, i8** %143, i64 0, !dbg !4363
  %145 = load i8*, i8** %144, align 8, !dbg !4363
  %146 = getelementptr inbounds i8, i8* %145, i64 2, !dbg !4363
  %147 = load i8, i8* %146, align 1, !dbg !4363
  %148 = sext i8 %147 to i32, !dbg !4363
  %149 = icmp eq i32 %148, 66, !dbg !4366
  br i1 %149, label %150, label %153, !dbg !4367

150:                                              ; preds = %142
  %151 = load i32, i32* %19, align 4, !dbg !4368
  %152 = add nsw i32 %151, 2, !dbg !4368
  store i32 %152, i32* %19, align 4, !dbg !4368
  br label %153, !dbg !4369

153:                                              ; preds = %150, %142
  br label %157, !dbg !4370

154:                                              ; preds = %135, %135
  store i32 1000, i32* %18, align 4, !dbg !4371
  %155 = load i32, i32* %19, align 4, !dbg !4372
  %156 = add nsw i32 %155, 1, !dbg !4372
  store i32 %156, i32* %19, align 4, !dbg !4372
  br label %157, !dbg !4373

157:                                              ; preds = %135, %154, %153
  br label %158, !dbg !4374

158:                                              ; preds = %157, %131
  br label %159, !dbg !4375

159:                                              ; preds = %158, %126
  %160 = load i8**, i8*** %13, align 8, !dbg !4376
  %161 = load i8*, i8** %160, align 8, !dbg !4377
  %162 = load i8, i8* %161, align 1, !dbg !4378
  %163 = sext i8 %162 to i32, !dbg !4378
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
  ], !dbg !4379

164:                                              ; preds = %159
  %165 = call i32 @bkm_scale(i64* %14, i32 512), !dbg !4380
  store i32 %165, i32* %20, align 4, !dbg !4382
  br label %200, !dbg !4383

166:                                              ; preds = %159
  %167 = call i32 @bkm_scale(i64* %14, i32 1024), !dbg !4384
  store i32 %167, i32* %20, align 4, !dbg !4385
  br label %200, !dbg !4386

168:                                              ; preds = %159
  store i32 0, i32* %20, align 4, !dbg !4387
  br label %200, !dbg !4388

169:                                              ; preds = %159
  %170 = load i32, i32* %18, align 4, !dbg !4389
  %171 = call i32 @bkm_scale_by_power(i64* %14, i32 %170, i32 6), !dbg !4390
  store i32 %171, i32* %20, align 4, !dbg !4391
  br label %200, !dbg !4392

172:                                              ; preds = %159, %159
  %173 = load i32, i32* %18, align 4, !dbg !4393
  %174 = call i32 @bkm_scale_by_power(i64* %14, i32 %173, i32 3), !dbg !4394
  store i32 %174, i32* %20, align 4, !dbg !4395
  br label %200, !dbg !4396

175:                                              ; preds = %159, %159
  %176 = load i32, i32* %18, align 4, !dbg !4397
  %177 = call i32 @bkm_scale_by_power(i64* %14, i32 %176, i32 1), !dbg !4398
  store i32 %177, i32* %20, align 4, !dbg !4399
  br label %200, !dbg !4400

178:                                              ; preds = %159, %159
  %179 = load i32, i32* %18, align 4, !dbg !4401
  %180 = call i32 @bkm_scale_by_power(i64* %14, i32 %179, i32 2), !dbg !4402
  store i32 %180, i32* %20, align 4, !dbg !4403
  br label %200, !dbg !4404

181:                                              ; preds = %159
  %182 = load i32, i32* %18, align 4, !dbg !4405
  %183 = call i32 @bkm_scale_by_power(i64* %14, i32 %182, i32 5), !dbg !4406
  store i32 %183, i32* %20, align 4, !dbg !4407
  br label %200, !dbg !4408

184:                                              ; preds = %159, %159
  %185 = load i32, i32* %18, align 4, !dbg !4409
  %186 = call i32 @bkm_scale_by_power(i64* %14, i32 %185, i32 4), !dbg !4410
  store i32 %186, i32* %20, align 4, !dbg !4411
  br label %200, !dbg !4412

187:                                              ; preds = %159
  %188 = call i32 @bkm_scale(i64* %14, i32 2), !dbg !4413
  store i32 %188, i32* %20, align 4, !dbg !4414
  br label %200, !dbg !4415

189:                                              ; preds = %159
  %190 = load i32, i32* %18, align 4, !dbg !4416
  %191 = call i32 @bkm_scale_by_power(i64* %14, i32 %190, i32 8), !dbg !4417
  store i32 %191, i32* %20, align 4, !dbg !4418
  br label %200, !dbg !4419

192:                                              ; preds = %159
  %193 = load i32, i32* %18, align 4, !dbg !4420
  %194 = call i32 @bkm_scale_by_power(i64* %14, i32 %193, i32 7), !dbg !4421
  store i32 %194, i32* %20, align 4, !dbg !4422
  br label %200, !dbg !4423

195:                                              ; preds = %159
  %196 = load i64, i64* %14, align 8, !dbg !4424
  %197 = load i64*, i64** %10, align 8, !dbg !4425
  store i64 %196, i64* %197, align 8, !dbg !4426
  %198 = load i32, i32* %15, align 4, !dbg !4427
  %199 = or i32 %198, 2, !dbg !4428
  store i32 %199, i32* %6, align 4, !dbg !4429
  br label %221, !dbg !4429

200:                                              ; preds = %192, %189, %187, %184, %181, %178, %175, %172, %169, %168, %166, %164
  %201 = load i32, i32* %20, align 4, !dbg !4430
  %202 = load i32, i32* %15, align 4, !dbg !4431
  %203 = or i32 %202, %201, !dbg !4431
  store i32 %203, i32* %15, align 4, !dbg !4431
  %204 = load i32, i32* %19, align 4, !dbg !4432
  %205 = load i8**, i8*** %13, align 8, !dbg !4433
  %206 = load i8*, i8** %205, align 8, !dbg !4434
  %207 = sext i32 %204 to i64, !dbg !4434
  %208 = getelementptr inbounds i8, i8* %206, i64 %207, !dbg !4434
  store i8* %208, i8** %205, align 8, !dbg !4434
  %209 = load i8**, i8*** %13, align 8, !dbg !4435
  %210 = load i8*, i8** %209, align 8, !dbg !4437
  %211 = load i8, i8* %210, align 1, !dbg !4438
  %212 = icmp ne i8 %211, 0, !dbg !4438
  br i1 %212, label %213, label %216, !dbg !4439

213:                                              ; preds = %200
  %214 = load i32, i32* %15, align 4, !dbg !4440
  %215 = or i32 %214, 2, !dbg !4440
  store i32 %215, i32* %15, align 4, !dbg !4440
  br label %216, !dbg !4441

216:                                              ; preds = %213, %200
  br label %217, !dbg !4442

217:                                              ; preds = %216, %107
  %218 = load i64, i64* %14, align 8, !dbg !4443
  %219 = load i64*, i64** %10, align 8, !dbg !4444
  store i64 %218, i64* %219, align 8, !dbg !4445
  %220 = load i32, i32* %15, align 4, !dbg !4446
  store i32 %220, i32* %6, align 4, !dbg !4447
  br label %221, !dbg !4447

221:                                              ; preds = %217, %195, %121, %103, %97, %87, %59
  %222 = load i32, i32* %6, align 4, !dbg !4448
  ret i32 %222, !dbg !4448
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind
declare dso_local i64 @strtoul(i8*, i8**, i32) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bkm_scale(i64* %0, i32 %1) #3 !dbg !4449 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4452, metadata !DIExpression()), !dbg !4453
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4454, metadata !DIExpression()), !dbg !4455
  %6 = load i32, i32* %5, align 4, !dbg !4456
  %7 = sext i32 %6 to i64, !dbg !4456
  %8 = udiv i64 -1, %7, !dbg !4458
  %9 = load i64*, i64** %4, align 8, !dbg !4459
  %10 = load i64, i64* %9, align 8, !dbg !4460
  %11 = icmp ult i64 %8, %10, !dbg !4461
  br i1 %11, label %12, label %14, !dbg !4462

12:                                               ; preds = %2
  %13 = load i64*, i64** %4, align 8, !dbg !4463
  store i64 -1, i64* %13, align 8, !dbg !4465
  store i32 1, i32* %3, align 4, !dbg !4466
  br label %20, !dbg !4466

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4, !dbg !4467
  %16 = sext i32 %15 to i64, !dbg !4467
  %17 = load i64*, i64** %4, align 8, !dbg !4468
  %18 = load i64, i64* %17, align 8, !dbg !4469
  %19 = mul i64 %18, %16, !dbg !4469
  store i64 %19, i64* %17, align 8, !dbg !4469
  store i32 0, i32* %3, align 4, !dbg !4470
  br label %20, !dbg !4470

20:                                               ; preds = %14, %12
  %21 = load i32, i32* %3, align 4, !dbg !4471
  ret i32 %21, !dbg !4471
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bkm_scale_by_power(i64* %0, i32 %1, i32 %2) #3 !dbg !4472 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4475, metadata !DIExpression()), !dbg !4476
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4477, metadata !DIExpression()), !dbg !4478
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4479, metadata !DIExpression()), !dbg !4480
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4481, metadata !DIExpression()), !dbg !4482
  store i32 0, i32* %7, align 4, !dbg !4482
  br label %8, !dbg !4483

8:                                                ; preds = %12, %3
  %9 = load i32, i32* %6, align 4, !dbg !4484
  %10 = add nsw i32 %9, -1, !dbg !4484
  store i32 %10, i32* %6, align 4, !dbg !4484
  %11 = icmp ne i32 %9, 0, !dbg !4483
  br i1 %11, label %12, label %18, !dbg !4483

12:                                               ; preds = %8
  %13 = load i64*, i64** %4, align 8, !dbg !4485
  %14 = load i32, i32* %5, align 4, !dbg !4486
  %15 = call i32 @bkm_scale(i64* %13, i32 %14), !dbg !4487
  %16 = load i32, i32* %7, align 4, !dbg !4488
  %17 = or i32 %16, %15, !dbg !4488
  store i32 %17, i32* %7, align 4, !dbg !4488
  br label %8, !dbg !4483, !llvm.loop !4489

18:                                               ; preds = %8
  %19 = load i32, i32* %7, align 4, !dbg !4491
  ret i32 %19, !dbg !4492
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) #3 !dbg !4493 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !4508, metadata !DIExpression()), !dbg !4509
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4510, metadata !DIExpression()), !dbg !4511
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4512, metadata !DIExpression()), !dbg !4513
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !4514, metadata !DIExpression()), !dbg !4515
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4516, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.declare(metadata i32* %11, metadata !4518, metadata !DIExpression()), !dbg !4519
  %13 = load i32*, i32** %6, align 8, !dbg !4520
  %14 = icmp ne i32* %13, null, !dbg !4520
  br i1 %14, label %16, label %15, !dbg !4522

15:                                               ; preds = %4
  store i32* %11, i32** %6, align 8, !dbg !4523
  br label %16, !dbg !4524

16:                                               ; preds = %15, %4
  %17 = load i32*, i32** %6, align 8, !dbg !4525
  %18 = load i8*, i8** %7, align 8, !dbg !4526
  %19 = load i64, i64* %8, align 8, !dbg !4527
  %20 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4528
  %21 = call i64 @mbrtowc(i32* %17, i8* %18, i64 %19, %struct.__mbstate_t* %20) #15, !dbg !4529
  store i64 %21, i64* %10, align 8, !dbg !4530
  %22 = load i64, i64* %10, align 8, !dbg !4531
  %23 = icmp ule i64 -2, %22, !dbg !4533
  br i1 %23, label %24, label %35, !dbg !4534

24:                                               ; preds = %16
  %25 = load i64, i64* %8, align 8, !dbg !4535
  %26 = icmp ne i64 %25, 0, !dbg !4536
  br i1 %26, label %27, label %35, !dbg !4537

27:                                               ; preds = %24
  %28 = call zeroext i1 @hard_locale(i32 0), !dbg !4538
  br i1 %28, label %35, label %29, !dbg !4539

29:                                               ; preds = %27
  call void @llvm.dbg.declare(metadata i8* %12, metadata !4540, metadata !DIExpression()), !dbg !4542
  %30 = load i8*, i8** %7, align 8, !dbg !4543
  %31 = load i8, i8* %30, align 1, !dbg !4544
  store i8 %31, i8* %12, align 1, !dbg !4542
  %32 = load i8, i8* %12, align 1, !dbg !4545
  %33 = zext i8 %32 to i32, !dbg !4545
  %34 = load i32*, i32** %6, align 8, !dbg !4546
  store i32 %33, i32* %34, align 4, !dbg !4547
  store i64 1, i64* %5, align 8, !dbg !4548
  br label %37, !dbg !4548

35:                                               ; preds = %27, %24, %16
  %36 = load i64, i64* %10, align 8, !dbg !4549
  store i64 %36, i64* %5, align 8, !dbg !4550
  br label %37, !dbg !4550

37:                                               ; preds = %35, %29
  %38 = load i64, i64* %5, align 8, !dbg !4551
  ret i64 %38, !dbg !4551
}

; Function Attrs: nounwind
declare dso_local i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) #7

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i32 @c_strcasecmp(i8* %0, i8* %1) #12 !dbg !4552 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4555, metadata !DIExpression()), !dbg !4556
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4557, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4559, metadata !DIExpression()), !dbg !4560
  %10 = load i8*, i8** %4, align 8, !dbg !4561
  store i8* %10, i8** %6, align 8, !dbg !4560
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4562, metadata !DIExpression()), !dbg !4563
  %11 = load i8*, i8** %5, align 8, !dbg !4564
  store i8* %11, i8** %7, align 8, !dbg !4563
  call void @llvm.dbg.declare(metadata i8* %8, metadata !4565, metadata !DIExpression()), !dbg !4566
  call void @llvm.dbg.declare(metadata i8* %9, metadata !4567, metadata !DIExpression()), !dbg !4568
  %12 = load i8*, i8** %6, align 8, !dbg !4569
  %13 = load i8*, i8** %7, align 8, !dbg !4571
  %14 = icmp eq i8* %12, %13, !dbg !4572
  br i1 %14, label %15, label %16, !dbg !4573

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !4574
  br label %49, !dbg !4574

16:                                               ; preds = %2
  br label %17, !dbg !4575

17:                                               ; preds = %37, %16
  %18 = load i8*, i8** %6, align 8, !dbg !4576
  %19 = load i8, i8* %18, align 1, !dbg !4578
  %20 = zext i8 %19 to i32, !dbg !4578
  %21 = call i32 @c_tolower(i32 %20), !dbg !4579
  %22 = trunc i32 %21 to i8, !dbg !4579
  store i8 %22, i8* %8, align 1, !dbg !4580
  %23 = load i8*, i8** %7, align 8, !dbg !4581
  %24 = load i8, i8* %23, align 1, !dbg !4582
  %25 = zext i8 %24 to i32, !dbg !4582
  %26 = call i32 @c_tolower(i32 %25), !dbg !4583
  %27 = trunc i32 %26 to i8, !dbg !4583
  store i8 %27, i8* %9, align 1, !dbg !4584
  %28 = load i8, i8* %8, align 1, !dbg !4585
  %29 = zext i8 %28 to i32, !dbg !4585
  %30 = icmp eq i32 %29, 0, !dbg !4587
  br i1 %30, label %31, label %32, !dbg !4588

31:                                               ; preds = %17
  br label %43, !dbg !4589

32:                                               ; preds = %17
  %33 = load i8*, i8** %6, align 8, !dbg !4590
  %34 = getelementptr inbounds i8, i8* %33, i32 1, !dbg !4590
  store i8* %34, i8** %6, align 8, !dbg !4590
  %35 = load i8*, i8** %7, align 8, !dbg !4591
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !4591
  store i8* %36, i8** %7, align 8, !dbg !4591
  br label %37, !dbg !4592

37:                                               ; preds = %32
  %38 = load i8, i8* %8, align 1, !dbg !4593
  %39 = zext i8 %38 to i32, !dbg !4593
  %40 = load i8, i8* %9, align 1, !dbg !4594
  %41 = zext i8 %40 to i32, !dbg !4594
  %42 = icmp eq i32 %39, %41, !dbg !4595
  br i1 %42, label %17, label %43, !dbg !4592, !llvm.loop !4596

43:                                               ; preds = %37, %31
  %44 = load i8, i8* %8, align 1, !dbg !4598
  %45 = zext i8 %44 to i32, !dbg !4598
  %46 = load i8, i8* %9, align 1, !dbg !4600
  %47 = zext i8 %46 to i32, !dbg !4600
  %48 = sub nsw i32 %45, %47, !dbg !4601
  store i32 %48, i32* %3, align 4, !dbg !4602
  br label %49, !dbg !4602

49:                                               ; preds = %43, %15
  %50 = load i32, i32* %3, align 4, !dbg !4603
  ret i32 %50, !dbg !4603
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) #3 !dbg !4604 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4641, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.declare(metadata i8* %4, metadata !4643, metadata !DIExpression()), !dbg !4645
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4646
  %8 = call i64 @__fpending(%struct._IO_FILE* %7) #15, !dbg !4647
  %9 = icmp ne i64 %8, 0, !dbg !4648
  %10 = zext i1 %9 to i8, !dbg !4645
  store i8 %10, i8* %4, align 1, !dbg !4645
  call void @llvm.dbg.declare(metadata i8* %5, metadata !4649, metadata !DIExpression()), !dbg !4650
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4651
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* %11) #15, !dbg !4651
  %13 = icmp ne i32 %12, 0, !dbg !4652
  %14 = zext i1 %13 to i8, !dbg !4650
  store i8 %14, i8* %5, align 1, !dbg !4650
  call void @llvm.dbg.declare(metadata i8* %6, metadata !4653, metadata !DIExpression()), !dbg !4654
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4655
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* %15), !dbg !4656
  %17 = icmp ne i32 %16, 0, !dbg !4657
  %18 = zext i1 %17 to i8, !dbg !4654
  store i8 %18, i8* %6, align 1, !dbg !4654
  %19 = load i8, i8* %5, align 1, !dbg !4658
  %20 = trunc i8 %19 to i1, !dbg !4658
  br i1 %20, label %31, label %21, !dbg !4660

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !4661
  %23 = trunc i8 %22 to i1, !dbg !4661
  br i1 %23, label %24, label %37, !dbg !4662

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !4663
  %26 = trunc i8 %25 to i1, !dbg !4663
  br i1 %26, label %31, label %27, !dbg !4664

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #17, !dbg !4665
  %29 = load i32, i32* %28, align 4, !dbg !4665
  %30 = icmp ne i32 %29, 9, !dbg !4666
  br i1 %30, label %31, label %37, !dbg !4667

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !4668
  %33 = trunc i8 %32 to i1, !dbg !4668
  br i1 %33, label %36, label %34, !dbg !4671

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #17, !dbg !4672
  store i32 0, i32* %35, align 4, !dbg !4673
  br label %36, !dbg !4672

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !4674
  br label %38, !dbg !4674

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !4675
  br label %38, !dbg !4675

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !4676
  ret i32 %39, !dbg !4676
}

; Function Attrs: nounwind
declare dso_local i64 @__fpending(%struct._IO_FILE*) #7

; Function Attrs: nounwind
declare dso_local i32 @ferror_unlocked(%struct._IO_FILE*) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) #3 !dbg !4677 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 16
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4680, metadata !DIExpression()), !dbg !4681
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !4682, metadata !DIExpression()), !dbg !4686
  %5 = load i32, i32* %3, align 4, !dbg !4687
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4689
  %7 = call i32 @setlocale_null_r(i32 %5, i8* %6, i64 257), !dbg !4690
  %8 = icmp ne i32 %7, 0, !dbg !4690
  br i1 %8, label %9, label %10, !dbg !4691

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4692
  br label %21, !dbg !4692

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4693
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.166, i64 0, i64 0)) #14, !dbg !4694
  %13 = icmp eq i32 %12, 0, !dbg !4695
  br i1 %13, label %18, label %14, !dbg !4696

14:                                               ; preds = %10
  %15 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4697
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.167, i64 0, i64 0)) #14, !dbg !4698
  %17 = icmp eq i32 %16, 0, !dbg !4699
  br label %18, !dbg !4696

18:                                               ; preds = %14, %10
  %19 = phi i1 [ true, %10 ], [ %17, %14 ]
  %20 = xor i1 %19, true, !dbg !4700
  store i1 %20, i1* %2, align 1, !dbg !4701
  br label %21, !dbg !4701

21:                                               ; preds = %18, %9
  %22 = load i1, i1* %2, align 1, !dbg !4702
  ret i1 %22, !dbg !4702
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @locale_charset() #3 !dbg !4703 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !4705, metadata !DIExpression()), !dbg !4706
  %2 = call i8* @nl_langinfo(i32 14) #15, !dbg !4707
  store i8* %2, i8** %1, align 8, !dbg !4708
  %3 = load i8*, i8** %1, align 8, !dbg !4709
  %4 = icmp eq i8* %3, null, !dbg !4711
  br i1 %4, label %5, label %6, !dbg !4712

5:                                                ; preds = %0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.170, i64 0, i64 0), i8** %1, align 8, !dbg !4713
  br label %6, !dbg !4714

6:                                                ; preds = %5, %0
  %7 = load i8*, i8** %1, align 8, !dbg !4715
  %8 = getelementptr inbounds i8, i8* %7, i64 0, !dbg !4715
  %9 = load i8, i8* %8, align 1, !dbg !4715
  %10 = sext i8 %9 to i32, !dbg !4715
  %11 = icmp eq i32 %10, 0, !dbg !4719
  br i1 %11, label %12, label %13, !dbg !4720

12:                                               ; preds = %6
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.171, i64 0, i64 0), i8** %1, align 8, !dbg !4721
  br label %13, !dbg !4722

13:                                               ; preds = %12, %6
  %14 = load i8*, i8** %1, align 8, !dbg !4723
  ret i8* %14, !dbg !4724
}

; Function Attrs: nounwind
declare dso_local i8* @nl_langinfo(i32) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgetgroups(i8* %0, i32 %1, i32** %2) #3 !dbg !666 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4725, metadata !DIExpression()), !dbg !4726
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4727, metadata !DIExpression()), !dbg !4728
  store i32** %2, i32*** %7, align 8
  call void @llvm.dbg.declare(metadata i32*** %7, metadata !4729, metadata !DIExpression()), !dbg !4730
  call void @llvm.dbg.declare(metadata i32* %8, metadata !4731, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4733, metadata !DIExpression()), !dbg !4734
  call void @llvm.dbg.declare(metadata i32** %10, metadata !4735, metadata !DIExpression()), !dbg !4736
  %18 = load i8*, i8** %5, align 8, !dbg !4737
  %19 = icmp ne i8* %18, null, !dbg !4737
  br i1 %19, label %20, label %65, !dbg !4739

20:                                               ; preds = %3
  store i32 10, i32* %8, align 4, !dbg !4740
  %21 = load i32, i32* %8, align 4, !dbg !4742
  %22 = sext i32 %21 to i64, !dbg !4742
  %23 = call i32* @realloc_groupbuf(i32* null, i64 %22), !dbg !4743
  store i32* %23, i32** %10, align 8, !dbg !4744
  %24 = load i32*, i32** %10, align 8, !dbg !4745
  %25 = icmp eq i32* %24, null, !dbg !4747
  br i1 %25, label %26, label %27, !dbg !4748

26:                                               ; preds = %20
  store i32 -1, i32* %4, align 4, !dbg !4749
  br label %201, !dbg !4749

27:                                               ; preds = %20
  br label %28, !dbg !4750

28:                                               ; preds = %27, %64
  call void @llvm.dbg.declare(metadata i32** %11, metadata !4751, metadata !DIExpression()), !dbg !4753
  call void @llvm.dbg.declare(metadata i32* %12, metadata !4754, metadata !DIExpression()), !dbg !4755
  %29 = load i32, i32* %8, align 4, !dbg !4756
  store i32 %29, i32* %12, align 4, !dbg !4755
  %30 = load i8*, i8** %5, align 8, !dbg !4757
  %31 = load i32, i32* %6, align 4, !dbg !4758
  %32 = load i32*, i32** %10, align 8, !dbg !4759
  %33 = call i32 @getgrouplist(i8* %30, i32 %31, i32* %32, i32* %8), !dbg !4760
  store i32 %33, i32* %9, align 4, !dbg !4761
  %34 = load i32, i32* %9, align 4, !dbg !4762
  %35 = icmp slt i32 %34, 0, !dbg !4764
  br i1 %35, label %36, label %43, !dbg !4765

36:                                               ; preds = %28
  %37 = load i32, i32* %12, align 4, !dbg !4766
  %38 = load i32, i32* %8, align 4, !dbg !4767
  %39 = icmp eq i32 %37, %38, !dbg !4768
  br i1 %39, label %40, label %43, !dbg !4769

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4, !dbg !4770
  %42 = mul nsw i32 %41, 2, !dbg !4770
  store i32 %42, i32* %8, align 4, !dbg !4770
  br label %43, !dbg !4771

43:                                               ; preds = %40, %36, %28
  %44 = load i32*, i32** %10, align 8, !dbg !4772
  %45 = load i32, i32* %8, align 4, !dbg !4774
  %46 = sext i32 %45 to i64, !dbg !4774
  %47 = call i32* @realloc_groupbuf(i32* %44, i64 %46), !dbg !4775
  store i32* %47, i32** %11, align 8, !dbg !4776
  %48 = icmp eq i32* %47, null, !dbg !4777
  br i1 %48, label %49, label %56, !dbg !4778

49:                                               ; preds = %43
  call void @llvm.dbg.declare(metadata i32* %13, metadata !4779, metadata !DIExpression()), !dbg !4781
  %50 = call i32* @__errno_location() #17, !dbg !4782
  %51 = load i32, i32* %50, align 4, !dbg !4782
  store i32 %51, i32* %13, align 4, !dbg !4781
  %52 = load i32*, i32** %10, align 8, !dbg !4783
  %53 = bitcast i32* %52 to i8*, !dbg !4783
  call void @free(i8* %53) #15, !dbg !4784
  %54 = load i32, i32* %13, align 4, !dbg !4785
  %55 = call i32* @__errno_location() #17, !dbg !4786
  store i32 %54, i32* %55, align 4, !dbg !4787
  store i32 -1, i32* %4, align 4, !dbg !4788
  br label %201, !dbg !4788

56:                                               ; preds = %43
  %57 = load i32*, i32** %11, align 8, !dbg !4789
  store i32* %57, i32** %10, align 8, !dbg !4790
  %58 = load i32, i32* %9, align 4, !dbg !4791
  %59 = icmp sle i32 0, %58, !dbg !4793
  br i1 %59, label %60, label %64, !dbg !4794

60:                                               ; preds = %56
  %61 = load i32*, i32** %10, align 8, !dbg !4795
  %62 = load i32**, i32*** %7, align 8, !dbg !4797
  store i32* %61, i32** %62, align 8, !dbg !4798
  %63 = load i32, i32* %8, align 4, !dbg !4799
  store i32 %63, i32* %4, align 4, !dbg !4800
  br label %201, !dbg !4800

64:                                               ; preds = %56
  br label %28, !dbg !4750, !llvm.loop !4801

65:                                               ; preds = %3
  %66 = load i8*, i8** %5, align 8, !dbg !4803
  %67 = icmp ne i8* %66, null, !dbg !4803
  br i1 %67, label %68, label %72, !dbg !4803

68:                                               ; preds = %65
  %69 = load i8*, i8** %5, align 8, !dbg !4804
  %70 = load i32, i32* %6, align 4, !dbg !4805
  %71 = call i32 @getugroups(i32 0, i32* null, i8* %69, i32 %70), !dbg !4806
  br label %74, !dbg !4803

72:                                               ; preds = %65
  %73 = call i32 @getgroups(i32 0, i32* null) #15, !dbg !4807
  br label %74, !dbg !4803

74:                                               ; preds = %72, %68
  %75 = phi i32 [ %71, %68 ], [ %73, %72 ], !dbg !4803
  store i32 %75, i32* %8, align 4, !dbg !4808
  %76 = load i32, i32* %8, align 4, !dbg !4809
  %77 = icmp slt i32 %76, 0, !dbg !4811
  br i1 %77, label %78, label %94, !dbg !4812

78:                                               ; preds = %74
  %79 = call i32* @__errno_location() #17, !dbg !4813
  %80 = load i32, i32* %79, align 4, !dbg !4813
  %81 = icmp eq i32 %80, 38, !dbg !4816
  br i1 %81, label %82, label %93, !dbg !4817

82:                                               ; preds = %78
  %83 = call i32* @realloc_groupbuf(i32* null, i64 1), !dbg !4818
  store i32* %83, i32** %10, align 8, !dbg !4819
  %84 = icmp ne i32* %83, null, !dbg !4819
  br i1 %84, label %85, label %93, !dbg !4820

85:                                               ; preds = %82
  %86 = load i32*, i32** %10, align 8, !dbg !4821
  %87 = load i32**, i32*** %7, align 8, !dbg !4823
  store i32* %86, i32** %87, align 8, !dbg !4824
  %88 = load i32, i32* %6, align 4, !dbg !4825
  %89 = load i32*, i32** %10, align 8, !dbg !4826
  store i32 %88, i32* %89, align 4, !dbg !4827
  %90 = load i32, i32* %6, align 4, !dbg !4828
  %91 = icmp ne i32 %90, -1, !dbg !4829
  %92 = zext i1 %91 to i32, !dbg !4829
  store i32 %92, i32* %4, align 4, !dbg !4830
  br label %201, !dbg !4830

93:                                               ; preds = %82, %78
  store i32 -1, i32* %4, align 4, !dbg !4831
  br label %201, !dbg !4831

94:                                               ; preds = %74
  %95 = load i32, i32* %8, align 4, !dbg !4832
  %96 = icmp eq i32 %95, 0, !dbg !4834
  br i1 %96, label %103, label %97, !dbg !4835

97:                                               ; preds = %94
  %98 = load i8*, i8** %5, align 8, !dbg !4836
  %99 = icmp ne i8* %98, null, !dbg !4836
  br i1 %99, label %106, label %100, !dbg !4837

100:                                              ; preds = %97
  %101 = load i32, i32* %6, align 4, !dbg !4838
  %102 = icmp ne i32 %101, -1, !dbg !4839
  br i1 %102, label %103, label %106, !dbg !4840

103:                                              ; preds = %100, %94
  %104 = load i32, i32* %8, align 4, !dbg !4841
  %105 = add nsw i32 %104, 1, !dbg !4841
  store i32 %105, i32* %8, align 4, !dbg !4841
  br label %106, !dbg !4842

106:                                              ; preds = %103, %100, %97
  %107 = load i32, i32* %8, align 4, !dbg !4843
  %108 = sext i32 %107 to i64, !dbg !4843
  %109 = call i32* @realloc_groupbuf(i32* null, i64 %108), !dbg !4844
  store i32* %109, i32** %10, align 8, !dbg !4845
  %110 = load i32*, i32** %10, align 8, !dbg !4846
  %111 = icmp eq i32* %110, null, !dbg !4848
  br i1 %111, label %112, label %113, !dbg !4849

112:                                              ; preds = %106
  store i32 -1, i32* %4, align 4, !dbg !4850
  br label %201, !dbg !4850

113:                                              ; preds = %106
  %114 = load i8*, i8** %5, align 8, !dbg !4851
  %115 = icmp ne i8* %114, null, !dbg !4851
  br i1 %115, label %116, label %122, !dbg !4851

116:                                              ; preds = %113
  %117 = load i32, i32* %8, align 4, !dbg !4852
  %118 = load i32*, i32** %10, align 8, !dbg !4853
  %119 = load i8*, i8** %5, align 8, !dbg !4854
  %120 = load i32, i32* %6, align 4, !dbg !4855
  %121 = call i32 @getugroups(i32 %117, i32* %118, i8* %119, i32 %120), !dbg !4856
  br label %135, !dbg !4851

122:                                              ; preds = %113
  %123 = load i32, i32* %8, align 4, !dbg !4857
  %124 = load i32, i32* %6, align 4, !dbg !4858
  %125 = icmp ne i32 %124, -1, !dbg !4859
  %126 = zext i1 %125 to i32, !dbg !4859
  %127 = sub nsw i32 %123, %126, !dbg !4860
  %128 = load i32*, i32** %10, align 8, !dbg !4861
  %129 = load i32, i32* %6, align 4, !dbg !4862
  %130 = icmp ne i32 %129, -1, !dbg !4863
  %131 = zext i1 %130 to i32, !dbg !4863
  %132 = sext i32 %131 to i64, !dbg !4864
  %133 = getelementptr inbounds i32, i32* %128, i64 %132, !dbg !4864
  %134 = call i32 @getgroups(i32 %127, i32* %133) #15, !dbg !4865
  br label %135, !dbg !4851

135:                                              ; preds = %122, %116
  %136 = phi i32 [ %121, %116 ], [ %134, %122 ], !dbg !4851
  store i32 %136, i32* %9, align 4, !dbg !4866
  %137 = load i32, i32* %9, align 4, !dbg !4867
  %138 = icmp slt i32 %137, 0, !dbg !4869
  br i1 %138, label %139, label %146, !dbg !4870

139:                                              ; preds = %135
  call void @llvm.dbg.declare(metadata i32* %14, metadata !4871, metadata !DIExpression()), !dbg !4873
  %140 = call i32* @__errno_location() #17, !dbg !4874
  %141 = load i32, i32* %140, align 4, !dbg !4874
  store i32 %141, i32* %14, align 4, !dbg !4873
  %142 = load i32*, i32** %10, align 8, !dbg !4875
  %143 = bitcast i32* %142 to i8*, !dbg !4875
  call void @free(i8* %143) #15, !dbg !4876
  %144 = load i32, i32* %14, align 4, !dbg !4877
  %145 = call i32* @__errno_location() #17, !dbg !4878
  store i32 %144, i32* %145, align 4, !dbg !4879
  store i32 -1, i32* %4, align 4, !dbg !4880
  br label %201, !dbg !4880

146:                                              ; preds = %135
  %147 = load i8*, i8** %5, align 8, !dbg !4881
  %148 = icmp ne i8* %147, null, !dbg !4881
  br i1 %148, label %157, label %149, !dbg !4883

149:                                              ; preds = %146
  %150 = load i32, i32* %6, align 4, !dbg !4884
  %151 = icmp ne i32 %150, -1, !dbg !4885
  br i1 %151, label %152, label %157, !dbg !4886

152:                                              ; preds = %149
  %153 = load i32, i32* %6, align 4, !dbg !4887
  %154 = load i32*, i32** %10, align 8, !dbg !4889
  store i32 %153, i32* %154, align 4, !dbg !4890
  %155 = load i32, i32* %9, align 4, !dbg !4891
  %156 = add nsw i32 %155, 1, !dbg !4891
  store i32 %156, i32* %9, align 4, !dbg !4891
  br label %157, !dbg !4892

157:                                              ; preds = %152, %149, %146
  %158 = load i32*, i32** %10, align 8, !dbg !4893
  %159 = load i32**, i32*** %7, align 8, !dbg !4894
  store i32* %158, i32** %159, align 8, !dbg !4895
  %160 = load i32, i32* %9, align 4, !dbg !4896
  %161 = icmp slt i32 1, %160, !dbg !4898
  br i1 %161, label %162, label %199, !dbg !4899

162:                                              ; preds = %157
  call void @llvm.dbg.declare(metadata i32* %15, metadata !4900, metadata !DIExpression()), !dbg !4902
  %163 = load i32*, i32** %10, align 8, !dbg !4903
  %164 = load i32, i32* %163, align 4, !dbg !4904
  store i32 %164, i32* %15, align 4, !dbg !4902
  call void @llvm.dbg.declare(metadata i32** %16, metadata !4905, metadata !DIExpression()), !dbg !4906
  call void @llvm.dbg.declare(metadata i32** %17, metadata !4907, metadata !DIExpression()), !dbg !4908
  %165 = load i32*, i32** %10, align 8, !dbg !4909
  %166 = load i32, i32* %9, align 4, !dbg !4910
  %167 = sext i32 %166 to i64, !dbg !4911
  %168 = getelementptr inbounds i32, i32* %165, i64 %167, !dbg !4911
  store i32* %168, i32** %17, align 8, !dbg !4908
  %169 = load i32*, i32** %10, align 8, !dbg !4912
  %170 = getelementptr inbounds i32, i32* %169, i64 1, !dbg !4914
  store i32* %170, i32** %16, align 8, !dbg !4915
  br label %171, !dbg !4916

171:                                              ; preds = %195, %162
  %172 = load i32*, i32** %16, align 8, !dbg !4917
  %173 = load i32*, i32** %17, align 8, !dbg !4919
  %174 = icmp ult i32* %172, %173, !dbg !4920
  br i1 %174, label %175, label %198, !dbg !4921

175:                                              ; preds = %171
  %176 = load i32*, i32** %16, align 8, !dbg !4922
  %177 = load i32, i32* %176, align 4, !dbg !4925
  %178 = load i32, i32* %15, align 4, !dbg !4926
  %179 = icmp eq i32 %177, %178, !dbg !4927
  br i1 %179, label %186, label %180, !dbg !4928

180:                                              ; preds = %175
  %181 = load i32*, i32** %16, align 8, !dbg !4929
  %182 = load i32, i32* %181, align 4, !dbg !4930
  %183 = load i32*, i32** %10, align 8, !dbg !4931
  %184 = load i32, i32* %183, align 4, !dbg !4932
  %185 = icmp eq i32 %182, %184, !dbg !4933
  br i1 %185, label %186, label %189, !dbg !4934

186:                                              ; preds = %180, %175
  %187 = load i32, i32* %9, align 4, !dbg !4935
  %188 = add nsw i32 %187, -1, !dbg !4935
  store i32 %188, i32* %9, align 4, !dbg !4935
  br label %194, !dbg !4936

189:                                              ; preds = %180
  %190 = load i32*, i32** %16, align 8, !dbg !4937
  %191 = load i32, i32* %190, align 4, !dbg !4938
  %192 = load i32*, i32** %10, align 8, !dbg !4939
  %193 = getelementptr inbounds i32, i32* %192, i32 1, !dbg !4939
  store i32* %193, i32** %10, align 8, !dbg !4939
  store i32 %191, i32* %193, align 4, !dbg !4940
  br label %194

194:                                              ; preds = %189, %186
  br label %195, !dbg !4941

195:                                              ; preds = %194
  %196 = load i32*, i32** %16, align 8, !dbg !4942
  %197 = getelementptr inbounds i32, i32* %196, i32 1, !dbg !4942
  store i32* %197, i32** %16, align 8, !dbg !4942
  br label %171, !dbg !4943, !llvm.loop !4944

198:                                              ; preds = %171
  br label %199, !dbg !4946

199:                                              ; preds = %198, %157
  %200 = load i32, i32* %9, align 4, !dbg !4947
  store i32 %200, i32* %4, align 4, !dbg !4948
  br label %201, !dbg !4948

201:                                              ; preds = %199, %139, %112, %93, %85, %60, %49, %26
  %202 = load i32, i32* %4, align 4, !dbg !4949
  ret i32 %202, !dbg !4949
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @realloc_groupbuf(i32* %0, i64 %1) #3 !dbg !4950 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !4953, metadata !DIExpression()), !dbg !4954
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4955, metadata !DIExpression()), !dbg !4956
  %6 = load i64, i64* %5, align 8, !dbg !4957
  %7 = icmp ult i64 2305843009213693951, %6, !dbg !4957
  br i1 %7, label %8, label %10, !dbg !4959

8:                                                ; preds = %2
  %9 = call i32* @__errno_location() #17, !dbg !4960
  store i32 12, i32* %9, align 4, !dbg !4962
  store i32* null, i32** %3, align 8, !dbg !4963
  br label %17, !dbg !4963

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8, !dbg !4964
  %12 = bitcast i32* %11 to i8*, !dbg !4964
  %13 = load i64, i64* %5, align 8, !dbg !4965
  %14 = mul i64 %13, 4, !dbg !4966
  %15 = call i8* @realloc(i8* %12, i64 %14) #15, !dbg !4967
  %16 = bitcast i8* %15 to i32*, !dbg !4967
  store i32* %16, i32** %3, align 8, !dbg !4968
  br label %17, !dbg !4968

17:                                               ; preds = %10, %8
  %18 = load i32*, i32** %3, align 8, !dbg !4969
  ret i32* %18, !dbg !4969
}

declare dso_local i32 @getgrouplist(i8*, i32, i32*, i32*) #2

; Function Attrs: nounwind
declare dso_local i32 @getgroups(i32, i32*) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) #3 !dbg !4970 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4973, metadata !DIExpression()), !dbg !4974
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4975, metadata !DIExpression()), !dbg !4976
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4977, metadata !DIExpression()), !dbg !4978
  %7 = load i32, i32* %4, align 4, !dbg !4979
  %8 = load i8*, i8** %5, align 8, !dbg !4980
  %9 = load i64, i64* %6, align 8, !dbg !4981
  %10 = call i32 @setlocale_null_unlocked(i32 %7, i8* %8, i64 %9), !dbg !4982
  ret i32 %10, !dbg !4983
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setlocale_null_unlocked(i32 %0, i8* %1, i64 %2) #3 !dbg !4984 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4985, metadata !DIExpression()), !dbg !4986
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4987, metadata !DIExpression()), !dbg !4988
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4989, metadata !DIExpression()), !dbg !4990
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4991, metadata !DIExpression()), !dbg !4992
  %10 = load i32, i32* %5, align 4, !dbg !4993
  %11 = call i8* @setlocale_null_androidfix(i32 %10), !dbg !4994
  store i8* %11, i8** %8, align 8, !dbg !4992
  %12 = load i8*, i8** %8, align 8, !dbg !4995
  %13 = icmp eq i8* %12, null, !dbg !4997
  br i1 %13, label %14, label %21, !dbg !4998

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !4999
  %16 = icmp ugt i64 %15, 0, !dbg !5002
  br i1 %16, label %17, label %20, !dbg !5003

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !5004
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !5004
  store i8 0, i8* %19, align 1, !dbg !5005
  br label %20, !dbg !5004

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !5006
  br label %45, !dbg !5006

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !5007, metadata !DIExpression()), !dbg !5009
  %22 = load i8*, i8** %8, align 8, !dbg !5010
  %23 = call i64 @strlen(i8* %22) #14, !dbg !5011
  store i64 %23, i64* %9, align 8, !dbg !5009
  %24 = load i64, i64* %9, align 8, !dbg !5012
  %25 = load i64, i64* %7, align 8, !dbg !5014
  %26 = icmp ult i64 %24, %25, !dbg !5015
  br i1 %26, label %27, label %32, !dbg !5016

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !5017
  %29 = load i8*, i8** %8, align 8, !dbg !5019
  %30 = load i64, i64* %9, align 8, !dbg !5020
  %31 = add i64 %30, 1, !dbg !5021
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !5022
  store i32 0, i32* %4, align 4, !dbg !5023
  br label %45, !dbg !5023

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !5024
  %34 = icmp ugt i64 %33, 0, !dbg !5027
  br i1 %34, label %35, label %44, !dbg !5028

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !5029
  %37 = load i8*, i8** %8, align 8, !dbg !5031
  %38 = load i64, i64* %7, align 8, !dbg !5032
  %39 = sub i64 %38, 1, !dbg !5033
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !5034
  %40 = load i8*, i8** %6, align 8, !dbg !5035
  %41 = load i64, i64* %7, align 8, !dbg !5036
  %42 = sub i64 %41, 1, !dbg !5037
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !5035
  store i8 0, i8* %43, align 1, !dbg !5038
  br label %44, !dbg !5039

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !5040
  br label %45, !dbg !5040

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !5041
  ret i32 %46, !dbg !5041
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @setlocale_null_androidfix(i32 %0) #3 !dbg !5042 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5045, metadata !DIExpression()), !dbg !5046
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5047, metadata !DIExpression()), !dbg !5048
  %4 = load i32, i32* %2, align 4, !dbg !5049
  %5 = call i8* @setlocale(i32 %4, i8* null) #15, !dbg !5050
  store i8* %5, i8** %3, align 8, !dbg !5048
  %6 = load i8*, i8** %3, align 8, !dbg !5051
  ret i8* %6, !dbg !5052
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 %0) #3 !dbg !5053 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5054, metadata !DIExpression()), !dbg !5055
  %3 = load i32, i32* %2, align 4, !dbg !5056
  %4 = call i8* @setlocale_null_androidfix(i32 %3), !dbg !5057
  ret i8* %4, !dbg !5058
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) #3 !dbg !5059 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !5096, metadata !DIExpression()), !dbg !5097
  call void @llvm.dbg.declare(metadata i32* %4, metadata !5098, metadata !DIExpression()), !dbg !5099
  store i32 0, i32* %4, align 4, !dbg !5099
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5100, metadata !DIExpression()), !dbg !5101
  call void @llvm.dbg.declare(metadata i32* %6, metadata !5102, metadata !DIExpression()), !dbg !5103
  store i32 0, i32* %6, align 4, !dbg !5103
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5104
  %8 = call i32 @fileno(%struct._IO_FILE* %7) #15, !dbg !5105
  store i32 %8, i32* %5, align 4, !dbg !5106
  %9 = load i32, i32* %5, align 4, !dbg !5107
  %10 = icmp slt i32 %9, 0, !dbg !5109
  br i1 %10, label %11, label %14, !dbg !5110

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5111
  %13 = call i32 @fclose(%struct._IO_FILE* %12), !dbg !5112
  store i32 %13, i32* %2, align 4, !dbg !5113
  br label %40, !dbg !5113

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5114
  %16 = call i32 @__freading(%struct._IO_FILE* %15) #15, !dbg !5114
  %17 = icmp ne i32 %16, 0, !dbg !5114
  br i1 %17, label %18, label %23, !dbg !5116

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5117
  %20 = call i32 @fileno(%struct._IO_FILE* %19) #15, !dbg !5118
  %21 = call i64 @lseek(i32 %20, i64 0, i32 1) #15, !dbg !5119
  %22 = icmp ne i64 %21, -1, !dbg !5120
  br i1 %22, label %23, label %30, !dbg !5121

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5122
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* %24), !dbg !5123
  %26 = icmp ne i32 %25, 0, !dbg !5123
  br i1 %26, label %27, label %30, !dbg !5124

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #17, !dbg !5125
  %29 = load i32, i32* %28, align 4, !dbg !5125
  store i32 %29, i32* %4, align 4, !dbg !5126
  br label %30, !dbg !5127

30:                                               ; preds = %27, %23, %18
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5128
  %32 = call i32 @fclose(%struct._IO_FILE* %31), !dbg !5129
  store i32 %32, i32* %6, align 4, !dbg !5130
  %33 = load i32, i32* %4, align 4, !dbg !5131
  %34 = icmp ne i32 %33, 0, !dbg !5133
  br i1 %34, label %35, label %38, !dbg !5134

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !5135
  %37 = call i32* @__errno_location() #17, !dbg !5137
  store i32 %36, i32* %37, align 4, !dbg !5138
  store i32 -1, i32* %6, align 4, !dbg !5139
  br label %38, !dbg !5140

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !5141
  store i32 %39, i32* %2, align 4, !dbg !5142
  br label %40, !dbg !5142

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !5143
  ret i32 %41, !dbg !5143
}

; Function Attrs: nounwind
declare dso_local i32 @fileno(%struct._IO_FILE*) #7

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local i32 @__freading(%struct._IO_FILE*) #7

; Function Attrs: nounwind
declare dso_local i64 @lseek(i32, i64, i32) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) #3 !dbg !5144 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !5181, metadata !DIExpression()), !dbg !5182
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5183
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !5185
  br i1 %5, label %10, label %6, !dbg !5186

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5187
  %8 = call i32 @__freading(%struct._IO_FILE* %7) #15, !dbg !5187
  %9 = icmp ne i32 %8, 0, !dbg !5187
  br i1 %9, label %13, label %10, !dbg !5188

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5189
  %12 = call i32 @fflush(%struct._IO_FILE* %11), !dbg !5190
  store i32 %12, i32* %2, align 4, !dbg !5191
  br label %17, !dbg !5191

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5192
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* %14), !dbg !5193
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5194
  %16 = call i32 @fflush(%struct._IO_FILE* %15), !dbg !5195
  store i32 %16, i32* %2, align 4, !dbg !5196
  br label %17, !dbg !5196

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !5197
  ret i32 %18, !dbg !5197
}

declare dso_local i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* %0) #3 !dbg !5198 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !5201, metadata !DIExpression()), !dbg !5202
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !5203
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !5205
  %5 = load i32, i32* %4, align 8, !dbg !5205
  %6 = and i32 %5, 256, !dbg !5206
  %7 = icmp ne i32 %6, 0, !dbg !5206
  br i1 %7, label %8, label %11, !dbg !5207

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !5208
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* %9, i64 0, i32 1), !dbg !5209
  br label %11, !dbg !5209

11:                                               ; preds = %8, %1
  ret void, !dbg !5210
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2) #3 !dbg !5211 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !5249, metadata !DIExpression()), !dbg !5250
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5251, metadata !DIExpression()), !dbg !5252
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !5253, metadata !DIExpression()), !dbg !5254
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5255
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !5257
  %11 = load i8*, i8** %10, align 8, !dbg !5257
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5258
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !5259
  %14 = load i8*, i8** %13, align 8, !dbg !5259
  %15 = icmp eq i8* %11, %14, !dbg !5260
  br i1 %15, label %16, label %46, !dbg !5261

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5262
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !5263
  %19 = load i8*, i8** %18, align 8, !dbg !5263
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5264
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !5265
  %22 = load i8*, i8** %21, align 8, !dbg !5265
  %23 = icmp eq i8* %19, %22, !dbg !5266
  br i1 %23, label %24, label %46, !dbg !5267

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5268
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !5269
  %27 = load i8*, i8** %26, align 8, !dbg !5269
  %28 = icmp eq i8* %27, null, !dbg !5270
  br i1 %28, label %29, label %46, !dbg !5271

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !5272, metadata !DIExpression()), !dbg !5274
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5275
  %31 = call i32 @fileno(%struct._IO_FILE* %30) #15, !dbg !5276
  %32 = load i64, i64* %6, align 8, !dbg !5277
  %33 = load i32, i32* %7, align 4, !dbg !5278
  %34 = call i64 @lseek(i32 %31, i64 %32, i32 %33) #15, !dbg !5279
  store i64 %34, i64* %8, align 8, !dbg !5274
  %35 = load i64, i64* %8, align 8, !dbg !5280
  %36 = icmp eq i64 %35, -1, !dbg !5282
  br i1 %36, label %37, label %38, !dbg !5283

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !5284
  br label %51, !dbg !5284

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5286
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !5287
  %41 = load i32, i32* %40, align 8, !dbg !5288
  %42 = and i32 %41, -17, !dbg !5288
  store i32 %42, i32* %40, align 8, !dbg !5288
  %43 = load i64, i64* %8, align 8, !dbg !5289
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5290
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !5291
  store i64 %43, i64* %45, align 8, !dbg !5292
  store i32 0, i32* %4, align 4, !dbg !5293
  br label %51, !dbg !5293

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5294
  %48 = load i64, i64* %6, align 8, !dbg !5295
  %49 = load i32, i32* %7, align 4, !dbg !5296
  %50 = call i32 @fseeko(%struct._IO_FILE* %47, i64 %48, i32 %49), !dbg !5297
  store i32 %50, i32* %4, align 4, !dbg !5298
  br label %51, !dbg !5298

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !5299
  ret i32 %52, !dbg !5299
}

declare dso_local i32 @fseeko(%struct._IO_FILE*, i64, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isalnum(i32 %0) #3 !dbg !5300 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5302, metadata !DIExpression()), !dbg !5303
  %4 = load i32, i32* %3, align 4, !dbg !5304
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
  ], !dbg !5305

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !5306
  br label %7, !dbg !5306

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5308
  br label %7, !dbg !5308

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !5309
  ret i1 %8, !dbg !5309
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isalpha(i32 %0) #3 !dbg !5310 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5311, metadata !DIExpression()), !dbg !5312
  %4 = load i32, i32* %3, align 4, !dbg !5313
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
  ], !dbg !5314

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !5315
  br label %7, !dbg !5315

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5317
  br label %7, !dbg !5317

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !5318
  ret i1 %8, !dbg !5318
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isascii(i32 %0) #3 !dbg !5319 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5320, metadata !DIExpression()), !dbg !5321
  %4 = load i32, i32* %3, align 4, !dbg !5322
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
  ], !dbg !5323

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !5324
  br label %7, !dbg !5324

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5326
  br label %7, !dbg !5326

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !5327
  ret i1 %8, !dbg !5327
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isblank(i32 %0) #3 !dbg !5328 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5329, metadata !DIExpression()), !dbg !5330
  %3 = load i32, i32* %2, align 4, !dbg !5331
  %4 = icmp eq i32 %3, 32, !dbg !5332
  br i1 %4, label %8, label %5, !dbg !5333

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !5334
  %7 = icmp eq i32 %6, 9, !dbg !5335
  br label %8, !dbg !5333

8:                                                ; preds = %5, %1
  %9 = phi i1 [ true, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !5336
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_iscntrl(i32 %0) #3 !dbg !5337 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5338, metadata !DIExpression()), !dbg !5339
  %4 = load i32, i32* %3, align 4, !dbg !5340
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
  ], !dbg !5341

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !5342
  br label %7, !dbg !5342

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5344
  br label %7, !dbg !5344

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !5345
  ret i1 %8, !dbg !5345
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isdigit(i32 %0) #3 !dbg !5346 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5347, metadata !DIExpression()), !dbg !5348
  %4 = load i32, i32* %3, align 4, !dbg !5349
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
  ], !dbg !5350

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !5351
  br label %7, !dbg !5351

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5353
  br label %7, !dbg !5353

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !5354
  ret i1 %8, !dbg !5354
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isgraph(i32 %0) #3 !dbg !5355 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5356, metadata !DIExpression()), !dbg !5357
  %4 = load i32, i32* %3, align 4, !dbg !5358
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
  ], !dbg !5359

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !5360
  br label %7, !dbg !5360

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5362
  br label %7, !dbg !5362

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !5363
  ret i1 %8, !dbg !5363
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_islower(i32 %0) #3 !dbg !5364 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5365, metadata !DIExpression()), !dbg !5366
  %4 = load i32, i32* %3, align 4, !dbg !5367
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
  ], !dbg !5368

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !5369
  br label %7, !dbg !5369

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5371
  br label %7, !dbg !5371

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !5372
  ret i1 %8, !dbg !5372
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isprint(i32 %0) #3 !dbg !5373 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5374, metadata !DIExpression()), !dbg !5375
  %4 = load i32, i32* %3, align 4, !dbg !5376
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
  ], !dbg !5377

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !5378
  br label %7, !dbg !5378

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5380
  br label %7, !dbg !5380

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !5381
  ret i1 %8, !dbg !5381
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_ispunct(i32 %0) #3 !dbg !5382 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5383, metadata !DIExpression()), !dbg !5384
  %4 = load i32, i32* %3, align 4, !dbg !5385
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
  ], !dbg !5386

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !5387
  br label %7, !dbg !5387

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5389
  br label %7, !dbg !5389

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !5390
  ret i1 %8, !dbg !5390
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isspace(i32 %0) #3 !dbg !5391 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5392, metadata !DIExpression()), !dbg !5393
  %4 = load i32, i32* %3, align 4, !dbg !5394
  switch i32 %4, label %6 [
    i32 32, label %5
    i32 9, label %5
    i32 10, label %5
    i32 11, label %5
    i32 12, label %5
    i32 13, label %5
  ], !dbg !5395

5:                                                ; preds = %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !5396
  br label %7, !dbg !5396

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5398
  br label %7, !dbg !5398

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !5399
  ret i1 %8, !dbg !5399
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isupper(i32 %0) #3 !dbg !5400 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5401, metadata !DIExpression()), !dbg !5402
  %4 = load i32, i32* %3, align 4, !dbg !5403
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
  ], !dbg !5404

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !5405
  br label %7, !dbg !5405

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5407
  br label %7, !dbg !5407

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !5408
  ret i1 %8, !dbg !5408
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @c_isxdigit(i32 %0) #3 !dbg !5409 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5410, metadata !DIExpression()), !dbg !5411
  %4 = load i32, i32* %3, align 4, !dbg !5412
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
  ], !dbg !5413

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !5414
  br label %7, !dbg !5414

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5416
  br label %7, !dbg !5416

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !5417
  ret i1 %8, !dbg !5417
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_tolower(i32 %0) #3 !dbg !5418 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5421, metadata !DIExpression()), !dbg !5422
  %4 = load i32, i32* %3, align 4, !dbg !5423
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
  ], !dbg !5424

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %6 = load i32, i32* %3, align 4, !dbg !5425
  %7 = sub nsw i32 %6, 65, !dbg !5427
  %8 = add nsw i32 %7, 97, !dbg !5428
  store i32 %8, i32* %2, align 4, !dbg !5429
  br label %11, !dbg !5429

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !5430
  store i32 %10, i32* %2, align 4, !dbg !5431
  br label %11, !dbg !5431

11:                                               ; preds = %9, %5
  %12 = load i32, i32* %2, align 4, !dbg !5432
  ret i32 %12, !dbg !5432
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_toupper(i32 %0) #3 !dbg !5433 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5434, metadata !DIExpression()), !dbg !5435
  %4 = load i32, i32* %3, align 4, !dbg !5436
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
  ], !dbg !5437

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %6 = load i32, i32* %3, align 4, !dbg !5438
  %7 = sub nsw i32 %6, 97, !dbg !5440
  %8 = add nsw i32 %7, 65, !dbg !5441
  store i32 %8, i32* %2, align 4, !dbg !5442
  br label %11, !dbg !5442

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !5443
  store i32 %10, i32* %2, align 4, !dbg !5444
  br label %11, !dbg !5444

11:                                               ; preds = %9, %5
  %12 = load i32, i32* %2, align 4, !dbg !5445
  ret i32 %12, !dbg !5445
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getugroups(i32 %0, i32* %1, i8* %2, i32 %3) #3 !dbg !5446 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca %struct.group*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5449, metadata !DIExpression()), !dbg !5450
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !5451, metadata !DIExpression()), !dbg !5452
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !5453, metadata !DIExpression()), !dbg !5454
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !5455, metadata !DIExpression()), !dbg !5456
  call void @llvm.dbg.declare(metadata i32* %9, metadata !5457, metadata !DIExpression()), !dbg !5458
  store i32 0, i32* %9, align 4, !dbg !5458
  %14 = load i32, i32* %8, align 4, !dbg !5459
  %15 = icmp ne i32 %14, -1, !dbg !5461
  br i1 %15, label %16, label %28, !dbg !5462

16:                                               ; preds = %4
  %17 = load i32, i32* %5, align 4, !dbg !5463
  %18 = icmp ne i32 %17, 0, !dbg !5466
  br i1 %18, label %19, label %25, !dbg !5467

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4, !dbg !5468
  %21 = load i32*, i32** %6, align 8, !dbg !5469
  %22 = load i32, i32* %9, align 4, !dbg !5470
  %23 = sext i32 %22 to i64, !dbg !5469
  %24 = getelementptr inbounds i32, i32* %21, i64 %23, !dbg !5469
  store i32 %20, i32* %24, align 4, !dbg !5471
  br label %25, !dbg !5469

25:                                               ; preds = %19, %16
  %26 = load i32, i32* %9, align 4, !dbg !5472
  %27 = add nsw i32 %26, 1, !dbg !5472
  store i32 %27, i32* %9, align 4, !dbg !5472
  br label %28, !dbg !5473

28:                                               ; preds = %25, %4
  call void @setgrent(), !dbg !5474
  br label %29, !dbg !5475

29:                                               ; preds = %28, %105
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !5476, metadata !DIExpression()), !dbg !5478
  call void @llvm.dbg.declare(metadata %struct.group** %11, metadata !5479, metadata !DIExpression()), !dbg !5487
  %30 = call i32* @__errno_location() #17, !dbg !5488
  store i32 0, i32* %30, align 4, !dbg !5489
  %31 = call %struct.group* @getgrent(), !dbg !5490
  store %struct.group* %31, %struct.group** %11, align 8, !dbg !5491
  %32 = load %struct.group*, %struct.group** %11, align 8, !dbg !5492
  %33 = icmp eq %struct.group* %32, null, !dbg !5494
  br i1 %33, label %34, label %35, !dbg !5495

34:                                               ; preds = %29
  br label %106, !dbg !5496

35:                                               ; preds = %29
  %36 = load %struct.group*, %struct.group** %11, align 8, !dbg !5497
  %37 = getelementptr inbounds %struct.group, %struct.group* %36, i32 0, i32 3, !dbg !5499
  %38 = load i8**, i8*** %37, align 8, !dbg !5499
  store i8** %38, i8*** %10, align 8, !dbg !5500
  br label %39, !dbg !5501

39:                                               ; preds = %102, %35
  %40 = load i8**, i8*** %10, align 8, !dbg !5502
  %41 = load i8*, i8** %40, align 8, !dbg !5504
  %42 = icmp ne i8* %41, null, !dbg !5505
  br i1 %42, label %43, label %105, !dbg !5505

43:                                               ; preds = %39
  call void @llvm.dbg.declare(metadata i32* %12, metadata !5506, metadata !DIExpression()), !dbg !5508
  %44 = load i8*, i8** %7, align 8, !dbg !5509
  %45 = load i8**, i8*** %10, align 8, !dbg !5509
  %46 = load i8*, i8** %45, align 8, !dbg !5509
  %47 = call i32 @strcmp(i8* %44, i8* %46) #14, !dbg !5509
  %48 = icmp eq i32 %47, 0, !dbg !5509
  br i1 %48, label %50, label %49, !dbg !5511

49:                                               ; preds = %43
  br label %102, !dbg !5512

50:                                               ; preds = %43
  store i32 0, i32* %12, align 4, !dbg !5513
  br label %51, !dbg !5515

51:                                               ; preds = %70, %50
  %52 = load i32, i32* %12, align 4, !dbg !5516
  %53 = load i32, i32* %9, align 4, !dbg !5518
  %54 = icmp slt i32 %52, %53, !dbg !5519
  br i1 %54, label %55, label %73, !dbg !5520

55:                                               ; preds = %51
  %56 = load i32*, i32** %6, align 8, !dbg !5521
  %57 = icmp ne i32* %56, null, !dbg !5521
  br i1 %57, label %58, label %69, !dbg !5523

58:                                               ; preds = %55
  %59 = load i32*, i32** %6, align 8, !dbg !5524
  %60 = load i32, i32* %12, align 4, !dbg !5525
  %61 = sext i32 %60 to i64, !dbg !5524
  %62 = getelementptr inbounds i32, i32* %59, i64 %61, !dbg !5524
  %63 = load i32, i32* %62, align 4, !dbg !5524
  %64 = load %struct.group*, %struct.group** %11, align 8, !dbg !5526
  %65 = getelementptr inbounds %struct.group, %struct.group* %64, i32 0, i32 2, !dbg !5527
  %66 = load i32, i32* %65, align 8, !dbg !5527
  %67 = icmp eq i32 %63, %66, !dbg !5528
  br i1 %67, label %68, label %69, !dbg !5529

68:                                               ; preds = %58
  br label %73, !dbg !5530

69:                                               ; preds = %58, %55
  br label %70, !dbg !5527

70:                                               ; preds = %69
  %71 = load i32, i32* %12, align 4, !dbg !5531
  %72 = add nsw i32 %71, 1, !dbg !5531
  store i32 %72, i32* %12, align 4, !dbg !5531
  br label %51, !dbg !5532, !llvm.loop !5533

73:                                               ; preds = %68, %51
  %74 = load i32, i32* %12, align 4, !dbg !5535
  %75 = load i32, i32* %9, align 4, !dbg !5537
  %76 = icmp eq i32 %74, %75, !dbg !5538
  br i1 %76, label %77, label %101, !dbg !5539

77:                                               ; preds = %73
  %78 = load i32, i32* %5, align 4, !dbg !5540
  %79 = icmp ne i32 %78, 0, !dbg !5543
  br i1 %79, label %80, label %93, !dbg !5544

80:                                               ; preds = %77
  %81 = load i32, i32* %9, align 4, !dbg !5545
  %82 = load i32, i32* %5, align 4, !dbg !5548
  %83 = icmp sge i32 %81, %82, !dbg !5549
  br i1 %83, label %84, label %85, !dbg !5550

84:                                               ; preds = %80
  br label %112, !dbg !5551

85:                                               ; preds = %80
  %86 = load %struct.group*, %struct.group** %11, align 8, !dbg !5552
  %87 = getelementptr inbounds %struct.group, %struct.group* %86, i32 0, i32 2, !dbg !5553
  %88 = load i32, i32* %87, align 8, !dbg !5553
  %89 = load i32*, i32** %6, align 8, !dbg !5554
  %90 = load i32, i32* %9, align 4, !dbg !5555
  %91 = sext i32 %90 to i64, !dbg !5554
  %92 = getelementptr inbounds i32, i32* %89, i64 %91, !dbg !5554
  store i32 %88, i32* %92, align 4, !dbg !5556
  br label %93, !dbg !5557

93:                                               ; preds = %85, %77
  %94 = load i32, i32* %9, align 4, !dbg !5558
  %95 = icmp eq i32 %94, 2147483647, !dbg !5560
  br i1 %95, label %96, label %98, !dbg !5561

96:                                               ; preds = %93
  %97 = call i32* @__errno_location() #17, !dbg !5562
  store i32 75, i32* %97, align 4, !dbg !5564
  br label %112, !dbg !5565

98:                                               ; preds = %93
  %99 = load i32, i32* %9, align 4, !dbg !5566
  %100 = add nsw i32 %99, 1, !dbg !5566
  store i32 %100, i32* %9, align 4, !dbg !5566
  br label %101, !dbg !5567

101:                                              ; preds = %98, %73
  br label %102, !dbg !5568

102:                                              ; preds = %101, %49
  %103 = load i8**, i8*** %10, align 8, !dbg !5569
  %104 = getelementptr inbounds i8*, i8** %103, i32 1, !dbg !5569
  store i8** %104, i8*** %10, align 8, !dbg !5569
  br label %39, !dbg !5570, !llvm.loop !5571

105:                                              ; preds = %39
  br label %29, !dbg !5475, !llvm.loop !5573

106:                                              ; preds = %34
  %107 = call i32* @__errno_location() #17, !dbg !5575
  %108 = load i32, i32* %107, align 4, !dbg !5575
  %109 = icmp ne i32 %108, 0, !dbg !5577
  br i1 %109, label %110, label %111, !dbg !5578

110:                                              ; preds = %106
  store i32 -1, i32* %9, align 4, !dbg !5579
  br label %111, !dbg !5580

111:                                              ; preds = %110, %106
  br label %112, !dbg !5581

112:                                              ; preds = %111, %96, %84
  call void @llvm.dbg.label(metadata !5582), !dbg !5583
  call void @llvm.dbg.declare(metadata i32* %13, metadata !5584, metadata !DIExpression()), !dbg !5586
  %113 = call i32* @__errno_location() #17, !dbg !5587
  %114 = load i32, i32* %113, align 4, !dbg !5587
  store i32 %114, i32* %13, align 4, !dbg !5586
  call void @endgrent(), !dbg !5588
  %115 = load i32, i32* %13, align 4, !dbg !5589
  %116 = call i32* @__errno_location() #17, !dbg !5590
  store i32 %115, i32* %116, align 4, !dbg !5591
  %117 = load i32, i32* %9, align 4, !dbg !5592
  ret i32 %117, !dbg !5593
}

declare dso_local void @setgrent() #2

declare dso_local %struct.group* @getgrent() #2

attributes #0 = { noinline noreturn nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
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

!llvm.dbg.cu = !{!2, !82, !88, !93, !101, !226, !107, !113, !202, !232, !220, !239, !251, !253, !255, !259, !262, !268, !270, !272, !662, !673, !675, !677, !679, !681, !683}
!llvm.ident = !{!686, !686, !686, !686, !686, !686, !686, !686, !686, !686, !686, !686, !686, !686, !686, !686, !686, !686, !686, !686, !686, !686, !686, !686, !686, !686, !686}
!llvm.module.flags = !{!687, !688, !689}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 75, type: !65, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !11, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../src/id.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!4 = !{}
!5 = !{!6, !9, !10}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !{!12, !19, !21, !25, !0, !27, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !58}
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "ruid", scope: !2, file: !3, line: 64, type: !14, isLocal: true, isDefinition: true)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !15, line: 79, baseType: !16)
!15 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !17, line: 146, baseType: !18)
!17 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "euid", scope: !2, file: !3, line: 64, type: !14, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "rgid", scope: !2, file: !3, line: 65, type: !23, isLocal: true, isDefinition: true)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !15, line: 64, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !17, line: 147, baseType: !18)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "egid", scope: !2, file: !3, line: 65, type: !23, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "just_context", scope: !2, file: !3, line: 45, type: !29, isLocal: true, isDefinition: true)
!29 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "just_group", scope: !2, file: !3, line: 51, type: !29, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "use_name", scope: !2, file: !3, line: 61, type: !29, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "use_real", scope: !2, file: !3, line: 53, type: !29, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "just_user", scope: !2, file: !3, line: 55, type: !29, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "opt_zero", scope: !2, file: !3, line: 47, type: !29, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "just_group_list", scope: !2, file: !3, line: 49, type: !29, isLocal: true, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "context", scope: !2, file: !3, line: 69, type: !9, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "multiple_users", scope: !2, file: !3, line: 59, type: !29, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "ok", scope: !2, file: !3, line: 57, type: !29, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "buf", scope: !50, file: !3, line: 332, type: !55, isLocal: true, isDefinition: true)
!50 = distinct !DISubprogram(name: "uidtostr_ptr", scope: !3, file: !3, line: 330, type: !51, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!51 = !DISubroutineType(types: !52)
!52 = !{!9, !53}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 168, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 21)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "buf", scope: !60, file: !3, line: 321, type: !55, isLocal: true, isDefinition: true)
!60 = distinct !DISubprogram(name: "gidtostr_ptr", scope: !3, file: !3, line: 319, type: !61, scopeLine: 320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!61 = !DISubroutineType(types: !62)
!62 = !{!9, !63}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 2560, elements: !76)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !68, line: 50, size: 256, elements: !69)
!68 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "")
!69 = !{!70, !71, !73, !75}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !67, file: !68, line: 52, baseType: !6, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !67, file: !68, line: 55, baseType: !72, size: 32, offset: 64)
!72 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !67, file: !68, line: 56, baseType: !74, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !67, file: !68, line: 57, baseType: !72, size: 32, offset: 192)
!76 = !{!77}
!77 = !DISubrange(count: 10)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "buf", scope: !80, file: !81, line: 96, type: !55, isLocal: true, isDefinition: true)
!80 = distinct !DISubprogram(name: "gidtostr_ptr", scope: !81, file: !81, line: 94, type: !61, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !82, retainedNodes: !4)
!81 = !DIFile(filename: "../src/group-list.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !81, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !83, globals: !85, splitDebugInlining: false, nameTableKind: None)
!83 = !{!10, !6, !84}
!84 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!85 = !{!78}
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(name: "Version", scope: !88, file: !89, line: 2, type: !6, isLocal: false, isDefinition: true)
!88 = distinct !DICompileUnit(language: DW_LANG_C99, file: !89, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !90, splitDebugInlining: false, nameTableKind: None)
!89 = !DIFile(filename: "src/version.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!90 = !{!86}
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "file_name", scope: !93, file: !94, line: 46, type: !6, isLocal: true, isDefinition: true)
!93 = distinct !DICompileUnit(language: DW_LANG_C99, file: !94, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !95, globals: !96, splitDebugInlining: false, nameTableKind: None)
!94 = !DIFile(filename: "../lib/closeout.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!95 = !{!6}
!96 = !{!91, !97}
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !93, file: !94, line: 56, type: !29, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "exit_failure", scope: !101, file: !102, line: 24, type: !104, isLocal: false, isDefinition: true)
!101 = distinct !DICompileUnit(language: DW_LANG_C99, file: !102, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !103, splitDebugInlining: false, nameTableKind: None)
!102 = !DIFile(filename: "../lib/exitfail.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!103 = !{!99}
!104 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !72)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "program_name", scope: !107, file: !108, line: 33, type: !6, isLocal: false, isDefinition: true)
!107 = distinct !DICompileUnit(language: DW_LANG_C99, file: !108, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !109, globals: !110, splitDebugInlining: false, nameTableKind: None)
!108 = !DIFile(filename: "../lib/progname.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!109 = !{!10, !9}
!110 = !{!105}
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !113, file: !114, line: 85, type: !189, isLocal: false, isDefinition: true)
!113 = distinct !DICompileUnit(language: DW_LANG_C99, file: !114, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !115, retainedTypes: !150, globals: !154, splitDebugInlining: false, nameTableKind: None)
!114 = !DIFile(filename: "../lib/quotearg.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!115 = !{!116, !130, !135}
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !117, line: 32, baseType: !18, size: 32, elements: !118)
!117 = !DIFile(filename: "../lib/quotearg.h", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!118 = !{!119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129}
!119 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!120 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!121 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!122 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!123 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!124 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!125 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!126 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!127 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!128 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!129 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !117, line: 242, baseType: !18, size: 32, elements: !131)
!131 = !{!132, !133, !134}
!132 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!133 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!134 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !136, line: 46, baseType: !18, size: 32, elements: !137)
!136 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149}
!138 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!139 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!140 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!141 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!142 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!143 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!144 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!145 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!146 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!147 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!148 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!149 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!150 = !{!72, !151, !152, !6}
!151 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !153, line: 46, baseType: !84)
!153 = !DIFile(filename: "LLVM_12.0_src/llvm-project/build/lib/clang/12.0.1/include/stddef.h", directory: "/nobackup")
!154 = !{!111, !155, !159, !171, !173, !178, !185, !187}
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !113, file: !114, line: 101, type: !157, isLocal: false, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 320, elements: !76)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !113, file: !114, line: 1052, type: !161, isLocal: false, isDefinition: true)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !114, line: 65, size: 448, elements: !162)
!162 = !{!163, !164, !165, !169, !170}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !161, file: !114, line: 68, baseType: !116, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !161, file: !114, line: 71, baseType: !72, size: 32, offset: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !161, file: !114, line: 75, baseType: !166, size: 256, offset: 64)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 256, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 8)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !161, file: !114, line: 78, baseType: !6, size: 64, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !161, file: !114, line: 81, baseType: !6, size: 64, offset: 384)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !113, file: !114, line: 116, type: !161, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "slot0", scope: !113, file: !114, line: 842, type: !175, isLocal: true, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 256)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "slotvec", scope: !113, file: !114, line: 845, type: !180, isLocal: true, isDefinition: true)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !114, line: 834, size: 128, elements: !182)
!182 = !{!183, !184}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !181, file: !114, line: 836, baseType: !152, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !181, file: !114, line: 837, baseType: !9, size: 64, offset: 64)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "nslots", scope: !113, file: !114, line: 843, type: !72, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "slotvec0", scope: !113, file: !114, line: 844, type: !181, isLocal: true, isDefinition: true)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 704, elements: !191)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!191 = !{!192}
!192 = !DISubrange(count: 11)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "E_bad_spec", scope: !195, file: !196, line: 108, type: !6, isLocal: true, isDefinition: true)
!195 = distinct !DISubprogram(name: "parse_with_separator", scope: !196, file: !196, line: 102, type: !197, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !202, retainedNodes: !4)
!196 = !DIFile(filename: "../lib/userspec.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!197 = !DISubroutineType(types: !198)
!198 = !{!6, !6, !6, !199, !200, !201, !201}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!202 = distinct !DICompileUnit(language: DW_LANG_C99, file: !196, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !203, retainedTypes: !212, globals: !213, splitDebugInlining: false, nameTableKind: None)
!203 = !{!204}
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !205, line: 25, baseType: !18, size: 32, elements: !206)
!205 = !DIFile(filename: "../lib/xstrtol.h", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!206 = !{!207, !208, !209, !210, !211}
!207 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!208 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!209 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!210 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!211 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!212 = !{!10, !14, !23, !6}
!213 = !{!214, !216, !193}
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(name: "E_invalid_user", scope: !195, file: !196, line: 106, type: !6, isLocal: true, isDefinition: true)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "E_invalid_group", scope: !195, file: !196, line: 107, type: !6, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !220, file: !221, line: 26, type: !223, isLocal: false, isDefinition: true)
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !222, splitDebugInlining: false, nameTableKind: None)
!221 = !DIFile(filename: "../lib/version-etc-fsf.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!222 = !{!218}
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 47)
!226 = distinct !DICompileUnit(language: DW_LANG_C99, file: !227, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !228, splitDebugInlining: false, nameTableKind: None)
!227 = !DIFile(filename: "../lib/umaxtostr.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!228 = !{!229}
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !230, line: 102, baseType: !231)
!230 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !17, line: 73, baseType: !84)
!232 = distinct !DICompileUnit(language: DW_LANG_C99, file: !233, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !234, retainedTypes: !238, splitDebugInlining: false, nameTableKind: None)
!233 = !DIFile(filename: "../lib/version-etc.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!234 = !{!235}
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !233, line: 40, baseType: !18, size: 32, elements: !236)
!236 = !{!237}
!237 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!238 = !{!6, !10}
!239 = distinct !DICompileUnit(language: DW_LANG_C99, file: !240, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !241, retainedTypes: !250, splitDebugInlining: false, nameTableKind: None)
!240 = !DIFile(filename: "../lib/xmalloc.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!241 = !{!242}
!242 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !244, file: !243, line: 186, baseType: !18, size: 32, elements: !248)
!243 = !DIFile(filename: "../lib/xalloc.h", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!244 = distinct !DISubprogram(name: "x2nrealloc", scope: !243, file: !243, line: 174, type: !245, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !4)
!245 = !DISubroutineType(types: !246)
!246 = !{!10, !10, !247, !152}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!248 = !{!249}
!249 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!250 = !{!152, !9, !10}
!251 = distinct !DICompileUnit(language: DW_LANG_C99, file: !252, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !95, splitDebugInlining: false, nameTableKind: None)
!252 = !DIFile(filename: "../lib/xalloc-die.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!253 = distinct !DICompileUnit(language: DW_LANG_C99, file: !254, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!254 = !DIFile(filename: "../lib/xgetgroups.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !256, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !257, retainedTypes: !258, splitDebugInlining: false, nameTableKind: None)
!256 = !DIFile(filename: "../lib/xstrtoul.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!257 = !{!204, !135}
!258 = !{!72, !151}
!259 = distinct !DICompileUnit(language: DW_LANG_C99, file: !260, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !261, splitDebugInlining: false, nameTableKind: None)
!260 = !DIFile(filename: "../lib/mbrtowc.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!261 = !{!152}
!262 = distinct !DICompileUnit(language: DW_LANG_C99, file: !263, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !264, splitDebugInlining: false, nameTableKind: None)
!263 = !DIFile(filename: "../lib/c-strcasecmp.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!264 = !{!265}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!267 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!268 = distinct !DICompileUnit(language: DW_LANG_C99, file: !269, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!269 = !DIFile(filename: "../lib/close-stream.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!270 = distinct !DICompileUnit(language: DW_LANG_C99, file: !271, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!271 = !DIFile(filename: "../lib/hard-locale.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!272 = distinct !DICompileUnit(language: DW_LANG_C99, file: !273, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !274, retainedTypes: !661, splitDebugInlining: false, nameTableKind: None)
!273 = !DIFile(filename: "../lib/localcharset.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!274 = !{!275}
!275 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !276, line: 41, baseType: !18, size: 32, elements: !277)
!276 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!277 = !{!278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660}
!278 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!279 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!280 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!281 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!282 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!283 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!284 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!285 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!286 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!287 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!288 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!289 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!290 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!291 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!292 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!293 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!294 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!295 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!296 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!297 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!298 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!299 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!300 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!301 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!302 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!303 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!304 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!305 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!306 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!307 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!308 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!309 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!310 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!311 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!312 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!313 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!314 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!315 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!316 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!317 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!318 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!319 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!320 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!321 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!322 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!323 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!324 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!325 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!326 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!327 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!386 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!389 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!390 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!391 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!392 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!393 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!394 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!395 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!396 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!397 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!398 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!399 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!400 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!473 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!546 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!547 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!548 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!549 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!550 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!551 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!552 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!553 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!554 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!555 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!556 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!557 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!558 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!559 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!560 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!562 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!563 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!564 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!565 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!566 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!567 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!593 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!594 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!595 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!596 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!597 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!602 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!603 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!604 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!605 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!661 = !{!10}
!662 = distinct !DICompileUnit(language: DW_LANG_C99, file: !663, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !664, retainedTypes: !672, splitDebugInlining: false, nameTableKind: None)
!663 = !DIFile(filename: "../lib/mgetgroups.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!664 = !{!665}
!665 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !666, file: !663, line: 83, baseType: !18, size: 32, elements: !670)
!666 = distinct !DISubprogram(name: "mgetgroups", scope: !663, file: !663, line: 66, type: !667, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !662, retainedNodes: !4)
!667 = !DISubroutineType(types: !668)
!668 = !{!72, !6, !23, !669}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!670 = !{!671}
!671 = !DIEnumerator(name: "N_GROUPS_INIT", value: 10, isUnsigned: true)
!672 = !{!10, !23, !152}
!673 = distinct !DICompileUnit(language: DW_LANG_C99, file: !674, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !661, splitDebugInlining: false, nameTableKind: None)
!674 = !DIFile(filename: "../lib/setlocale_null.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!675 = distinct !DICompileUnit(language: DW_LANG_C99, file: !676, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!676 = !DIFile(filename: "../lib/fclose.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!677 = distinct !DICompileUnit(language: DW_LANG_C99, file: !678, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !661, splitDebugInlining: false, nameTableKind: None)
!678 = !DIFile(filename: "../lib/fflush.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!679 = distinct !DICompileUnit(language: DW_LANG_C99, file: !680, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !661, splitDebugInlining: false, nameTableKind: None)
!680 = !DIFile(filename: "../lib/fseeko.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!681 = distinct !DICompileUnit(language: DW_LANG_C99, file: !682, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!682 = !DIFile(filename: "../lib/c-ctype.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!683 = distinct !DICompileUnit(language: DW_LANG_C99, file: !684, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !685, splitDebugInlining: false, nameTableKind: None)
!684 = !DIFile(filename: "../lib/getugroups.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!685 = !{!23, !10}
!686 = !{!"clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)"}
!687 = !{i32 7, !"Dwarf Version", i32 4}
!688 = !{i32 2, !"Debug Info Version", i32 3}
!689 = !{i32 1, !"wchar_size", i32 4}
!690 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 90, type: !691, scopeLine: 91, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!691 = !DISubroutineType(types: !692)
!692 = !{null, !72}
!693 = !DILocalVariable(name: "status", arg: 1, scope: !690, file: !3, line: 90, type: !72)
!694 = !DILocation(line: 90, column: 12, scope: !690)
!695 = !DILocation(line: 92, column: 7, scope: !696)
!696 = distinct !DILexicalBlock(scope: !690, file: !3, line: 92, column: 7)
!697 = !DILocation(line: 92, column: 14, scope: !696)
!698 = !DILocation(line: 92, column: 7, scope: !690)
!699 = !DILocation(line: 93, column: 5, scope: !696)
!700 = !DILocation(line: 93, column: 5, scope: !701)
!701 = distinct !DILexicalBlock(scope: !696, file: !3, line: 93, column: 5)
!702 = !DILocation(line: 96, column: 55, scope: !703)
!703 = distinct !DILexicalBlock(scope: !696, file: !3, line: 95, column: 5)
!704 = !DILocation(line: 96, column: 7, scope: !703)
!705 = !DILocation(line: 97, column: 7, scope: !703)
!706 = !DILocation(line: 102, column: 7, scope: !703)
!707 = !DILocation(line: 113, column: 7, scope: !703)
!708 = !DILocation(line: 114, column: 7, scope: !703)
!709 = !DILocation(line: 115, column: 7, scope: !703)
!710 = !DILocation(line: 119, column: 7, scope: !703)
!711 = !DILocation(line: 121, column: 9, scope: !690)
!712 = !DILocation(line: 121, column: 3, scope: !690)
!713 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !714, file: !714, line: 634, type: !715, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!714 = !DIFile(filename: "../src/system.h", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!715 = !DISubroutineType(types: !716)
!716 = !{null, !6}
!717 = !DILocalVariable(name: "program", arg: 1, scope: !713, file: !714, line: 634, type: !6)
!718 = !DILocation(line: 634, column: 34, scope: !713)
!719 = !DILocalVariable(name: "infomap", scope: !713, file: !714, line: 636, type: !720)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !721, size: 896, elements: !726)
!721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !722)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !713, file: !714, line: 636, size: 128, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !722, file: !714, line: 636, baseType: !6, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !722, file: !714, line: 636, baseType: !6, size: 64, offset: 64)
!726 = !{!727}
!727 = !DISubrange(count: 7)
!728 = !DILocation(line: 636, column: 67, scope: !713)
!729 = !DILocalVariable(name: "node", scope: !713, file: !714, line: 646, type: !6)
!730 = !DILocation(line: 646, column: 15, scope: !713)
!731 = !DILocation(line: 646, column: 22, scope: !713)
!732 = !DILocalVariable(name: "map_prog", scope: !713, file: !714, line: 647, type: !733)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!734 = !DILocation(line: 647, column: 25, scope: !713)
!735 = !DILocation(line: 647, column: 36, scope: !713)
!736 = !DILocation(line: 649, column: 3, scope: !713)
!737 = !DILocation(line: 649, column: 10, scope: !713)
!738 = !DILocation(line: 649, column: 20, scope: !713)
!739 = !DILocation(line: 649, column: 28, scope: !713)
!740 = !DILocation(line: 649, column: 33, scope: !713)
!741 = !DILocation(line: 649, column: 31, scope: !713)
!742 = !DILocation(line: 0, scope: !713)
!743 = !DILocation(line: 650, column: 13, scope: !713)
!744 = distinct !{!744, !736, !743, !745}
!745 = !{!"llvm.loop.mustprogress"}
!746 = !DILocation(line: 652, column: 7, scope: !747)
!747 = distinct !DILexicalBlock(scope: !713, file: !714, line: 652, column: 7)
!748 = !DILocation(line: 652, column: 17, scope: !747)
!749 = !DILocation(line: 652, column: 7, scope: !713)
!750 = !DILocation(line: 653, column: 12, scope: !747)
!751 = !DILocation(line: 653, column: 22, scope: !747)
!752 = !DILocation(line: 653, column: 10, scope: !747)
!753 = !DILocation(line: 653, column: 5, scope: !747)
!754 = !DILocation(line: 655, column: 3, scope: !713)
!755 = !DILocalVariable(name: "lc_messages", scope: !713, file: !714, line: 659, type: !6)
!756 = !DILocation(line: 659, column: 15, scope: !713)
!757 = !DILocation(line: 659, column: 29, scope: !713)
!758 = !DILocation(line: 660, column: 7, scope: !759)
!759 = distinct !DILexicalBlock(scope: !713, file: !714, line: 660, column: 7)
!760 = !DILocation(line: 660, column: 19, scope: !759)
!761 = !DILocation(line: 660, column: 22, scope: !759)
!762 = !DILocation(line: 660, column: 7, scope: !713)
!763 = !DILocation(line: 666, column: 7, scope: !764)
!764 = distinct !DILexicalBlock(scope: !759, file: !714, line: 661, column: 5)
!765 = !DILocation(line: 668, column: 5, scope: !764)
!766 = !DILocation(line: 670, column: 24, scope: !713)
!767 = !DILocation(line: 669, column: 3, scope: !713)
!768 = !DILocation(line: 672, column: 11, scope: !713)
!769 = !DILocation(line: 672, column: 17, scope: !713)
!770 = !DILocation(line: 672, column: 25, scope: !713)
!771 = !DILocation(line: 672, column: 22, scope: !713)
!772 = !DILocation(line: 671, column: 3, scope: !713)
!773 = !DILocation(line: 673, column: 1, scope: !713)
!774 = distinct !DISubprogram(name: "klee_dump_memory", scope: !3, file: !3, line: 125, type: !775, scopeLine: 125, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!775 = !DISubroutineType(types: !776)
!776 = !{null}
!777 = !DILocation(line: 125, column: 26, scope: !774)
!778 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 128, type: !779, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!779 = !DISubroutineType(types: !780)
!780 = !{!72, !72, !201}
!781 = !DILocalVariable(name: "argc", arg: 1, scope: !778, file: !3, line: 128, type: !72)
!782 = !DILocation(line: 128, column: 11, scope: !778)
!783 = !DILocalVariable(name: "argv", arg: 2, scope: !778, file: !3, line: 128, type: !201)
!784 = !DILocation(line: 128, column: 24, scope: !778)
!785 = !DILocalVariable(name: "optc", scope: !778, file: !3, line: 130, type: !72)
!786 = !DILocation(line: 130, column: 7, scope: !778)
!787 = !DILocalVariable(name: "selinux_enabled", scope: !778, file: !3, line: 131, type: !72)
!788 = !DILocation(line: 131, column: 7, scope: !778)
!789 = !DILocation(line: 131, column: 26, scope: !778)
!790 = !DILocation(line: 131, column: 48, scope: !778)
!791 = !DILocalVariable(name: "smack_enabled", scope: !778, file: !3, line: 132, type: !29)
!792 = !DILocation(line: 132, column: 8, scope: !778)
!793 = !DILocation(line: 132, column: 24, scope: !778)
!794 = !DILocalVariable(name: "pw_name", scope: !778, file: !3, line: 133, type: !9)
!795 = !DILocation(line: 133, column: 9, scope: !778)
!796 = !DILocation(line: 136, column: 21, scope: !778)
!797 = !DILocation(line: 136, column: 3, scope: !778)
!798 = !DILocation(line: 137, column: 3, scope: !778)
!799 = !DILocation(line: 141, column: 3, scope: !778)
!800 = !DILocation(line: 143, column: 3, scope: !778)
!801 = !DILocation(line: 143, column: 31, scope: !778)
!802 = !DILocation(line: 143, column: 37, scope: !778)
!803 = !DILocation(line: 143, column: 18, scope: !778)
!804 = !DILocation(line: 143, column: 16, scope: !778)
!805 = !DILocation(line: 143, column: 72, scope: !778)
!806 = !DILocation(line: 145, column: 15, scope: !807)
!807 = distinct !DILexicalBlock(scope: !778, file: !3, line: 144, column: 5)
!808 = !DILocation(line: 145, column: 7, scope: !807)
!809 = !DILocation(line: 149, column: 11, scope: !810)
!810 = distinct !DILexicalBlock(scope: !807, file: !3, line: 146, column: 9)
!811 = !DILocation(line: 159, column: 16, scope: !812)
!812 = distinct !DILexicalBlock(scope: !810, file: !3, line: 159, column: 15)
!813 = !DILocation(line: 159, column: 15, scope: !810)
!814 = !DILocation(line: 160, column: 13, scope: !812)
!815 = !DILocation(line: 163, column: 24, scope: !810)
!816 = !DILocation(line: 164, column: 11, scope: !810)
!817 = !DILocation(line: 167, column: 22, scope: !810)
!818 = !DILocation(line: 169, column: 11, scope: !810)
!819 = !DILocation(line: 171, column: 20, scope: !810)
!820 = !DILocation(line: 172, column: 11, scope: !810)
!821 = !DILocation(line: 174, column: 20, scope: !810)
!822 = !DILocation(line: 175, column: 11, scope: !810)
!823 = !DILocation(line: 177, column: 21, scope: !810)
!824 = !DILocation(line: 178, column: 11, scope: !810)
!825 = !DILocation(line: 180, column: 20, scope: !810)
!826 = !DILocation(line: 181, column: 11, scope: !810)
!827 = !DILocation(line: 183, column: 27, scope: !810)
!828 = !DILocation(line: 184, column: 11, scope: !810)
!829 = !DILocation(line: 185, column: 9, scope: !810)
!830 = !DILocation(line: 186, column: 9, scope: !810)
!831 = !DILocation(line: 188, column: 11, scope: !810)
!832 = distinct !{!832, !800, !833, !745}
!833 = !DILocation(line: 190, column: 5, scope: !778)
!834 = !DILocation(line: 191, column: 1, scope: !778)
!835 = !DILocalVariable(name: "n_ids", scope: !778, file: !3, line: 193, type: !152)
!836 = !DILocation(line: 193, column: 10, scope: !778)
!837 = !DILocation(line: 193, column: 18, scope: !778)
!838 = !DILocation(line: 193, column: 25, scope: !778)
!839 = !DILocation(line: 193, column: 23, scope: !778)
!840 = !DILocation(line: 195, column: 7, scope: !841)
!841 = distinct !DILexicalBlock(scope: !778, file: !3, line: 195, column: 7)
!842 = !DILocation(line: 195, column: 13, scope: !841)
!843 = !DILocation(line: 195, column: 16, scope: !841)
!844 = !DILocation(line: 195, column: 7, scope: !778)
!845 = !DILocation(line: 196, column: 5, scope: !841)
!846 = !DILocation(line: 199, column: 7, scope: !847)
!847 = distinct !DILexicalBlock(scope: !778, file: !3, line: 199, column: 7)
!848 = !DILocation(line: 199, column: 19, scope: !847)
!849 = !DILocation(line: 199, column: 17, scope: !847)
!850 = !DILocation(line: 199, column: 32, scope: !847)
!851 = !DILocation(line: 199, column: 30, scope: !847)
!852 = !DILocation(line: 199, column: 50, scope: !847)
!853 = !DILocation(line: 199, column: 48, scope: !847)
!854 = !DILocation(line: 199, column: 63, scope: !847)
!855 = !DILocation(line: 199, column: 7, scope: !778)
!856 = !DILocation(line: 200, column: 5, scope: !847)
!857 = !DILocalVariable(name: "default_format", scope: !778, file: !3, line: 202, type: !29)
!858 = !DILocation(line: 202, column: 8, scope: !778)
!859 = !DILocation(line: 202, column: 28, scope: !778)
!860 = !DILocation(line: 203, column: 28, scope: !778)
!861 = !DILocation(line: 203, column: 31, scope: !778)
!862 = !DILocation(line: 204, column: 28, scope: !778)
!863 = !DILocation(line: 204, column: 31, scope: !778)
!864 = !DILocation(line: 205, column: 28, scope: !778)
!865 = !DILocation(line: 205, column: 31, scope: !778)
!866 = !DILocation(line: 202, column: 25, scope: !778)
!867 = !DILocation(line: 207, column: 7, scope: !868)
!868 = distinct !DILexicalBlock(scope: !778, file: !3, line: 207, column: 7)
!869 = !DILocation(line: 207, column: 22, scope: !868)
!870 = !DILocation(line: 207, column: 26, scope: !868)
!871 = !DILocation(line: 207, column: 35, scope: !868)
!872 = !DILocation(line: 207, column: 38, scope: !868)
!873 = !DILocation(line: 207, column: 7, scope: !778)
!874 = !DILocation(line: 208, column: 5, scope: !868)
!875 = !DILocation(line: 211, column: 7, scope: !876)
!876 = distinct !DILexicalBlock(scope: !778, file: !3, line: 211, column: 7)
!877 = !DILocation(line: 211, column: 22, scope: !876)
!878 = !DILocation(line: 211, column: 25, scope: !876)
!879 = !DILocation(line: 211, column: 7, scope: !778)
!880 = !DILocation(line: 212, column: 5, scope: !876)
!881 = !DILocation(line: 220, column: 7, scope: !882)
!882 = distinct !DILexicalBlock(scope: !778, file: !3, line: 220, column: 7)
!883 = !DILocation(line: 220, column: 13, scope: !882)
!884 = !DILocation(line: 221, column: 7, scope: !882)
!885 = !DILocation(line: 221, column: 11, scope: !882)
!886 = !DILocation(line: 222, column: 11, scope: !882)
!887 = !DILocation(line: 222, column: 15, scope: !882)
!888 = !DILocation(line: 222, column: 30, scope: !882)
!889 = !DILocation(line: 222, column: 35, scope: !882)
!890 = !DILocation(line: 220, column: 7, scope: !778)
!891 = !DILocation(line: 225, column: 12, scope: !892)
!892 = distinct !DILexicalBlock(scope: !893, file: !3, line: 225, column: 11)
!893 = distinct !DILexicalBlock(scope: !882, file: !3, line: 223, column: 5)
!894 = !DILocation(line: 225, column: 28, scope: !892)
!895 = !DILocation(line: 225, column: 31, scope: !892)
!896 = !DILocation(line: 225, column: 49, scope: !892)
!897 = !DILocation(line: 225, column: 52, scope: !892)
!898 = !DILocation(line: 226, column: 11, scope: !892)
!899 = !DILocation(line: 226, column: 15, scope: !892)
!900 = !DILocation(line: 227, column: 15, scope: !892)
!901 = !DILocation(line: 227, column: 18, scope: !892)
!902 = !DILocation(line: 227, column: 55, scope: !892)
!903 = !DILocation(line: 228, column: 15, scope: !892)
!904 = !DILocation(line: 228, column: 18, scope: !892)
!905 = !DILocation(line: 225, column: 11, scope: !893)
!906 = !DILocation(line: 229, column: 9, scope: !892)
!907 = !DILocation(line: 230, column: 5, scope: !893)
!908 = !DILocation(line: 232, column: 7, scope: !909)
!909 = distinct !DILexicalBlock(scope: !778, file: !3, line: 232, column: 7)
!910 = !DILocation(line: 232, column: 13, scope: !909)
!911 = !DILocation(line: 232, column: 7, scope: !778)
!912 = !DILocation(line: 234, column: 24, scope: !913)
!913 = distinct !DILexicalBlock(scope: !909, file: !3, line: 233, column: 5)
!914 = !DILocation(line: 234, column: 30, scope: !913)
!915 = !DILocation(line: 234, column: 22, scope: !913)
!916 = !DILocation(line: 239, column: 16, scope: !913)
!917 = !DILocation(line: 239, column: 13, scope: !913)
!918 = !DILocation(line: 241, column: 7, scope: !913)
!919 = !DILocation(line: 241, column: 14, scope: !920)
!920 = distinct !DILexicalBlock(scope: !921, file: !3, line: 241, column: 7)
!921 = distinct !DILexicalBlock(scope: !913, file: !3, line: 241, column: 7)
!922 = !DILocation(line: 241, column: 23, scope: !920)
!923 = !DILocation(line: 241, column: 21, scope: !920)
!924 = !DILocation(line: 241, column: 7, scope: !921)
!925 = !DILocalVariable(name: "pwd", scope: !926, file: !3, line: 243, type: !927)
!926 = distinct !DILexicalBlock(scope: !920, file: !3, line: 242, column: 9)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !929, line: 49, size: 384, elements: !930)
!929 = !DIFile(filename: "/usr/include/pwd.h", directory: "")
!930 = !{!931, !932, !933, !934, !935, !936, !937}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !928, file: !929, line: 51, baseType: !9, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !928, file: !929, line: 52, baseType: !9, size: 64, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !928, file: !929, line: 54, baseType: !16, size: 32, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !928, file: !929, line: 55, baseType: !24, size: 32, offset: 160)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !928, file: !929, line: 56, baseType: !9, size: 64, offset: 192)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !928, file: !929, line: 57, baseType: !9, size: 64, offset: 256)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !928, file: !929, line: 58, baseType: !9, size: 64, offset: 320)
!938 = !DILocation(line: 243, column: 26, scope: !926)
!939 = !DILocalVariable(name: "spec", scope: !926, file: !3, line: 244, type: !6)
!940 = !DILocation(line: 244, column: 23, scope: !926)
!941 = !DILocation(line: 244, column: 30, scope: !926)
!942 = !DILocation(line: 244, column: 35, scope: !926)
!943 = !DILocation(line: 248, column: 16, scope: !944)
!944 = distinct !DILexicalBlock(scope: !926, file: !3, line: 248, column: 15)
!945 = !DILocation(line: 248, column: 15, scope: !944)
!946 = !DILocation(line: 248, column: 15, scope: !926)
!947 = !DILocation(line: 250, column: 36, scope: !948)
!948 = distinct !DILexicalBlock(scope: !949, file: !3, line: 250, column: 19)
!949 = distinct !DILexicalBlock(scope: !944, file: !3, line: 249, column: 13)
!950 = !DILocation(line: 250, column: 19, scope: !948)
!951 = !DILocation(line: 250, column: 67, scope: !948)
!952 = !DILocation(line: 250, column: 19, scope: !949)
!953 = !DILocation(line: 255, column: 35, scope: !954)
!954 = distinct !DILexicalBlock(scope: !948, file: !3, line: 251, column: 17)
!955 = !DILocation(line: 255, column: 25, scope: !954)
!956 = !DILocation(line: 255, column: 23, scope: !954)
!957 = !DILocation(line: 256, column: 17, scope: !954)
!958 = !DILocation(line: 257, column: 13, scope: !949)
!959 = !DILocation(line: 258, column: 15, scope: !960)
!960 = distinct !DILexicalBlock(scope: !926, file: !3, line: 258, column: 15)
!961 = !DILocation(line: 258, column: 19, scope: !960)
!962 = !DILocation(line: 258, column: 15, scope: !926)
!963 = !DILocation(line: 260, column: 25, scope: !964)
!964 = distinct !DILexicalBlock(scope: !960, file: !3, line: 259, column: 13)
!965 = !DILocation(line: 260, column: 62, scope: !964)
!966 = !DILocation(line: 260, column: 67, scope: !964)
!967 = !DILocation(line: 260, column: 55, scope: !964)
!968 = !DILocation(line: 260, column: 15, scope: !964)
!969 = !DILocation(line: 261, column: 18, scope: !964)
!970 = !DILocation(line: 262, column: 15, scope: !964)
!971 = !DILocation(line: 264, column: 30, scope: !926)
!972 = !DILocation(line: 264, column: 35, scope: !926)
!973 = !DILocation(line: 264, column: 21, scope: !926)
!974 = !DILocation(line: 264, column: 19, scope: !926)
!975 = !DILocation(line: 265, column: 25, scope: !926)
!976 = !DILocation(line: 265, column: 30, scope: !926)
!977 = !DILocation(line: 265, column: 23, scope: !926)
!978 = !DILocation(line: 265, column: 16, scope: !926)
!979 = !DILocation(line: 266, column: 25, scope: !926)
!980 = !DILocation(line: 266, column: 30, scope: !926)
!981 = !DILocation(line: 266, column: 23, scope: !926)
!982 = !DILocation(line: 266, column: 16, scope: !926)
!983 = !DILocation(line: 267, column: 24, scope: !926)
!984 = !DILocation(line: 267, column: 11, scope: !926)
!985 = !DILocation(line: 268, column: 17, scope: !926)
!986 = !DILocation(line: 268, column: 11, scope: !926)
!987 = !DILocation(line: 269, column: 9, scope: !926)
!988 = !DILocation(line: 241, column: 36, scope: !920)
!989 = !DILocation(line: 241, column: 7, scope: !920)
!990 = distinct !{!990, !924, !991, !745}
!991 = !DILocation(line: 269, column: 9, scope: !921)
!992 = !DILocation(line: 270, column: 5, scope: !913)
!993 = !DILocalVariable(name: "NO_UID", scope: !994, file: !3, line: 276, type: !14)
!994 = distinct !DILexicalBlock(scope: !909, file: !3, line: 272, column: 5)
!995 = !DILocation(line: 276, column: 13, scope: !994)
!996 = !DILocalVariable(name: "NO_GID", scope: !994, file: !3, line: 277, type: !23)
!997 = !DILocation(line: 277, column: 13, scope: !994)
!998 = !DILocation(line: 279, column: 11, scope: !999)
!999 = distinct !DILexicalBlock(scope: !994, file: !3, line: 279, column: 11)
!1000 = !DILocation(line: 279, column: 11, scope: !994)
!1001 = !DILocation(line: 279, column: 24, scope: !999)
!1002 = !DILocation(line: 280, column: 14, scope: !999)
!1003 = !DILocation(line: 280, column: 25, scope: !999)
!1004 = !DILocation(line: 280, column: 29, scope: !999)
!1005 = !DILocation(line: 280, column: 45, scope: !999)
!1006 = !DILocation(line: 280, column: 49, scope: !999)
!1007 = !DILocation(line: 282, column: 11, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !999, file: !3, line: 281, column: 9)
!1009 = !DILocation(line: 282, column: 17, scope: !1008)
!1010 = !DILocation(line: 283, column: 18, scope: !1008)
!1011 = !DILocation(line: 283, column: 16, scope: !1008)
!1012 = !DILocation(line: 284, column: 15, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 284, column: 15)
!1014 = !DILocation(line: 284, column: 23, scope: !1013)
!1015 = !DILocation(line: 284, column: 20, scope: !1013)
!1016 = !DILocation(line: 284, column: 30, scope: !1013)
!1017 = !DILocation(line: 284, column: 33, scope: !1013)
!1018 = !DILocation(line: 284, column: 15, scope: !1008)
!1019 = !DILocation(line: 285, column: 13, scope: !1013)
!1020 = !DILocation(line: 286, column: 9, scope: !1008)
!1021 = !DILocation(line: 288, column: 11, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !994, file: !3, line: 288, column: 11)
!1023 = !DILocation(line: 288, column: 11, scope: !994)
!1024 = !DILocation(line: 288, column: 23, scope: !1022)
!1025 = !DILocation(line: 289, column: 14, scope: !1022)
!1026 = !DILocation(line: 289, column: 25, scope: !1022)
!1027 = !DILocation(line: 289, column: 29, scope: !1022)
!1028 = !DILocation(line: 289, column: 45, scope: !1022)
!1029 = !DILocation(line: 289, column: 49, scope: !1022)
!1030 = !DILocation(line: 291, column: 11, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 290, column: 9)
!1032 = !DILocation(line: 291, column: 17, scope: !1031)
!1033 = !DILocation(line: 292, column: 18, scope: !1031)
!1034 = !DILocation(line: 292, column: 16, scope: !1031)
!1035 = !DILocation(line: 293, column: 15, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 293, column: 15)
!1037 = !DILocation(line: 293, column: 23, scope: !1036)
!1038 = !DILocation(line: 293, column: 20, scope: !1036)
!1039 = !DILocation(line: 293, column: 30, scope: !1036)
!1040 = !DILocation(line: 293, column: 33, scope: !1036)
!1041 = !DILocation(line: 293, column: 15, scope: !1031)
!1042 = !DILocation(line: 294, column: 13, scope: !1036)
!1043 = !DILocation(line: 295, column: 9, scope: !1031)
!1044 = !DILocation(line: 297, column: 12, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !994, file: !3, line: 297, column: 11)
!1046 = !DILocation(line: 297, column: 22, scope: !1045)
!1047 = !DILocation(line: 297, column: 26, scope: !1045)
!1048 = !DILocation(line: 297, column: 37, scope: !1045)
!1049 = !DILocation(line: 297, column: 40, scope: !1045)
!1050 = !DILocation(line: 297, column: 56, scope: !1045)
!1051 = !DILocation(line: 297, column: 60, scope: !1045)
!1052 = !DILocation(line: 297, column: 11, scope: !994)
!1053 = !DILocation(line: 299, column: 11, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 298, column: 9)
!1055 = !DILocation(line: 299, column: 17, scope: !1054)
!1056 = !DILocation(line: 300, column: 18, scope: !1054)
!1057 = !DILocation(line: 300, column: 16, scope: !1054)
!1058 = !DILocation(line: 301, column: 15, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 301, column: 15)
!1060 = !DILocation(line: 301, column: 23, scope: !1059)
!1061 = !DILocation(line: 301, column: 20, scope: !1059)
!1062 = !DILocation(line: 301, column: 30, scope: !1059)
!1063 = !DILocation(line: 301, column: 33, scope: !1059)
!1064 = !DILocation(line: 301, column: 15, scope: !1054)
!1065 = !DILocation(line: 302, column: 13, scope: !1059)
!1066 = !DILocation(line: 304, column: 11, scope: !1054)
!1067 = !DILocation(line: 304, column: 17, scope: !1054)
!1068 = !DILocation(line: 305, column: 18, scope: !1054)
!1069 = !DILocation(line: 305, column: 16, scope: !1054)
!1070 = !DILocation(line: 306, column: 15, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 306, column: 15)
!1072 = !DILocation(line: 306, column: 23, scope: !1071)
!1073 = !DILocation(line: 306, column: 20, scope: !1071)
!1074 = !DILocation(line: 306, column: 30, scope: !1071)
!1075 = !DILocation(line: 306, column: 33, scope: !1071)
!1076 = !DILocation(line: 306, column: 15, scope: !1054)
!1077 = !DILocation(line: 307, column: 13, scope: !1071)
!1078 = !DILocation(line: 308, column: 9, scope: !1054)
!1079 = !DILocation(line: 309, column: 22, scope: !994)
!1080 = !DILocation(line: 309, column: 9, scope: !994)
!1081 = !DILocation(line: 312, column: 10, scope: !778)
!1082 = !DILocation(line: 312, column: 3, scope: !778)
!1083 = distinct !DISubprogram(name: "is_smack_enabled", scope: !1084, file: !1084, line: 39, type: !1085, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1084 = !DIFile(filename: "../lib/smack.h", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!29}
!1087 = !DILocation(line: 44, column: 3, scope: !1083)
!1088 = distinct !DISubprogram(name: "smack_new_label_from_self", scope: !1084, file: !1084, line: 26, type: !1089, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!1091, !201}
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1092, line: 77, baseType: !1093)
!1092 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !17, line: 193, baseType: !1094)
!1094 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1095 = !DILocalVariable(name: "label", arg: 1, scope: !1088, file: !1084, line: 26, type: !201)
!1096 = !DILocation(line: 26, column: 35, scope: !1088)
!1097 = !DILocation(line: 28, column: 3, scope: !1088)
!1098 = distinct !DISubprogram(name: "print_stuff", scope: !3, file: !3, line: 437, type: !715, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1099 = !DILocalVariable(name: "pw_name", arg: 1, scope: !1098, file: !3, line: 437, type: !6)
!1100 = !DILocation(line: 437, column: 26, scope: !1098)
!1101 = !DILocation(line: 439, column: 7, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 439, column: 7)
!1103 = !DILocation(line: 439, column: 7, scope: !1098)
!1104 = !DILocation(line: 440, column: 19, scope: !1102)
!1105 = !DILocation(line: 440, column: 30, scope: !1102)
!1106 = !DILocation(line: 440, column: 37, scope: !1102)
!1107 = !DILocation(line: 440, column: 7, scope: !1102)
!1108 = !DILocation(line: 447, column: 12, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 447, column: 12)
!1110 = !DILocation(line: 447, column: 12, scope: !1102)
!1111 = !DILocation(line: 448, column: 24, scope: !1109)
!1112 = !DILocation(line: 448, column: 35, scope: !1109)
!1113 = !DILocation(line: 448, column: 42, scope: !1109)
!1114 = !DILocation(line: 448, column: 48, scope: !1109)
!1115 = !DILocation(line: 448, column: 11, scope: !1109)
!1116 = !DILocation(line: 448, column: 8, scope: !1109)
!1117 = !DILocation(line: 448, column: 5, scope: !1109)
!1118 = !DILocation(line: 449, column: 12, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 449, column: 12)
!1120 = !DILocation(line: 449, column: 12, scope: !1109)
!1121 = !DILocation(line: 450, column: 29, scope: !1119)
!1122 = !DILocation(line: 450, column: 38, scope: !1119)
!1123 = !DILocation(line: 450, column: 44, scope: !1119)
!1124 = !DILocation(line: 450, column: 50, scope: !1119)
!1125 = !DILocation(line: 451, column: 29, scope: !1119)
!1126 = !DILocation(line: 451, column: 39, scope: !1119)
!1127 = !DILocation(line: 450, column: 11, scope: !1119)
!1128 = !DILocation(line: 450, column: 8, scope: !1119)
!1129 = !DILocation(line: 450, column: 5, scope: !1119)
!1130 = !DILocation(line: 452, column: 12, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 452, column: 12)
!1132 = !DILocation(line: 452, column: 12, scope: !1119)
!1133 = !DILocation(line: 453, column: 5, scope: !1131)
!1134 = !DILocation(line: 455, column: 22, scope: !1131)
!1135 = !DILocation(line: 455, column: 5, scope: !1131)
!1136 = !DILocation(line: 460, column: 7, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 460, column: 7)
!1138 = !DILocation(line: 460, column: 16, scope: !1137)
!1139 = !DILocation(line: 460, column: 19, scope: !1137)
!1140 = !DILocation(line: 460, column: 35, scope: !1137)
!1141 = !DILocation(line: 460, column: 38, scope: !1137)
!1142 = !DILocation(line: 460, column: 7, scope: !1098)
!1143 = !DILocation(line: 462, column: 7, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 461, column: 5)
!1145 = !DILocation(line: 463, column: 7, scope: !1144)
!1146 = !DILocation(line: 464, column: 5, scope: !1144)
!1147 = !DILocation(line: 467, column: 7, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 466, column: 5)
!1149 = !DILocation(line: 469, column: 1, scope: !1098)
!1150 = distinct !DISubprogram(name: "print_user", scope: !3, file: !3, line: 340, type: !1151, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{null, !14}
!1153 = !DILocalVariable(name: "uid", arg: 1, scope: !1150, file: !3, line: 340, type: !14)
!1154 = !DILocation(line: 340, column: 19, scope: !1150)
!1155 = !DILocalVariable(name: "pwd", scope: !1150, file: !3, line: 342, type: !927)
!1156 = !DILocation(line: 342, column: 18, scope: !1150)
!1157 = !DILocation(line: 344, column: 7, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 344, column: 7)
!1159 = !DILocation(line: 344, column: 7, scope: !1150)
!1160 = !DILocation(line: 346, column: 23, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 345, column: 5)
!1162 = !DILocation(line: 346, column: 13, scope: !1161)
!1163 = !DILocation(line: 346, column: 11, scope: !1161)
!1164 = !DILocation(line: 347, column: 11, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 347, column: 11)
!1166 = !DILocation(line: 347, column: 15, scope: !1165)
!1167 = !DILocation(line: 347, column: 11, scope: !1161)
!1168 = !DILocation(line: 350, column: 18, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 348, column: 9)
!1170 = !DILocation(line: 349, column: 11, scope: !1169)
!1171 = !DILocation(line: 351, column: 14, scope: !1169)
!1172 = !DILocation(line: 352, column: 9, scope: !1169)
!1173 = !DILocation(line: 353, column: 5, scope: !1161)
!1174 = !DILocalVariable(name: "s", scope: !1150, file: !3, line: 355, type: !9)
!1175 = !DILocation(line: 355, column: 9, scope: !1150)
!1176 = !DILocation(line: 355, column: 13, scope: !1150)
!1177 = !DILocation(line: 355, column: 19, scope: !1150)
!1178 = !DILocation(line: 355, column: 24, scope: !1150)
!1179 = !DILocation(line: 355, column: 34, scope: !1150)
!1180 = !DILocation(line: 356, column: 3, scope: !1150)
!1181 = !DILocation(line: 357, column: 1, scope: !1150)
!1182 = distinct !DISubprogram(name: "print_full_info", scope: !3, file: !3, line: 362, type: !715, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1183 = !DILocalVariable(name: "username", arg: 1, scope: !1182, file: !3, line: 362, type: !6)
!1184 = !DILocation(line: 362, column: 30, scope: !1182)
!1185 = !DILocalVariable(name: "pwd", scope: !1182, file: !3, line: 364, type: !927)
!1186 = !DILocation(line: 364, column: 18, scope: !1182)
!1187 = !DILocalVariable(name: "grp", scope: !1182, file: !3, line: 365, type: !1188)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !1190, line: 42, size: 256, elements: !1191)
!1190 = !DIFile(filename: "/usr/include/grp.h", directory: "")
!1191 = !{!1192, !1193, !1194, !1195}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !1189, file: !1190, line: 44, baseType: !9, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !1189, file: !1190, line: 45, baseType: !9, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !1189, file: !1190, line: 46, baseType: !24, size: 32, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !1189, file: !1190, line: 47, baseType: !201, size: 64, offset: 192)
!1196 = !DILocation(line: 365, column: 17, scope: !1182)
!1197 = !DILocation(line: 367, column: 24, scope: !1182)
!1198 = !DILocation(line: 367, column: 3, scope: !1182)
!1199 = !DILocation(line: 368, column: 19, scope: !1182)
!1200 = !DILocation(line: 368, column: 9, scope: !1182)
!1201 = !DILocation(line: 368, column: 7, scope: !1182)
!1202 = !DILocation(line: 369, column: 7, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 369, column: 7)
!1204 = !DILocation(line: 369, column: 7, scope: !1182)
!1205 = !DILocation(line: 370, column: 21, scope: !1203)
!1206 = !DILocation(line: 370, column: 26, scope: !1203)
!1207 = !DILocation(line: 370, column: 5, scope: !1203)
!1208 = !DILocation(line: 372, column: 25, scope: !1182)
!1209 = !DILocation(line: 372, column: 3, scope: !1182)
!1210 = !DILocation(line: 373, column: 19, scope: !1182)
!1211 = !DILocation(line: 373, column: 9, scope: !1182)
!1212 = !DILocation(line: 373, column: 7, scope: !1182)
!1213 = !DILocation(line: 374, column: 7, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 374, column: 7)
!1215 = !DILocation(line: 374, column: 7, scope: !1182)
!1216 = !DILocation(line: 375, column: 21, scope: !1214)
!1217 = !DILocation(line: 375, column: 26, scope: !1214)
!1218 = !DILocation(line: 375, column: 5, scope: !1214)
!1219 = !DILocation(line: 377, column: 7, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 377, column: 7)
!1221 = !DILocation(line: 377, column: 15, scope: !1220)
!1222 = !DILocation(line: 377, column: 12, scope: !1220)
!1223 = !DILocation(line: 377, column: 7, scope: !1182)
!1224 = !DILocation(line: 379, column: 30, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 378, column: 5)
!1226 = !DILocation(line: 379, column: 7, scope: !1225)
!1227 = !DILocation(line: 380, column: 23, scope: !1225)
!1228 = !DILocation(line: 380, column: 13, scope: !1225)
!1229 = !DILocation(line: 380, column: 11, scope: !1225)
!1230 = !DILocation(line: 381, column: 11, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 381, column: 11)
!1232 = !DILocation(line: 381, column: 11, scope: !1225)
!1233 = !DILocation(line: 382, column: 25, scope: !1231)
!1234 = !DILocation(line: 382, column: 30, scope: !1231)
!1235 = !DILocation(line: 382, column: 9, scope: !1231)
!1236 = !DILocation(line: 383, column: 5, scope: !1225)
!1237 = !DILocation(line: 385, column: 7, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 385, column: 7)
!1239 = !DILocation(line: 385, column: 15, scope: !1238)
!1240 = !DILocation(line: 385, column: 12, scope: !1238)
!1241 = !DILocation(line: 385, column: 7, scope: !1182)
!1242 = !DILocation(line: 387, column: 30, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 386, column: 5)
!1244 = !DILocation(line: 387, column: 7, scope: !1243)
!1245 = !DILocation(line: 388, column: 23, scope: !1243)
!1246 = !DILocation(line: 388, column: 13, scope: !1243)
!1247 = !DILocation(line: 388, column: 11, scope: !1243)
!1248 = !DILocation(line: 389, column: 11, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 389, column: 11)
!1250 = !DILocation(line: 389, column: 11, scope: !1243)
!1251 = !DILocation(line: 390, column: 25, scope: !1249)
!1252 = !DILocation(line: 390, column: 30, scope: !1249)
!1253 = !DILocation(line: 390, column: 9, scope: !1249)
!1254 = !DILocation(line: 391, column: 5, scope: !1243)
!1255 = !DILocalVariable(name: "groups", scope: !1256, file: !3, line: 394, type: !200)
!1256 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 393, column: 3)
!1257 = !DILocation(line: 394, column: 12, scope: !1256)
!1258 = !DILocalVariable(name: "primary_group", scope: !1256, file: !3, line: 396, type: !23)
!1259 = !DILocation(line: 396, column: 11, scope: !1256)
!1260 = !DILocation(line: 397, column: 9, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 397, column: 9)
!1262 = !DILocation(line: 397, column: 9, scope: !1256)
!1263 = !DILocation(line: 398, column: 23, scope: !1261)
!1264 = !DILocation(line: 398, column: 29, scope: !1261)
!1265 = !DILocation(line: 398, column: 34, scope: !1261)
!1266 = !DILocation(line: 398, column: 21, scope: !1261)
!1267 = !DILocation(line: 398, column: 7, scope: !1261)
!1268 = !DILocation(line: 400, column: 23, scope: !1261)
!1269 = !DILocation(line: 400, column: 21, scope: !1261)
!1270 = !DILocalVariable(name: "n_groups", scope: !1256, file: !3, line: 402, type: !72)
!1271 = !DILocation(line: 402, column: 9, scope: !1256)
!1272 = !DILocation(line: 402, column: 32, scope: !1256)
!1273 = !DILocation(line: 402, column: 42, scope: !1256)
!1274 = !DILocation(line: 402, column: 20, scope: !1256)
!1275 = !DILocation(line: 403, column: 9, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 403, column: 9)
!1277 = !DILocation(line: 403, column: 18, scope: !1276)
!1278 = !DILocation(line: 403, column: 9, scope: !1256)
!1279 = !DILocation(line: 405, column: 13, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 405, column: 13)
!1281 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 404, column: 7)
!1282 = !DILocation(line: 405, column: 13, scope: !1281)
!1283 = !DILocation(line: 406, column: 21, scope: !1280)
!1284 = !DILocation(line: 407, column: 25, scope: !1280)
!1285 = !DILocation(line: 407, column: 18, scope: !1280)
!1286 = !DILocation(line: 406, column: 11, scope: !1280)
!1287 = !DILocation(line: 409, column: 21, scope: !1280)
!1288 = !DILocation(line: 409, column: 11, scope: !1280)
!1289 = !DILocation(line: 410, column: 12, scope: !1281)
!1290 = !DILocation(line: 411, column: 9, scope: !1281)
!1291 = !DILocation(line: 414, column: 9, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 414, column: 9)
!1293 = !DILocation(line: 414, column: 18, scope: !1292)
!1294 = !DILocation(line: 414, column: 9, scope: !1256)
!1295 = !DILocation(line: 415, column: 7, scope: !1292)
!1296 = !DILocalVariable(name: "i", scope: !1297, file: !3, line: 416, type: !72)
!1297 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 416, column: 5)
!1298 = !DILocation(line: 416, column: 14, scope: !1297)
!1299 = !DILocation(line: 416, column: 10, scope: !1297)
!1300 = !DILocation(line: 416, column: 21, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 416, column: 5)
!1302 = !DILocation(line: 416, column: 25, scope: !1301)
!1303 = !DILocation(line: 416, column: 23, scope: !1301)
!1304 = !DILocation(line: 416, column: 5, scope: !1297)
!1305 = !DILocation(line: 418, column: 13, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 418, column: 13)
!1307 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 417, column: 7)
!1308 = !DILocation(line: 418, column: 15, scope: !1306)
!1309 = !DILocation(line: 418, column: 13, scope: !1307)
!1310 = !DILocation(line: 419, column: 11, scope: !1306)
!1311 = !DILocation(line: 420, column: 9, scope: !1307)
!1312 = !DILocation(line: 421, column: 25, scope: !1307)
!1313 = !DILocation(line: 421, column: 32, scope: !1307)
!1314 = !DILocation(line: 421, column: 15, scope: !1307)
!1315 = !DILocation(line: 421, column: 13, scope: !1307)
!1316 = !DILocation(line: 422, column: 13, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 422, column: 13)
!1318 = !DILocation(line: 422, column: 13, scope: !1307)
!1319 = !DILocation(line: 423, column: 27, scope: !1317)
!1320 = !DILocation(line: 423, column: 32, scope: !1317)
!1321 = !DILocation(line: 423, column: 11, scope: !1317)
!1322 = !DILocation(line: 424, column: 7, scope: !1307)
!1323 = !DILocation(line: 416, column: 36, scope: !1301)
!1324 = !DILocation(line: 416, column: 5, scope: !1301)
!1325 = distinct !{!1325, !1304, !1326, !745}
!1326 = !DILocation(line: 424, column: 7, scope: !1297)
!1327 = !DILocation(line: 425, column: 11, scope: !1256)
!1328 = !DILocation(line: 425, column: 5, scope: !1256)
!1329 = !DILocation(line: 430, column: 7, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 430, column: 7)
!1331 = !DILocation(line: 430, column: 7, scope: !1182)
!1332 = !DILocation(line: 431, column: 31, scope: !1330)
!1333 = !DILocation(line: 431, column: 5, scope: !1330)
!1334 = !DILocation(line: 432, column: 1, scope: !1182)
!1335 = !DILocalVariable(name: "uid", arg: 1, scope: !50, file: !3, line: 330, type: !53)
!1336 = !DILocation(line: 330, column: 28, scope: !50)
!1337 = !DILocation(line: 333, column: 22, scope: !50)
!1338 = !DILocation(line: 333, column: 21, scope: !50)
!1339 = !DILocation(line: 333, column: 10, scope: !50)
!1340 = !DILocation(line: 333, column: 3, scope: !50)
!1341 = !DILocalVariable(name: "gid", arg: 1, scope: !60, file: !3, line: 319, type: !63)
!1342 = !DILocation(line: 319, column: 28, scope: !60)
!1343 = !DILocation(line: 322, column: 22, scope: !60)
!1344 = !DILocation(line: 322, column: 21, scope: !60)
!1345 = !DILocation(line: 322, column: 10, scope: !60)
!1346 = !DILocation(line: 322, column: 3, scope: !60)
!1347 = distinct !DISubprogram(name: "print_group_list", scope: !81, file: !81, line: 36, type: !1348, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !82, retainedNodes: !4)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!29, !6, !14, !23, !23, !29, !8}
!1350 = !DILocalVariable(name: "username", arg: 1, scope: !1347, file: !81, line: 36, type: !6)
!1351 = !DILocation(line: 36, column: 31, scope: !1347)
!1352 = !DILocalVariable(name: "ruid", arg: 2, scope: !1347, file: !81, line: 37, type: !14)
!1353 = !DILocation(line: 37, column: 25, scope: !1347)
!1354 = !DILocalVariable(name: "rgid", arg: 3, scope: !1347, file: !81, line: 37, type: !23)
!1355 = !DILocation(line: 37, column: 37, scope: !1347)
!1356 = !DILocalVariable(name: "egid", arg: 4, scope: !1347, file: !81, line: 37, type: !23)
!1357 = !DILocation(line: 37, column: 49, scope: !1347)
!1358 = !DILocalVariable(name: "use_names", arg: 5, scope: !1347, file: !81, line: 38, type: !29)
!1359 = !DILocation(line: 38, column: 24, scope: !1347)
!1360 = !DILocalVariable(name: "delim", arg: 6, scope: !1347, file: !81, line: 38, type: !8)
!1361 = !DILocation(line: 38, column: 40, scope: !1347)
!1362 = !DILocalVariable(name: "ok", scope: !1347, file: !81, line: 40, type: !29)
!1363 = !DILocation(line: 40, column: 8, scope: !1347)
!1364 = !DILocalVariable(name: "pwd", scope: !1347, file: !81, line: 41, type: !1365)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !929, line: 49, size: 384, elements: !1367)
!1367 = !{!1368, !1369, !1370, !1371, !1372, !1373, !1374}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !1366, file: !929, line: 51, baseType: !9, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !1366, file: !929, line: 52, baseType: !9, size: 64, offset: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !1366, file: !929, line: 54, baseType: !16, size: 32, offset: 128)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !1366, file: !929, line: 55, baseType: !24, size: 32, offset: 160)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !1366, file: !929, line: 56, baseType: !9, size: 64, offset: 192)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !1366, file: !929, line: 57, baseType: !9, size: 64, offset: 256)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !1366, file: !929, line: 58, baseType: !9, size: 64, offset: 320)
!1375 = !DILocation(line: 41, column: 18, scope: !1347)
!1376 = !DILocation(line: 43, column: 7, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1347, file: !81, line: 43, column: 7)
!1378 = !DILocation(line: 43, column: 7, scope: !1347)
!1379 = !DILocation(line: 45, column: 23, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1377, file: !81, line: 44, column: 5)
!1381 = !DILocation(line: 45, column: 13, scope: !1380)
!1382 = !DILocation(line: 45, column: 11, scope: !1380)
!1383 = !DILocation(line: 46, column: 11, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1380, file: !81, line: 46, column: 11)
!1385 = !DILocation(line: 46, column: 15, scope: !1384)
!1386 = !DILocation(line: 46, column: 11, scope: !1380)
!1387 = !DILocation(line: 47, column: 12, scope: !1384)
!1388 = !DILocation(line: 47, column: 9, scope: !1384)
!1389 = !DILocation(line: 48, column: 5, scope: !1380)
!1390 = !DILocation(line: 50, column: 21, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1347, file: !81, line: 50, column: 7)
!1392 = !DILocation(line: 50, column: 27, scope: !1391)
!1393 = !DILocation(line: 50, column: 8, scope: !1391)
!1394 = !DILocation(line: 50, column: 7, scope: !1347)
!1395 = !DILocation(line: 51, column: 8, scope: !1391)
!1396 = !DILocation(line: 51, column: 5, scope: !1391)
!1397 = !DILocation(line: 53, column: 7, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1347, file: !81, line: 53, column: 7)
!1399 = !DILocation(line: 53, column: 15, scope: !1398)
!1400 = !DILocation(line: 53, column: 12, scope: !1398)
!1401 = !DILocation(line: 53, column: 7, scope: !1347)
!1402 = !DILocation(line: 55, column: 7, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1398, file: !81, line: 54, column: 5)
!1404 = !DILocation(line: 56, column: 25, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1403, file: !81, line: 56, column: 11)
!1406 = !DILocation(line: 56, column: 31, scope: !1405)
!1407 = !DILocation(line: 56, column: 12, scope: !1405)
!1408 = !DILocation(line: 56, column: 11, scope: !1403)
!1409 = !DILocation(line: 57, column: 12, scope: !1405)
!1410 = !DILocation(line: 57, column: 9, scope: !1405)
!1411 = !DILocation(line: 58, column: 5, scope: !1403)
!1412 = !DILocalVariable(name: "groups", scope: !1413, file: !81, line: 61, type: !200)
!1413 = distinct !DILexicalBlock(scope: !1347, file: !81, line: 60, column: 3)
!1414 = !DILocation(line: 61, column: 12, scope: !1413)
!1415 = !DILocalVariable(name: "n_groups", scope: !1413, file: !81, line: 63, type: !72)
!1416 = !DILocation(line: 63, column: 9, scope: !1413)
!1417 = !DILocation(line: 63, column: 32, scope: !1413)
!1418 = !DILocation(line: 63, column: 43, scope: !1413)
!1419 = !DILocation(line: 63, column: 49, scope: !1413)
!1420 = !DILocation(line: 63, column: 54, scope: !1413)
!1421 = !DILocation(line: 63, column: 63, scope: !1413)
!1422 = !DILocation(line: 63, column: 20, scope: !1413)
!1423 = !DILocation(line: 64, column: 9, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1413, file: !81, line: 64, column: 9)
!1425 = !DILocation(line: 64, column: 18, scope: !1424)
!1426 = !DILocation(line: 64, column: 9, scope: !1413)
!1427 = !DILocation(line: 66, column: 13, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !81, line: 66, column: 13)
!1429 = distinct !DILexicalBlock(scope: !1424, file: !81, line: 65, column: 7)
!1430 = !DILocation(line: 66, column: 13, scope: !1429)
!1431 = !DILocation(line: 68, column: 23, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1428, file: !81, line: 67, column: 11)
!1433 = !DILocation(line: 69, column: 27, scope: !1432)
!1434 = !DILocation(line: 69, column: 20, scope: !1432)
!1435 = !DILocation(line: 68, column: 13, scope: !1432)
!1436 = !DILocation(line: 70, column: 11, scope: !1432)
!1437 = !DILocation(line: 73, column: 23, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1428, file: !81, line: 72, column: 11)
!1439 = !DILocation(line: 73, column: 13, scope: !1438)
!1440 = !DILocation(line: 75, column: 9, scope: !1429)
!1441 = !DILocalVariable(name: "i", scope: !1442, file: !81, line: 78, type: !72)
!1442 = distinct !DILexicalBlock(scope: !1413, file: !81, line: 78, column: 5)
!1443 = !DILocation(line: 78, column: 14, scope: !1442)
!1444 = !DILocation(line: 78, column: 10, scope: !1442)
!1445 = !DILocation(line: 78, column: 21, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1442, file: !81, line: 78, column: 5)
!1447 = !DILocation(line: 78, column: 25, scope: !1446)
!1448 = !DILocation(line: 78, column: 23, scope: !1446)
!1449 = !DILocation(line: 78, column: 5, scope: !1442)
!1450 = !DILocation(line: 79, column: 11, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1446, file: !81, line: 79, column: 11)
!1452 = !DILocation(line: 79, column: 18, scope: !1451)
!1453 = !DILocation(line: 79, column: 24, scope: !1451)
!1454 = !DILocation(line: 79, column: 21, scope: !1451)
!1455 = !DILocation(line: 79, column: 29, scope: !1451)
!1456 = !DILocation(line: 79, column: 32, scope: !1451)
!1457 = !DILocation(line: 79, column: 39, scope: !1451)
!1458 = !DILocation(line: 79, column: 45, scope: !1451)
!1459 = !DILocation(line: 79, column: 42, scope: !1451)
!1460 = !DILocation(line: 79, column: 11, scope: !1446)
!1461 = !DILocation(line: 81, column: 11, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1451, file: !81, line: 80, column: 9)
!1463 = !DILocation(line: 82, column: 29, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1462, file: !81, line: 82, column: 15)
!1465 = !DILocation(line: 82, column: 36, scope: !1464)
!1466 = !DILocation(line: 82, column: 40, scope: !1464)
!1467 = !DILocation(line: 82, column: 16, scope: !1464)
!1468 = !DILocation(line: 82, column: 15, scope: !1462)
!1469 = !DILocation(line: 83, column: 16, scope: !1464)
!1470 = !DILocation(line: 83, column: 13, scope: !1464)
!1471 = !DILocation(line: 84, column: 9, scope: !1462)
!1472 = !DILocation(line: 78, column: 36, scope: !1446)
!1473 = !DILocation(line: 78, column: 5, scope: !1446)
!1474 = distinct !{!1474, !1449, !1475, !745}
!1475 = !DILocation(line: 84, column: 9, scope: !1442)
!1476 = !DILocation(line: 85, column: 11, scope: !1413)
!1477 = !DILocation(line: 85, column: 5, scope: !1413)
!1478 = !DILocation(line: 87, column: 10, scope: !1347)
!1479 = !DILocation(line: 87, column: 3, scope: !1347)
!1480 = !DILocation(line: 88, column: 1, scope: !1347)
!1481 = distinct !DISubprogram(name: "print_group", scope: !81, file: !81, line: 103, type: !1482, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !82, retainedNodes: !4)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!29, !23, !29}
!1484 = !DILocalVariable(name: "gid", arg: 1, scope: !1481, file: !81, line: 103, type: !23)
!1485 = !DILocation(line: 103, column: 20, scope: !1481)
!1486 = !DILocalVariable(name: "use_name", arg: 2, scope: !1481, file: !81, line: 103, type: !29)
!1487 = !DILocation(line: 103, column: 30, scope: !1481)
!1488 = !DILocalVariable(name: "grp", scope: !1481, file: !81, line: 105, type: !1489)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !1190, line: 42, size: 256, elements: !1491)
!1491 = !{!1492, !1493, !1494, !1495}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !1490, file: !1190, line: 44, baseType: !9, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !1490, file: !1190, line: 45, baseType: !9, size: 64, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !1490, file: !1190, line: 46, baseType: !24, size: 32, offset: 128)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !1490, file: !1190, line: 47, baseType: !201, size: 64, offset: 192)
!1496 = !DILocation(line: 105, column: 17, scope: !1481)
!1497 = !DILocalVariable(name: "ok", scope: !1481, file: !81, line: 106, type: !29)
!1498 = !DILocation(line: 106, column: 8, scope: !1481)
!1499 = !DILocation(line: 108, column: 7, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1481, file: !81, line: 108, column: 7)
!1501 = !DILocation(line: 108, column: 7, scope: !1481)
!1502 = !DILocation(line: 110, column: 23, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1500, file: !81, line: 109, column: 5)
!1504 = !DILocation(line: 110, column: 13, scope: !1503)
!1505 = !DILocation(line: 110, column: 11, scope: !1503)
!1506 = !DILocation(line: 111, column: 11, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1503, file: !81, line: 111, column: 11)
!1508 = !DILocation(line: 111, column: 15, scope: !1507)
!1509 = !DILocation(line: 111, column: 11, scope: !1503)
!1510 = !DILocation(line: 114, column: 38, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1507, file: !81, line: 112, column: 9)
!1512 = !DILocation(line: 114, column: 18, scope: !1511)
!1513 = !DILocation(line: 113, column: 11, scope: !1511)
!1514 = !DILocation(line: 115, column: 14, scope: !1511)
!1515 = !DILocation(line: 116, column: 9, scope: !1511)
!1516 = !DILocation(line: 117, column: 5, scope: !1503)
!1517 = !DILocalVariable(name: "s", scope: !1481, file: !81, line: 119, type: !9)
!1518 = !DILocation(line: 119, column: 9, scope: !1481)
!1519 = !DILocation(line: 119, column: 13, scope: !1481)
!1520 = !DILocation(line: 119, column: 19, scope: !1481)
!1521 = !DILocation(line: 119, column: 24, scope: !1481)
!1522 = !DILocation(line: 119, column: 34, scope: !1481)
!1523 = !DILocation(line: 120, column: 3, scope: !1481)
!1524 = !DILocation(line: 121, column: 10, scope: !1481)
!1525 = !DILocation(line: 121, column: 3, scope: !1481)
!1526 = !DILocalVariable(name: "gid", arg: 1, scope: !80, file: !81, line: 94, type: !63)
!1527 = !DILocation(line: 94, column: 28, scope: !80)
!1528 = !DILocation(line: 97, column: 22, scope: !80)
!1529 = !DILocation(line: 97, column: 21, scope: !80)
!1530 = !DILocation(line: 97, column: 10, scope: !80)
!1531 = !DILocation(line: 97, column: 3, scope: !80)
!1532 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !94, file: !94, line: 51, type: !715, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !93, retainedNodes: !4)
!1533 = !DILocalVariable(name: "file", arg: 1, scope: !1532, file: !94, line: 51, type: !6)
!1534 = !DILocation(line: 51, column: 41, scope: !1532)
!1535 = !DILocation(line: 53, column: 15, scope: !1532)
!1536 = !DILocation(line: 53, column: 13, scope: !1532)
!1537 = !DILocation(line: 54, column: 1, scope: !1532)
!1538 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !94, file: !94, line: 88, type: !1539, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !93, retainedNodes: !4)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{null, !29}
!1541 = !DILocalVariable(name: "ignore", arg: 1, scope: !1538, file: !94, line: 88, type: !29)
!1542 = !DILocation(line: 88, column: 37, scope: !1538)
!1543 = !DILocation(line: 90, column: 18, scope: !1538)
!1544 = !DILocation(line: 90, column: 16, scope: !1538)
!1545 = !DILocation(line: 91, column: 1, scope: !1538)
!1546 = distinct !DISubprogram(name: "close_stdout", scope: !94, file: !94, line: 117, type: !775, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !93, retainedNodes: !4)
!1547 = !DILocation(line: 119, column: 21, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1546, file: !94, line: 119, column: 7)
!1549 = !DILocation(line: 119, column: 7, scope: !1548)
!1550 = !DILocation(line: 119, column: 29, scope: !1548)
!1551 = !DILocation(line: 120, column: 7, scope: !1548)
!1552 = !DILocation(line: 120, column: 12, scope: !1548)
!1553 = !DILocation(line: 120, column: 25, scope: !1548)
!1554 = !DILocation(line: 120, column: 28, scope: !1548)
!1555 = !DILocation(line: 120, column: 34, scope: !1548)
!1556 = !DILocation(line: 119, column: 7, scope: !1546)
!1557 = !DILocalVariable(name: "write_error", scope: !1558, file: !94, line: 122, type: !6)
!1558 = distinct !DILexicalBlock(scope: !1548, file: !94, line: 121, column: 5)
!1559 = !DILocation(line: 122, column: 19, scope: !1558)
!1560 = !DILocation(line: 123, column: 11, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1558, file: !94, line: 123, column: 11)
!1562 = !DILocation(line: 123, column: 11, scope: !1558)
!1563 = !DILocation(line: 124, column: 19, scope: !1561)
!1564 = !DILocation(line: 124, column: 52, scope: !1561)
!1565 = !DILocation(line: 124, column: 36, scope: !1561)
!1566 = !DILocation(line: 125, column: 16, scope: !1561)
!1567 = !DILocation(line: 124, column: 9, scope: !1561)
!1568 = !DILocation(line: 127, column: 19, scope: !1561)
!1569 = !DILocation(line: 127, column: 32, scope: !1561)
!1570 = !DILocation(line: 127, column: 9, scope: !1561)
!1571 = !DILocation(line: 129, column: 14, scope: !1558)
!1572 = !DILocation(line: 129, column: 7, scope: !1558)
!1573 = !DILocation(line: 134, column: 42, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1546, file: !94, line: 134, column: 7)
!1575 = !DILocation(line: 134, column: 28, scope: !1574)
!1576 = !DILocation(line: 134, column: 50, scope: !1574)
!1577 = !DILocation(line: 134, column: 7, scope: !1546)
!1578 = !DILocation(line: 135, column: 12, scope: !1574)
!1579 = !DILocation(line: 135, column: 5, scope: !1574)
!1580 = !DILocation(line: 136, column: 1, scope: !1546)
!1581 = distinct !DISubprogram(name: "umaxtostr", scope: !1582, file: !1582, line: 36, type: !1583, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !226, retainedNodes: !4)
!1582 = !DIFile(filename: "../lib/anytostr.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!9, !229, !9}
!1585 = !DILocalVariable(name: "i", arg: 1, scope: !1581, file: !1582, line: 36, type: !229)
!1586 = !DILocation(line: 36, column: 19, scope: !1581)
!1587 = !DILocalVariable(name: "buf", arg: 2, scope: !1581, file: !1582, line: 36, type: !9)
!1588 = !DILocation(line: 36, column: 28, scope: !1581)
!1589 = !DILocalVariable(name: "p", scope: !1581, file: !1582, line: 38, type: !9)
!1590 = !DILocation(line: 38, column: 9, scope: !1581)
!1591 = !DILocation(line: 38, column: 13, scope: !1581)
!1592 = !DILocation(line: 38, column: 17, scope: !1581)
!1593 = !DILocation(line: 39, column: 4, scope: !1581)
!1594 = !DILocation(line: 39, column: 6, scope: !1581)
!1595 = !DILocation(line: 41, column: 7, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1581, file: !1582, line: 41, column: 7)
!1597 = !DILocation(line: 41, column: 9, scope: !1596)
!1598 = !DILocation(line: 41, column: 7, scope: !1581)
!1599 = !DILocation(line: 43, column: 7, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1596, file: !1582, line: 42, column: 5)
!1601 = !DILocation(line: 44, column: 22, scope: !1600)
!1602 = !DILocation(line: 44, column: 24, scope: !1600)
!1603 = !DILocation(line: 44, column: 20, scope: !1600)
!1604 = !DILocation(line: 44, column: 16, scope: !1600)
!1605 = !DILocation(line: 44, column: 10, scope: !1600)
!1606 = !DILocation(line: 44, column: 14, scope: !1600)
!1607 = !DILocation(line: 44, column: 9, scope: !1600)
!1608 = !DILocation(line: 45, column: 17, scope: !1600)
!1609 = !DILocation(line: 45, column: 24, scope: !1600)
!1610 = distinct !{!1610, !1599, !1611, !745}
!1611 = !DILocation(line: 45, column: 28, scope: !1600)
!1612 = !DILocation(line: 47, column: 8, scope: !1600)
!1613 = !DILocation(line: 47, column: 12, scope: !1600)
!1614 = !DILocation(line: 48, column: 5, scope: !1600)
!1615 = !DILocation(line: 51, column: 7, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1596, file: !1582, line: 50, column: 5)
!1617 = !DILocation(line: 52, column: 22, scope: !1616)
!1618 = !DILocation(line: 52, column: 24, scope: !1616)
!1619 = !DILocation(line: 52, column: 20, scope: !1616)
!1620 = !DILocation(line: 52, column: 16, scope: !1616)
!1621 = !DILocation(line: 52, column: 10, scope: !1616)
!1622 = !DILocation(line: 52, column: 14, scope: !1616)
!1623 = !DILocation(line: 52, column: 9, scope: !1616)
!1624 = !DILocation(line: 53, column: 17, scope: !1616)
!1625 = !DILocation(line: 53, column: 24, scope: !1616)
!1626 = distinct !{!1626, !1615, !1627, !745}
!1627 = !DILocation(line: 53, column: 28, scope: !1616)
!1628 = !DILocation(line: 56, column: 10, scope: !1581)
!1629 = !DILocation(line: 56, column: 3, scope: !1581)
!1630 = distinct !DISubprogram(name: "set_program_name", scope: !108, file: !108, line: 39, type: !715, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !107, retainedNodes: !4)
!1631 = !DILocalVariable(name: "argv0", arg: 1, scope: !1630, file: !108, line: 39, type: !6)
!1632 = !DILocation(line: 39, column: 31, scope: !1630)
!1633 = !DILocalVariable(name: "slash", scope: !1630, file: !108, line: 46, type: !6)
!1634 = !DILocation(line: 46, column: 15, scope: !1630)
!1635 = !DILocalVariable(name: "base", scope: !1630, file: !108, line: 47, type: !6)
!1636 = !DILocation(line: 47, column: 15, scope: !1630)
!1637 = !DILocation(line: 51, column: 7, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1630, file: !108, line: 51, column: 7)
!1639 = !DILocation(line: 51, column: 13, scope: !1638)
!1640 = !DILocation(line: 51, column: 7, scope: !1630)
!1641 = !DILocation(line: 55, column: 14, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1638, file: !108, line: 52, column: 5)
!1643 = !DILocation(line: 54, column: 7, scope: !1642)
!1644 = !DILocation(line: 56, column: 7, scope: !1642)
!1645 = !DILocation(line: 59, column: 20, scope: !1630)
!1646 = !DILocation(line: 59, column: 11, scope: !1630)
!1647 = !DILocation(line: 59, column: 9, scope: !1630)
!1648 = !DILocation(line: 60, column: 11, scope: !1630)
!1649 = !DILocation(line: 60, column: 17, scope: !1630)
!1650 = !DILocation(line: 60, column: 27, scope: !1630)
!1651 = !DILocation(line: 60, column: 33, scope: !1630)
!1652 = !DILocation(line: 60, column: 39, scope: !1630)
!1653 = !DILocation(line: 60, column: 8, scope: !1630)
!1654 = !DILocation(line: 61, column: 7, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1630, file: !108, line: 61, column: 7)
!1656 = !DILocation(line: 61, column: 14, scope: !1655)
!1657 = !DILocation(line: 61, column: 12, scope: !1655)
!1658 = !DILocation(line: 61, column: 20, scope: !1655)
!1659 = !DILocation(line: 61, column: 25, scope: !1655)
!1660 = !DILocation(line: 61, column: 37, scope: !1655)
!1661 = !DILocation(line: 61, column: 42, scope: !1655)
!1662 = !DILocation(line: 61, column: 28, scope: !1655)
!1663 = !DILocation(line: 61, column: 61, scope: !1655)
!1664 = !DILocation(line: 61, column: 7, scope: !1630)
!1665 = !DILocation(line: 63, column: 15, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1655, file: !108, line: 62, column: 5)
!1667 = !DILocation(line: 63, column: 13, scope: !1666)
!1668 = !DILocation(line: 64, column: 20, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1666, file: !108, line: 64, column: 11)
!1670 = !DILocation(line: 64, column: 11, scope: !1669)
!1671 = !DILocation(line: 64, column: 36, scope: !1669)
!1672 = !DILocation(line: 64, column: 11, scope: !1666)
!1673 = !DILocation(line: 66, column: 19, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1669, file: !108, line: 65, column: 9)
!1675 = !DILocation(line: 66, column: 24, scope: !1674)
!1676 = !DILocation(line: 66, column: 17, scope: !1674)
!1677 = !DILocation(line: 70, column: 52, scope: !1674)
!1678 = !DILocation(line: 70, column: 41, scope: !1674)
!1679 = !DILocation(line: 72, column: 9, scope: !1674)
!1680 = !DILocation(line: 73, column: 5, scope: !1666)
!1681 = !DILocation(line: 84, column: 18, scope: !1630)
!1682 = !DILocation(line: 84, column: 16, scope: !1630)
!1683 = !DILocation(line: 90, column: 38, scope: !1630)
!1684 = !DILocation(line: 90, column: 27, scope: !1630)
!1685 = !DILocation(line: 92, column: 1, scope: !1630)
!1686 = distinct !DISubprogram(name: "clone_quoting_options", scope: !114, file: !114, line: 122, type: !1687, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!1689, !1689}
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!1690 = !DILocalVariable(name: "o", arg: 1, scope: !1686, file: !114, line: 122, type: !1689)
!1691 = !DILocation(line: 122, column: 48, scope: !1686)
!1692 = !DILocalVariable(name: "e", scope: !1686, file: !114, line: 124, type: !72)
!1693 = !DILocation(line: 124, column: 7, scope: !1686)
!1694 = !DILocation(line: 124, column: 11, scope: !1686)
!1695 = !DILocalVariable(name: "p", scope: !1686, file: !114, line: 125, type: !1689)
!1696 = !DILocation(line: 125, column: 27, scope: !1686)
!1697 = !DILocation(line: 125, column: 40, scope: !1686)
!1698 = !DILocation(line: 125, column: 44, scope: !1686)
!1699 = !DILocation(line: 125, column: 31, scope: !1686)
!1700 = !DILocation(line: 127, column: 11, scope: !1686)
!1701 = !DILocation(line: 127, column: 3, scope: !1686)
!1702 = !DILocation(line: 127, column: 9, scope: !1686)
!1703 = !DILocation(line: 128, column: 10, scope: !1686)
!1704 = !DILocation(line: 128, column: 3, scope: !1686)
!1705 = distinct !DISubprogram(name: "get_quoting_style", scope: !114, file: !114, line: 133, type: !1706, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!116, !1708}
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!1710 = !DILocalVariable(name: "o", arg: 1, scope: !1705, file: !114, line: 133, type: !1708)
!1711 = !DILocation(line: 133, column: 50, scope: !1705)
!1712 = !DILocation(line: 135, column: 11, scope: !1705)
!1713 = !DILocation(line: 135, column: 15, scope: !1705)
!1714 = !DILocation(line: 135, column: 46, scope: !1705)
!1715 = !DILocation(line: 135, column: 3, scope: !1705)
!1716 = distinct !DISubprogram(name: "set_quoting_style", scope: !114, file: !114, line: 141, type: !1717, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{null, !1689, !116}
!1719 = !DILocalVariable(name: "o", arg: 1, scope: !1716, file: !114, line: 141, type: !1689)
!1720 = !DILocation(line: 141, column: 44, scope: !1716)
!1721 = !DILocalVariable(name: "s", arg: 2, scope: !1716, file: !114, line: 141, type: !116)
!1722 = !DILocation(line: 141, column: 66, scope: !1716)
!1723 = !DILocation(line: 143, column: 47, scope: !1716)
!1724 = !DILocation(line: 143, column: 4, scope: !1716)
!1725 = !DILocation(line: 143, column: 8, scope: !1716)
!1726 = !DILocation(line: 143, column: 39, scope: !1716)
!1727 = !DILocation(line: 143, column: 45, scope: !1716)
!1728 = !DILocation(line: 144, column: 1, scope: !1716)
!1729 = distinct !DISubprogram(name: "set_char_quoting", scope: !114, file: !114, line: 152, type: !1730, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!72, !1689, !8, !72}
!1732 = !DILocalVariable(name: "o", arg: 1, scope: !1729, file: !114, line: 152, type: !1689)
!1733 = !DILocation(line: 152, column: 43, scope: !1729)
!1734 = !DILocalVariable(name: "c", arg: 2, scope: !1729, file: !114, line: 152, type: !8)
!1735 = !DILocation(line: 152, column: 51, scope: !1729)
!1736 = !DILocalVariable(name: "i", arg: 3, scope: !1729, file: !114, line: 152, type: !72)
!1737 = !DILocation(line: 152, column: 58, scope: !1729)
!1738 = !DILocalVariable(name: "uc", scope: !1729, file: !114, line: 154, type: !267)
!1739 = !DILocation(line: 154, column: 17, scope: !1729)
!1740 = !DILocation(line: 154, column: 22, scope: !1729)
!1741 = !DILocalVariable(name: "p", scope: !1729, file: !114, line: 155, type: !1742)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!1743 = !DILocation(line: 155, column: 17, scope: !1729)
!1744 = !DILocation(line: 156, column: 6, scope: !1729)
!1745 = !DILocation(line: 156, column: 10, scope: !1729)
!1746 = !DILocation(line: 156, column: 41, scope: !1729)
!1747 = !DILocation(line: 156, column: 5, scope: !1729)
!1748 = !DILocation(line: 156, column: 59, scope: !1729)
!1749 = !DILocation(line: 156, column: 62, scope: !1729)
!1750 = !DILocation(line: 156, column: 57, scope: !1729)
!1751 = !DILocalVariable(name: "shift", scope: !1729, file: !114, line: 157, type: !72)
!1752 = !DILocation(line: 157, column: 7, scope: !1729)
!1753 = !DILocation(line: 157, column: 15, scope: !1729)
!1754 = !DILocation(line: 157, column: 18, scope: !1729)
!1755 = !DILocalVariable(name: "r", scope: !1729, file: !114, line: 158, type: !72)
!1756 = !DILocation(line: 158, column: 7, scope: !1729)
!1757 = !DILocation(line: 158, column: 13, scope: !1729)
!1758 = !DILocation(line: 158, column: 12, scope: !1729)
!1759 = !DILocation(line: 158, column: 18, scope: !1729)
!1760 = !DILocation(line: 158, column: 15, scope: !1729)
!1761 = !DILocation(line: 158, column: 25, scope: !1729)
!1762 = !DILocation(line: 159, column: 11, scope: !1729)
!1763 = !DILocation(line: 159, column: 13, scope: !1729)
!1764 = !DILocation(line: 159, column: 20, scope: !1729)
!1765 = !DILocation(line: 159, column: 18, scope: !1729)
!1766 = !DILocation(line: 159, column: 26, scope: !1729)
!1767 = !DILocation(line: 159, column: 23, scope: !1729)
!1768 = !DILocation(line: 159, column: 4, scope: !1729)
!1769 = !DILocation(line: 159, column: 6, scope: !1729)
!1770 = !DILocation(line: 160, column: 10, scope: !1729)
!1771 = !DILocation(line: 160, column: 3, scope: !1729)
!1772 = distinct !DISubprogram(name: "set_quoting_flags", scope: !114, file: !114, line: 168, type: !1773, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!72, !1689, !72}
!1775 = !DILocalVariable(name: "o", arg: 1, scope: !1772, file: !114, line: 168, type: !1689)
!1776 = !DILocation(line: 168, column: 44, scope: !1772)
!1777 = !DILocalVariable(name: "i", arg: 2, scope: !1772, file: !114, line: 168, type: !72)
!1778 = !DILocation(line: 168, column: 51, scope: !1772)
!1779 = !DILocalVariable(name: "r", scope: !1772, file: !114, line: 170, type: !72)
!1780 = !DILocation(line: 170, column: 7, scope: !1772)
!1781 = !DILocation(line: 171, column: 8, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1772, file: !114, line: 171, column: 7)
!1783 = !DILocation(line: 171, column: 7, scope: !1772)
!1784 = !DILocation(line: 172, column: 7, scope: !1782)
!1785 = !DILocation(line: 172, column: 5, scope: !1782)
!1786 = !DILocation(line: 173, column: 7, scope: !1772)
!1787 = !DILocation(line: 173, column: 10, scope: !1772)
!1788 = !DILocation(line: 173, column: 5, scope: !1772)
!1789 = !DILocation(line: 174, column: 14, scope: !1772)
!1790 = !DILocation(line: 174, column: 3, scope: !1772)
!1791 = !DILocation(line: 174, column: 6, scope: !1772)
!1792 = !DILocation(line: 174, column: 12, scope: !1772)
!1793 = !DILocation(line: 175, column: 10, scope: !1772)
!1794 = !DILocation(line: 175, column: 3, scope: !1772)
!1795 = distinct !DISubprogram(name: "set_custom_quoting", scope: !114, file: !114, line: 179, type: !1796, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{null, !1689, !6, !6}
!1798 = !DILocalVariable(name: "o", arg: 1, scope: !1795, file: !114, line: 179, type: !1689)
!1799 = !DILocation(line: 179, column: 45, scope: !1795)
!1800 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1795, file: !114, line: 180, type: !6)
!1801 = !DILocation(line: 180, column: 33, scope: !1795)
!1802 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1795, file: !114, line: 180, type: !6)
!1803 = !DILocation(line: 180, column: 57, scope: !1795)
!1804 = !DILocation(line: 182, column: 8, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1795, file: !114, line: 182, column: 7)
!1806 = !DILocation(line: 182, column: 7, scope: !1795)
!1807 = !DILocation(line: 183, column: 7, scope: !1805)
!1808 = !DILocation(line: 183, column: 5, scope: !1805)
!1809 = !DILocation(line: 184, column: 3, scope: !1795)
!1810 = !DILocation(line: 184, column: 6, scope: !1795)
!1811 = !DILocation(line: 184, column: 12, scope: !1795)
!1812 = !DILocation(line: 185, column: 8, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1795, file: !114, line: 185, column: 7)
!1814 = !DILocation(line: 185, column: 19, scope: !1813)
!1815 = !DILocation(line: 185, column: 23, scope: !1813)
!1816 = !DILocation(line: 185, column: 7, scope: !1795)
!1817 = !DILocation(line: 186, column: 5, scope: !1813)
!1818 = !DILocation(line: 187, column: 19, scope: !1795)
!1819 = !DILocation(line: 187, column: 3, scope: !1795)
!1820 = !DILocation(line: 187, column: 6, scope: !1795)
!1821 = !DILocation(line: 187, column: 17, scope: !1795)
!1822 = !DILocation(line: 188, column: 20, scope: !1795)
!1823 = !DILocation(line: 188, column: 3, scope: !1795)
!1824 = !DILocation(line: 188, column: 6, scope: !1795)
!1825 = !DILocation(line: 188, column: 18, scope: !1795)
!1826 = !DILocation(line: 189, column: 1, scope: !1795)
!1827 = distinct !DISubprogram(name: "quotearg_buffer", scope: !114, file: !114, line: 784, type: !1828, scopeLine: 787, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!152, !9, !152, !6, !152, !1708}
!1830 = !DILocalVariable(name: "buffer", arg: 1, scope: !1827, file: !114, line: 784, type: !9)
!1831 = !DILocation(line: 784, column: 24, scope: !1827)
!1832 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1827, file: !114, line: 784, type: !152)
!1833 = !DILocation(line: 784, column: 39, scope: !1827)
!1834 = !DILocalVariable(name: "arg", arg: 3, scope: !1827, file: !114, line: 785, type: !6)
!1835 = !DILocation(line: 785, column: 30, scope: !1827)
!1836 = !DILocalVariable(name: "argsize", arg: 4, scope: !1827, file: !114, line: 785, type: !152)
!1837 = !DILocation(line: 785, column: 42, scope: !1827)
!1838 = !DILocalVariable(name: "o", arg: 5, scope: !1827, file: !114, line: 786, type: !1708)
!1839 = !DILocation(line: 786, column: 48, scope: !1827)
!1840 = !DILocalVariable(name: "p", scope: !1827, file: !114, line: 788, type: !1708)
!1841 = !DILocation(line: 788, column: 33, scope: !1827)
!1842 = !DILocation(line: 788, column: 37, scope: !1827)
!1843 = !DILocation(line: 788, column: 41, scope: !1827)
!1844 = !DILocalVariable(name: "e", scope: !1827, file: !114, line: 789, type: !72)
!1845 = !DILocation(line: 789, column: 7, scope: !1827)
!1846 = !DILocation(line: 789, column: 11, scope: !1827)
!1847 = !DILocalVariable(name: "r", scope: !1827, file: !114, line: 790, type: !152)
!1848 = !DILocation(line: 790, column: 10, scope: !1827)
!1849 = !DILocation(line: 790, column: 40, scope: !1827)
!1850 = !DILocation(line: 790, column: 48, scope: !1827)
!1851 = !DILocation(line: 790, column: 60, scope: !1827)
!1852 = !DILocation(line: 790, column: 65, scope: !1827)
!1853 = !DILocation(line: 791, column: 40, scope: !1827)
!1854 = !DILocation(line: 791, column: 43, scope: !1827)
!1855 = !DILocation(line: 791, column: 50, scope: !1827)
!1856 = !DILocation(line: 791, column: 53, scope: !1827)
!1857 = !DILocation(line: 791, column: 60, scope: !1827)
!1858 = !DILocation(line: 791, column: 63, scope: !1827)
!1859 = !DILocation(line: 792, column: 40, scope: !1827)
!1860 = !DILocation(line: 792, column: 43, scope: !1827)
!1861 = !DILocation(line: 792, column: 55, scope: !1827)
!1862 = !DILocation(line: 792, column: 58, scope: !1827)
!1863 = !DILocation(line: 790, column: 14, scope: !1827)
!1864 = !DILocation(line: 793, column: 11, scope: !1827)
!1865 = !DILocation(line: 793, column: 3, scope: !1827)
!1866 = !DILocation(line: 793, column: 9, scope: !1827)
!1867 = !DILocation(line: 794, column: 10, scope: !1827)
!1868 = !DILocation(line: 794, column: 3, scope: !1827)
!1869 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !114, file: !114, line: 256, type: !1870, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !113, retainedNodes: !4)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!152, !9, !152, !6, !152, !116, !72, !1872, !6, !6}
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!1874 = !DILocalVariable(name: "buffer", arg: 1, scope: !1869, file: !114, line: 256, type: !9)
!1875 = !DILocation(line: 256, column: 33, scope: !1869)
!1876 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1869, file: !114, line: 256, type: !152)
!1877 = !DILocation(line: 256, column: 48, scope: !1869)
!1878 = !DILocalVariable(name: "arg", arg: 3, scope: !1869, file: !114, line: 257, type: !6)
!1879 = !DILocation(line: 257, column: 39, scope: !1869)
!1880 = !DILocalVariable(name: "argsize", arg: 4, scope: !1869, file: !114, line: 257, type: !152)
!1881 = !DILocation(line: 257, column: 51, scope: !1869)
!1882 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1869, file: !114, line: 258, type: !116)
!1883 = !DILocation(line: 258, column: 46, scope: !1869)
!1884 = !DILocalVariable(name: "flags", arg: 6, scope: !1869, file: !114, line: 258, type: !72)
!1885 = !DILocation(line: 258, column: 65, scope: !1869)
!1886 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1869, file: !114, line: 259, type: !1872)
!1887 = !DILocation(line: 259, column: 47, scope: !1869)
!1888 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1869, file: !114, line: 260, type: !6)
!1889 = !DILocation(line: 260, column: 39, scope: !1869)
!1890 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1869, file: !114, line: 261, type: !6)
!1891 = !DILocation(line: 261, column: 39, scope: !1869)
!1892 = !DILocalVariable(name: "i", scope: !1869, file: !114, line: 263, type: !152)
!1893 = !DILocation(line: 263, column: 10, scope: !1869)
!1894 = !DILocalVariable(name: "len", scope: !1869, file: !114, line: 264, type: !152)
!1895 = !DILocation(line: 264, column: 10, scope: !1869)
!1896 = !DILocalVariable(name: "orig_buffersize", scope: !1869, file: !114, line: 265, type: !152)
!1897 = !DILocation(line: 265, column: 10, scope: !1869)
!1898 = !DILocalVariable(name: "quote_string", scope: !1869, file: !114, line: 266, type: !6)
!1899 = !DILocation(line: 266, column: 15, scope: !1869)
!1900 = !DILocalVariable(name: "quote_string_len", scope: !1869, file: !114, line: 267, type: !152)
!1901 = !DILocation(line: 267, column: 10, scope: !1869)
!1902 = !DILocalVariable(name: "backslash_escapes", scope: !1869, file: !114, line: 268, type: !29)
!1903 = !DILocation(line: 268, column: 8, scope: !1869)
!1904 = !DILocalVariable(name: "unibyte_locale", scope: !1869, file: !114, line: 269, type: !29)
!1905 = !DILocation(line: 269, column: 8, scope: !1869)
!1906 = !DILocation(line: 269, column: 25, scope: !1869)
!1907 = !DILocation(line: 269, column: 36, scope: !1869)
!1908 = !DILocalVariable(name: "elide_outer_quotes", scope: !1869, file: !114, line: 270, type: !29)
!1909 = !DILocation(line: 270, column: 8, scope: !1869)
!1910 = !DILocation(line: 270, column: 30, scope: !1869)
!1911 = !DILocation(line: 270, column: 36, scope: !1869)
!1912 = !DILocation(line: 270, column: 61, scope: !1869)
!1913 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1869, file: !114, line: 271, type: !29)
!1914 = !DILocation(line: 271, column: 8, scope: !1869)
!1915 = !DILocalVariable(name: "encountered_single_quote", scope: !1869, file: !114, line: 272, type: !29)
!1916 = !DILocation(line: 272, column: 8, scope: !1869)
!1917 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1869, file: !114, line: 273, type: !29)
!1918 = !DILocation(line: 273, column: 8, scope: !1869)
!1919 = !DILocation(line: 273, column: 3, scope: !1869)
!1920 = !DILabel(scope: !1869, name: "process_input", file: !114, line: 314)
!1921 = !DILocation(line: 314, column: 2, scope: !1869)
!1922 = !DILocation(line: 316, column: 11, scope: !1869)
!1923 = !DILocation(line: 316, column: 3, scope: !1869)
!1924 = !DILocation(line: 319, column: 21, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1869, file: !114, line: 317, column: 5)
!1926 = !DILocation(line: 320, column: 26, scope: !1925)
!1927 = !DILocation(line: 321, column: 7, scope: !1925)
!1928 = !DILocation(line: 323, column: 12, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1925, file: !114, line: 323, column: 11)
!1930 = !DILocation(line: 323, column: 11, scope: !1925)
!1931 = !DILocation(line: 324, column: 9, scope: !1929)
!1932 = !DILocation(line: 324, column: 9, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !114, line: 324, column: 9)
!1934 = distinct !DILexicalBlock(scope: !1929, file: !114, line: 324, column: 9)
!1935 = !DILocation(line: 324, column: 9, scope: !1934)
!1936 = !DILocation(line: 325, column: 25, scope: !1925)
!1937 = !DILocation(line: 326, column: 20, scope: !1925)
!1938 = !DILocation(line: 327, column: 24, scope: !1925)
!1939 = !DILocation(line: 328, column: 7, scope: !1925)
!1940 = !DILocation(line: 331, column: 25, scope: !1925)
!1941 = !DILocation(line: 332, column: 26, scope: !1925)
!1942 = !DILocation(line: 333, column: 7, scope: !1925)
!1943 = !DILocation(line: 339, column: 13, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !114, line: 339, column: 13)
!1945 = distinct !DILexicalBlock(scope: !1925, file: !114, line: 338, column: 7)
!1946 = !DILocation(line: 339, column: 27, scope: !1944)
!1947 = !DILocation(line: 339, column: 13, scope: !1945)
!1948 = !DILocation(line: 362, column: 50, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1944, file: !114, line: 340, column: 11)
!1950 = !DILocation(line: 362, column: 26, scope: !1949)
!1951 = !DILocation(line: 362, column: 24, scope: !1949)
!1952 = !DILocation(line: 363, column: 51, scope: !1949)
!1953 = !DILocation(line: 363, column: 27, scope: !1949)
!1954 = !DILocation(line: 363, column: 25, scope: !1949)
!1955 = !DILocation(line: 364, column: 11, scope: !1949)
!1956 = !DILocation(line: 365, column: 14, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1945, file: !114, line: 365, column: 13)
!1958 = !DILocation(line: 365, column: 13, scope: !1945)
!1959 = !DILocation(line: 366, column: 31, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1957, file: !114, line: 366, column: 11)
!1961 = !DILocation(line: 366, column: 29, scope: !1960)
!1962 = !DILocation(line: 366, column: 16, scope: !1960)
!1963 = !DILocation(line: 366, column: 44, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1960, file: !114, line: 366, column: 11)
!1965 = !DILocation(line: 366, column: 43, scope: !1964)
!1966 = !DILocation(line: 366, column: 11, scope: !1960)
!1967 = !DILocation(line: 367, column: 13, scope: !1964)
!1968 = !DILocation(line: 367, column: 13, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !114, line: 367, column: 13)
!1970 = distinct !DILexicalBlock(scope: !1964, file: !114, line: 367, column: 13)
!1971 = !DILocation(line: 367, column: 13, scope: !1970)
!1972 = !DILocation(line: 366, column: 70, scope: !1964)
!1973 = !DILocation(line: 366, column: 11, scope: !1964)
!1974 = distinct !{!1974, !1966, !1975, !745}
!1975 = !DILocation(line: 367, column: 13, scope: !1960)
!1976 = !DILocation(line: 368, column: 27, scope: !1945)
!1977 = !DILocation(line: 369, column: 24, scope: !1945)
!1978 = !DILocation(line: 369, column: 22, scope: !1945)
!1979 = !DILocation(line: 370, column: 36, scope: !1945)
!1980 = !DILocation(line: 370, column: 28, scope: !1945)
!1981 = !DILocation(line: 370, column: 26, scope: !1945)
!1982 = !DILocation(line: 372, column: 7, scope: !1925)
!1983 = !DILocation(line: 375, column: 25, scope: !1925)
!1984 = !DILocation(line: 376, column: 7, scope: !1925)
!1985 = !DILocation(line: 378, column: 26, scope: !1925)
!1986 = !DILocation(line: 379, column: 7, scope: !1925)
!1987 = !DILocation(line: 381, column: 12, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1925, file: !114, line: 381, column: 11)
!1989 = !DILocation(line: 381, column: 11, scope: !1925)
!1990 = !DILocation(line: 382, column: 27, scope: !1988)
!1991 = !DILocation(line: 382, column: 9, scope: !1988)
!1992 = !DILocation(line: 383, column: 7, scope: !1925)
!1993 = !DILocation(line: 385, column: 21, scope: !1925)
!1994 = !DILocation(line: 386, column: 12, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1925, file: !114, line: 386, column: 11)
!1996 = !DILocation(line: 386, column: 11, scope: !1925)
!1997 = !DILocation(line: 387, column: 9, scope: !1995)
!1998 = !DILocation(line: 387, column: 9, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !114, line: 387, column: 9)
!2000 = distinct !DILexicalBlock(scope: !1995, file: !114, line: 387, column: 9)
!2001 = !DILocation(line: 387, column: 9, scope: !2000)
!2002 = !DILocation(line: 388, column: 20, scope: !1925)
!2003 = !DILocation(line: 389, column: 24, scope: !1925)
!2004 = !DILocation(line: 390, column: 7, scope: !1925)
!2005 = !DILocation(line: 393, column: 26, scope: !1925)
!2006 = !DILocation(line: 394, column: 7, scope: !1925)
!2007 = !DILocation(line: 397, column: 7, scope: !1925)
!2008 = !DILocation(line: 400, column: 10, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1869, file: !114, line: 400, column: 3)
!2010 = !DILocation(line: 400, column: 8, scope: !2009)
!2011 = !DILocation(line: 400, column: 19, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2009, file: !114, line: 400, column: 3)
!2013 = !DILocation(line: 400, column: 27, scope: !2012)
!2014 = !DILocation(line: 400, column: 41, scope: !2012)
!2015 = !DILocation(line: 400, column: 45, scope: !2012)
!2016 = !DILocation(line: 400, column: 48, scope: !2012)
!2017 = !DILocation(line: 400, column: 58, scope: !2012)
!2018 = !DILocation(line: 400, column: 63, scope: !2012)
!2019 = !DILocation(line: 400, column: 60, scope: !2012)
!2020 = !DILocation(line: 400, column: 16, scope: !2012)
!2021 = !DILocation(line: 400, column: 3, scope: !2009)
!2022 = !DILocalVariable(name: "c", scope: !2023, file: !114, line: 402, type: !267)
!2023 = distinct !DILexicalBlock(scope: !2012, file: !114, line: 401, column: 5)
!2024 = !DILocation(line: 402, column: 21, scope: !2023)
!2025 = !DILocalVariable(name: "esc", scope: !2023, file: !114, line: 403, type: !267)
!2026 = !DILocation(line: 403, column: 21, scope: !2023)
!2027 = !DILocalVariable(name: "is_right_quote", scope: !2023, file: !114, line: 404, type: !29)
!2028 = !DILocation(line: 404, column: 12, scope: !2023)
!2029 = !DILocalVariable(name: "escaping", scope: !2023, file: !114, line: 405, type: !29)
!2030 = !DILocation(line: 405, column: 12, scope: !2023)
!2031 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2023, file: !114, line: 406, type: !29)
!2032 = !DILocation(line: 406, column: 12, scope: !2023)
!2033 = !DILocation(line: 408, column: 11, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2023, file: !114, line: 408, column: 11)
!2035 = !DILocation(line: 409, column: 11, scope: !2034)
!2036 = !DILocation(line: 409, column: 14, scope: !2034)
!2037 = !DILocation(line: 409, column: 28, scope: !2034)
!2038 = !DILocation(line: 410, column: 11, scope: !2034)
!2039 = !DILocation(line: 410, column: 14, scope: !2034)
!2040 = !DILocation(line: 411, column: 11, scope: !2034)
!2041 = !DILocation(line: 411, column: 15, scope: !2034)
!2042 = !DILocation(line: 411, column: 19, scope: !2034)
!2043 = !DILocation(line: 411, column: 17, scope: !2034)
!2044 = !DILocation(line: 412, column: 19, scope: !2034)
!2045 = !DILocation(line: 412, column: 27, scope: !2034)
!2046 = !DILocation(line: 412, column: 39, scope: !2034)
!2047 = !DILocation(line: 412, column: 46, scope: !2034)
!2048 = !DILocation(line: 412, column: 44, scope: !2034)
!2049 = !DILocation(line: 416, column: 40, scope: !2034)
!2050 = !DILocation(line: 416, column: 32, scope: !2034)
!2051 = !DILocation(line: 416, column: 30, scope: !2034)
!2052 = !DILocation(line: 416, column: 48, scope: !2034)
!2053 = !DILocation(line: 412, column: 15, scope: !2034)
!2054 = !DILocation(line: 417, column: 11, scope: !2034)
!2055 = !DILocation(line: 417, column: 22, scope: !2034)
!2056 = !DILocation(line: 417, column: 28, scope: !2034)
!2057 = !DILocation(line: 417, column: 26, scope: !2034)
!2058 = !DILocation(line: 417, column: 31, scope: !2034)
!2059 = !DILocation(line: 417, column: 45, scope: !2034)
!2060 = !DILocation(line: 417, column: 14, scope: !2034)
!2061 = !DILocation(line: 417, column: 63, scope: !2034)
!2062 = !DILocation(line: 408, column: 11, scope: !2023)
!2063 = !DILocation(line: 419, column: 15, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !114, line: 419, column: 15)
!2065 = distinct !DILexicalBlock(scope: !2034, file: !114, line: 418, column: 9)
!2066 = !DILocation(line: 419, column: 15, scope: !2065)
!2067 = !DILocation(line: 420, column: 13, scope: !2064)
!2068 = !DILocation(line: 421, column: 26, scope: !2065)
!2069 = !DILocation(line: 422, column: 9, scope: !2065)
!2070 = !DILocation(line: 424, column: 11, scope: !2023)
!2071 = !DILocation(line: 424, column: 15, scope: !2023)
!2072 = !DILocation(line: 424, column: 9, scope: !2023)
!2073 = !DILocation(line: 425, column: 15, scope: !2023)
!2074 = !DILocation(line: 425, column: 7, scope: !2023)
!2075 = !DILocation(line: 428, column: 15, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !114, line: 428, column: 15)
!2077 = distinct !DILexicalBlock(scope: !2023, file: !114, line: 426, column: 9)
!2078 = !DILocation(line: 428, column: 15, scope: !2077)
!2079 = !DILocation(line: 430, column: 15, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2076, file: !114, line: 429, column: 13)
!2081 = !DILocation(line: 430, column: 15, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !114, line: 430, column: 15)
!2083 = distinct !DILexicalBlock(scope: !2080, file: !114, line: 430, column: 15)
!2084 = !DILocation(line: 430, column: 15, scope: !2083)
!2085 = !DILocation(line: 430, column: 15, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2083, file: !114, line: 430, column: 15)
!2087 = !DILocation(line: 430, column: 15, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2086, file: !114, line: 430, column: 15)
!2089 = !DILocation(line: 430, column: 15, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !114, line: 430, column: 15)
!2091 = distinct !DILexicalBlock(scope: !2088, file: !114, line: 430, column: 15)
!2092 = !DILocation(line: 430, column: 15, scope: !2091)
!2093 = !DILocation(line: 430, column: 15, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !114, line: 430, column: 15)
!2095 = distinct !DILexicalBlock(scope: !2088, file: !114, line: 430, column: 15)
!2096 = !DILocation(line: 430, column: 15, scope: !2095)
!2097 = !DILocation(line: 430, column: 15, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !114, line: 430, column: 15)
!2099 = distinct !DILexicalBlock(scope: !2088, file: !114, line: 430, column: 15)
!2100 = !DILocation(line: 430, column: 15, scope: !2099)
!2101 = !DILocation(line: 430, column: 15, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !114, line: 430, column: 15)
!2103 = distinct !DILexicalBlock(scope: !2083, file: !114, line: 430, column: 15)
!2104 = !DILocation(line: 430, column: 15, scope: !2103)
!2105 = !DILocation(line: 437, column: 19, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2080, file: !114, line: 437, column: 19)
!2107 = !DILocation(line: 437, column: 33, scope: !2106)
!2108 = !DILocation(line: 438, column: 19, scope: !2106)
!2109 = !DILocation(line: 438, column: 22, scope: !2106)
!2110 = !DILocation(line: 438, column: 24, scope: !2106)
!2111 = !DILocation(line: 438, column: 30, scope: !2106)
!2112 = !DILocation(line: 438, column: 28, scope: !2106)
!2113 = !DILocation(line: 438, column: 38, scope: !2106)
!2114 = !DILocation(line: 438, column: 48, scope: !2106)
!2115 = !DILocation(line: 438, column: 52, scope: !2106)
!2116 = !DILocation(line: 438, column: 54, scope: !2106)
!2117 = !DILocation(line: 438, column: 45, scope: !2106)
!2118 = !DILocation(line: 438, column: 59, scope: !2106)
!2119 = !DILocation(line: 438, column: 62, scope: !2106)
!2120 = !DILocation(line: 438, column: 66, scope: !2106)
!2121 = !DILocation(line: 438, column: 68, scope: !2106)
!2122 = !DILocation(line: 438, column: 73, scope: !2106)
!2123 = !DILocation(line: 437, column: 19, scope: !2080)
!2124 = !DILocation(line: 440, column: 19, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2106, file: !114, line: 439, column: 17)
!2126 = !DILocation(line: 440, column: 19, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !114, line: 440, column: 19)
!2128 = distinct !DILexicalBlock(scope: !2125, file: !114, line: 440, column: 19)
!2129 = !DILocation(line: 440, column: 19, scope: !2128)
!2130 = !DILocation(line: 441, column: 19, scope: !2125)
!2131 = !DILocation(line: 441, column: 19, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !114, line: 441, column: 19)
!2133 = distinct !DILexicalBlock(scope: !2125, file: !114, line: 441, column: 19)
!2134 = !DILocation(line: 441, column: 19, scope: !2133)
!2135 = !DILocation(line: 442, column: 17, scope: !2125)
!2136 = !DILocation(line: 443, column: 17, scope: !2080)
!2137 = !DILocation(line: 448, column: 13, scope: !2080)
!2138 = !DILocation(line: 449, column: 20, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2076, file: !114, line: 449, column: 20)
!2140 = !DILocation(line: 449, column: 26, scope: !2139)
!2141 = !DILocation(line: 449, column: 20, scope: !2076)
!2142 = !DILocation(line: 450, column: 13, scope: !2139)
!2143 = !DILocation(line: 451, column: 11, scope: !2077)
!2144 = !DILocation(line: 454, column: 19, scope: !2077)
!2145 = !DILocation(line: 454, column: 11, scope: !2077)
!2146 = !DILocation(line: 457, column: 19, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !114, line: 457, column: 19)
!2148 = distinct !DILexicalBlock(scope: !2077, file: !114, line: 455, column: 13)
!2149 = !DILocation(line: 457, column: 19, scope: !2148)
!2150 = !DILocation(line: 458, column: 17, scope: !2147)
!2151 = !DILocation(line: 459, column: 15, scope: !2148)
!2152 = !DILocation(line: 462, column: 20, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2148, file: !114, line: 462, column: 19)
!2154 = !DILocation(line: 462, column: 26, scope: !2153)
!2155 = !DILocation(line: 463, column: 19, scope: !2153)
!2156 = !DILocation(line: 463, column: 22, scope: !2153)
!2157 = !DILocation(line: 463, column: 24, scope: !2153)
!2158 = !DILocation(line: 463, column: 30, scope: !2153)
!2159 = !DILocation(line: 463, column: 28, scope: !2153)
!2160 = !DILocation(line: 463, column: 38, scope: !2153)
!2161 = !DILocation(line: 463, column: 41, scope: !2153)
!2162 = !DILocation(line: 463, column: 45, scope: !2153)
!2163 = !DILocation(line: 463, column: 47, scope: !2153)
!2164 = !DILocation(line: 463, column: 52, scope: !2153)
!2165 = !DILocation(line: 462, column: 19, scope: !2148)
!2166 = !DILocation(line: 464, column: 25, scope: !2153)
!2167 = !DILocation(line: 464, column: 29, scope: !2153)
!2168 = !DILocation(line: 464, column: 31, scope: !2153)
!2169 = !DILocation(line: 464, column: 17, scope: !2153)
!2170 = !DILocation(line: 471, column: 25, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !114, line: 471, column: 25)
!2172 = distinct !DILexicalBlock(scope: !2153, file: !114, line: 465, column: 19)
!2173 = !DILocation(line: 471, column: 25, scope: !2172)
!2174 = !DILocation(line: 472, column: 23, scope: !2171)
!2175 = !DILocation(line: 473, column: 25, scope: !2172)
!2176 = !DILocation(line: 473, column: 29, scope: !2172)
!2177 = !DILocation(line: 473, column: 31, scope: !2172)
!2178 = !DILocation(line: 473, column: 23, scope: !2172)
!2179 = !DILocation(line: 474, column: 23, scope: !2172)
!2180 = !DILocation(line: 475, column: 21, scope: !2172)
!2181 = !DILocation(line: 475, column: 21, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !114, line: 475, column: 21)
!2183 = distinct !DILexicalBlock(scope: !2172, file: !114, line: 475, column: 21)
!2184 = !DILocation(line: 475, column: 21, scope: !2183)
!2185 = !DILocation(line: 476, column: 21, scope: !2172)
!2186 = !DILocation(line: 476, column: 21, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !114, line: 476, column: 21)
!2188 = distinct !DILexicalBlock(scope: !2172, file: !114, line: 476, column: 21)
!2189 = !DILocation(line: 476, column: 21, scope: !2188)
!2190 = !DILocation(line: 477, column: 21, scope: !2172)
!2191 = !DILocation(line: 477, column: 21, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !114, line: 477, column: 21)
!2193 = distinct !DILexicalBlock(scope: !2172, file: !114, line: 477, column: 21)
!2194 = !DILocation(line: 477, column: 21, scope: !2193)
!2195 = !DILocation(line: 478, column: 21, scope: !2172)
!2196 = !DILocation(line: 478, column: 21, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !114, line: 478, column: 21)
!2198 = distinct !DILexicalBlock(scope: !2172, file: !114, line: 478, column: 21)
!2199 = !DILocation(line: 478, column: 21, scope: !2198)
!2200 = !DILocation(line: 479, column: 21, scope: !2172)
!2201 = !DILocation(line: 482, column: 21, scope: !2172)
!2202 = !DILocation(line: 483, column: 19, scope: !2172)
!2203 = !DILocation(line: 484, column: 15, scope: !2148)
!2204 = !DILocation(line: 487, column: 15, scope: !2148)
!2205 = !DILocation(line: 489, column: 11, scope: !2077)
!2206 = !DILocation(line: 491, column: 24, scope: !2077)
!2207 = !DILocation(line: 491, column: 31, scope: !2077)
!2208 = !DILocation(line: 492, column: 24, scope: !2077)
!2209 = !DILocation(line: 492, column: 31, scope: !2077)
!2210 = !DILocation(line: 493, column: 24, scope: !2077)
!2211 = !DILocation(line: 493, column: 31, scope: !2077)
!2212 = !DILocation(line: 494, column: 24, scope: !2077)
!2213 = !DILocation(line: 494, column: 31, scope: !2077)
!2214 = !DILocation(line: 495, column: 24, scope: !2077)
!2215 = !DILocation(line: 495, column: 31, scope: !2077)
!2216 = !DILocation(line: 496, column: 24, scope: !2077)
!2217 = !DILocation(line: 496, column: 31, scope: !2077)
!2218 = !DILocation(line: 497, column: 24, scope: !2077)
!2219 = !DILocation(line: 497, column: 31, scope: !2077)
!2220 = !DILocation(line: 498, column: 26, scope: !2077)
!2221 = !DILocation(line: 498, column: 24, scope: !2077)
!2222 = !DILocation(line: 500, column: 15, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2077, file: !114, line: 500, column: 15)
!2224 = !DILocation(line: 500, column: 29, scope: !2223)
!2225 = !DILocation(line: 500, column: 15, scope: !2077)
!2226 = !DILocation(line: 502, column: 19, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !114, line: 502, column: 19)
!2228 = distinct !DILexicalBlock(scope: !2223, file: !114, line: 501, column: 13)
!2229 = !DILocation(line: 502, column: 19, scope: !2228)
!2230 = !DILocation(line: 503, column: 17, scope: !2227)
!2231 = !DILocation(line: 504, column: 15, scope: !2228)
!2232 = !DILocation(line: 509, column: 15, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2077, file: !114, line: 509, column: 15)
!2234 = !DILocation(line: 509, column: 33, scope: !2233)
!2235 = !DILocation(line: 509, column: 36, scope: !2233)
!2236 = !DILocation(line: 509, column: 55, scope: !2233)
!2237 = !DILocation(line: 509, column: 58, scope: !2233)
!2238 = !DILocation(line: 509, column: 15, scope: !2077)
!2239 = !DILocation(line: 510, column: 13, scope: !2233)
!2240 = !DILabel(scope: !2077, name: "c_and_shell_escape", file: !114, line: 512)
!2241 = !DILocation(line: 512, column: 9, scope: !2077)
!2242 = !DILocation(line: 513, column: 15, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2077, file: !114, line: 513, column: 15)
!2244 = !DILocation(line: 513, column: 29, scope: !2243)
!2245 = !DILocation(line: 514, column: 15, scope: !2243)
!2246 = !DILocation(line: 514, column: 18, scope: !2243)
!2247 = !DILocation(line: 513, column: 15, scope: !2077)
!2248 = !DILocation(line: 515, column: 13, scope: !2243)
!2249 = !DILabel(scope: !2077, name: "c_escape", file: !114, line: 517)
!2250 = !DILocation(line: 517, column: 9, scope: !2077)
!2251 = !DILocation(line: 518, column: 15, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2077, file: !114, line: 518, column: 15)
!2253 = !DILocation(line: 518, column: 15, scope: !2077)
!2254 = !DILocation(line: 520, column: 19, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2252, file: !114, line: 519, column: 13)
!2256 = !DILocation(line: 520, column: 17, scope: !2255)
!2257 = !DILocation(line: 521, column: 15, scope: !2255)
!2258 = !DILocation(line: 523, column: 11, scope: !2077)
!2259 = !DILocation(line: 526, column: 18, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2077, file: !114, line: 526, column: 15)
!2261 = !DILocation(line: 526, column: 26, scope: !2260)
!2262 = !DILocation(line: 526, column: 15, scope: !2077)
!2263 = !DILocation(line: 526, column: 40, scope: !2260)
!2264 = !DILocation(line: 526, column: 47, scope: !2260)
!2265 = !DILocation(line: 526, column: 57, scope: !2260)
!2266 = !DILocation(line: 526, column: 65, scope: !2260)
!2267 = !DILocation(line: 527, column: 13, scope: !2260)
!2268 = !DILocation(line: 528, column: 11, scope: !2077)
!2269 = !DILocation(line: 530, column: 15, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2077, file: !114, line: 530, column: 15)
!2271 = !DILocation(line: 530, column: 17, scope: !2270)
!2272 = !DILocation(line: 530, column: 15, scope: !2077)
!2273 = !DILocation(line: 531, column: 13, scope: !2270)
!2274 = !DILocation(line: 532, column: 11, scope: !2077)
!2275 = !DILocation(line: 534, column: 36, scope: !2077)
!2276 = !DILocation(line: 535, column: 11, scope: !2077)
!2277 = !DILocation(line: 548, column: 15, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2077, file: !114, line: 548, column: 15)
!2279 = !DILocation(line: 548, column: 29, scope: !2278)
!2280 = !DILocation(line: 549, column: 15, scope: !2278)
!2281 = !DILocation(line: 549, column: 18, scope: !2278)
!2282 = !DILocation(line: 548, column: 15, scope: !2077)
!2283 = !DILocation(line: 550, column: 13, scope: !2278)
!2284 = !DILocation(line: 551, column: 11, scope: !2077)
!2285 = !DILocation(line: 554, column: 36, scope: !2077)
!2286 = !DILocation(line: 555, column: 36, scope: !2077)
!2287 = !DILocation(line: 556, column: 15, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2077, file: !114, line: 556, column: 15)
!2289 = !DILocation(line: 556, column: 29, scope: !2288)
!2290 = !DILocation(line: 556, column: 15, scope: !2077)
!2291 = !DILocation(line: 558, column: 19, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !114, line: 558, column: 19)
!2293 = distinct !DILexicalBlock(scope: !2288, file: !114, line: 557, column: 13)
!2294 = !DILocation(line: 558, column: 19, scope: !2293)
!2295 = !DILocation(line: 559, column: 17, scope: !2292)
!2296 = !DILocation(line: 561, column: 19, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2293, file: !114, line: 561, column: 19)
!2298 = !DILocation(line: 561, column: 30, scope: !2297)
!2299 = !DILocation(line: 561, column: 35, scope: !2297)
!2300 = !DILocation(line: 561, column: 19, scope: !2293)
!2301 = !DILocation(line: 566, column: 37, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2297, file: !114, line: 562, column: 17)
!2303 = !DILocation(line: 566, column: 35, scope: !2302)
!2304 = !DILocation(line: 567, column: 30, scope: !2302)
!2305 = !DILocation(line: 568, column: 17, scope: !2302)
!2306 = !DILocation(line: 570, column: 15, scope: !2293)
!2307 = !DILocation(line: 570, column: 15, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !114, line: 570, column: 15)
!2309 = distinct !DILexicalBlock(scope: !2293, file: !114, line: 570, column: 15)
!2310 = !DILocation(line: 570, column: 15, scope: !2309)
!2311 = !DILocation(line: 571, column: 15, scope: !2293)
!2312 = !DILocation(line: 571, column: 15, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !114, line: 571, column: 15)
!2314 = distinct !DILexicalBlock(scope: !2293, file: !114, line: 571, column: 15)
!2315 = !DILocation(line: 571, column: 15, scope: !2314)
!2316 = !DILocation(line: 572, column: 15, scope: !2293)
!2317 = !DILocation(line: 572, column: 15, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !114, line: 572, column: 15)
!2319 = distinct !DILexicalBlock(scope: !2293, file: !114, line: 572, column: 15)
!2320 = !DILocation(line: 572, column: 15, scope: !2319)
!2321 = !DILocation(line: 573, column: 40, scope: !2293)
!2322 = !DILocation(line: 574, column: 13, scope: !2293)
!2323 = !DILocation(line: 575, column: 11, scope: !2077)
!2324 = !DILocation(line: 599, column: 36, scope: !2077)
!2325 = !DILocation(line: 600, column: 11, scope: !2077)
!2326 = !DILocalVariable(name: "m", scope: !2327, file: !114, line: 610, type: !152)
!2327 = distinct !DILexicalBlock(scope: !2077, file: !114, line: 608, column: 11)
!2328 = !DILocation(line: 610, column: 20, scope: !2327)
!2329 = !DILocalVariable(name: "printable", scope: !2327, file: !114, line: 612, type: !29)
!2330 = !DILocation(line: 612, column: 18, scope: !2327)
!2331 = !DILocation(line: 614, column: 17, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2327, file: !114, line: 614, column: 17)
!2333 = !DILocation(line: 614, column: 17, scope: !2327)
!2334 = !DILocation(line: 616, column: 19, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2332, file: !114, line: 615, column: 15)
!2336 = !DILocation(line: 617, column: 29, scope: !2335)
!2337 = !DILocation(line: 617, column: 41, scope: !2335)
!2338 = !DILocation(line: 617, column: 27, scope: !2335)
!2339 = !DILocation(line: 618, column: 15, scope: !2335)
!2340 = !DILocalVariable(name: "mbstate", scope: !2341, file: !114, line: 621, type: !2342)
!2341 = distinct !DILexicalBlock(scope: !2332, file: !114, line: 620, column: 15)
!2342 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2343, line: 6, baseType: !2344)
!2343 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "")
!2344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2345, line: 21, baseType: !2346)
!2345 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "")
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2345, line: 13, size: 64, elements: !2347)
!2347 = !{!2348, !2349}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2346, file: !2345, line: 15, baseType: !72, size: 32)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2346, file: !2345, line: 20, baseType: !2350, size: 32, offset: 32)
!2350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2346, file: !2345, line: 16, size: 32, elements: !2351)
!2351 = !{!2352, !2353}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2350, file: !2345, line: 18, baseType: !18, size: 32)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2350, file: !2345, line: 19, baseType: !2354, size: 32)
!2354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !2355)
!2355 = !{!2356}
!2356 = !DISubrange(count: 4)
!2357 = !DILocation(line: 621, column: 27, scope: !2341)
!2358 = !DILocation(line: 622, column: 17, scope: !2341)
!2359 = !DILocation(line: 624, column: 19, scope: !2341)
!2360 = !DILocation(line: 625, column: 27, scope: !2341)
!2361 = !DILocation(line: 626, column: 21, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2341, file: !114, line: 626, column: 21)
!2363 = !DILocation(line: 626, column: 29, scope: !2362)
!2364 = !DILocation(line: 626, column: 21, scope: !2341)
!2365 = !DILocation(line: 627, column: 37, scope: !2362)
!2366 = !DILocation(line: 627, column: 29, scope: !2362)
!2367 = !DILocation(line: 627, column: 27, scope: !2362)
!2368 = !DILocation(line: 627, column: 19, scope: !2362)
!2369 = !DILocation(line: 629, column: 17, scope: !2341)
!2370 = !DILocalVariable(name: "w", scope: !2371, file: !114, line: 631, type: !2372)
!2371 = distinct !DILexicalBlock(scope: !2341, file: !114, line: 630, column: 19)
!2372 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !153, line: 74, baseType: !72)
!2373 = !DILocation(line: 631, column: 29, scope: !2371)
!2374 = !DILocalVariable(name: "bytes", scope: !2371, file: !114, line: 632, type: !152)
!2375 = !DILocation(line: 632, column: 28, scope: !2371)
!2376 = !DILocation(line: 632, column: 50, scope: !2371)
!2377 = !DILocation(line: 632, column: 54, scope: !2371)
!2378 = !DILocation(line: 632, column: 58, scope: !2371)
!2379 = !DILocation(line: 632, column: 56, scope: !2371)
!2380 = !DILocation(line: 633, column: 45, scope: !2371)
!2381 = !DILocation(line: 633, column: 56, scope: !2371)
!2382 = !DILocation(line: 633, column: 60, scope: !2371)
!2383 = !DILocation(line: 633, column: 58, scope: !2371)
!2384 = !DILocation(line: 633, column: 53, scope: !2371)
!2385 = !DILocation(line: 632, column: 36, scope: !2371)
!2386 = !DILocation(line: 634, column: 25, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2371, file: !114, line: 634, column: 25)
!2388 = !DILocation(line: 634, column: 31, scope: !2387)
!2389 = !DILocation(line: 634, column: 25, scope: !2371)
!2390 = !DILocation(line: 635, column: 23, scope: !2387)
!2391 = !DILocation(line: 636, column: 30, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2387, file: !114, line: 636, column: 30)
!2393 = !DILocation(line: 636, column: 36, scope: !2392)
!2394 = !DILocation(line: 636, column: 30, scope: !2387)
!2395 = !DILocation(line: 638, column: 35, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2392, file: !114, line: 637, column: 23)
!2397 = !DILocation(line: 639, column: 25, scope: !2396)
!2398 = !DILocation(line: 641, column: 30, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2392, file: !114, line: 641, column: 30)
!2400 = !DILocation(line: 641, column: 36, scope: !2399)
!2401 = !DILocation(line: 641, column: 30, scope: !2392)
!2402 = !DILocation(line: 643, column: 35, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2399, file: !114, line: 642, column: 23)
!2404 = !DILocation(line: 644, column: 25, scope: !2403)
!2405 = !DILocation(line: 644, column: 32, scope: !2403)
!2406 = !DILocation(line: 644, column: 36, scope: !2403)
!2407 = !DILocation(line: 644, column: 34, scope: !2403)
!2408 = !DILocation(line: 644, column: 40, scope: !2403)
!2409 = !DILocation(line: 644, column: 38, scope: !2403)
!2410 = !DILocation(line: 644, column: 48, scope: !2403)
!2411 = !DILocation(line: 644, column: 51, scope: !2403)
!2412 = !DILocation(line: 644, column: 55, scope: !2403)
!2413 = !DILocation(line: 644, column: 59, scope: !2403)
!2414 = !DILocation(line: 644, column: 57, scope: !2403)
!2415 = !DILocation(line: 0, scope: !2403)
!2416 = !DILocation(line: 645, column: 28, scope: !2403)
!2417 = distinct !{!2417, !2404, !2416, !745}
!2418 = !DILocation(line: 646, column: 25, scope: !2403)
!2419 = !DILocation(line: 654, column: 44, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !114, line: 654, column: 29)
!2421 = distinct !DILexicalBlock(scope: !2399, file: !114, line: 649, column: 23)
!2422 = !DILocation(line: 655, column: 29, scope: !2420)
!2423 = !DILocation(line: 655, column: 32, scope: !2420)
!2424 = !DILocation(line: 655, column: 46, scope: !2420)
!2425 = !DILocation(line: 654, column: 29, scope: !2421)
!2426 = !DILocalVariable(name: "j", scope: !2427, file: !114, line: 657, type: !152)
!2427 = distinct !DILexicalBlock(scope: !2420, file: !114, line: 656, column: 27)
!2428 = !DILocation(line: 657, column: 36, scope: !2427)
!2429 = !DILocation(line: 658, column: 36, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2427, file: !114, line: 658, column: 29)
!2431 = !DILocation(line: 658, column: 34, scope: !2430)
!2432 = !DILocation(line: 658, column: 41, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2430, file: !114, line: 658, column: 29)
!2434 = !DILocation(line: 658, column: 45, scope: !2433)
!2435 = !DILocation(line: 658, column: 43, scope: !2433)
!2436 = !DILocation(line: 658, column: 29, scope: !2430)
!2437 = !DILocation(line: 659, column: 39, scope: !2433)
!2438 = !DILocation(line: 659, column: 43, scope: !2433)
!2439 = !DILocation(line: 659, column: 47, scope: !2433)
!2440 = !DILocation(line: 659, column: 45, scope: !2433)
!2441 = !DILocation(line: 659, column: 51, scope: !2433)
!2442 = !DILocation(line: 659, column: 49, scope: !2433)
!2443 = !DILocation(line: 659, column: 31, scope: !2433)
!2444 = !DILocation(line: 663, column: 35, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2433, file: !114, line: 660, column: 33)
!2446 = !DILocation(line: 666, column: 35, scope: !2445)
!2447 = !DILocation(line: 667, column: 33, scope: !2445)
!2448 = !DILocation(line: 658, column: 53, scope: !2433)
!2449 = !DILocation(line: 658, column: 29, scope: !2433)
!2450 = distinct !{!2450, !2436, !2451, !745}
!2451 = !DILocation(line: 667, column: 33, scope: !2430)
!2452 = !DILocation(line: 668, column: 27, scope: !2427)
!2453 = !DILocation(line: 670, column: 41, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2421, file: !114, line: 670, column: 29)
!2455 = !DILocation(line: 670, column: 31, scope: !2454)
!2456 = !DILocation(line: 670, column: 29, scope: !2421)
!2457 = !DILocation(line: 671, column: 37, scope: !2454)
!2458 = !DILocation(line: 671, column: 27, scope: !2454)
!2459 = !DILocation(line: 672, column: 30, scope: !2421)
!2460 = !DILocation(line: 672, column: 27, scope: !2421)
!2461 = !DILocation(line: 674, column: 19, scope: !2371)
!2462 = !DILocation(line: 675, column: 26, scope: !2341)
!2463 = !DILocation(line: 675, column: 24, scope: !2341)
!2464 = distinct !{!2464, !2369, !2465, !745}
!2465 = !DILocation(line: 675, column: 44, scope: !2341)
!2466 = !DILocation(line: 678, column: 40, scope: !2327)
!2467 = !DILocation(line: 678, column: 38, scope: !2327)
!2468 = !DILocation(line: 680, column: 21, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2327, file: !114, line: 680, column: 17)
!2470 = !DILocation(line: 680, column: 19, scope: !2469)
!2471 = !DILocation(line: 680, column: 23, scope: !2469)
!2472 = !DILocation(line: 680, column: 27, scope: !2469)
!2473 = !DILocation(line: 680, column: 45, scope: !2469)
!2474 = !DILocation(line: 680, column: 50, scope: !2469)
!2475 = !DILocation(line: 680, column: 17, scope: !2327)
!2476 = !DILocalVariable(name: "ilim", scope: !2477, file: !114, line: 684, type: !152)
!2477 = distinct !DILexicalBlock(scope: !2469, file: !114, line: 681, column: 15)
!2478 = !DILocation(line: 684, column: 24, scope: !2477)
!2479 = !DILocation(line: 684, column: 31, scope: !2477)
!2480 = !DILocation(line: 684, column: 35, scope: !2477)
!2481 = !DILocation(line: 684, column: 33, scope: !2477)
!2482 = !DILocation(line: 686, column: 17, scope: !2477)
!2483 = !DILocation(line: 688, column: 25, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !114, line: 688, column: 25)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !114, line: 687, column: 19)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !114, line: 686, column: 17)
!2487 = distinct !DILexicalBlock(scope: !2477, file: !114, line: 686, column: 17)
!2488 = !DILocation(line: 688, column: 43, scope: !2484)
!2489 = !DILocation(line: 688, column: 48, scope: !2484)
!2490 = !DILocation(line: 688, column: 25, scope: !2485)
!2491 = !DILocation(line: 690, column: 25, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2484, file: !114, line: 689, column: 23)
!2493 = !DILocation(line: 690, column: 25, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !114, line: 690, column: 25)
!2495 = distinct !DILexicalBlock(scope: !2492, file: !114, line: 690, column: 25)
!2496 = !DILocation(line: 690, column: 25, scope: !2495)
!2497 = !DILocation(line: 690, column: 25, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2495, file: !114, line: 690, column: 25)
!2499 = !DILocation(line: 690, column: 25, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2498, file: !114, line: 690, column: 25)
!2501 = !DILocation(line: 690, column: 25, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !114, line: 690, column: 25)
!2503 = distinct !DILexicalBlock(scope: !2500, file: !114, line: 690, column: 25)
!2504 = !DILocation(line: 690, column: 25, scope: !2503)
!2505 = !DILocation(line: 690, column: 25, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !114, line: 690, column: 25)
!2507 = distinct !DILexicalBlock(scope: !2500, file: !114, line: 690, column: 25)
!2508 = !DILocation(line: 690, column: 25, scope: !2507)
!2509 = !DILocation(line: 690, column: 25, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !114, line: 690, column: 25)
!2511 = distinct !DILexicalBlock(scope: !2500, file: !114, line: 690, column: 25)
!2512 = !DILocation(line: 690, column: 25, scope: !2511)
!2513 = !DILocation(line: 690, column: 25, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !114, line: 690, column: 25)
!2515 = distinct !DILexicalBlock(scope: !2495, file: !114, line: 690, column: 25)
!2516 = !DILocation(line: 690, column: 25, scope: !2515)
!2517 = !DILocation(line: 691, column: 25, scope: !2492)
!2518 = !DILocation(line: 691, column: 25, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !114, line: 691, column: 25)
!2520 = distinct !DILexicalBlock(scope: !2492, file: !114, line: 691, column: 25)
!2521 = !DILocation(line: 691, column: 25, scope: !2520)
!2522 = !DILocation(line: 692, column: 25, scope: !2492)
!2523 = !DILocation(line: 692, column: 25, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !114, line: 692, column: 25)
!2525 = distinct !DILexicalBlock(scope: !2492, file: !114, line: 692, column: 25)
!2526 = !DILocation(line: 692, column: 25, scope: !2525)
!2527 = !DILocation(line: 693, column: 36, scope: !2492)
!2528 = !DILocation(line: 693, column: 38, scope: !2492)
!2529 = !DILocation(line: 693, column: 33, scope: !2492)
!2530 = !DILocation(line: 693, column: 29, scope: !2492)
!2531 = !DILocation(line: 693, column: 27, scope: !2492)
!2532 = !DILocation(line: 694, column: 23, scope: !2492)
!2533 = !DILocation(line: 695, column: 30, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2484, file: !114, line: 695, column: 30)
!2535 = !DILocation(line: 695, column: 30, scope: !2484)
!2536 = !DILocation(line: 697, column: 25, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2534, file: !114, line: 696, column: 23)
!2538 = !DILocation(line: 697, column: 25, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !114, line: 697, column: 25)
!2540 = distinct !DILexicalBlock(scope: !2537, file: !114, line: 697, column: 25)
!2541 = !DILocation(line: 697, column: 25, scope: !2540)
!2542 = !DILocation(line: 698, column: 40, scope: !2537)
!2543 = !DILocation(line: 699, column: 23, scope: !2537)
!2544 = !DILocation(line: 700, column: 25, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2485, file: !114, line: 700, column: 25)
!2546 = !DILocation(line: 700, column: 33, scope: !2545)
!2547 = !DILocation(line: 700, column: 35, scope: !2545)
!2548 = !DILocation(line: 700, column: 30, scope: !2545)
!2549 = !DILocation(line: 700, column: 25, scope: !2485)
!2550 = !DILocation(line: 701, column: 23, scope: !2545)
!2551 = !DILocation(line: 702, column: 21, scope: !2485)
!2552 = !DILocation(line: 702, column: 21, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !114, line: 702, column: 21)
!2554 = distinct !DILexicalBlock(scope: !2485, file: !114, line: 702, column: 21)
!2555 = !DILocation(line: 702, column: 21, scope: !2554)
!2556 = !DILocation(line: 702, column: 21, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2553, file: !114, line: 702, column: 21)
!2558 = !DILocation(line: 702, column: 21, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !114, line: 702, column: 21)
!2560 = distinct !DILexicalBlock(scope: !2557, file: !114, line: 702, column: 21)
!2561 = !DILocation(line: 702, column: 21, scope: !2560)
!2562 = !DILocation(line: 702, column: 21, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !114, line: 702, column: 21)
!2564 = distinct !DILexicalBlock(scope: !2557, file: !114, line: 702, column: 21)
!2565 = !DILocation(line: 702, column: 21, scope: !2564)
!2566 = !DILocation(line: 703, column: 21, scope: !2485)
!2567 = !DILocation(line: 703, column: 21, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !114, line: 703, column: 21)
!2569 = distinct !DILexicalBlock(scope: !2485, file: !114, line: 703, column: 21)
!2570 = !DILocation(line: 703, column: 21, scope: !2569)
!2571 = !DILocation(line: 704, column: 25, scope: !2485)
!2572 = !DILocation(line: 704, column: 29, scope: !2485)
!2573 = !DILocation(line: 704, column: 23, scope: !2485)
!2574 = !DILocation(line: 686, column: 17, scope: !2486)
!2575 = distinct !{!2575, !2576, !2577}
!2576 = !DILocation(line: 686, column: 17, scope: !2487)
!2577 = !DILocation(line: 705, column: 19, scope: !2487)
!2578 = !DILocation(line: 707, column: 17, scope: !2477)
!2579 = !DILocation(line: 710, column: 9, scope: !2077)
!2580 = !DILocation(line: 712, column: 16, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2023, file: !114, line: 712, column: 11)
!2582 = !DILocation(line: 712, column: 34, scope: !2581)
!2583 = !DILocation(line: 712, column: 37, scope: !2581)
!2584 = !DILocation(line: 712, column: 51, scope: !2581)
!2585 = !DILocation(line: 713, column: 15, scope: !2581)
!2586 = !DILocation(line: 713, column: 18, scope: !2581)
!2587 = !DILocation(line: 714, column: 14, scope: !2581)
!2588 = !DILocation(line: 714, column: 17, scope: !2581)
!2589 = !DILocation(line: 715, column: 14, scope: !2581)
!2590 = !DILocation(line: 715, column: 17, scope: !2581)
!2591 = !DILocation(line: 715, column: 33, scope: !2581)
!2592 = !DILocation(line: 715, column: 35, scope: !2581)
!2593 = !DILocation(line: 715, column: 51, scope: !2581)
!2594 = !DILocation(line: 715, column: 53, scope: !2581)
!2595 = !DILocation(line: 715, column: 47, scope: !2581)
!2596 = !DILocation(line: 715, column: 65, scope: !2581)
!2597 = !DILocation(line: 716, column: 11, scope: !2581)
!2598 = !DILocation(line: 716, column: 15, scope: !2581)
!2599 = !DILocation(line: 712, column: 11, scope: !2023)
!2600 = !DILocation(line: 717, column: 9, scope: !2581)
!2601 = !DILabel(scope: !2023, name: "store_escape", file: !114, line: 719)
!2602 = !DILocation(line: 719, column: 5, scope: !2023)
!2603 = !DILocation(line: 720, column: 7, scope: !2023)
!2604 = !DILocation(line: 720, column: 7, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !114, line: 720, column: 7)
!2606 = distinct !DILexicalBlock(scope: !2023, file: !114, line: 720, column: 7)
!2607 = !DILocation(line: 720, column: 7, scope: !2606)
!2608 = !DILocation(line: 720, column: 7, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2606, file: !114, line: 720, column: 7)
!2610 = !DILocation(line: 720, column: 7, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2609, file: !114, line: 720, column: 7)
!2612 = !DILocation(line: 720, column: 7, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !114, line: 720, column: 7)
!2614 = distinct !DILexicalBlock(scope: !2611, file: !114, line: 720, column: 7)
!2615 = !DILocation(line: 720, column: 7, scope: !2614)
!2616 = !DILocation(line: 720, column: 7, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !114, line: 720, column: 7)
!2618 = distinct !DILexicalBlock(scope: !2611, file: !114, line: 720, column: 7)
!2619 = !DILocation(line: 720, column: 7, scope: !2618)
!2620 = !DILocation(line: 720, column: 7, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !114, line: 720, column: 7)
!2622 = distinct !DILexicalBlock(scope: !2611, file: !114, line: 720, column: 7)
!2623 = !DILocation(line: 720, column: 7, scope: !2622)
!2624 = !DILocation(line: 720, column: 7, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !114, line: 720, column: 7)
!2626 = distinct !DILexicalBlock(scope: !2606, file: !114, line: 720, column: 7)
!2627 = !DILocation(line: 720, column: 7, scope: !2626)
!2628 = !DILabel(scope: !2023, name: "store_c", file: !114, line: 722)
!2629 = !DILocation(line: 722, column: 5, scope: !2023)
!2630 = !DILocation(line: 723, column: 7, scope: !2023)
!2631 = !DILocation(line: 723, column: 7, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !114, line: 723, column: 7)
!2633 = distinct !DILexicalBlock(scope: !2023, file: !114, line: 723, column: 7)
!2634 = !DILocation(line: 723, column: 7, scope: !2633)
!2635 = !DILocation(line: 723, column: 7, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2632, file: !114, line: 723, column: 7)
!2637 = !DILocation(line: 723, column: 7, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2639, file: !114, line: 723, column: 7)
!2639 = distinct !DILexicalBlock(scope: !2636, file: !114, line: 723, column: 7)
!2640 = !DILocation(line: 723, column: 7, scope: !2639)
!2641 = !DILocation(line: 723, column: 7, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !114, line: 723, column: 7)
!2643 = distinct !DILexicalBlock(scope: !2636, file: !114, line: 723, column: 7)
!2644 = !DILocation(line: 723, column: 7, scope: !2643)
!2645 = !DILocation(line: 724, column: 7, scope: !2023)
!2646 = !DILocation(line: 724, column: 7, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !114, line: 724, column: 7)
!2648 = distinct !DILexicalBlock(scope: !2023, file: !114, line: 724, column: 7)
!2649 = !DILocation(line: 724, column: 7, scope: !2648)
!2650 = !DILocation(line: 726, column: 13, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2023, file: !114, line: 726, column: 11)
!2652 = !DILocation(line: 726, column: 11, scope: !2023)
!2653 = !DILocation(line: 727, column: 38, scope: !2651)
!2654 = !DILocation(line: 727, column: 9, scope: !2651)
!2655 = !DILocation(line: 728, column: 5, scope: !2023)
!2656 = !DILocation(line: 400, column: 75, scope: !2012)
!2657 = !DILocation(line: 400, column: 3, scope: !2012)
!2658 = distinct !{!2658, !2021, !2659, !745}
!2659 = !DILocation(line: 728, column: 5, scope: !2009)
!2660 = !DILocation(line: 730, column: 7, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !1869, file: !114, line: 730, column: 7)
!2662 = !DILocation(line: 730, column: 11, scope: !2661)
!2663 = !DILocation(line: 730, column: 16, scope: !2661)
!2664 = !DILocation(line: 730, column: 19, scope: !2661)
!2665 = !DILocation(line: 730, column: 33, scope: !2661)
!2666 = !DILocation(line: 731, column: 7, scope: !2661)
!2667 = !DILocation(line: 731, column: 10, scope: !2661)
!2668 = !DILocation(line: 730, column: 7, scope: !1869)
!2669 = !DILocation(line: 732, column: 5, scope: !2661)
!2670 = !DILocation(line: 738, column: 7, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !1869, file: !114, line: 738, column: 7)
!2672 = !DILocation(line: 738, column: 21, scope: !2671)
!2673 = !DILocation(line: 738, column: 51, scope: !2671)
!2674 = !DILocation(line: 738, column: 56, scope: !2671)
!2675 = !DILocation(line: 739, column: 7, scope: !2671)
!2676 = !DILocation(line: 739, column: 10, scope: !2671)
!2677 = !DILocation(line: 738, column: 7, scope: !1869)
!2678 = !DILocation(line: 741, column: 11, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2680, file: !114, line: 741, column: 11)
!2680 = distinct !DILexicalBlock(scope: !2671, file: !114, line: 740, column: 5)
!2681 = !DILocation(line: 741, column: 11, scope: !2680)
!2682 = !DILocation(line: 742, column: 42, scope: !2679)
!2683 = !DILocation(line: 742, column: 50, scope: !2679)
!2684 = !DILocation(line: 742, column: 67, scope: !2679)
!2685 = !DILocation(line: 742, column: 72, scope: !2679)
!2686 = !DILocation(line: 744, column: 42, scope: !2679)
!2687 = !DILocation(line: 744, column: 49, scope: !2679)
!2688 = !DILocation(line: 745, column: 42, scope: !2679)
!2689 = !DILocation(line: 745, column: 54, scope: !2679)
!2690 = !DILocation(line: 742, column: 16, scope: !2679)
!2691 = !DILocation(line: 742, column: 9, scope: !2679)
!2692 = !DILocation(line: 746, column: 18, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2679, file: !114, line: 746, column: 16)
!2694 = !DILocation(line: 746, column: 29, scope: !2693)
!2695 = !DILocation(line: 746, column: 32, scope: !2693)
!2696 = !DILocation(line: 746, column: 16, scope: !2679)
!2697 = !DILocation(line: 749, column: 24, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2693, file: !114, line: 747, column: 9)
!2699 = !DILocation(line: 749, column: 22, scope: !2698)
!2700 = !DILocation(line: 750, column: 15, scope: !2698)
!2701 = !DILocation(line: 751, column: 11, scope: !2698)
!2702 = !DILocation(line: 753, column: 5, scope: !2680)
!2703 = !DILocation(line: 755, column: 7, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !1869, file: !114, line: 755, column: 7)
!2705 = !DILocation(line: 755, column: 20, scope: !2704)
!2706 = !DILocation(line: 755, column: 24, scope: !2704)
!2707 = !DILocation(line: 755, column: 7, scope: !1869)
!2708 = !DILocation(line: 756, column: 5, scope: !2704)
!2709 = !DILocation(line: 756, column: 13, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !114, line: 756, column: 5)
!2711 = distinct !DILexicalBlock(scope: !2704, file: !114, line: 756, column: 5)
!2712 = !DILocation(line: 756, column: 12, scope: !2710)
!2713 = !DILocation(line: 756, column: 5, scope: !2711)
!2714 = !DILocation(line: 757, column: 7, scope: !2710)
!2715 = !DILocation(line: 757, column: 7, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !114, line: 757, column: 7)
!2717 = distinct !DILexicalBlock(scope: !2710, file: !114, line: 757, column: 7)
!2718 = !DILocation(line: 757, column: 7, scope: !2717)
!2719 = !DILocation(line: 756, column: 39, scope: !2710)
!2720 = !DILocation(line: 756, column: 5, scope: !2710)
!2721 = distinct !{!2721, !2713, !2722, !745}
!2722 = !DILocation(line: 757, column: 7, scope: !2711)
!2723 = !DILocation(line: 759, column: 7, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !1869, file: !114, line: 759, column: 7)
!2725 = !DILocation(line: 759, column: 13, scope: !2724)
!2726 = !DILocation(line: 759, column: 11, scope: !2724)
!2727 = !DILocation(line: 759, column: 7, scope: !1869)
!2728 = !DILocation(line: 760, column: 5, scope: !2724)
!2729 = !DILocation(line: 760, column: 12, scope: !2724)
!2730 = !DILocation(line: 760, column: 17, scope: !2724)
!2731 = !DILocation(line: 761, column: 10, scope: !1869)
!2732 = !DILocation(line: 761, column: 3, scope: !1869)
!2733 = !DILabel(scope: !1869, name: "force_outer_quoting_style", file: !114, line: 763)
!2734 = !DILocation(line: 763, column: 2, scope: !1869)
!2735 = !DILocation(line: 766, column: 7, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !1869, file: !114, line: 766, column: 7)
!2737 = !DILocation(line: 766, column: 21, scope: !2736)
!2738 = !DILocation(line: 766, column: 51, scope: !2736)
!2739 = !DILocation(line: 766, column: 54, scope: !2736)
!2740 = !DILocation(line: 766, column: 7, scope: !1869)
!2741 = !DILocation(line: 767, column: 19, scope: !2736)
!2742 = !DILocation(line: 767, column: 5, scope: !2736)
!2743 = !DILocation(line: 768, column: 36, scope: !1869)
!2744 = !DILocation(line: 768, column: 44, scope: !1869)
!2745 = !DILocation(line: 768, column: 56, scope: !1869)
!2746 = !DILocation(line: 768, column: 61, scope: !1869)
!2747 = !DILocation(line: 769, column: 36, scope: !1869)
!2748 = !DILocation(line: 770, column: 36, scope: !1869)
!2749 = !DILocation(line: 770, column: 42, scope: !1869)
!2750 = !DILocation(line: 771, column: 36, scope: !1869)
!2751 = !DILocation(line: 771, column: 48, scope: !1869)
!2752 = !DILocation(line: 768, column: 10, scope: !1869)
!2753 = !DILocation(line: 768, column: 3, scope: !1869)
!2754 = !DILocation(line: 772, column: 1, scope: !1869)
!2755 = distinct !DISubprogram(name: "gettext_quote", scope: !114, file: !114, line: 207, type: !2756, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !113, retainedNodes: !4)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!6, !6, !116}
!2758 = !DILocalVariable(name: "msgid", arg: 1, scope: !2755, file: !114, line: 207, type: !6)
!2759 = !DILocation(line: 207, column: 28, scope: !2755)
!2760 = !DILocalVariable(name: "s", arg: 2, scope: !2755, file: !114, line: 207, type: !116)
!2761 = !DILocation(line: 207, column: 54, scope: !2755)
!2762 = !DILocalVariable(name: "translation", scope: !2755, file: !114, line: 209, type: !6)
!2763 = !DILocation(line: 209, column: 15, scope: !2755)
!2764 = !DILocation(line: 209, column: 29, scope: !2755)
!2765 = !DILocalVariable(name: "locale_code", scope: !2755, file: !114, line: 210, type: !6)
!2766 = !DILocation(line: 210, column: 15, scope: !2755)
!2767 = !DILocation(line: 212, column: 7, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2755, file: !114, line: 212, column: 7)
!2769 = !DILocation(line: 212, column: 22, scope: !2768)
!2770 = !DILocation(line: 212, column: 19, scope: !2768)
!2771 = !DILocation(line: 212, column: 7, scope: !2755)
!2772 = !DILocation(line: 213, column: 12, scope: !2768)
!2773 = !DILocation(line: 213, column: 5, scope: !2768)
!2774 = !DILocation(line: 233, column: 17, scope: !2755)
!2775 = !DILocation(line: 233, column: 15, scope: !2755)
!2776 = !DILocation(line: 234, column: 7, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2755, file: !114, line: 234, column: 7)
!2778 = !DILocation(line: 234, column: 7, scope: !2755)
!2779 = !DILocation(line: 235, column: 12, scope: !2777)
!2780 = !DILocation(line: 235, column: 21, scope: !2777)
!2781 = !DILocation(line: 235, column: 5, scope: !2777)
!2782 = !DILocation(line: 236, column: 7, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2755, file: !114, line: 236, column: 7)
!2784 = !DILocation(line: 236, column: 7, scope: !2755)
!2785 = !DILocation(line: 237, column: 12, scope: !2783)
!2786 = !DILocation(line: 237, column: 21, scope: !2783)
!2787 = !DILocation(line: 237, column: 5, scope: !2783)
!2788 = !DILocation(line: 239, column: 11, scope: !2755)
!2789 = !DILocation(line: 239, column: 13, scope: !2755)
!2790 = !DILocation(line: 239, column: 3, scope: !2755)
!2791 = !DILocation(line: 240, column: 1, scope: !2755)
!2792 = distinct !DISubprogram(name: "quotearg_alloc", scope: !114, file: !114, line: 799, type: !2793, scopeLine: 801, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!9, !6, !152, !1708}
!2795 = !DILocalVariable(name: "arg", arg: 1, scope: !2792, file: !114, line: 799, type: !6)
!2796 = !DILocation(line: 799, column: 29, scope: !2792)
!2797 = !DILocalVariable(name: "argsize", arg: 2, scope: !2792, file: !114, line: 799, type: !152)
!2798 = !DILocation(line: 799, column: 41, scope: !2792)
!2799 = !DILocalVariable(name: "o", arg: 3, scope: !2792, file: !114, line: 800, type: !1708)
!2800 = !DILocation(line: 800, column: 47, scope: !2792)
!2801 = !DILocation(line: 802, column: 30, scope: !2792)
!2802 = !DILocation(line: 802, column: 35, scope: !2792)
!2803 = !DILocation(line: 802, column: 50, scope: !2792)
!2804 = !DILocation(line: 802, column: 10, scope: !2792)
!2805 = !DILocation(line: 802, column: 3, scope: !2792)
!2806 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !114, file: !114, line: 812, type: !2807, scopeLine: 814, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!9, !6, !152, !247, !1708}
!2809 = !DILocalVariable(name: "arg", arg: 1, scope: !2806, file: !114, line: 812, type: !6)
!2810 = !DILocation(line: 812, column: 33, scope: !2806)
!2811 = !DILocalVariable(name: "argsize", arg: 2, scope: !2806, file: !114, line: 812, type: !152)
!2812 = !DILocation(line: 812, column: 45, scope: !2806)
!2813 = !DILocalVariable(name: "size", arg: 3, scope: !2806, file: !114, line: 812, type: !247)
!2814 = !DILocation(line: 812, column: 62, scope: !2806)
!2815 = !DILocalVariable(name: "o", arg: 4, scope: !2806, file: !114, line: 813, type: !1708)
!2816 = !DILocation(line: 813, column: 51, scope: !2806)
!2817 = !DILocalVariable(name: "p", scope: !2806, file: !114, line: 815, type: !1708)
!2818 = !DILocation(line: 815, column: 33, scope: !2806)
!2819 = !DILocation(line: 815, column: 37, scope: !2806)
!2820 = !DILocation(line: 815, column: 41, scope: !2806)
!2821 = !DILocalVariable(name: "e", scope: !2806, file: !114, line: 816, type: !72)
!2822 = !DILocation(line: 816, column: 7, scope: !2806)
!2823 = !DILocation(line: 816, column: 11, scope: !2806)
!2824 = !DILocalVariable(name: "flags", scope: !2806, file: !114, line: 818, type: !72)
!2825 = !DILocation(line: 818, column: 7, scope: !2806)
!2826 = !DILocation(line: 818, column: 15, scope: !2806)
!2827 = !DILocation(line: 818, column: 18, scope: !2806)
!2828 = !DILocation(line: 818, column: 27, scope: !2806)
!2829 = !DILocation(line: 818, column: 24, scope: !2806)
!2830 = !DILocalVariable(name: "bufsize", scope: !2806, file: !114, line: 819, type: !152)
!2831 = !DILocation(line: 819, column: 10, scope: !2806)
!2832 = !DILocation(line: 819, column: 52, scope: !2806)
!2833 = !DILocation(line: 819, column: 57, scope: !2806)
!2834 = !DILocation(line: 819, column: 66, scope: !2806)
!2835 = !DILocation(line: 819, column: 69, scope: !2806)
!2836 = !DILocation(line: 820, column: 46, scope: !2806)
!2837 = !DILocation(line: 820, column: 53, scope: !2806)
!2838 = !DILocation(line: 820, column: 56, scope: !2806)
!2839 = !DILocation(line: 821, column: 46, scope: !2806)
!2840 = !DILocation(line: 821, column: 49, scope: !2806)
!2841 = !DILocation(line: 822, column: 46, scope: !2806)
!2842 = !DILocation(line: 822, column: 49, scope: !2806)
!2843 = !DILocation(line: 819, column: 20, scope: !2806)
!2844 = !DILocation(line: 822, column: 62, scope: !2806)
!2845 = !DILocalVariable(name: "buf", scope: !2806, file: !114, line: 823, type: !9)
!2846 = !DILocation(line: 823, column: 9, scope: !2806)
!2847 = !DILocation(line: 823, column: 27, scope: !2806)
!2848 = !DILocation(line: 823, column: 15, scope: !2806)
!2849 = !DILocation(line: 824, column: 29, scope: !2806)
!2850 = !DILocation(line: 824, column: 34, scope: !2806)
!2851 = !DILocation(line: 824, column: 43, scope: !2806)
!2852 = !DILocation(line: 824, column: 48, scope: !2806)
!2853 = !DILocation(line: 824, column: 57, scope: !2806)
!2854 = !DILocation(line: 824, column: 60, scope: !2806)
!2855 = !DILocation(line: 824, column: 67, scope: !2806)
!2856 = !DILocation(line: 825, column: 29, scope: !2806)
!2857 = !DILocation(line: 825, column: 32, scope: !2806)
!2858 = !DILocation(line: 826, column: 29, scope: !2806)
!2859 = !DILocation(line: 826, column: 32, scope: !2806)
!2860 = !DILocation(line: 826, column: 44, scope: !2806)
!2861 = !DILocation(line: 826, column: 47, scope: !2806)
!2862 = !DILocation(line: 824, column: 3, scope: !2806)
!2863 = !DILocation(line: 827, column: 11, scope: !2806)
!2864 = !DILocation(line: 827, column: 3, scope: !2806)
!2865 = !DILocation(line: 827, column: 9, scope: !2806)
!2866 = !DILocation(line: 828, column: 7, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2806, file: !114, line: 828, column: 7)
!2868 = !DILocation(line: 828, column: 7, scope: !2806)
!2869 = !DILocation(line: 829, column: 13, scope: !2867)
!2870 = !DILocation(line: 829, column: 21, scope: !2867)
!2871 = !DILocation(line: 829, column: 6, scope: !2867)
!2872 = !DILocation(line: 829, column: 11, scope: !2867)
!2873 = !DILocation(line: 829, column: 5, scope: !2867)
!2874 = !DILocation(line: 830, column: 10, scope: !2806)
!2875 = !DILocation(line: 830, column: 3, scope: !2806)
!2876 = distinct !DISubprogram(name: "quotearg_free", scope: !114, file: !114, line: 848, type: !775, scopeLine: 849, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!2877 = !DILocalVariable(name: "sv", scope: !2876, file: !114, line: 850, type: !180)
!2878 = !DILocation(line: 850, column: 19, scope: !2876)
!2879 = !DILocation(line: 850, column: 24, scope: !2876)
!2880 = !DILocalVariable(name: "i", scope: !2876, file: !114, line: 851, type: !72)
!2881 = !DILocation(line: 851, column: 7, scope: !2876)
!2882 = !DILocation(line: 852, column: 10, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2876, file: !114, line: 852, column: 3)
!2884 = !DILocation(line: 852, column: 8, scope: !2883)
!2885 = !DILocation(line: 852, column: 15, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2883, file: !114, line: 852, column: 3)
!2887 = !DILocation(line: 852, column: 19, scope: !2886)
!2888 = !DILocation(line: 852, column: 17, scope: !2886)
!2889 = !DILocation(line: 852, column: 3, scope: !2883)
!2890 = !DILocation(line: 853, column: 11, scope: !2886)
!2891 = !DILocation(line: 853, column: 14, scope: !2886)
!2892 = !DILocation(line: 853, column: 17, scope: !2886)
!2893 = !DILocation(line: 853, column: 5, scope: !2886)
!2894 = !DILocation(line: 852, column: 28, scope: !2886)
!2895 = !DILocation(line: 852, column: 3, scope: !2886)
!2896 = distinct !{!2896, !2889, !2897, !745}
!2897 = !DILocation(line: 853, column: 20, scope: !2883)
!2898 = !DILocation(line: 854, column: 7, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2876, file: !114, line: 854, column: 7)
!2900 = !DILocation(line: 854, column: 13, scope: !2899)
!2901 = !DILocation(line: 854, column: 17, scope: !2899)
!2902 = !DILocation(line: 854, column: 7, scope: !2876)
!2903 = !DILocation(line: 856, column: 13, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2899, file: !114, line: 855, column: 5)
!2905 = !DILocation(line: 856, column: 19, scope: !2904)
!2906 = !DILocation(line: 856, column: 7, scope: !2904)
!2907 = !DILocation(line: 857, column: 21, scope: !2904)
!2908 = !DILocation(line: 858, column: 20, scope: !2904)
!2909 = !DILocation(line: 859, column: 5, scope: !2904)
!2910 = !DILocation(line: 860, column: 7, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2876, file: !114, line: 860, column: 7)
!2912 = !DILocation(line: 860, column: 10, scope: !2911)
!2913 = !DILocation(line: 860, column: 7, scope: !2876)
!2914 = !DILocation(line: 862, column: 13, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2911, file: !114, line: 861, column: 5)
!2916 = !DILocation(line: 862, column: 7, scope: !2915)
!2917 = !DILocation(line: 863, column: 15, scope: !2915)
!2918 = !DILocation(line: 864, column: 5, scope: !2915)
!2919 = !DILocation(line: 865, column: 10, scope: !2876)
!2920 = !DILocation(line: 866, column: 1, scope: !2876)
!2921 = distinct !DISubprogram(name: "quotearg_n", scope: !114, file: !114, line: 931, type: !2922, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!9, !72, !6}
!2924 = !DILocalVariable(name: "n", arg: 1, scope: !2921, file: !114, line: 931, type: !72)
!2925 = !DILocation(line: 931, column: 17, scope: !2921)
!2926 = !DILocalVariable(name: "arg", arg: 2, scope: !2921, file: !114, line: 931, type: !6)
!2927 = !DILocation(line: 931, column: 32, scope: !2921)
!2928 = !DILocation(line: 933, column: 30, scope: !2921)
!2929 = !DILocation(line: 933, column: 33, scope: !2921)
!2930 = !DILocation(line: 933, column: 10, scope: !2921)
!2931 = !DILocation(line: 933, column: 3, scope: !2921)
!2932 = distinct !DISubprogram(name: "quotearg_n_options", scope: !114, file: !114, line: 877, type: !2933, scopeLine: 879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !113, retainedNodes: !4)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!9, !72, !6, !152, !1708}
!2935 = !DILocalVariable(name: "n", arg: 1, scope: !2932, file: !114, line: 877, type: !72)
!2936 = !DILocation(line: 877, column: 25, scope: !2932)
!2937 = !DILocalVariable(name: "arg", arg: 2, scope: !2932, file: !114, line: 877, type: !6)
!2938 = !DILocation(line: 877, column: 40, scope: !2932)
!2939 = !DILocalVariable(name: "argsize", arg: 3, scope: !2932, file: !114, line: 877, type: !152)
!2940 = !DILocation(line: 877, column: 52, scope: !2932)
!2941 = !DILocalVariable(name: "options", arg: 4, scope: !2932, file: !114, line: 878, type: !1708)
!2942 = !DILocation(line: 878, column: 51, scope: !2932)
!2943 = !DILocalVariable(name: "e", scope: !2932, file: !114, line: 880, type: !72)
!2944 = !DILocation(line: 880, column: 7, scope: !2932)
!2945 = !DILocation(line: 880, column: 11, scope: !2932)
!2946 = !DILocalVariable(name: "sv", scope: !2932, file: !114, line: 882, type: !180)
!2947 = !DILocation(line: 882, column: 19, scope: !2932)
!2948 = !DILocation(line: 882, column: 24, scope: !2932)
!2949 = !DILocation(line: 884, column: 7, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2932, file: !114, line: 884, column: 7)
!2951 = !DILocation(line: 884, column: 9, scope: !2950)
!2952 = !DILocation(line: 884, column: 7, scope: !2932)
!2953 = !DILocation(line: 885, column: 5, scope: !2950)
!2954 = !DILocation(line: 887, column: 7, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2932, file: !114, line: 887, column: 7)
!2956 = !DILocation(line: 887, column: 17, scope: !2955)
!2957 = !DILocation(line: 887, column: 14, scope: !2955)
!2958 = !DILocation(line: 887, column: 7, scope: !2932)
!2959 = !DILocalVariable(name: "preallocated", scope: !2960, file: !114, line: 889, type: !29)
!2960 = distinct !DILexicalBlock(scope: !2955, file: !114, line: 888, column: 5)
!2961 = !DILocation(line: 889, column: 12, scope: !2960)
!2962 = !DILocation(line: 889, column: 28, scope: !2960)
!2963 = !DILocation(line: 889, column: 31, scope: !2960)
!2964 = !DILocalVariable(name: "nmax", scope: !2960, file: !114, line: 890, type: !72)
!2965 = !DILocation(line: 890, column: 11, scope: !2960)
!2966 = !DILocation(line: 892, column: 11, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2960, file: !114, line: 892, column: 11)
!2968 = !DILocation(line: 892, column: 18, scope: !2967)
!2969 = !DILocation(line: 892, column: 16, scope: !2967)
!2970 = !DILocation(line: 892, column: 11, scope: !2960)
!2971 = !DILocation(line: 893, column: 9, scope: !2967)
!2972 = !DILocation(line: 895, column: 32, scope: !2960)
!2973 = !DILocation(line: 895, column: 54, scope: !2960)
!2974 = !DILocation(line: 895, column: 59, scope: !2960)
!2975 = !DILocation(line: 895, column: 61, scope: !2960)
!2976 = !DILocation(line: 895, column: 58, scope: !2960)
!2977 = !DILocation(line: 895, column: 66, scope: !2960)
!2978 = !DILocation(line: 895, column: 22, scope: !2960)
!2979 = !DILocation(line: 895, column: 20, scope: !2960)
!2980 = !DILocation(line: 895, column: 15, scope: !2960)
!2981 = !DILocation(line: 896, column: 11, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2960, file: !114, line: 896, column: 11)
!2983 = !DILocation(line: 896, column: 11, scope: !2960)
!2984 = !DILocation(line: 897, column: 10, scope: !2982)
!2985 = !DILocation(line: 897, column: 15, scope: !2982)
!2986 = !DILocation(line: 897, column: 9, scope: !2982)
!2987 = !DILocation(line: 898, column: 15, scope: !2960)
!2988 = !DILocation(line: 898, column: 20, scope: !2960)
!2989 = !DILocation(line: 898, column: 18, scope: !2960)
!2990 = !DILocation(line: 898, column: 7, scope: !2960)
!2991 = !DILocation(line: 898, column: 32, scope: !2960)
!2992 = !DILocation(line: 898, column: 34, scope: !2960)
!2993 = !DILocation(line: 898, column: 40, scope: !2960)
!2994 = !DILocation(line: 898, column: 38, scope: !2960)
!2995 = !DILocation(line: 898, column: 31, scope: !2960)
!2996 = !DILocation(line: 898, column: 48, scope: !2960)
!2997 = !DILocation(line: 899, column: 16, scope: !2960)
!2998 = !DILocation(line: 899, column: 18, scope: !2960)
!2999 = !DILocation(line: 899, column: 14, scope: !2960)
!3000 = !DILocation(line: 900, column: 5, scope: !2960)
!3001 = !DILocalVariable(name: "size", scope: !3002, file: !114, line: 903, type: !152)
!3002 = distinct !DILexicalBlock(scope: !2932, file: !114, line: 902, column: 3)
!3003 = !DILocation(line: 903, column: 12, scope: !3002)
!3004 = !DILocation(line: 903, column: 19, scope: !3002)
!3005 = !DILocation(line: 903, column: 22, scope: !3002)
!3006 = !DILocation(line: 903, column: 25, scope: !3002)
!3007 = !DILocalVariable(name: "val", scope: !3002, file: !114, line: 904, type: !9)
!3008 = !DILocation(line: 904, column: 11, scope: !3002)
!3009 = !DILocation(line: 904, column: 17, scope: !3002)
!3010 = !DILocation(line: 904, column: 20, scope: !3002)
!3011 = !DILocation(line: 904, column: 23, scope: !3002)
!3012 = !DILocalVariable(name: "flags", scope: !3002, file: !114, line: 906, type: !72)
!3013 = !DILocation(line: 906, column: 9, scope: !3002)
!3014 = !DILocation(line: 906, column: 17, scope: !3002)
!3015 = !DILocation(line: 906, column: 26, scope: !3002)
!3016 = !DILocation(line: 906, column: 32, scope: !3002)
!3017 = !DILocalVariable(name: "qsize", scope: !3002, file: !114, line: 907, type: !152)
!3018 = !DILocation(line: 907, column: 12, scope: !3002)
!3019 = !DILocation(line: 907, column: 46, scope: !3002)
!3020 = !DILocation(line: 907, column: 51, scope: !3002)
!3021 = !DILocation(line: 907, column: 57, scope: !3002)
!3022 = !DILocation(line: 907, column: 62, scope: !3002)
!3023 = !DILocation(line: 908, column: 46, scope: !3002)
!3024 = !DILocation(line: 908, column: 55, scope: !3002)
!3025 = !DILocation(line: 908, column: 62, scope: !3002)
!3026 = !DILocation(line: 909, column: 46, scope: !3002)
!3027 = !DILocation(line: 909, column: 55, scope: !3002)
!3028 = !DILocation(line: 910, column: 46, scope: !3002)
!3029 = !DILocation(line: 910, column: 55, scope: !3002)
!3030 = !DILocation(line: 911, column: 46, scope: !3002)
!3031 = !DILocation(line: 911, column: 55, scope: !3002)
!3032 = !DILocation(line: 907, column: 20, scope: !3002)
!3033 = !DILocation(line: 913, column: 9, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3002, file: !114, line: 913, column: 9)
!3035 = !DILocation(line: 913, column: 17, scope: !3034)
!3036 = !DILocation(line: 913, column: 14, scope: !3034)
!3037 = !DILocation(line: 913, column: 9, scope: !3002)
!3038 = !DILocation(line: 915, column: 29, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3034, file: !114, line: 914, column: 7)
!3040 = !DILocation(line: 915, column: 35, scope: !3039)
!3041 = !DILocation(line: 915, column: 27, scope: !3039)
!3042 = !DILocation(line: 915, column: 9, scope: !3039)
!3043 = !DILocation(line: 915, column: 12, scope: !3039)
!3044 = !DILocation(line: 915, column: 15, scope: !3039)
!3045 = !DILocation(line: 915, column: 20, scope: !3039)
!3046 = !DILocation(line: 916, column: 13, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3039, file: !114, line: 916, column: 13)
!3048 = !DILocation(line: 916, column: 17, scope: !3047)
!3049 = !DILocation(line: 916, column: 13, scope: !3039)
!3050 = !DILocation(line: 917, column: 17, scope: !3047)
!3051 = !DILocation(line: 917, column: 11, scope: !3047)
!3052 = !DILocation(line: 918, column: 39, scope: !3039)
!3053 = !DILocation(line: 918, column: 27, scope: !3039)
!3054 = !DILocation(line: 918, column: 25, scope: !3039)
!3055 = !DILocation(line: 918, column: 9, scope: !3039)
!3056 = !DILocation(line: 918, column: 12, scope: !3039)
!3057 = !DILocation(line: 918, column: 15, scope: !3039)
!3058 = !DILocation(line: 918, column: 19, scope: !3039)
!3059 = !DILocation(line: 919, column: 35, scope: !3039)
!3060 = !DILocation(line: 919, column: 40, scope: !3039)
!3061 = !DILocation(line: 919, column: 46, scope: !3039)
!3062 = !DILocation(line: 919, column: 51, scope: !3039)
!3063 = !DILocation(line: 919, column: 60, scope: !3039)
!3064 = !DILocation(line: 919, column: 69, scope: !3039)
!3065 = !DILocation(line: 920, column: 35, scope: !3039)
!3066 = !DILocation(line: 920, column: 42, scope: !3039)
!3067 = !DILocation(line: 920, column: 51, scope: !3039)
!3068 = !DILocation(line: 921, column: 35, scope: !3039)
!3069 = !DILocation(line: 921, column: 44, scope: !3039)
!3070 = !DILocation(line: 922, column: 35, scope: !3039)
!3071 = !DILocation(line: 922, column: 44, scope: !3039)
!3072 = !DILocation(line: 919, column: 9, scope: !3039)
!3073 = !DILocation(line: 923, column: 7, scope: !3039)
!3074 = !DILocation(line: 925, column: 13, scope: !3002)
!3075 = !DILocation(line: 925, column: 5, scope: !3002)
!3076 = !DILocation(line: 925, column: 11, scope: !3002)
!3077 = !DILocation(line: 926, column: 12, scope: !3002)
!3078 = !DILocation(line: 926, column: 5, scope: !3002)
!3079 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !114, file: !114, line: 937, type: !3080, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!9, !72, !6, !152}
!3082 = !DILocalVariable(name: "n", arg: 1, scope: !3079, file: !114, line: 937, type: !72)
!3083 = !DILocation(line: 937, column: 21, scope: !3079)
!3084 = !DILocalVariable(name: "arg", arg: 2, scope: !3079, file: !114, line: 937, type: !6)
!3085 = !DILocation(line: 937, column: 36, scope: !3079)
!3086 = !DILocalVariable(name: "argsize", arg: 3, scope: !3079, file: !114, line: 937, type: !152)
!3087 = !DILocation(line: 937, column: 48, scope: !3079)
!3088 = !DILocation(line: 939, column: 30, scope: !3079)
!3089 = !DILocation(line: 939, column: 33, scope: !3079)
!3090 = !DILocation(line: 939, column: 38, scope: !3079)
!3091 = !DILocation(line: 939, column: 10, scope: !3079)
!3092 = !DILocation(line: 939, column: 3, scope: !3079)
!3093 = distinct !DISubprogram(name: "quotearg", scope: !114, file: !114, line: 943, type: !3094, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!9, !6}
!3096 = !DILocalVariable(name: "arg", arg: 1, scope: !3093, file: !114, line: 943, type: !6)
!3097 = !DILocation(line: 943, column: 23, scope: !3093)
!3098 = !DILocation(line: 945, column: 25, scope: !3093)
!3099 = !DILocation(line: 945, column: 10, scope: !3093)
!3100 = !DILocation(line: 945, column: 3, scope: !3093)
!3101 = distinct !DISubprogram(name: "quotearg_mem", scope: !114, file: !114, line: 949, type: !3102, scopeLine: 950, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!9, !6, !152}
!3104 = !DILocalVariable(name: "arg", arg: 1, scope: !3101, file: !114, line: 949, type: !6)
!3105 = !DILocation(line: 949, column: 27, scope: !3101)
!3106 = !DILocalVariable(name: "argsize", arg: 2, scope: !3101, file: !114, line: 949, type: !152)
!3107 = !DILocation(line: 949, column: 39, scope: !3101)
!3108 = !DILocation(line: 951, column: 29, scope: !3101)
!3109 = !DILocation(line: 951, column: 34, scope: !3101)
!3110 = !DILocation(line: 951, column: 10, scope: !3101)
!3111 = !DILocation(line: 951, column: 3, scope: !3101)
!3112 = distinct !DISubprogram(name: "quotearg_n_style", scope: !114, file: !114, line: 955, type: !3113, scopeLine: 956, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!9, !72, !116, !6}
!3115 = !DILocalVariable(name: "n", arg: 1, scope: !3112, file: !114, line: 955, type: !72)
!3116 = !DILocation(line: 955, column: 23, scope: !3112)
!3117 = !DILocalVariable(name: "s", arg: 2, scope: !3112, file: !114, line: 955, type: !116)
!3118 = !DILocation(line: 955, column: 45, scope: !3112)
!3119 = !DILocalVariable(name: "arg", arg: 3, scope: !3112, file: !114, line: 955, type: !6)
!3120 = !DILocation(line: 955, column: 60, scope: !3112)
!3121 = !DILocalVariable(name: "o", scope: !3112, file: !114, line: 957, type: !1709)
!3122 = !DILocation(line: 957, column: 32, scope: !3112)
!3123 = !DILocation(line: 957, column: 64, scope: !3112)
!3124 = !DILocation(line: 957, column: 36, scope: !3112)
!3125 = !DILocation(line: 958, column: 30, scope: !3112)
!3126 = !DILocation(line: 958, column: 33, scope: !3112)
!3127 = !DILocation(line: 958, column: 10, scope: !3112)
!3128 = !DILocation(line: 958, column: 3, scope: !3112)
!3129 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !114, file: !114, line: 193, type: !3130, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !113, retainedNodes: !4)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!161, !116}
!3132 = !DILocalVariable(name: "style", arg: 1, scope: !3129, file: !114, line: 193, type: !116)
!3133 = !DILocation(line: 193, column: 48, scope: !3129)
!3134 = !DILocalVariable(name: "o", scope: !3129, file: !114, line: 195, type: !161)
!3135 = !DILocation(line: 195, column: 26, scope: !3129)
!3136 = !DILocation(line: 196, column: 7, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3129, file: !114, line: 196, column: 7)
!3138 = !DILocation(line: 196, column: 13, scope: !3137)
!3139 = !DILocation(line: 196, column: 7, scope: !3129)
!3140 = !DILocation(line: 197, column: 5, scope: !3137)
!3141 = !DILocation(line: 198, column: 13, scope: !3129)
!3142 = !DILocation(line: 198, column: 5, scope: !3129)
!3143 = !DILocation(line: 198, column: 11, scope: !3129)
!3144 = !DILocation(line: 199, column: 3, scope: !3129)
!3145 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !114, file: !114, line: 962, type: !3146, scopeLine: 964, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!9, !72, !116, !6, !152}
!3148 = !DILocalVariable(name: "n", arg: 1, scope: !3145, file: !114, line: 962, type: !72)
!3149 = !DILocation(line: 962, column: 27, scope: !3145)
!3150 = !DILocalVariable(name: "s", arg: 2, scope: !3145, file: !114, line: 962, type: !116)
!3151 = !DILocation(line: 962, column: 49, scope: !3145)
!3152 = !DILocalVariable(name: "arg", arg: 3, scope: !3145, file: !114, line: 963, type: !6)
!3153 = !DILocation(line: 963, column: 35, scope: !3145)
!3154 = !DILocalVariable(name: "argsize", arg: 4, scope: !3145, file: !114, line: 963, type: !152)
!3155 = !DILocation(line: 963, column: 47, scope: !3145)
!3156 = !DILocalVariable(name: "o", scope: !3145, file: !114, line: 965, type: !1709)
!3157 = !DILocation(line: 965, column: 32, scope: !3145)
!3158 = !DILocation(line: 965, column: 64, scope: !3145)
!3159 = !DILocation(line: 965, column: 36, scope: !3145)
!3160 = !DILocation(line: 966, column: 30, scope: !3145)
!3161 = !DILocation(line: 966, column: 33, scope: !3145)
!3162 = !DILocation(line: 966, column: 38, scope: !3145)
!3163 = !DILocation(line: 966, column: 10, scope: !3145)
!3164 = !DILocation(line: 966, column: 3, scope: !3145)
!3165 = distinct !DISubprogram(name: "quotearg_style", scope: !114, file: !114, line: 970, type: !3166, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!9, !116, !6}
!3168 = !DILocalVariable(name: "s", arg: 1, scope: !3165, file: !114, line: 970, type: !116)
!3169 = !DILocation(line: 970, column: 36, scope: !3165)
!3170 = !DILocalVariable(name: "arg", arg: 2, scope: !3165, file: !114, line: 970, type: !6)
!3171 = !DILocation(line: 970, column: 51, scope: !3165)
!3172 = !DILocation(line: 972, column: 31, scope: !3165)
!3173 = !DILocation(line: 972, column: 34, scope: !3165)
!3174 = !DILocation(line: 972, column: 10, scope: !3165)
!3175 = !DILocation(line: 972, column: 3, scope: !3165)
!3176 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !114, file: !114, line: 976, type: !3177, scopeLine: 977, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!9, !116, !6, !152}
!3179 = !DILocalVariable(name: "s", arg: 1, scope: !3176, file: !114, line: 976, type: !116)
!3180 = !DILocation(line: 976, column: 40, scope: !3176)
!3181 = !DILocalVariable(name: "arg", arg: 2, scope: !3176, file: !114, line: 976, type: !6)
!3182 = !DILocation(line: 976, column: 55, scope: !3176)
!3183 = !DILocalVariable(name: "argsize", arg: 3, scope: !3176, file: !114, line: 976, type: !152)
!3184 = !DILocation(line: 976, column: 67, scope: !3176)
!3185 = !DILocation(line: 978, column: 35, scope: !3176)
!3186 = !DILocation(line: 978, column: 38, scope: !3176)
!3187 = !DILocation(line: 978, column: 43, scope: !3176)
!3188 = !DILocation(line: 978, column: 10, scope: !3176)
!3189 = !DILocation(line: 978, column: 3, scope: !3176)
!3190 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !114, file: !114, line: 982, type: !3191, scopeLine: 983, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!9, !6, !152, !8}
!3193 = !DILocalVariable(name: "arg", arg: 1, scope: !3190, file: !114, line: 982, type: !6)
!3194 = !DILocation(line: 982, column: 32, scope: !3190)
!3195 = !DILocalVariable(name: "argsize", arg: 2, scope: !3190, file: !114, line: 982, type: !152)
!3196 = !DILocation(line: 982, column: 44, scope: !3190)
!3197 = !DILocalVariable(name: "ch", arg: 3, scope: !3190, file: !114, line: 982, type: !8)
!3198 = !DILocation(line: 982, column: 58, scope: !3190)
!3199 = !DILocalVariable(name: "options", scope: !3190, file: !114, line: 984, type: !161)
!3200 = !DILocation(line: 984, column: 26, scope: !3190)
!3201 = !DILocation(line: 985, column: 13, scope: !3190)
!3202 = !DILocation(line: 986, column: 31, scope: !3190)
!3203 = !DILocation(line: 986, column: 3, scope: !3190)
!3204 = !DILocation(line: 987, column: 33, scope: !3190)
!3205 = !DILocation(line: 987, column: 38, scope: !3190)
!3206 = !DILocation(line: 987, column: 10, scope: !3190)
!3207 = !DILocation(line: 987, column: 3, scope: !3190)
!3208 = distinct !DISubprogram(name: "quotearg_char", scope: !114, file: !114, line: 991, type: !3209, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!9, !6, !8}
!3211 = !DILocalVariable(name: "arg", arg: 1, scope: !3208, file: !114, line: 991, type: !6)
!3212 = !DILocation(line: 991, column: 28, scope: !3208)
!3213 = !DILocalVariable(name: "ch", arg: 2, scope: !3208, file: !114, line: 991, type: !8)
!3214 = !DILocation(line: 991, column: 38, scope: !3208)
!3215 = !DILocation(line: 993, column: 29, scope: !3208)
!3216 = !DILocation(line: 993, column: 44, scope: !3208)
!3217 = !DILocation(line: 993, column: 10, scope: !3208)
!3218 = !DILocation(line: 993, column: 3, scope: !3208)
!3219 = distinct !DISubprogram(name: "quotearg_colon", scope: !114, file: !114, line: 997, type: !3094, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!3220 = !DILocalVariable(name: "arg", arg: 1, scope: !3219, file: !114, line: 997, type: !6)
!3221 = !DILocation(line: 997, column: 29, scope: !3219)
!3222 = !DILocation(line: 999, column: 25, scope: !3219)
!3223 = !DILocation(line: 999, column: 10, scope: !3219)
!3224 = !DILocation(line: 999, column: 3, scope: !3219)
!3225 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !114, file: !114, line: 1003, type: !3102, scopeLine: 1004, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!3226 = !DILocalVariable(name: "arg", arg: 1, scope: !3225, file: !114, line: 1003, type: !6)
!3227 = !DILocation(line: 1003, column: 33, scope: !3225)
!3228 = !DILocalVariable(name: "argsize", arg: 2, scope: !3225, file: !114, line: 1003, type: !152)
!3229 = !DILocation(line: 1003, column: 45, scope: !3225)
!3230 = !DILocation(line: 1005, column: 29, scope: !3225)
!3231 = !DILocation(line: 1005, column: 34, scope: !3225)
!3232 = !DILocation(line: 1005, column: 10, scope: !3225)
!3233 = !DILocation(line: 1005, column: 3, scope: !3225)
!3234 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !114, file: !114, line: 1009, type: !3113, scopeLine: 1010, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!3235 = !DILocalVariable(name: "n", arg: 1, scope: !3234, file: !114, line: 1009, type: !72)
!3236 = !DILocation(line: 1009, column: 29, scope: !3234)
!3237 = !DILocalVariable(name: "s", arg: 2, scope: !3234, file: !114, line: 1009, type: !116)
!3238 = !DILocation(line: 1009, column: 51, scope: !3234)
!3239 = !DILocalVariable(name: "arg", arg: 3, scope: !3234, file: !114, line: 1009, type: !6)
!3240 = !DILocation(line: 1009, column: 66, scope: !3234)
!3241 = !DILocalVariable(name: "options", scope: !3234, file: !114, line: 1011, type: !161)
!3242 = !DILocation(line: 1011, column: 26, scope: !3234)
!3243 = !DILocation(line: 1012, column: 41, scope: !3234)
!3244 = !DILocation(line: 1012, column: 13, scope: !3234)
!3245 = !DILocation(line: 1013, column: 3, scope: !3234)
!3246 = !DILocation(line: 1014, column: 30, scope: !3234)
!3247 = !DILocation(line: 1014, column: 33, scope: !3234)
!3248 = !DILocation(line: 1014, column: 10, scope: !3234)
!3249 = !DILocation(line: 1014, column: 3, scope: !3234)
!3250 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !114, file: !114, line: 1018, type: !3251, scopeLine: 1020, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!9, !72, !6, !6, !6}
!3253 = !DILocalVariable(name: "n", arg: 1, scope: !3250, file: !114, line: 1018, type: !72)
!3254 = !DILocation(line: 1018, column: 24, scope: !3250)
!3255 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3250, file: !114, line: 1018, type: !6)
!3256 = !DILocation(line: 1018, column: 39, scope: !3250)
!3257 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3250, file: !114, line: 1019, type: !6)
!3258 = !DILocation(line: 1019, column: 32, scope: !3250)
!3259 = !DILocalVariable(name: "arg", arg: 4, scope: !3250, file: !114, line: 1019, type: !6)
!3260 = !DILocation(line: 1019, column: 57, scope: !3250)
!3261 = !DILocation(line: 1021, column: 33, scope: !3250)
!3262 = !DILocation(line: 1021, column: 36, scope: !3250)
!3263 = !DILocation(line: 1021, column: 48, scope: !3250)
!3264 = !DILocation(line: 1021, column: 61, scope: !3250)
!3265 = !DILocation(line: 1021, column: 10, scope: !3250)
!3266 = !DILocation(line: 1021, column: 3, scope: !3250)
!3267 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !114, file: !114, line: 1026, type: !3268, scopeLine: 1029, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!9, !72, !6, !6, !6, !152}
!3270 = !DILocalVariable(name: "n", arg: 1, scope: !3267, file: !114, line: 1026, type: !72)
!3271 = !DILocation(line: 1026, column: 28, scope: !3267)
!3272 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3267, file: !114, line: 1026, type: !6)
!3273 = !DILocation(line: 1026, column: 43, scope: !3267)
!3274 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3267, file: !114, line: 1027, type: !6)
!3275 = !DILocation(line: 1027, column: 36, scope: !3267)
!3276 = !DILocalVariable(name: "arg", arg: 4, scope: !3267, file: !114, line: 1028, type: !6)
!3277 = !DILocation(line: 1028, column: 36, scope: !3267)
!3278 = !DILocalVariable(name: "argsize", arg: 5, scope: !3267, file: !114, line: 1028, type: !152)
!3279 = !DILocation(line: 1028, column: 48, scope: !3267)
!3280 = !DILocalVariable(name: "o", scope: !3267, file: !114, line: 1030, type: !161)
!3281 = !DILocation(line: 1030, column: 26, scope: !3267)
!3282 = !DILocation(line: 1030, column: 30, scope: !3267)
!3283 = !DILocation(line: 1031, column: 27, scope: !3267)
!3284 = !DILocation(line: 1031, column: 39, scope: !3267)
!3285 = !DILocation(line: 1031, column: 3, scope: !3267)
!3286 = !DILocation(line: 1032, column: 30, scope: !3267)
!3287 = !DILocation(line: 1032, column: 33, scope: !3267)
!3288 = !DILocation(line: 1032, column: 38, scope: !3267)
!3289 = !DILocation(line: 1032, column: 10, scope: !3267)
!3290 = !DILocation(line: 1032, column: 3, scope: !3267)
!3291 = distinct !DISubprogram(name: "quotearg_custom", scope: !114, file: !114, line: 1036, type: !3292, scopeLine: 1038, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!9, !6, !6, !6}
!3294 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3291, file: !114, line: 1036, type: !6)
!3295 = !DILocation(line: 1036, column: 30, scope: !3291)
!3296 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3291, file: !114, line: 1036, type: !6)
!3297 = !DILocation(line: 1036, column: 54, scope: !3291)
!3298 = !DILocalVariable(name: "arg", arg: 3, scope: !3291, file: !114, line: 1037, type: !6)
!3299 = !DILocation(line: 1037, column: 30, scope: !3291)
!3300 = !DILocation(line: 1039, column: 32, scope: !3291)
!3301 = !DILocation(line: 1039, column: 44, scope: !3291)
!3302 = !DILocation(line: 1039, column: 57, scope: !3291)
!3303 = !DILocation(line: 1039, column: 10, scope: !3291)
!3304 = !DILocation(line: 1039, column: 3, scope: !3291)
!3305 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !114, file: !114, line: 1043, type: !3306, scopeLine: 1045, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!9, !6, !6, !6, !152}
!3308 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3305, file: !114, line: 1043, type: !6)
!3309 = !DILocation(line: 1043, column: 34, scope: !3305)
!3310 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3305, file: !114, line: 1043, type: !6)
!3311 = !DILocation(line: 1043, column: 58, scope: !3305)
!3312 = !DILocalVariable(name: "arg", arg: 3, scope: !3305, file: !114, line: 1044, type: !6)
!3313 = !DILocation(line: 1044, column: 34, scope: !3305)
!3314 = !DILocalVariable(name: "argsize", arg: 4, scope: !3305, file: !114, line: 1044, type: !152)
!3315 = !DILocation(line: 1044, column: 46, scope: !3305)
!3316 = !DILocation(line: 1046, column: 36, scope: !3305)
!3317 = !DILocation(line: 1046, column: 48, scope: !3305)
!3318 = !DILocation(line: 1046, column: 61, scope: !3305)
!3319 = !DILocation(line: 1047, column: 33, scope: !3305)
!3320 = !DILocation(line: 1046, column: 10, scope: !3305)
!3321 = !DILocation(line: 1046, column: 3, scope: !3305)
!3322 = distinct !DISubprogram(name: "quote_n_mem", scope: !114, file: !114, line: 1061, type: !3323, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!6, !72, !6, !152}
!3325 = !DILocalVariable(name: "n", arg: 1, scope: !3322, file: !114, line: 1061, type: !72)
!3326 = !DILocation(line: 1061, column: 18, scope: !3322)
!3327 = !DILocalVariable(name: "arg", arg: 2, scope: !3322, file: !114, line: 1061, type: !6)
!3328 = !DILocation(line: 1061, column: 33, scope: !3322)
!3329 = !DILocalVariable(name: "argsize", arg: 3, scope: !3322, file: !114, line: 1061, type: !152)
!3330 = !DILocation(line: 1061, column: 45, scope: !3322)
!3331 = !DILocation(line: 1063, column: 30, scope: !3322)
!3332 = !DILocation(line: 1063, column: 33, scope: !3322)
!3333 = !DILocation(line: 1063, column: 38, scope: !3322)
!3334 = !DILocation(line: 1063, column: 10, scope: !3322)
!3335 = !DILocation(line: 1063, column: 3, scope: !3322)
!3336 = distinct !DISubprogram(name: "quote_mem", scope: !114, file: !114, line: 1067, type: !3337, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!6, !6, !152}
!3339 = !DILocalVariable(name: "arg", arg: 1, scope: !3336, file: !114, line: 1067, type: !6)
!3340 = !DILocation(line: 1067, column: 24, scope: !3336)
!3341 = !DILocalVariable(name: "argsize", arg: 2, scope: !3336, file: !114, line: 1067, type: !152)
!3342 = !DILocation(line: 1067, column: 36, scope: !3336)
!3343 = !DILocation(line: 1069, column: 26, scope: !3336)
!3344 = !DILocation(line: 1069, column: 31, scope: !3336)
!3345 = !DILocation(line: 1069, column: 10, scope: !3336)
!3346 = !DILocation(line: 1069, column: 3, scope: !3336)
!3347 = distinct !DISubprogram(name: "quote_n", scope: !114, file: !114, line: 1073, type: !3348, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!6, !72, !6}
!3350 = !DILocalVariable(name: "n", arg: 1, scope: !3347, file: !114, line: 1073, type: !72)
!3351 = !DILocation(line: 1073, column: 14, scope: !3347)
!3352 = !DILocalVariable(name: "arg", arg: 2, scope: !3347, file: !114, line: 1073, type: !6)
!3353 = !DILocation(line: 1073, column: 29, scope: !3347)
!3354 = !DILocation(line: 1075, column: 23, scope: !3347)
!3355 = !DILocation(line: 1075, column: 26, scope: !3347)
!3356 = !DILocation(line: 1075, column: 10, scope: !3347)
!3357 = !DILocation(line: 1075, column: 3, scope: !3347)
!3358 = distinct !DISubprogram(name: "quote", scope: !114, file: !114, line: 1079, type: !3359, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!6, !6}
!3361 = !DILocalVariable(name: "arg", arg: 1, scope: !3358, file: !114, line: 1079, type: !6)
!3362 = !DILocation(line: 1079, column: 20, scope: !3358)
!3363 = !DILocation(line: 1081, column: 22, scope: !3358)
!3364 = !DILocation(line: 1081, column: 10, scope: !3358)
!3365 = !DILocation(line: 1081, column: 3, scope: !3358)
!3366 = distinct !DISubprogram(name: "parse_user_spec", scope: !196, file: !196, line: 259, type: !3367, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !202, retainedNodes: !4)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!6, !6, !199, !200, !201, !201}
!3369 = !DILocalVariable(name: "spec", arg: 1, scope: !3366, file: !196, line: 259, type: !6)
!3370 = !DILocation(line: 259, column: 30, scope: !3366)
!3371 = !DILocalVariable(name: "uid", arg: 2, scope: !3366, file: !196, line: 259, type: !199)
!3372 = !DILocation(line: 259, column: 43, scope: !3366)
!3373 = !DILocalVariable(name: "gid", arg: 3, scope: !3366, file: !196, line: 259, type: !200)
!3374 = !DILocation(line: 259, column: 55, scope: !3366)
!3375 = !DILocalVariable(name: "username", arg: 4, scope: !3366, file: !196, line: 260, type: !201)
!3376 = !DILocation(line: 260, column: 25, scope: !3366)
!3377 = !DILocalVariable(name: "groupname", arg: 5, scope: !3366, file: !196, line: 260, type: !201)
!3378 = !DILocation(line: 260, column: 42, scope: !3366)
!3379 = !DILocalVariable(name: "colon", scope: !3366, file: !196, line: 262, type: !6)
!3380 = !DILocation(line: 262, column: 15, scope: !3366)
!3381 = !DILocation(line: 262, column: 23, scope: !3366)
!3382 = !DILocation(line: 262, column: 37, scope: !3366)
!3383 = !DILocation(line: 262, column: 29, scope: !3366)
!3384 = !DILocalVariable(name: "error_msg", scope: !3366, file: !196, line: 263, type: !6)
!3385 = !DILocation(line: 263, column: 15, scope: !3366)
!3386 = !DILocation(line: 264, column: 27, scope: !3366)
!3387 = !DILocation(line: 264, column: 33, scope: !3366)
!3388 = !DILocation(line: 264, column: 40, scope: !3366)
!3389 = !DILocation(line: 264, column: 45, scope: !3366)
!3390 = !DILocation(line: 264, column: 50, scope: !3366)
!3391 = !DILocation(line: 264, column: 60, scope: !3366)
!3392 = !DILocation(line: 264, column: 5, scope: !3366)
!3393 = !DILocation(line: 266, column: 7, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3366, file: !196, line: 266, column: 7)
!3395 = !DILocation(line: 266, column: 11, scope: !3394)
!3396 = !DILocation(line: 266, column: 15, scope: !3394)
!3397 = !DILocation(line: 266, column: 21, scope: !3394)
!3398 = !DILocation(line: 266, column: 24, scope: !3394)
!3399 = !DILocation(line: 266, column: 7, scope: !3366)
!3400 = !DILocalVariable(name: "dot", scope: !3401, file: !196, line: 274, type: !6)
!3401 = distinct !DILexicalBlock(scope: !3394, file: !196, line: 267, column: 5)
!3402 = !DILocation(line: 274, column: 19, scope: !3401)
!3403 = !DILocation(line: 274, column: 33, scope: !3401)
!3404 = !DILocation(line: 274, column: 25, scope: !3401)
!3405 = !DILocation(line: 275, column: 11, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3401, file: !196, line: 275, column: 11)
!3407 = !DILocation(line: 276, column: 11, scope: !3406)
!3408 = !DILocation(line: 276, column: 38, scope: !3406)
!3409 = !DILocation(line: 276, column: 44, scope: !3406)
!3410 = !DILocation(line: 276, column: 49, scope: !3406)
!3411 = !DILocation(line: 276, column: 54, scope: !3406)
!3412 = !DILocation(line: 276, column: 59, scope: !3406)
!3413 = !DILocation(line: 276, column: 69, scope: !3406)
!3414 = !DILocation(line: 276, column: 16, scope: !3406)
!3415 = !DILocation(line: 275, column: 11, scope: !3401)
!3416 = !DILocation(line: 277, column: 19, scope: !3406)
!3417 = !DILocation(line: 277, column: 9, scope: !3406)
!3418 = !DILocation(line: 278, column: 5, scope: !3401)
!3419 = !DILocation(line: 280, column: 10, scope: !3366)
!3420 = !DILocation(line: 280, column: 3, scope: !3366)
!3421 = !DILocalVariable(name: "spec", arg: 1, scope: !195, file: !196, line: 102, type: !6)
!3422 = !DILocation(line: 102, column: 35, scope: !195)
!3423 = !DILocalVariable(name: "separator", arg: 2, scope: !195, file: !196, line: 102, type: !6)
!3424 = !DILocation(line: 102, column: 53, scope: !195)
!3425 = !DILocalVariable(name: "uid", arg: 3, scope: !195, file: !196, line: 103, type: !199)
!3426 = !DILocation(line: 103, column: 30, scope: !195)
!3427 = !DILocalVariable(name: "gid", arg: 4, scope: !195, file: !196, line: 103, type: !200)
!3428 = !DILocation(line: 103, column: 42, scope: !195)
!3429 = !DILocalVariable(name: "username", arg: 5, scope: !195, file: !196, line: 104, type: !201)
!3430 = !DILocation(line: 104, column: 30, scope: !195)
!3431 = !DILocalVariable(name: "groupname", arg: 6, scope: !195, file: !196, line: 104, type: !201)
!3432 = !DILocation(line: 104, column: 47, scope: !195)
!3433 = !DILocalVariable(name: "error_msg", scope: !195, file: !196, line: 110, type: !6)
!3434 = !DILocation(line: 110, column: 15, scope: !195)
!3435 = !DILocalVariable(name: "pwd", scope: !195, file: !196, line: 111, type: !3436)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !929, line: 49, size: 384, elements: !3438)
!3438 = !{!3439, !3440, !3441, !3442, !3443, !3444, !3445}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !3437, file: !929, line: 51, baseType: !9, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !3437, file: !929, line: 52, baseType: !9, size: 64, offset: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !3437, file: !929, line: 54, baseType: !16, size: 32, offset: 128)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !3437, file: !929, line: 55, baseType: !24, size: 32, offset: 160)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !3437, file: !929, line: 56, baseType: !9, size: 64, offset: 192)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !3437, file: !929, line: 57, baseType: !9, size: 64, offset: 256)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !3437, file: !929, line: 58, baseType: !9, size: 64, offset: 320)
!3446 = !DILocation(line: 111, column: 18, scope: !195)
!3447 = !DILocalVariable(name: "grp", scope: !195, file: !196, line: 112, type: !3448)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !1190, line: 42, size: 256, elements: !3450)
!3450 = !{!3451, !3452, !3453, !3454}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !3449, file: !1190, line: 44, baseType: !9, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !3449, file: !1190, line: 45, baseType: !9, size: 64, offset: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !3449, file: !1190, line: 46, baseType: !24, size: 32, offset: 128)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !3449, file: !1190, line: 47, baseType: !201, size: 64, offset: 192)
!3455 = !DILocation(line: 112, column: 17, scope: !195)
!3456 = !DILocalVariable(name: "u", scope: !195, file: !196, line: 113, type: !9)
!3457 = !DILocation(line: 113, column: 9, scope: !195)
!3458 = !DILocalVariable(name: "g", scope: !195, file: !196, line: 114, type: !6)
!3459 = !DILocation(line: 114, column: 15, scope: !195)
!3460 = !DILocalVariable(name: "gname", scope: !195, file: !196, line: 115, type: !9)
!3461 = !DILocation(line: 115, column: 9, scope: !195)
!3462 = !DILocalVariable(name: "unum", scope: !195, file: !196, line: 116, type: !14)
!3463 = !DILocation(line: 116, column: 9, scope: !195)
!3464 = !DILocation(line: 116, column: 17, scope: !195)
!3465 = !DILocation(line: 116, column: 16, scope: !195)
!3466 = !DILocalVariable(name: "gnum", scope: !195, file: !196, line: 117, type: !23)
!3467 = !DILocation(line: 117, column: 9, scope: !195)
!3468 = !DILocation(line: 117, column: 16, scope: !195)
!3469 = !DILocation(line: 117, column: 23, scope: !195)
!3470 = !DILocation(line: 117, column: 22, scope: !195)
!3471 = !DILocation(line: 119, column: 13, scope: !195)
!3472 = !DILocation(line: 120, column: 7, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !195, file: !196, line: 120, column: 7)
!3474 = !DILocation(line: 120, column: 7, scope: !195)
!3475 = !DILocation(line: 121, column: 6, scope: !3473)
!3476 = !DILocation(line: 121, column: 15, scope: !3473)
!3477 = !DILocation(line: 121, column: 5, scope: !3473)
!3478 = !DILocation(line: 122, column: 7, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !195, file: !196, line: 122, column: 7)
!3480 = !DILocation(line: 122, column: 7, scope: !195)
!3481 = !DILocation(line: 123, column: 6, scope: !3479)
!3482 = !DILocation(line: 123, column: 16, scope: !3479)
!3483 = !DILocation(line: 123, column: 5, scope: !3479)
!3484 = !DILocation(line: 129, column: 5, scope: !195)
!3485 = !DILocation(line: 130, column: 7, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !195, file: !196, line: 130, column: 7)
!3487 = !DILocation(line: 130, column: 17, scope: !3486)
!3488 = !DILocation(line: 130, column: 7, scope: !195)
!3489 = !DILocation(line: 132, column: 12, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3491, file: !196, line: 132, column: 11)
!3491 = distinct !DILexicalBlock(scope: !3486, file: !196, line: 131, column: 5)
!3492 = !DILocation(line: 132, column: 11, scope: !3490)
!3493 = !DILocation(line: 132, column: 11, scope: !3491)
!3494 = !DILocation(line: 133, column: 22, scope: !3490)
!3495 = !DILocation(line: 133, column: 13, scope: !3490)
!3496 = !DILocation(line: 133, column: 11, scope: !3490)
!3497 = !DILocation(line: 133, column: 9, scope: !3490)
!3498 = !DILocation(line: 134, column: 5, scope: !3491)
!3499 = !DILocalVariable(name: "ulen", scope: !3500, file: !196, line: 137, type: !152)
!3500 = distinct !DILexicalBlock(scope: !3486, file: !196, line: 136, column: 5)
!3501 = !DILocation(line: 137, column: 14, scope: !3500)
!3502 = !DILocation(line: 137, column: 21, scope: !3500)
!3503 = !DILocation(line: 137, column: 33, scope: !3500)
!3504 = !DILocation(line: 137, column: 31, scope: !3500)
!3505 = !DILocation(line: 138, column: 11, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3500, file: !196, line: 138, column: 11)
!3507 = !DILocation(line: 138, column: 16, scope: !3506)
!3508 = !DILocation(line: 138, column: 11, scope: !3500)
!3509 = !DILocation(line: 140, column: 24, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3506, file: !196, line: 139, column: 9)
!3511 = !DILocation(line: 140, column: 30, scope: !3510)
!3512 = !DILocation(line: 140, column: 35, scope: !3510)
!3513 = !DILocation(line: 140, column: 15, scope: !3510)
!3514 = !DILocation(line: 140, column: 13, scope: !3510)
!3515 = !DILocation(line: 141, column: 11, scope: !3510)
!3516 = !DILocation(line: 141, column: 13, scope: !3510)
!3517 = !DILocation(line: 141, column: 19, scope: !3510)
!3518 = !DILocation(line: 142, column: 9, scope: !3510)
!3519 = !DILocation(line: 145, column: 8, scope: !195)
!3520 = !DILocation(line: 145, column: 18, scope: !195)
!3521 = !DILocation(line: 145, column: 26, scope: !195)
!3522 = !DILocation(line: 145, column: 31, scope: !195)
!3523 = !DILocation(line: 145, column: 41, scope: !195)
!3524 = !DILocation(line: 145, column: 29, scope: !195)
!3525 = !DILocation(line: 145, column: 46, scope: !195)
!3526 = !DILocation(line: 147, column: 10, scope: !195)
!3527 = !DILocation(line: 147, column: 20, scope: !195)
!3528 = !DILocation(line: 145, column: 5, scope: !195)
!3529 = !DILocation(line: 158, column: 7, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !195, file: !196, line: 158, column: 7)
!3531 = !DILocation(line: 158, column: 9, scope: !3530)
!3532 = !DILocation(line: 158, column: 7, scope: !195)
!3533 = !DILocation(line: 161, column: 15, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3530, file: !196, line: 159, column: 5)
!3535 = !DILocation(line: 161, column: 14, scope: !3534)
!3536 = !DILocation(line: 161, column: 17, scope: !3534)
!3537 = !DILocation(line: 161, column: 43, scope: !3534)
!3538 = !DILocation(line: 161, column: 33, scope: !3534)
!3539 = !DILocation(line: 161, column: 11, scope: !3534)
!3540 = !DILocation(line: 162, column: 11, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3534, file: !196, line: 162, column: 11)
!3542 = !DILocation(line: 162, column: 15, scope: !3541)
!3543 = !DILocation(line: 162, column: 11, scope: !3534)
!3544 = !DILocalVariable(name: "use_login_group", scope: !3545, file: !196, line: 164, type: !29)
!3545 = distinct !DILexicalBlock(scope: !3541, file: !196, line: 163, column: 9)
!3546 = !DILocation(line: 164, column: 16, scope: !3545)
!3547 = !DILocation(line: 164, column: 35, scope: !3545)
!3548 = !DILocation(line: 164, column: 45, scope: !3545)
!3549 = !DILocation(line: 164, column: 53, scope: !3545)
!3550 = !DILocation(line: 164, column: 56, scope: !3545)
!3551 = !DILocation(line: 164, column: 58, scope: !3545)
!3552 = !DILocation(line: 0, scope: !3545)
!3553 = !DILocation(line: 165, column: 15, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3545, file: !196, line: 165, column: 15)
!3555 = !DILocation(line: 165, column: 15, scope: !3545)
!3556 = !DILocation(line: 169, column: 27, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3554, file: !196, line: 166, column: 13)
!3558 = !DILocation(line: 169, column: 25, scope: !3557)
!3559 = !DILocation(line: 170, column: 13, scope: !3557)
!3560 = !DILocalVariable(name: "tmp", scope: !3561, file: !196, line: 173, type: !84)
!3561 = distinct !DILexicalBlock(scope: !3554, file: !196, line: 172, column: 13)
!3562 = !DILocation(line: 173, column: 33, scope: !3561)
!3563 = !DILocation(line: 174, column: 29, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3561, file: !196, line: 174, column: 19)
!3565 = !DILocation(line: 174, column: 19, scope: !3564)
!3566 = !DILocation(line: 174, column: 52, scope: !3564)
!3567 = !DILocation(line: 175, column: 19, scope: !3564)
!3568 = !DILocation(line: 175, column: 22, scope: !3564)
!3569 = !DILocation(line: 175, column: 26, scope: !3564)
!3570 = !DILocation(line: 175, column: 36, scope: !3564)
!3571 = !DILocation(line: 175, column: 47, scope: !3564)
!3572 = !DILocation(line: 175, column: 39, scope: !3564)
!3573 = !DILocation(line: 175, column: 51, scope: !3564)
!3574 = !DILocation(line: 174, column: 19, scope: !3561)
!3575 = !DILocation(line: 176, column: 24, scope: !3564)
!3576 = !DILocation(line: 176, column: 22, scope: !3564)
!3577 = !DILocation(line: 176, column: 17, scope: !3564)
!3578 = !DILocation(line: 178, column: 29, scope: !3564)
!3579 = !DILocation(line: 178, column: 27, scope: !3564)
!3580 = !DILocation(line: 180, column: 9, scope: !3545)
!3581 = !DILocation(line: 183, column: 18, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3541, file: !196, line: 182, column: 9)
!3583 = !DILocation(line: 183, column: 23, scope: !3582)
!3584 = !DILocation(line: 183, column: 16, scope: !3582)
!3585 = !DILocation(line: 184, column: 15, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3582, file: !196, line: 184, column: 15)
!3587 = !DILocation(line: 184, column: 17, scope: !3586)
!3588 = !DILocation(line: 184, column: 25, scope: !3586)
!3589 = !DILocation(line: 184, column: 28, scope: !3586)
!3590 = !DILocation(line: 184, column: 38, scope: !3586)
!3591 = !DILocation(line: 184, column: 15, scope: !3582)
!3592 = !DILocalVariable(name: "buf", scope: !3593, file: !196, line: 188, type: !55)
!3593 = distinct !DILexicalBlock(scope: !3586, file: !196, line: 185, column: 13)
!3594 = !DILocation(line: 188, column: 20, scope: !3593)
!3595 = !DILocation(line: 189, column: 22, scope: !3593)
!3596 = !DILocation(line: 189, column: 27, scope: !3593)
!3597 = !DILocation(line: 189, column: 20, scope: !3593)
!3598 = !DILocation(line: 190, column: 31, scope: !3593)
!3599 = !DILocation(line: 190, column: 21, scope: !3593)
!3600 = !DILocation(line: 190, column: 19, scope: !3593)
!3601 = !DILocation(line: 191, column: 32, scope: !3593)
!3602 = !DILocation(line: 191, column: 38, scope: !3593)
!3603 = !DILocation(line: 191, column: 43, scope: !3593)
!3604 = !DILocation(line: 191, column: 64, scope: !3593)
!3605 = !DILocation(line: 191, column: 70, scope: !3593)
!3606 = !DILocation(line: 191, column: 53, scope: !3593)
!3607 = !DILocation(line: 191, column: 23, scope: !3593)
!3608 = !DILocation(line: 191, column: 21, scope: !3593)
!3609 = !DILocation(line: 192, column: 15, scope: !3593)
!3610 = !DILocation(line: 193, column: 13, scope: !3593)
!3611 = !DILocation(line: 195, column: 7, scope: !3534)
!3612 = !DILocation(line: 196, column: 5, scope: !3534)
!3613 = !DILocation(line: 198, column: 7, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !195, file: !196, line: 198, column: 7)
!3615 = !DILocation(line: 198, column: 9, scope: !3614)
!3616 = !DILocation(line: 198, column: 17, scope: !3614)
!3617 = !DILocation(line: 198, column: 20, scope: !3614)
!3618 = !DILocation(line: 198, column: 30, scope: !3614)
!3619 = !DILocation(line: 198, column: 7, scope: !195)
!3620 = !DILocation(line: 202, column: 15, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3614, file: !196, line: 199, column: 5)
!3622 = !DILocation(line: 202, column: 14, scope: !3621)
!3623 = !DILocation(line: 202, column: 17, scope: !3621)
!3624 = !DILocation(line: 202, column: 43, scope: !3621)
!3625 = !DILocation(line: 202, column: 33, scope: !3621)
!3626 = !DILocation(line: 202, column: 11, scope: !3621)
!3627 = !DILocation(line: 203, column: 11, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3621, file: !196, line: 203, column: 11)
!3629 = !DILocation(line: 203, column: 15, scope: !3628)
!3630 = !DILocation(line: 203, column: 11, scope: !3621)
!3631 = !DILocalVariable(name: "tmp", scope: !3632, file: !196, line: 205, type: !84)
!3632 = distinct !DILexicalBlock(scope: !3628, file: !196, line: 204, column: 9)
!3633 = !DILocation(line: 205, column: 29, scope: !3632)
!3634 = !DILocation(line: 206, column: 25, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3632, file: !196, line: 206, column: 15)
!3636 = !DILocation(line: 206, column: 15, scope: !3635)
!3637 = !DILocation(line: 206, column: 48, scope: !3635)
!3638 = !DILocation(line: 207, column: 15, scope: !3635)
!3639 = !DILocation(line: 207, column: 18, scope: !3635)
!3640 = !DILocation(line: 207, column: 22, scope: !3635)
!3641 = !DILocation(line: 207, column: 32, scope: !3635)
!3642 = !DILocation(line: 207, column: 43, scope: !3635)
!3643 = !DILocation(line: 207, column: 35, scope: !3635)
!3644 = !DILocation(line: 207, column: 47, scope: !3635)
!3645 = !DILocation(line: 206, column: 15, scope: !3632)
!3646 = !DILocation(line: 208, column: 20, scope: !3635)
!3647 = !DILocation(line: 208, column: 18, scope: !3635)
!3648 = !DILocation(line: 208, column: 13, scope: !3635)
!3649 = !DILocation(line: 210, column: 25, scope: !3635)
!3650 = !DILocation(line: 210, column: 23, scope: !3635)
!3651 = !DILocation(line: 211, column: 9, scope: !3632)
!3652 = !DILocation(line: 213, column: 16, scope: !3628)
!3653 = !DILocation(line: 213, column: 21, scope: !3628)
!3654 = !DILocation(line: 213, column: 14, scope: !3628)
!3655 = !DILocation(line: 214, column: 7, scope: !3621)
!3656 = !DILocation(line: 215, column: 24, scope: !3621)
!3657 = !DILocation(line: 215, column: 15, scope: !3621)
!3658 = !DILocation(line: 215, column: 13, scope: !3621)
!3659 = !DILocation(line: 216, column: 5, scope: !3621)
!3660 = !DILocation(line: 218, column: 7, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !195, file: !196, line: 218, column: 7)
!3662 = !DILocation(line: 218, column: 17, scope: !3661)
!3663 = !DILocation(line: 218, column: 7, scope: !195)
!3664 = !DILocation(line: 220, column: 14, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3661, file: !196, line: 219, column: 5)
!3666 = !DILocation(line: 220, column: 8, scope: !3665)
!3667 = !DILocation(line: 220, column: 12, scope: !3665)
!3668 = !DILocation(line: 221, column: 11, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3665, file: !196, line: 221, column: 11)
!3670 = !DILocation(line: 221, column: 11, scope: !3665)
!3671 = !DILocation(line: 222, column: 16, scope: !3669)
!3672 = !DILocation(line: 222, column: 10, scope: !3669)
!3673 = !DILocation(line: 222, column: 14, scope: !3669)
!3674 = !DILocation(line: 222, column: 9, scope: !3669)
!3675 = !DILocation(line: 223, column: 11, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3665, file: !196, line: 223, column: 11)
!3677 = !DILocation(line: 223, column: 11, scope: !3665)
!3678 = !DILocation(line: 225, column: 23, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3676, file: !196, line: 224, column: 9)
!3680 = !DILocation(line: 225, column: 12, scope: !3679)
!3681 = !DILocation(line: 225, column: 21, scope: !3679)
!3682 = !DILocation(line: 226, column: 13, scope: !3679)
!3683 = !DILocation(line: 227, column: 9, scope: !3679)
!3684 = !DILocation(line: 228, column: 11, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3665, file: !196, line: 228, column: 11)
!3686 = !DILocation(line: 228, column: 11, scope: !3665)
!3687 = !DILocation(line: 230, column: 24, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3685, file: !196, line: 229, column: 9)
!3689 = !DILocation(line: 230, column: 12, scope: !3688)
!3690 = !DILocation(line: 230, column: 22, scope: !3688)
!3691 = !DILocation(line: 231, column: 17, scope: !3688)
!3692 = !DILocation(line: 232, column: 9, scope: !3688)
!3693 = !DILocation(line: 233, column: 5, scope: !3665)
!3694 = !DILocation(line: 235, column: 9, scope: !195)
!3695 = !DILocation(line: 235, column: 3, scope: !195)
!3696 = !DILocation(line: 236, column: 9, scope: !195)
!3697 = !DILocation(line: 236, column: 3, scope: !195)
!3698 = !DILocation(line: 237, column: 10, scope: !195)
!3699 = !DILocation(line: 237, column: 22, scope: !195)
!3700 = !DILocation(line: 237, column: 3, scope: !195)
!3701 = distinct !DISubprogram(name: "version_etc_arn", scope: !233, file: !233, line: 61, type: !3702, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !232, retainedNodes: !4)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{null, !3704, !6, !6, !6, !3757, !152}
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3706, line: 7, baseType: !3707)
!3706 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3708, line: 49, size: 1728, elements: !3709)
!3708 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!3709 = !{!3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3725, !3727, !3728, !3729, !3731, !3732, !3734, !3738, !3741, !3743, !3746, !3749, !3750, !3751, !3752, !3753}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3707, file: !3708, line: 51, baseType: !72, size: 32)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3707, file: !3708, line: 54, baseType: !9, size: 64, offset: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3707, file: !3708, line: 55, baseType: !9, size: 64, offset: 128)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3707, file: !3708, line: 56, baseType: !9, size: 64, offset: 192)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3707, file: !3708, line: 57, baseType: !9, size: 64, offset: 256)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3707, file: !3708, line: 58, baseType: !9, size: 64, offset: 320)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3707, file: !3708, line: 59, baseType: !9, size: 64, offset: 384)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3707, file: !3708, line: 60, baseType: !9, size: 64, offset: 448)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3707, file: !3708, line: 61, baseType: !9, size: 64, offset: 512)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3707, file: !3708, line: 64, baseType: !9, size: 64, offset: 576)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3707, file: !3708, line: 65, baseType: !9, size: 64, offset: 640)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3707, file: !3708, line: 66, baseType: !9, size: 64, offset: 704)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3707, file: !3708, line: 68, baseType: !3723, size: 64, offset: 768)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3708, line: 36, flags: DIFlagFwdDecl)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3707, file: !3708, line: 70, baseType: !3726, size: 64, offset: 832)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3707, file: !3708, line: 72, baseType: !72, size: 32, offset: 896)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3707, file: !3708, line: 73, baseType: !72, size: 32, offset: 928)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3707, file: !3708, line: 74, baseType: !3730, size: 64, offset: 960)
!3730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !17, line: 152, baseType: !1094)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3707, file: !3708, line: 77, baseType: !151, size: 16, offset: 1024)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3707, file: !3708, line: 78, baseType: !3733, size: 8, offset: 1040)
!3733 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3707, file: !3708, line: 79, baseType: !3735, size: 8, offset: 1048)
!3735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !3736)
!3736 = !{!3737}
!3737 = !DISubrange(count: 1)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3707, file: !3708, line: 81, baseType: !3739, size: 64, offset: 1088)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3708, line: 43, baseType: null)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3707, file: !3708, line: 89, baseType: !3742, size: 64, offset: 1152)
!3742 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !17, line: 153, baseType: !1094)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3707, file: !3708, line: 91, baseType: !3744, size: 64, offset: 1216)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !3708, line: 37, flags: DIFlagFwdDecl)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3707, file: !3708, line: 92, baseType: !3747, size: 64, offset: 1280)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !3708, line: 38, flags: DIFlagFwdDecl)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3707, file: !3708, line: 93, baseType: !3726, size: 64, offset: 1344)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3707, file: !3708, line: 94, baseType: !10, size: 64, offset: 1408)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3707, file: !3708, line: 95, baseType: !152, size: 64, offset: 1472)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3707, file: !3708, line: 96, baseType: !72, size: 32, offset: 1536)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3707, file: !3708, line: 98, baseType: !3754, size: 160, offset: 1568)
!3754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !3755)
!3755 = !{!3756}
!3756 = !DISubrange(count: 20)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!3758 = !DILocalVariable(name: "stream", arg: 1, scope: !3701, file: !233, line: 61, type: !3704)
!3759 = !DILocation(line: 61, column: 24, scope: !3701)
!3760 = !DILocalVariable(name: "command_name", arg: 2, scope: !3701, file: !233, line: 62, type: !6)
!3761 = !DILocation(line: 62, column: 30, scope: !3701)
!3762 = !DILocalVariable(name: "package", arg: 3, scope: !3701, file: !233, line: 62, type: !6)
!3763 = !DILocation(line: 62, column: 56, scope: !3701)
!3764 = !DILocalVariable(name: "version", arg: 4, scope: !3701, file: !233, line: 63, type: !6)
!3765 = !DILocation(line: 63, column: 30, scope: !3701)
!3766 = !DILocalVariable(name: "authors", arg: 5, scope: !3701, file: !233, line: 64, type: !3757)
!3767 = !DILocation(line: 64, column: 39, scope: !3701)
!3768 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3701, file: !233, line: 64, type: !152)
!3769 = !DILocation(line: 64, column: 55, scope: !3701)
!3770 = !DILocation(line: 66, column: 7, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3701, file: !233, line: 66, column: 7)
!3772 = !DILocation(line: 66, column: 7, scope: !3701)
!3773 = !DILocation(line: 67, column: 14, scope: !3771)
!3774 = !DILocation(line: 67, column: 38, scope: !3771)
!3775 = !DILocation(line: 67, column: 52, scope: !3771)
!3776 = !DILocation(line: 67, column: 61, scope: !3771)
!3777 = !DILocation(line: 67, column: 5, scope: !3771)
!3778 = !DILocation(line: 69, column: 14, scope: !3771)
!3779 = !DILocation(line: 69, column: 33, scope: !3771)
!3780 = !DILocation(line: 69, column: 42, scope: !3771)
!3781 = !DILocation(line: 69, column: 5, scope: !3771)
!3782 = !DILocation(line: 83, column: 12, scope: !3701)
!3783 = !DILocation(line: 83, column: 3, scope: !3701)
!3784 = !DILocation(line: 85, column: 3, scope: !3701)
!3785 = !DILocation(line: 88, column: 12, scope: !3701)
!3786 = !DILocation(line: 88, column: 3, scope: !3701)
!3787 = !DILocation(line: 95, column: 3, scope: !3701)
!3788 = !DILocation(line: 97, column: 11, scope: !3701)
!3789 = !DILocation(line: 97, column: 3, scope: !3701)
!3790 = !DILocation(line: 102, column: 7, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3701, file: !233, line: 98, column: 5)
!3792 = !DILocation(line: 105, column: 16, scope: !3791)
!3793 = !DILocation(line: 105, column: 47, scope: !3791)
!3794 = !DILocation(line: 105, column: 7, scope: !3791)
!3795 = !DILocation(line: 106, column: 7, scope: !3791)
!3796 = !DILocation(line: 109, column: 16, scope: !3791)
!3797 = !DILocation(line: 109, column: 54, scope: !3791)
!3798 = !DILocation(line: 109, column: 66, scope: !3791)
!3799 = !DILocation(line: 109, column: 7, scope: !3791)
!3800 = !DILocation(line: 110, column: 7, scope: !3791)
!3801 = !DILocation(line: 113, column: 16, scope: !3791)
!3802 = !DILocation(line: 114, column: 16, scope: !3791)
!3803 = !DILocation(line: 114, column: 28, scope: !3791)
!3804 = !DILocation(line: 114, column: 40, scope: !3791)
!3805 = !DILocation(line: 113, column: 7, scope: !3791)
!3806 = !DILocation(line: 115, column: 7, scope: !3791)
!3807 = !DILocation(line: 120, column: 16, scope: !3791)
!3808 = !DILocation(line: 121, column: 16, scope: !3791)
!3809 = !DILocation(line: 121, column: 28, scope: !3791)
!3810 = !DILocation(line: 121, column: 40, scope: !3791)
!3811 = !DILocation(line: 121, column: 52, scope: !3791)
!3812 = !DILocation(line: 120, column: 7, scope: !3791)
!3813 = !DILocation(line: 122, column: 7, scope: !3791)
!3814 = !DILocation(line: 127, column: 16, scope: !3791)
!3815 = !DILocation(line: 128, column: 16, scope: !3791)
!3816 = !DILocation(line: 128, column: 28, scope: !3791)
!3817 = !DILocation(line: 128, column: 40, scope: !3791)
!3818 = !DILocation(line: 128, column: 52, scope: !3791)
!3819 = !DILocation(line: 128, column: 64, scope: !3791)
!3820 = !DILocation(line: 127, column: 7, scope: !3791)
!3821 = !DILocation(line: 129, column: 7, scope: !3791)
!3822 = !DILocation(line: 134, column: 16, scope: !3791)
!3823 = !DILocation(line: 135, column: 16, scope: !3791)
!3824 = !DILocation(line: 135, column: 28, scope: !3791)
!3825 = !DILocation(line: 135, column: 40, scope: !3791)
!3826 = !DILocation(line: 135, column: 52, scope: !3791)
!3827 = !DILocation(line: 135, column: 64, scope: !3791)
!3828 = !DILocation(line: 136, column: 16, scope: !3791)
!3829 = !DILocation(line: 134, column: 7, scope: !3791)
!3830 = !DILocation(line: 137, column: 7, scope: !3791)
!3831 = !DILocation(line: 142, column: 16, scope: !3791)
!3832 = !DILocation(line: 143, column: 16, scope: !3791)
!3833 = !DILocation(line: 143, column: 28, scope: !3791)
!3834 = !DILocation(line: 143, column: 40, scope: !3791)
!3835 = !DILocation(line: 143, column: 52, scope: !3791)
!3836 = !DILocation(line: 143, column: 64, scope: !3791)
!3837 = !DILocation(line: 144, column: 16, scope: !3791)
!3838 = !DILocation(line: 144, column: 28, scope: !3791)
!3839 = !DILocation(line: 142, column: 7, scope: !3791)
!3840 = !DILocation(line: 145, column: 7, scope: !3791)
!3841 = !DILocation(line: 150, column: 16, scope: !3791)
!3842 = !DILocation(line: 152, column: 17, scope: !3791)
!3843 = !DILocation(line: 152, column: 29, scope: !3791)
!3844 = !DILocation(line: 152, column: 41, scope: !3791)
!3845 = !DILocation(line: 152, column: 53, scope: !3791)
!3846 = !DILocation(line: 152, column: 65, scope: !3791)
!3847 = !DILocation(line: 153, column: 17, scope: !3791)
!3848 = !DILocation(line: 153, column: 29, scope: !3791)
!3849 = !DILocation(line: 153, column: 41, scope: !3791)
!3850 = !DILocation(line: 150, column: 7, scope: !3791)
!3851 = !DILocation(line: 154, column: 7, scope: !3791)
!3852 = !DILocation(line: 159, column: 16, scope: !3791)
!3853 = !DILocation(line: 161, column: 16, scope: !3791)
!3854 = !DILocation(line: 161, column: 28, scope: !3791)
!3855 = !DILocation(line: 161, column: 40, scope: !3791)
!3856 = !DILocation(line: 161, column: 52, scope: !3791)
!3857 = !DILocation(line: 161, column: 64, scope: !3791)
!3858 = !DILocation(line: 162, column: 16, scope: !3791)
!3859 = !DILocation(line: 162, column: 28, scope: !3791)
!3860 = !DILocation(line: 162, column: 40, scope: !3791)
!3861 = !DILocation(line: 162, column: 52, scope: !3791)
!3862 = !DILocation(line: 159, column: 7, scope: !3791)
!3863 = !DILocation(line: 163, column: 7, scope: !3791)
!3864 = !DILocation(line: 170, column: 16, scope: !3791)
!3865 = !DILocation(line: 172, column: 17, scope: !3791)
!3866 = !DILocation(line: 172, column: 29, scope: !3791)
!3867 = !DILocation(line: 172, column: 41, scope: !3791)
!3868 = !DILocation(line: 172, column: 53, scope: !3791)
!3869 = !DILocation(line: 172, column: 65, scope: !3791)
!3870 = !DILocation(line: 173, column: 17, scope: !3791)
!3871 = !DILocation(line: 173, column: 29, scope: !3791)
!3872 = !DILocation(line: 173, column: 41, scope: !3791)
!3873 = !DILocation(line: 173, column: 53, scope: !3791)
!3874 = !DILocation(line: 170, column: 7, scope: !3791)
!3875 = !DILocation(line: 174, column: 7, scope: !3791)
!3876 = !DILocation(line: 176, column: 1, scope: !3701)
!3877 = distinct !DISubprogram(name: "version_etc_ar", scope: !233, file: !233, line: 183, type: !3878, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !232, retainedNodes: !4)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{null, !3704, !6, !6, !6, !3757}
!3880 = !DILocalVariable(name: "stream", arg: 1, scope: !3877, file: !233, line: 183, type: !3704)
!3881 = !DILocation(line: 183, column: 23, scope: !3877)
!3882 = !DILocalVariable(name: "command_name", arg: 2, scope: !3877, file: !233, line: 184, type: !6)
!3883 = !DILocation(line: 184, column: 29, scope: !3877)
!3884 = !DILocalVariable(name: "package", arg: 3, scope: !3877, file: !233, line: 184, type: !6)
!3885 = !DILocation(line: 184, column: 55, scope: !3877)
!3886 = !DILocalVariable(name: "version", arg: 4, scope: !3877, file: !233, line: 185, type: !6)
!3887 = !DILocation(line: 185, column: 29, scope: !3877)
!3888 = !DILocalVariable(name: "authors", arg: 5, scope: !3877, file: !233, line: 185, type: !3757)
!3889 = !DILocation(line: 185, column: 59, scope: !3877)
!3890 = !DILocalVariable(name: "n_authors", scope: !3877, file: !233, line: 187, type: !152)
!3891 = !DILocation(line: 187, column: 10, scope: !3877)
!3892 = !DILocation(line: 189, column: 18, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3877, file: !233, line: 189, column: 3)
!3894 = !DILocation(line: 189, column: 8, scope: !3893)
!3895 = !DILocation(line: 189, column: 23, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3893, file: !233, line: 189, column: 3)
!3897 = !DILocation(line: 189, column: 31, scope: !3896)
!3898 = !DILocation(line: 189, column: 3, scope: !3893)
!3899 = !DILocation(line: 189, column: 52, scope: !3896)
!3900 = !DILocation(line: 189, column: 3, scope: !3896)
!3901 = distinct !{!3901, !3898, !3902, !745}
!3902 = !DILocation(line: 190, column: 5, scope: !3893)
!3903 = !DILocation(line: 191, column: 20, scope: !3877)
!3904 = !DILocation(line: 191, column: 28, scope: !3877)
!3905 = !DILocation(line: 191, column: 42, scope: !3877)
!3906 = !DILocation(line: 191, column: 51, scope: !3877)
!3907 = !DILocation(line: 191, column: 60, scope: !3877)
!3908 = !DILocation(line: 191, column: 69, scope: !3877)
!3909 = !DILocation(line: 191, column: 3, scope: !3877)
!3910 = !DILocation(line: 192, column: 1, scope: !3877)
!3911 = distinct !DISubprogram(name: "version_etc_va", scope: !233, file: !233, line: 199, type: !3912, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !232, retainedNodes: !4)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{null, !3704, !6, !6, !6, !3914}
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3916)
!3916 = !{!3917, !3918, !3919, !3920}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3915, file: !233, line: 192, baseType: !18, size: 32)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3915, file: !233, line: 192, baseType: !18, size: 32, offset: 32)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3915, file: !233, line: 192, baseType: !10, size: 64, offset: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3915, file: !233, line: 192, baseType: !10, size: 64, offset: 128)
!3921 = !DILocalVariable(name: "stream", arg: 1, scope: !3911, file: !233, line: 199, type: !3704)
!3922 = !DILocation(line: 199, column: 23, scope: !3911)
!3923 = !DILocalVariable(name: "command_name", arg: 2, scope: !3911, file: !233, line: 200, type: !6)
!3924 = !DILocation(line: 200, column: 29, scope: !3911)
!3925 = !DILocalVariable(name: "package", arg: 3, scope: !3911, file: !233, line: 200, type: !6)
!3926 = !DILocation(line: 200, column: 55, scope: !3911)
!3927 = !DILocalVariable(name: "version", arg: 4, scope: !3911, file: !233, line: 201, type: !6)
!3928 = !DILocation(line: 201, column: 29, scope: !3911)
!3929 = !DILocalVariable(name: "authors", arg: 5, scope: !3911, file: !233, line: 201, type: !3914)
!3930 = !DILocation(line: 201, column: 46, scope: !3911)
!3931 = !DILocalVariable(name: "n_authors", scope: !3911, file: !233, line: 203, type: !152)
!3932 = !DILocation(line: 203, column: 10, scope: !3911)
!3933 = !DILocalVariable(name: "authtab", scope: !3911, file: !233, line: 204, type: !3934)
!3934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !76)
!3935 = !DILocation(line: 204, column: 15, scope: !3911)
!3936 = !DILocation(line: 206, column: 18, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3911, file: !233, line: 206, column: 3)
!3938 = !DILocation(line: 206, column: 8, scope: !3937)
!3939 = !DILocation(line: 207, column: 8, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3937, file: !233, line: 206, column: 3)
!3941 = !DILocation(line: 207, column: 18, scope: !3940)
!3942 = !DILocation(line: 208, column: 10, scope: !3940)
!3943 = !DILocation(line: 208, column: 35, scope: !3940)
!3944 = !DILocation(line: 208, column: 22, scope: !3940)
!3945 = !DILocation(line: 208, column: 14, scope: !3940)
!3946 = !DILocation(line: 208, column: 33, scope: !3940)
!3947 = !DILocation(line: 208, column: 67, scope: !3940)
!3948 = !DILocation(line: 0, scope: !3940)
!3949 = !DILocation(line: 206, column: 3, scope: !3937)
!3950 = !DILocation(line: 209, column: 17, scope: !3940)
!3951 = !DILocation(line: 206, column: 3, scope: !3940)
!3952 = distinct !{!3952, !3949, !3953, !745}
!3953 = !DILocation(line: 210, column: 5, scope: !3937)
!3954 = !DILocation(line: 211, column: 20, scope: !3911)
!3955 = !DILocation(line: 211, column: 28, scope: !3911)
!3956 = !DILocation(line: 211, column: 42, scope: !3911)
!3957 = !DILocation(line: 211, column: 51, scope: !3911)
!3958 = !DILocation(line: 212, column: 20, scope: !3911)
!3959 = !DILocation(line: 212, column: 29, scope: !3911)
!3960 = !DILocation(line: 211, column: 3, scope: !3911)
!3961 = !DILocation(line: 213, column: 1, scope: !3911)
!3962 = distinct !DISubprogram(name: "version_etc", scope: !233, file: !233, line: 230, type: !3963, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !232, retainedNodes: !4)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{null, !3704, !6, !6, !6, null}
!3965 = !DILocalVariable(name: "stream", arg: 1, scope: !3962, file: !233, line: 230, type: !3704)
!3966 = !DILocation(line: 230, column: 20, scope: !3962)
!3967 = !DILocalVariable(name: "command_name", arg: 2, scope: !3962, file: !233, line: 231, type: !6)
!3968 = !DILocation(line: 231, column: 26, scope: !3962)
!3969 = !DILocalVariable(name: "package", arg: 3, scope: !3962, file: !233, line: 231, type: !6)
!3970 = !DILocation(line: 231, column: 52, scope: !3962)
!3971 = !DILocalVariable(name: "version", arg: 4, scope: !3962, file: !233, line: 232, type: !6)
!3972 = !DILocation(line: 232, column: 26, scope: !3962)
!3973 = !DILocalVariable(name: "authors", scope: !3962, file: !233, line: 234, type: !3974)
!3974 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1092, line: 52, baseType: !3975)
!3975 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3976, line: 32, baseType: !3977)
!3976 = !DIFile(filename: "LLVM_12.0_src/llvm-project/build/lib/clang/12.0.1/include/stdarg.h", directory: "/nobackup")
!3977 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !233, baseType: !3978)
!3978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3915, size: 192, elements: !3736)
!3979 = !DILocation(line: 234, column: 11, scope: !3962)
!3980 = !DILocation(line: 236, column: 3, scope: !3962)
!3981 = !DILocation(line: 237, column: 19, scope: !3962)
!3982 = !DILocation(line: 237, column: 27, scope: !3962)
!3983 = !DILocation(line: 237, column: 41, scope: !3962)
!3984 = !DILocation(line: 237, column: 50, scope: !3962)
!3985 = !DILocation(line: 237, column: 59, scope: !3962)
!3986 = !DILocation(line: 237, column: 3, scope: !3962)
!3987 = !DILocation(line: 238, column: 3, scope: !3962)
!3988 = !DILocation(line: 239, column: 1, scope: !3962)
!3989 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !233, file: !233, line: 242, type: !775, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !232, retainedNodes: !4)
!3990 = !DILocation(line: 244, column: 3, scope: !3989)
!3991 = !DILocation(line: 249, column: 3, scope: !3989)
!3992 = !DILocation(line: 255, column: 3, scope: !3989)
!3993 = !DILocation(line: 260, column: 3, scope: !3989)
!3994 = !DILocation(line: 262, column: 1, scope: !3989)
!3995 = distinct !DISubprogram(name: "xnmalloc", scope: !243, file: !243, line: 99, type: !3996, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !4)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!10, !152, !152}
!3998 = !DILocalVariable(name: "n", arg: 1, scope: !3995, file: !243, line: 99, type: !152)
!3999 = !DILocation(line: 99, column: 18, scope: !3995)
!4000 = !DILocalVariable(name: "s", arg: 2, scope: !3995, file: !243, line: 99, type: !152)
!4001 = !DILocation(line: 99, column: 28, scope: !3995)
!4002 = !DILocation(line: 101, column: 7, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !3995, file: !243, line: 101, column: 7)
!4004 = !DILocation(line: 101, column: 7, scope: !3995)
!4005 = !DILocation(line: 102, column: 5, scope: !4003)
!4006 = !DILocation(line: 103, column: 19, scope: !3995)
!4007 = !DILocation(line: 103, column: 23, scope: !3995)
!4008 = !DILocation(line: 103, column: 21, scope: !3995)
!4009 = !DILocation(line: 103, column: 10, scope: !3995)
!4010 = !DILocation(line: 103, column: 3, scope: !3995)
!4011 = distinct !DISubprogram(name: "xmalloc", scope: !240, file: !240, line: 39, type: !4012, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !4)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!10, !152}
!4014 = !DILocalVariable(name: "n", arg: 1, scope: !4011, file: !240, line: 39, type: !152)
!4015 = !DILocation(line: 39, column: 17, scope: !4011)
!4016 = !DILocalVariable(name: "p", scope: !4011, file: !240, line: 41, type: !10)
!4017 = !DILocation(line: 41, column: 9, scope: !4011)
!4018 = !DILocation(line: 41, column: 21, scope: !4011)
!4019 = !DILocation(line: 41, column: 13, scope: !4011)
!4020 = !DILocation(line: 42, column: 8, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4011, file: !240, line: 42, column: 7)
!4022 = !DILocation(line: 42, column: 10, scope: !4021)
!4023 = !DILocation(line: 42, column: 13, scope: !4021)
!4024 = !DILocation(line: 42, column: 15, scope: !4021)
!4025 = !DILocation(line: 42, column: 7, scope: !4011)
!4026 = !DILocation(line: 43, column: 5, scope: !4021)
!4027 = !DILocation(line: 44, column: 10, scope: !4011)
!4028 = !DILocation(line: 44, column: 3, scope: !4011)
!4029 = distinct !DISubprogram(name: "xnrealloc", scope: !243, file: !243, line: 112, type: !4030, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !4)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!10, !10, !152, !152}
!4032 = !DILocalVariable(name: "p", arg: 1, scope: !4029, file: !243, line: 112, type: !10)
!4033 = !DILocation(line: 112, column: 18, scope: !4029)
!4034 = !DILocalVariable(name: "n", arg: 2, scope: !4029, file: !243, line: 112, type: !152)
!4035 = !DILocation(line: 112, column: 28, scope: !4029)
!4036 = !DILocalVariable(name: "s", arg: 3, scope: !4029, file: !243, line: 112, type: !152)
!4037 = !DILocation(line: 112, column: 38, scope: !4029)
!4038 = !DILocation(line: 114, column: 7, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4029, file: !243, line: 114, column: 7)
!4040 = !DILocation(line: 114, column: 7, scope: !4029)
!4041 = !DILocation(line: 115, column: 5, scope: !4039)
!4042 = !DILocation(line: 116, column: 20, scope: !4029)
!4043 = !DILocation(line: 116, column: 23, scope: !4029)
!4044 = !DILocation(line: 116, column: 27, scope: !4029)
!4045 = !DILocation(line: 116, column: 25, scope: !4029)
!4046 = !DILocation(line: 116, column: 10, scope: !4029)
!4047 = !DILocation(line: 116, column: 3, scope: !4029)
!4048 = distinct !DISubprogram(name: "xrealloc", scope: !240, file: !240, line: 51, type: !4049, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !4)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!10, !10, !152}
!4051 = !DILocalVariable(name: "p", arg: 1, scope: !4048, file: !240, line: 51, type: !10)
!4052 = !DILocation(line: 51, column: 17, scope: !4048)
!4053 = !DILocalVariable(name: "n", arg: 2, scope: !4048, file: !240, line: 51, type: !152)
!4054 = !DILocation(line: 51, column: 27, scope: !4048)
!4055 = !DILocation(line: 53, column: 8, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4048, file: !240, line: 53, column: 7)
!4057 = !DILocation(line: 53, column: 10, scope: !4056)
!4058 = !DILocation(line: 53, column: 13, scope: !4056)
!4059 = !DILocation(line: 53, column: 7, scope: !4048)
!4060 = !DILocation(line: 57, column: 13, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4056, file: !240, line: 54, column: 5)
!4062 = !DILocation(line: 57, column: 7, scope: !4061)
!4063 = !DILocation(line: 58, column: 7, scope: !4061)
!4064 = !DILocation(line: 61, column: 16, scope: !4048)
!4065 = !DILocation(line: 61, column: 19, scope: !4048)
!4066 = !DILocation(line: 61, column: 7, scope: !4048)
!4067 = !DILocation(line: 61, column: 5, scope: !4048)
!4068 = !DILocation(line: 62, column: 8, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4048, file: !240, line: 62, column: 7)
!4070 = !DILocation(line: 62, column: 10, scope: !4069)
!4071 = !DILocation(line: 62, column: 13, scope: !4069)
!4072 = !DILocation(line: 62, column: 7, scope: !4048)
!4073 = !DILocation(line: 63, column: 5, scope: !4069)
!4074 = !DILocation(line: 64, column: 10, scope: !4048)
!4075 = !DILocation(line: 64, column: 3, scope: !4048)
!4076 = !DILocation(line: 65, column: 1, scope: !4048)
!4077 = !DILocalVariable(name: "p", arg: 1, scope: !244, file: !243, line: 174, type: !10)
!4078 = !DILocation(line: 174, column: 19, scope: !244)
!4079 = !DILocalVariable(name: "pn", arg: 2, scope: !244, file: !243, line: 174, type: !247)
!4080 = !DILocation(line: 174, column: 30, scope: !244)
!4081 = !DILocalVariable(name: "s", arg: 3, scope: !244, file: !243, line: 174, type: !152)
!4082 = !DILocation(line: 174, column: 41, scope: !244)
!4083 = !DILocalVariable(name: "n", scope: !244, file: !243, line: 176, type: !152)
!4084 = !DILocation(line: 176, column: 10, scope: !244)
!4085 = !DILocation(line: 176, column: 15, scope: !244)
!4086 = !DILocation(line: 176, column: 14, scope: !244)
!4087 = !DILocation(line: 178, column: 9, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !244, file: !243, line: 178, column: 7)
!4089 = !DILocation(line: 178, column: 7, scope: !244)
!4090 = !DILocation(line: 180, column: 13, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4092, file: !243, line: 180, column: 11)
!4092 = distinct !DILexicalBlock(scope: !4088, file: !243, line: 179, column: 5)
!4093 = !DILocation(line: 180, column: 11, scope: !4092)
!4094 = !DILocation(line: 188, column: 32, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4091, file: !243, line: 181, column: 9)
!4096 = !DILocation(line: 188, column: 30, scope: !4095)
!4097 = !DILocation(line: 188, column: 13, scope: !4095)
!4098 = !DILocation(line: 189, column: 17, scope: !4095)
!4099 = !DILocation(line: 189, column: 16, scope: !4095)
!4100 = !DILocation(line: 189, column: 13, scope: !4095)
!4101 = !DILocation(line: 190, column: 9, scope: !4095)
!4102 = !DILocation(line: 191, column: 11, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4092, file: !243, line: 191, column: 11)
!4104 = !DILocation(line: 191, column: 11, scope: !4092)
!4105 = !DILocation(line: 192, column: 9, scope: !4103)
!4106 = !DILocation(line: 193, column: 5, scope: !4092)
!4107 = !DILocation(line: 200, column: 71, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4109, file: !243, line: 200, column: 11)
!4109 = distinct !DILexicalBlock(scope: !4088, file: !243, line: 195, column: 5)
!4110 = !DILocation(line: 200, column: 69, scope: !4108)
!4111 = !DILocation(line: 201, column: 14, scope: !4108)
!4112 = !DILocation(line: 201, column: 11, scope: !4108)
!4113 = !DILocation(line: 200, column: 11, scope: !4109)
!4114 = !DILocation(line: 202, column: 9, scope: !4108)
!4115 = !DILocation(line: 203, column: 12, scope: !4109)
!4116 = !DILocation(line: 203, column: 14, scope: !4109)
!4117 = !DILocation(line: 203, column: 18, scope: !4109)
!4118 = !DILocation(line: 203, column: 9, scope: !4109)
!4119 = !DILocation(line: 206, column: 9, scope: !244)
!4120 = !DILocation(line: 206, column: 4, scope: !244)
!4121 = !DILocation(line: 206, column: 7, scope: !244)
!4122 = !DILocation(line: 207, column: 20, scope: !244)
!4123 = !DILocation(line: 207, column: 23, scope: !244)
!4124 = !DILocation(line: 207, column: 27, scope: !244)
!4125 = !DILocation(line: 207, column: 25, scope: !244)
!4126 = !DILocation(line: 207, column: 10, scope: !244)
!4127 = !DILocation(line: 207, column: 3, scope: !244)
!4128 = distinct !DISubprogram(name: "xcharalloc", scope: !243, file: !243, line: 216, type: !4129, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !4)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{!9, !152}
!4131 = !DILocalVariable(name: "n", arg: 1, scope: !4128, file: !243, line: 216, type: !152)
!4132 = !DILocation(line: 216, column: 20, scope: !4128)
!4133 = !DILocation(line: 218, column: 10, scope: !4128)
!4134 = !DILocation(line: 218, column: 3, scope: !4128)
!4135 = distinct !DISubprogram(name: "x2realloc", scope: !240, file: !240, line: 74, type: !4136, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !4)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!10, !10, !247}
!4138 = !DILocalVariable(name: "p", arg: 1, scope: !4135, file: !240, line: 74, type: !10)
!4139 = !DILocation(line: 74, column: 18, scope: !4135)
!4140 = !DILocalVariable(name: "pn", arg: 2, scope: !4135, file: !240, line: 74, type: !247)
!4141 = !DILocation(line: 74, column: 29, scope: !4135)
!4142 = !DILocation(line: 76, column: 22, scope: !4135)
!4143 = !DILocation(line: 76, column: 25, scope: !4135)
!4144 = !DILocation(line: 76, column: 10, scope: !4135)
!4145 = !DILocation(line: 76, column: 3, scope: !4135)
!4146 = distinct !DISubprogram(name: "xzalloc", scope: !240, file: !240, line: 84, type: !4012, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !4)
!4147 = !DILocalVariable(name: "n", arg: 1, scope: !4146, file: !240, line: 84, type: !152)
!4148 = !DILocation(line: 84, column: 17, scope: !4146)
!4149 = !DILocation(line: 86, column: 19, scope: !4146)
!4150 = !DILocation(line: 86, column: 10, scope: !4146)
!4151 = !DILocation(line: 86, column: 3, scope: !4146)
!4152 = distinct !DISubprogram(name: "xcalloc", scope: !240, file: !240, line: 93, type: !3996, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !4)
!4153 = !DILocalVariable(name: "n", arg: 1, scope: !4152, file: !240, line: 93, type: !152)
!4154 = !DILocation(line: 93, column: 17, scope: !4152)
!4155 = !DILocalVariable(name: "s", arg: 2, scope: !4152, file: !240, line: 93, type: !152)
!4156 = !DILocation(line: 93, column: 27, scope: !4152)
!4157 = !DILocalVariable(name: "p", scope: !4152, file: !240, line: 95, type: !10)
!4158 = !DILocation(line: 95, column: 9, scope: !4152)
!4159 = !DILocation(line: 100, column: 7, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4152, file: !240, line: 100, column: 7)
!4161 = !DILocation(line: 101, column: 7, scope: !4160)
!4162 = !DILocation(line: 101, column: 26, scope: !4160)
!4163 = !DILocation(line: 101, column: 29, scope: !4160)
!4164 = !DILocation(line: 101, column: 18, scope: !4160)
!4165 = !DILocation(line: 101, column: 16, scope: !4160)
!4166 = !DILocation(line: 100, column: 7, scope: !4152)
!4167 = !DILocation(line: 102, column: 5, scope: !4160)
!4168 = !DILocation(line: 103, column: 10, scope: !4152)
!4169 = !DILocation(line: 103, column: 3, scope: !4152)
!4170 = distinct !DISubprogram(name: "xmemdup", scope: !240, file: !240, line: 111, type: !4171, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !4)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!10, !4173, !152}
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4175 = !DILocalVariable(name: "p", arg: 1, scope: !4170, file: !240, line: 111, type: !4173)
!4176 = !DILocation(line: 111, column: 22, scope: !4170)
!4177 = !DILocalVariable(name: "s", arg: 2, scope: !4170, file: !240, line: 111, type: !152)
!4178 = !DILocation(line: 111, column: 32, scope: !4170)
!4179 = !DILocation(line: 113, column: 27, scope: !4170)
!4180 = !DILocation(line: 113, column: 18, scope: !4170)
!4181 = !DILocation(line: 113, column: 31, scope: !4170)
!4182 = !DILocation(line: 113, column: 34, scope: !4170)
!4183 = !DILocation(line: 113, column: 10, scope: !4170)
!4184 = !DILocation(line: 113, column: 3, scope: !4170)
!4185 = distinct !DISubprogram(name: "xstrdup", scope: !240, file: !240, line: 119, type: !3094, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !4)
!4186 = !DILocalVariable(name: "string", arg: 1, scope: !4185, file: !240, line: 119, type: !6)
!4187 = !DILocation(line: 119, column: 22, scope: !4185)
!4188 = !DILocation(line: 121, column: 19, scope: !4185)
!4189 = !DILocation(line: 121, column: 35, scope: !4185)
!4190 = !DILocation(line: 121, column: 27, scope: !4185)
!4191 = !DILocation(line: 121, column: 43, scope: !4185)
!4192 = !DILocation(line: 121, column: 10, scope: !4185)
!4193 = !DILocation(line: 121, column: 3, scope: !4185)
!4194 = distinct !DISubprogram(name: "xalloc_die", scope: !252, file: !252, line: 32, type: !775, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !251, retainedNodes: !4)
!4195 = !DILocation(line: 34, column: 10, scope: !4194)
!4196 = !DILocation(line: 34, column: 3, scope: !4194)
!4197 = !DILocation(line: 40, column: 3, scope: !4194)
!4198 = distinct !DISubprogram(name: "xgetgroups", scope: !254, file: !254, line: 31, type: !667, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !253, retainedNodes: !4)
!4199 = !DILocalVariable(name: "username", arg: 1, scope: !4198, file: !254, line: 31, type: !6)
!4200 = !DILocation(line: 31, column: 25, scope: !4198)
!4201 = !DILocalVariable(name: "gid", arg: 2, scope: !4198, file: !254, line: 31, type: !23)
!4202 = !DILocation(line: 31, column: 41, scope: !4198)
!4203 = !DILocalVariable(name: "groups", arg: 3, scope: !4198, file: !254, line: 31, type: !669)
!4204 = !DILocation(line: 31, column: 54, scope: !4198)
!4205 = !DILocalVariable(name: "result", scope: !4198, file: !254, line: 33, type: !72)
!4206 = !DILocation(line: 33, column: 7, scope: !4198)
!4207 = !DILocation(line: 33, column: 28, scope: !4198)
!4208 = !DILocation(line: 33, column: 38, scope: !4198)
!4209 = !DILocation(line: 33, column: 43, scope: !4198)
!4210 = !DILocation(line: 33, column: 16, scope: !4198)
!4211 = !DILocation(line: 34, column: 7, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4198, file: !254, line: 34, column: 7)
!4213 = !DILocation(line: 34, column: 14, scope: !4212)
!4214 = !DILocation(line: 34, column: 20, scope: !4212)
!4215 = !DILocation(line: 34, column: 23, scope: !4212)
!4216 = !DILocation(line: 34, column: 29, scope: !4212)
!4217 = !DILocation(line: 34, column: 7, scope: !4198)
!4218 = !DILocation(line: 35, column: 5, scope: !4212)
!4219 = !DILocation(line: 36, column: 10, scope: !4198)
!4220 = !DILocation(line: 36, column: 3, scope: !4198)
!4221 = distinct !DISubprogram(name: "xstrtoul", scope: !4222, file: !4222, line: 76, type: !4223, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !4)
!4222 = !DIFile(filename: "../lib/xstrtol.c", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!4225, !6, !201, !72, !4226, !6}
!4225 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !205, line: 38, baseType: !204)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!4227 = !DILocalVariable(name: "s", arg: 1, scope: !4221, file: !4222, line: 76, type: !6)
!4228 = !DILocation(line: 76, column: 24, scope: !4221)
!4229 = !DILocalVariable(name: "ptr", arg: 2, scope: !4221, file: !4222, line: 76, type: !201)
!4230 = !DILocation(line: 76, column: 34, scope: !4221)
!4231 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4221, file: !4222, line: 76, type: !72)
!4232 = !DILocation(line: 76, column: 43, scope: !4221)
!4233 = !DILocalVariable(name: "val", arg: 4, scope: !4221, file: !4222, line: 77, type: !4226)
!4234 = !DILocation(line: 77, column: 24, scope: !4221)
!4235 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4221, file: !4222, line: 77, type: !6)
!4236 = !DILocation(line: 77, column: 41, scope: !4221)
!4237 = !DILocalVariable(name: "t_ptr", scope: !4221, file: !4222, line: 79, type: !9)
!4238 = !DILocation(line: 79, column: 9, scope: !4221)
!4239 = !DILocalVariable(name: "p", scope: !4221, file: !4222, line: 80, type: !201)
!4240 = !DILocation(line: 80, column: 10, scope: !4221)
!4241 = !DILocalVariable(name: "tmp", scope: !4221, file: !4222, line: 81, type: !84)
!4242 = !DILocation(line: 81, column: 14, scope: !4221)
!4243 = !DILocalVariable(name: "err", scope: !4221, file: !4222, line: 82, type: !4225)
!4244 = !DILocation(line: 82, column: 16, scope: !4221)
!4245 = !DILocation(line: 84, column: 3, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4247, file: !4222, line: 84, column: 3)
!4247 = distinct !DILexicalBlock(scope: !4221, file: !4222, line: 84, column: 3)
!4248 = !DILocation(line: 84, column: 3, scope: !4247)
!4249 = !DILocation(line: 86, column: 8, scope: !4221)
!4250 = !DILocation(line: 86, column: 14, scope: !4221)
!4251 = !DILocation(line: 86, column: 5, scope: !4221)
!4252 = !DILocation(line: 88, column: 3, scope: !4221)
!4253 = !DILocation(line: 88, column: 9, scope: !4221)
!4254 = !DILocalVariable(name: "q", scope: !4255, file: !4222, line: 92, type: !6)
!4255 = distinct !DILexicalBlock(scope: !4256, file: !4222, line: 91, column: 5)
!4256 = distinct !DILexicalBlock(scope: !4221, file: !4222, line: 90, column: 7)
!4257 = !DILocation(line: 92, column: 19, scope: !4255)
!4258 = !DILocation(line: 92, column: 23, scope: !4255)
!4259 = !DILocalVariable(name: "ch", scope: !4255, file: !4222, line: 93, type: !267)
!4260 = !DILocation(line: 93, column: 21, scope: !4255)
!4261 = !DILocation(line: 93, column: 27, scope: !4255)
!4262 = !DILocation(line: 93, column: 26, scope: !4255)
!4263 = !DILocation(line: 94, column: 7, scope: !4255)
!4264 = !DILocation(line: 94, column: 14, scope: !4255)
!4265 = !DILocation(line: 95, column: 15, scope: !4255)
!4266 = !DILocation(line: 95, column: 14, scope: !4255)
!4267 = !DILocation(line: 95, column: 12, scope: !4255)
!4268 = distinct !{!4268, !4263, !4269, !745}
!4269 = !DILocation(line: 95, column: 17, scope: !4255)
!4270 = !DILocation(line: 96, column: 11, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4255, file: !4222, line: 96, column: 11)
!4272 = !DILocation(line: 96, column: 14, scope: !4271)
!4273 = !DILocation(line: 96, column: 11, scope: !4255)
!4274 = !DILocation(line: 97, column: 9, scope: !4271)
!4275 = !DILocation(line: 100, column: 19, scope: !4221)
!4276 = !DILocation(line: 100, column: 22, scope: !4221)
!4277 = !DILocation(line: 100, column: 25, scope: !4221)
!4278 = !DILocation(line: 100, column: 9, scope: !4221)
!4279 = !DILocation(line: 100, column: 7, scope: !4221)
!4280 = !DILocation(line: 102, column: 8, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4221, file: !4222, line: 102, column: 7)
!4282 = !DILocation(line: 102, column: 7, scope: !4281)
!4283 = !DILocation(line: 102, column: 13, scope: !4281)
!4284 = !DILocation(line: 102, column: 10, scope: !4281)
!4285 = !DILocation(line: 102, column: 7, scope: !4221)
!4286 = !DILocation(line: 106, column: 11, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4288, file: !4222, line: 106, column: 11)
!4288 = distinct !DILexicalBlock(scope: !4281, file: !4222, line: 103, column: 5)
!4289 = !DILocation(line: 106, column: 26, scope: !4287)
!4290 = !DILocation(line: 106, column: 31, scope: !4287)
!4291 = !DILocation(line: 106, column: 30, scope: !4287)
!4292 = !DILocation(line: 106, column: 29, scope: !4287)
!4293 = !DILocation(line: 106, column: 33, scope: !4287)
!4294 = !DILocation(line: 106, column: 44, scope: !4287)
!4295 = !DILocation(line: 106, column: 62, scope: !4287)
!4296 = !DILocation(line: 106, column: 61, scope: !4287)
!4297 = !DILocation(line: 106, column: 60, scope: !4287)
!4298 = !DILocation(line: 106, column: 36, scope: !4287)
!4299 = !DILocation(line: 106, column: 11, scope: !4288)
!4300 = !DILocation(line: 107, column: 13, scope: !4287)
!4301 = !DILocation(line: 107, column: 9, scope: !4287)
!4302 = !DILocation(line: 109, column: 9, scope: !4287)
!4303 = !DILocation(line: 110, column: 5, scope: !4288)
!4304 = !DILocation(line: 111, column: 12, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4281, file: !4222, line: 111, column: 12)
!4306 = !DILocation(line: 111, column: 18, scope: !4305)
!4307 = !DILocation(line: 111, column: 12, scope: !4281)
!4308 = !DILocation(line: 113, column: 11, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4310, file: !4222, line: 113, column: 11)
!4310 = distinct !DILexicalBlock(scope: !4305, file: !4222, line: 112, column: 5)
!4311 = !DILocation(line: 113, column: 17, scope: !4309)
!4312 = !DILocation(line: 113, column: 11, scope: !4310)
!4313 = !DILocation(line: 114, column: 9, scope: !4309)
!4314 = !DILocation(line: 115, column: 11, scope: !4310)
!4315 = !DILocation(line: 116, column: 5, scope: !4310)
!4316 = !DILocation(line: 121, column: 8, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4221, file: !4222, line: 121, column: 7)
!4318 = !DILocation(line: 121, column: 7, scope: !4221)
!4319 = !DILocation(line: 123, column: 14, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4317, file: !4222, line: 122, column: 5)
!4321 = !DILocation(line: 123, column: 8, scope: !4320)
!4322 = !DILocation(line: 123, column: 12, scope: !4320)
!4323 = !DILocation(line: 124, column: 14, scope: !4320)
!4324 = !DILocation(line: 124, column: 7, scope: !4320)
!4325 = !DILocation(line: 127, column: 9, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4221, file: !4222, line: 127, column: 7)
!4327 = !DILocation(line: 127, column: 8, scope: !4326)
!4328 = !DILocation(line: 127, column: 7, scope: !4326)
!4329 = !DILocation(line: 127, column: 11, scope: !4326)
!4330 = !DILocation(line: 127, column: 7, scope: !4221)
!4331 = !DILocalVariable(name: "base", scope: !4332, file: !4222, line: 129, type: !72)
!4332 = distinct !DILexicalBlock(scope: !4326, file: !4222, line: 128, column: 5)
!4333 = !DILocation(line: 129, column: 11, scope: !4332)
!4334 = !DILocalVariable(name: "suffixes", scope: !4332, file: !4222, line: 130, type: !72)
!4335 = !DILocation(line: 130, column: 11, scope: !4332)
!4336 = !DILocalVariable(name: "overflow", scope: !4332, file: !4222, line: 131, type: !4225)
!4337 = !DILocation(line: 131, column: 20, scope: !4332)
!4338 = !DILocation(line: 133, column: 20, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4332, file: !4222, line: 133, column: 11)
!4340 = !DILocation(line: 133, column: 38, scope: !4339)
!4341 = !DILocation(line: 133, column: 37, scope: !4339)
!4342 = !DILocation(line: 133, column: 36, scope: !4339)
!4343 = !DILocation(line: 133, column: 12, scope: !4339)
!4344 = !DILocation(line: 133, column: 11, scope: !4332)
!4345 = !DILocation(line: 135, column: 18, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4339, file: !4222, line: 134, column: 9)
!4347 = !DILocation(line: 135, column: 12, scope: !4346)
!4348 = !DILocation(line: 135, column: 16, scope: !4346)
!4349 = !DILocation(line: 136, column: 18, scope: !4346)
!4350 = !DILocation(line: 136, column: 22, scope: !4346)
!4351 = !DILocation(line: 136, column: 11, scope: !4346)
!4352 = !DILocation(line: 139, column: 17, scope: !4332)
!4353 = !DILocation(line: 139, column: 16, scope: !4332)
!4354 = !DILocation(line: 139, column: 15, scope: !4332)
!4355 = !DILocation(line: 139, column: 7, scope: !4332)
!4356 = !DILocation(line: 151, column: 23, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4358, file: !4222, line: 151, column: 15)
!4358 = distinct !DILexicalBlock(scope: !4332, file: !4222, line: 140, column: 9)
!4359 = !DILocation(line: 151, column: 15, scope: !4357)
!4360 = !DILocation(line: 151, column: 15, scope: !4358)
!4361 = !DILocation(line: 152, column: 21, scope: !4357)
!4362 = !DILocation(line: 152, column: 13, scope: !4357)
!4363 = !DILocation(line: 155, column: 21, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4365, file: !4222, line: 155, column: 21)
!4365 = distinct !DILexicalBlock(scope: !4357, file: !4222, line: 153, column: 15)
!4366 = !DILocation(line: 155, column: 29, scope: !4364)
!4367 = !DILocation(line: 155, column: 21, scope: !4365)
!4368 = !DILocation(line: 156, column: 28, scope: !4364)
!4369 = !DILocation(line: 156, column: 19, scope: !4364)
!4370 = !DILocation(line: 157, column: 17, scope: !4365)
!4371 = !DILocation(line: 161, column: 22, scope: !4365)
!4372 = !DILocation(line: 162, column: 25, scope: !4365)
!4373 = !DILocation(line: 163, column: 17, scope: !4365)
!4374 = !DILocation(line: 164, column: 15, scope: !4365)
!4375 = !DILocation(line: 165, column: 9, scope: !4358)
!4376 = !DILocation(line: 167, column: 17, scope: !4332)
!4377 = !DILocation(line: 167, column: 16, scope: !4332)
!4378 = !DILocation(line: 167, column: 15, scope: !4332)
!4379 = !DILocation(line: 167, column: 7, scope: !4332)
!4380 = !DILocation(line: 170, column: 22, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4332, file: !4222, line: 168, column: 9)
!4382 = !DILocation(line: 170, column: 20, scope: !4381)
!4383 = !DILocation(line: 171, column: 11, scope: !4381)
!4384 = !DILocation(line: 177, column: 22, scope: !4381)
!4385 = !DILocation(line: 177, column: 20, scope: !4381)
!4386 = !DILocation(line: 178, column: 11, scope: !4381)
!4387 = !DILocation(line: 181, column: 20, scope: !4381)
!4388 = !DILocation(line: 182, column: 11, scope: !4381)
!4389 = !DILocation(line: 185, column: 48, scope: !4381)
!4390 = !DILocation(line: 185, column: 22, scope: !4381)
!4391 = !DILocation(line: 185, column: 20, scope: !4381)
!4392 = !DILocation(line: 186, column: 11, scope: !4381)
!4393 = !DILocation(line: 190, column: 48, scope: !4381)
!4394 = !DILocation(line: 190, column: 22, scope: !4381)
!4395 = !DILocation(line: 190, column: 20, scope: !4381)
!4396 = !DILocation(line: 191, column: 11, scope: !4381)
!4397 = !DILocation(line: 195, column: 48, scope: !4381)
!4398 = !DILocation(line: 195, column: 22, scope: !4381)
!4399 = !DILocation(line: 195, column: 20, scope: !4381)
!4400 = !DILocation(line: 196, column: 11, scope: !4381)
!4401 = !DILocation(line: 200, column: 48, scope: !4381)
!4402 = !DILocation(line: 200, column: 22, scope: !4381)
!4403 = !DILocation(line: 200, column: 20, scope: !4381)
!4404 = !DILocation(line: 201, column: 11, scope: !4381)
!4405 = !DILocation(line: 204, column: 48, scope: !4381)
!4406 = !DILocation(line: 204, column: 22, scope: !4381)
!4407 = !DILocation(line: 204, column: 20, scope: !4381)
!4408 = !DILocation(line: 205, column: 11, scope: !4381)
!4409 = !DILocation(line: 209, column: 48, scope: !4381)
!4410 = !DILocation(line: 209, column: 22, scope: !4381)
!4411 = !DILocation(line: 209, column: 20, scope: !4381)
!4412 = !DILocation(line: 210, column: 11, scope: !4381)
!4413 = !DILocation(line: 213, column: 22, scope: !4381)
!4414 = !DILocation(line: 213, column: 20, scope: !4381)
!4415 = !DILocation(line: 214, column: 11, scope: !4381)
!4416 = !DILocation(line: 217, column: 48, scope: !4381)
!4417 = !DILocation(line: 217, column: 22, scope: !4381)
!4418 = !DILocation(line: 217, column: 20, scope: !4381)
!4419 = !DILocation(line: 218, column: 11, scope: !4381)
!4420 = !DILocation(line: 221, column: 48, scope: !4381)
!4421 = !DILocation(line: 221, column: 22, scope: !4381)
!4422 = !DILocation(line: 221, column: 20, scope: !4381)
!4423 = !DILocation(line: 222, column: 11, scope: !4381)
!4424 = !DILocation(line: 225, column: 18, scope: !4381)
!4425 = !DILocation(line: 225, column: 12, scope: !4381)
!4426 = !DILocation(line: 225, column: 16, scope: !4381)
!4427 = !DILocation(line: 226, column: 18, scope: !4381)
!4428 = !DILocation(line: 226, column: 22, scope: !4381)
!4429 = !DILocation(line: 226, column: 11, scope: !4381)
!4430 = !DILocation(line: 229, column: 14, scope: !4332)
!4431 = !DILocation(line: 229, column: 11, scope: !4332)
!4432 = !DILocation(line: 230, column: 13, scope: !4332)
!4433 = !DILocation(line: 230, column: 8, scope: !4332)
!4434 = !DILocation(line: 230, column: 10, scope: !4332)
!4435 = !DILocation(line: 231, column: 13, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4332, file: !4222, line: 231, column: 11)
!4437 = !DILocation(line: 231, column: 12, scope: !4436)
!4438 = !DILocation(line: 231, column: 11, scope: !4436)
!4439 = !DILocation(line: 231, column: 11, scope: !4332)
!4440 = !DILocation(line: 232, column: 13, scope: !4436)
!4441 = !DILocation(line: 232, column: 9, scope: !4436)
!4442 = !DILocation(line: 233, column: 5, scope: !4332)
!4443 = !DILocation(line: 235, column: 10, scope: !4221)
!4444 = !DILocation(line: 235, column: 4, scope: !4221)
!4445 = !DILocation(line: 235, column: 8, scope: !4221)
!4446 = !DILocation(line: 236, column: 10, scope: !4221)
!4447 = !DILocation(line: 236, column: 3, scope: !4221)
!4448 = !DILocation(line: 237, column: 1, scope: !4221)
!4449 = distinct !DISubprogram(name: "bkm_scale", scope: !4222, file: !4222, line: 48, type: !4450, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !255, retainedNodes: !4)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!4225, !4226, !72}
!4452 = !DILocalVariable(name: "x", arg: 1, scope: !4449, file: !4222, line: 48, type: !4226)
!4453 = !DILocation(line: 48, column: 24, scope: !4449)
!4454 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4449, file: !4222, line: 48, type: !72)
!4455 = !DILocation(line: 48, column: 31, scope: !4449)
!4456 = !DILocation(line: 55, column: 26, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4449, file: !4222, line: 55, column: 7)
!4458 = !DILocation(line: 55, column: 24, scope: !4457)
!4459 = !DILocation(line: 55, column: 42, scope: !4457)
!4460 = !DILocation(line: 55, column: 41, scope: !4457)
!4461 = !DILocation(line: 55, column: 39, scope: !4457)
!4462 = !DILocation(line: 55, column: 7, scope: !4449)
!4463 = !DILocation(line: 57, column: 8, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4457, file: !4222, line: 56, column: 5)
!4465 = !DILocation(line: 57, column: 10, scope: !4464)
!4466 = !DILocation(line: 58, column: 7, scope: !4464)
!4467 = !DILocation(line: 60, column: 9, scope: !4449)
!4468 = !DILocation(line: 60, column: 4, scope: !4449)
!4469 = !DILocation(line: 60, column: 6, scope: !4449)
!4470 = !DILocation(line: 61, column: 3, scope: !4449)
!4471 = !DILocation(line: 62, column: 1, scope: !4449)
!4472 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4222, file: !4222, line: 65, type: !4473, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !255, retainedNodes: !4)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{!4225, !4226, !72, !72}
!4475 = !DILocalVariable(name: "x", arg: 1, scope: !4472, file: !4222, line: 65, type: !4226)
!4476 = !DILocation(line: 65, column: 33, scope: !4472)
!4477 = !DILocalVariable(name: "base", arg: 2, scope: !4472, file: !4222, line: 65, type: !72)
!4478 = !DILocation(line: 65, column: 40, scope: !4472)
!4479 = !DILocalVariable(name: "power", arg: 3, scope: !4472, file: !4222, line: 65, type: !72)
!4480 = !DILocation(line: 65, column: 50, scope: !4472)
!4481 = !DILocalVariable(name: "err", scope: !4472, file: !4222, line: 67, type: !4225)
!4482 = !DILocation(line: 67, column: 16, scope: !4472)
!4483 = !DILocation(line: 68, column: 3, scope: !4472)
!4484 = !DILocation(line: 68, column: 15, scope: !4472)
!4485 = !DILocation(line: 69, column: 23, scope: !4472)
!4486 = !DILocation(line: 69, column: 26, scope: !4472)
!4487 = !DILocation(line: 69, column: 12, scope: !4472)
!4488 = !DILocation(line: 69, column: 9, scope: !4472)
!4489 = distinct !{!4489, !4483, !4490, !745}
!4490 = !DILocation(line: 69, column: 30, scope: !4472)
!4491 = !DILocation(line: 70, column: 10, scope: !4472)
!4492 = !DILocation(line: 70, column: 3, scope: !4472)
!4493 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !260, file: !260, line: 86, type: !4494, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !259, retainedNodes: !4)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!152, !4496, !6, !152, !4497}
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2343, line: 6, baseType: !4499)
!4499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2345, line: 21, baseType: !4500)
!4500 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2345, line: 13, size: 64, elements: !4501)
!4501 = !{!4502, !4503}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4500, file: !2345, line: 15, baseType: !72, size: 32)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4500, file: !2345, line: 20, baseType: !4504, size: 32, offset: 32)
!4504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4500, file: !2345, line: 16, size: 32, elements: !4505)
!4505 = !{!4506, !4507}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4504, file: !2345, line: 18, baseType: !18, size: 32)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4504, file: !2345, line: 19, baseType: !2354, size: 32)
!4508 = !DILocalVariable(name: "pwc", arg: 1, scope: !4493, file: !260, line: 86, type: !4496)
!4509 = !DILocation(line: 86, column: 23, scope: !4493)
!4510 = !DILocalVariable(name: "s", arg: 2, scope: !4493, file: !260, line: 86, type: !6)
!4511 = !DILocation(line: 86, column: 40, scope: !4493)
!4512 = !DILocalVariable(name: "n", arg: 3, scope: !4493, file: !260, line: 86, type: !152)
!4513 = !DILocation(line: 86, column: 50, scope: !4493)
!4514 = !DILocalVariable(name: "ps", arg: 4, scope: !4493, file: !260, line: 86, type: !4497)
!4515 = !DILocation(line: 86, column: 64, scope: !4493)
!4516 = !DILocalVariable(name: "ret", scope: !4493, file: !260, line: 88, type: !152)
!4517 = !DILocation(line: 88, column: 10, scope: !4493)
!4518 = !DILocalVariable(name: "wc", scope: !4493, file: !260, line: 89, type: !2372)
!4519 = !DILocation(line: 89, column: 11, scope: !4493)
!4520 = !DILocation(line: 105, column: 9, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4493, file: !260, line: 105, column: 7)
!4522 = !DILocation(line: 105, column: 7, scope: !4493)
!4523 = !DILocation(line: 106, column: 9, scope: !4521)
!4524 = !DILocation(line: 106, column: 5, scope: !4521)
!4525 = !DILocation(line: 145, column: 18, scope: !4493)
!4526 = !DILocation(line: 145, column: 23, scope: !4493)
!4527 = !DILocation(line: 145, column: 26, scope: !4493)
!4528 = !DILocation(line: 145, column: 29, scope: !4493)
!4529 = !DILocation(line: 145, column: 9, scope: !4493)
!4530 = !DILocation(line: 145, column: 7, scope: !4493)
!4531 = !DILocation(line: 154, column: 22, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4493, file: !260, line: 154, column: 7)
!4533 = !DILocation(line: 154, column: 19, scope: !4532)
!4534 = !DILocation(line: 154, column: 26, scope: !4532)
!4535 = !DILocation(line: 154, column: 29, scope: !4532)
!4536 = !DILocation(line: 154, column: 31, scope: !4532)
!4537 = !DILocation(line: 154, column: 36, scope: !4532)
!4538 = !DILocation(line: 154, column: 41, scope: !4532)
!4539 = !DILocation(line: 154, column: 7, scope: !4493)
!4540 = !DILocalVariable(name: "uc", scope: !4541, file: !260, line: 156, type: !267)
!4541 = distinct !DILexicalBlock(scope: !4532, file: !260, line: 155, column: 5)
!4542 = !DILocation(line: 156, column: 21, scope: !4541)
!4543 = !DILocation(line: 156, column: 27, scope: !4541)
!4544 = !DILocation(line: 156, column: 26, scope: !4541)
!4545 = !DILocation(line: 157, column: 14, scope: !4541)
!4546 = !DILocation(line: 157, column: 8, scope: !4541)
!4547 = !DILocation(line: 157, column: 12, scope: !4541)
!4548 = !DILocation(line: 158, column: 7, scope: !4541)
!4549 = !DILocation(line: 162, column: 10, scope: !4493)
!4550 = !DILocation(line: 162, column: 3, scope: !4493)
!4551 = !DILocation(line: 163, column: 1, scope: !4493)
!4552 = distinct !DISubprogram(name: "c_strcasecmp", scope: !263, file: !263, line: 27, type: !4553, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !4)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!72, !6, !6}
!4555 = !DILocalVariable(name: "s1", arg: 1, scope: !4552, file: !263, line: 27, type: !6)
!4556 = !DILocation(line: 27, column: 27, scope: !4552)
!4557 = !DILocalVariable(name: "s2", arg: 2, scope: !4552, file: !263, line: 27, type: !6)
!4558 = !DILocation(line: 27, column: 43, scope: !4552)
!4559 = !DILocalVariable(name: "p1", scope: !4552, file: !263, line: 29, type: !265)
!4560 = !DILocation(line: 29, column: 33, scope: !4552)
!4561 = !DILocation(line: 29, column: 62, scope: !4552)
!4562 = !DILocalVariable(name: "p2", scope: !4552, file: !263, line: 30, type: !265)
!4563 = !DILocation(line: 30, column: 33, scope: !4552)
!4564 = !DILocation(line: 30, column: 62, scope: !4552)
!4565 = !DILocalVariable(name: "c1", scope: !4552, file: !263, line: 31, type: !267)
!4566 = !DILocation(line: 31, column: 17, scope: !4552)
!4567 = !DILocalVariable(name: "c2", scope: !4552, file: !263, line: 31, type: !267)
!4568 = !DILocation(line: 31, column: 21, scope: !4552)
!4569 = !DILocation(line: 33, column: 7, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4552, file: !263, line: 33, column: 7)
!4571 = !DILocation(line: 33, column: 13, scope: !4570)
!4572 = !DILocation(line: 33, column: 10, scope: !4570)
!4573 = !DILocation(line: 33, column: 7, scope: !4552)
!4574 = !DILocation(line: 34, column: 5, scope: !4570)
!4575 = !DILocation(line: 36, column: 3, scope: !4552)
!4576 = !DILocation(line: 38, column: 24, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4552, file: !263, line: 37, column: 5)
!4578 = !DILocation(line: 38, column: 23, scope: !4577)
!4579 = !DILocation(line: 38, column: 12, scope: !4577)
!4580 = !DILocation(line: 38, column: 10, scope: !4577)
!4581 = !DILocation(line: 39, column: 24, scope: !4577)
!4582 = !DILocation(line: 39, column: 23, scope: !4577)
!4583 = !DILocation(line: 39, column: 12, scope: !4577)
!4584 = !DILocation(line: 39, column: 10, scope: !4577)
!4585 = !DILocation(line: 41, column: 11, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4577, file: !263, line: 41, column: 11)
!4587 = !DILocation(line: 41, column: 14, scope: !4586)
!4588 = !DILocation(line: 41, column: 11, scope: !4577)
!4589 = !DILocation(line: 42, column: 9, scope: !4586)
!4590 = !DILocation(line: 44, column: 7, scope: !4577)
!4591 = !DILocation(line: 45, column: 7, scope: !4577)
!4592 = !DILocation(line: 46, column: 5, scope: !4577)
!4593 = !DILocation(line: 47, column: 10, scope: !4552)
!4594 = !DILocation(line: 47, column: 16, scope: !4552)
!4595 = !DILocation(line: 47, column: 13, scope: !4552)
!4596 = distinct !{!4596, !4575, !4597, !745}
!4597 = !DILocation(line: 47, column: 18, scope: !4552)
!4598 = !DILocation(line: 50, column: 12, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4552, file: !263, line: 49, column: 7)
!4600 = !DILocation(line: 50, column: 17, scope: !4599)
!4601 = !DILocation(line: 50, column: 15, scope: !4599)
!4602 = !DILocation(line: 50, column: 5, scope: !4599)
!4603 = !DILocation(line: 56, column: 1, scope: !4552)
!4604 = distinct !DISubprogram(name: "close_stream", scope: !269, file: !269, line: 56, type: !4605, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !268, retainedNodes: !4)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!72, !4607}
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3706, line: 7, baseType: !4609)
!4609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3708, line: 49, size: 1728, elements: !4610)
!4610 = !{!4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640}
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4609, file: !3708, line: 51, baseType: !72, size: 32)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4609, file: !3708, line: 54, baseType: !9, size: 64, offset: 64)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4609, file: !3708, line: 55, baseType: !9, size: 64, offset: 128)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4609, file: !3708, line: 56, baseType: !9, size: 64, offset: 192)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4609, file: !3708, line: 57, baseType: !9, size: 64, offset: 256)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4609, file: !3708, line: 58, baseType: !9, size: 64, offset: 320)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4609, file: !3708, line: 59, baseType: !9, size: 64, offset: 384)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4609, file: !3708, line: 60, baseType: !9, size: 64, offset: 448)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4609, file: !3708, line: 61, baseType: !9, size: 64, offset: 512)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4609, file: !3708, line: 64, baseType: !9, size: 64, offset: 576)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4609, file: !3708, line: 65, baseType: !9, size: 64, offset: 640)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4609, file: !3708, line: 66, baseType: !9, size: 64, offset: 704)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4609, file: !3708, line: 68, baseType: !3723, size: 64, offset: 768)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4609, file: !3708, line: 70, baseType: !4625, size: 64, offset: 832)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4609, file: !3708, line: 72, baseType: !72, size: 32, offset: 896)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4609, file: !3708, line: 73, baseType: !72, size: 32, offset: 928)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4609, file: !3708, line: 74, baseType: !3730, size: 64, offset: 960)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4609, file: !3708, line: 77, baseType: !151, size: 16, offset: 1024)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4609, file: !3708, line: 78, baseType: !3733, size: 8, offset: 1040)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4609, file: !3708, line: 79, baseType: !3735, size: 8, offset: 1048)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4609, file: !3708, line: 81, baseType: !3739, size: 64, offset: 1088)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4609, file: !3708, line: 89, baseType: !3742, size: 64, offset: 1152)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4609, file: !3708, line: 91, baseType: !3744, size: 64, offset: 1216)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4609, file: !3708, line: 92, baseType: !3747, size: 64, offset: 1280)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4609, file: !3708, line: 93, baseType: !4625, size: 64, offset: 1344)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4609, file: !3708, line: 94, baseType: !10, size: 64, offset: 1408)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4609, file: !3708, line: 95, baseType: !152, size: 64, offset: 1472)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4609, file: !3708, line: 96, baseType: !72, size: 32, offset: 1536)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4609, file: !3708, line: 98, baseType: !3754, size: 160, offset: 1568)
!4641 = !DILocalVariable(name: "stream", arg: 1, scope: !4604, file: !269, line: 56, type: !4607)
!4642 = !DILocation(line: 56, column: 21, scope: !4604)
!4643 = !DILocalVariable(name: "some_pending", scope: !4604, file: !269, line: 58, type: !4644)
!4644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!4645 = !DILocation(line: 58, column: 14, scope: !4604)
!4646 = !DILocation(line: 58, column: 42, scope: !4604)
!4647 = !DILocation(line: 58, column: 30, scope: !4604)
!4648 = !DILocation(line: 58, column: 50, scope: !4604)
!4649 = !DILocalVariable(name: "prev_fail", scope: !4604, file: !269, line: 59, type: !4644)
!4650 = !DILocation(line: 59, column: 14, scope: !4604)
!4651 = !DILocation(line: 59, column: 27, scope: !4604)
!4652 = !DILocation(line: 59, column: 43, scope: !4604)
!4653 = !DILocalVariable(name: "fclose_fail", scope: !4604, file: !269, line: 60, type: !4644)
!4654 = !DILocation(line: 60, column: 14, scope: !4604)
!4655 = !DILocation(line: 60, column: 37, scope: !4604)
!4656 = !DILocation(line: 60, column: 29, scope: !4604)
!4657 = !DILocation(line: 60, column: 45, scope: !4604)
!4658 = !DILocation(line: 70, column: 7, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4604, file: !269, line: 70, column: 7)
!4660 = !DILocation(line: 70, column: 17, scope: !4659)
!4661 = !DILocation(line: 70, column: 21, scope: !4659)
!4662 = !DILocation(line: 70, column: 33, scope: !4659)
!4663 = !DILocation(line: 70, column: 37, scope: !4659)
!4664 = !DILocation(line: 70, column: 50, scope: !4659)
!4665 = !DILocation(line: 70, column: 53, scope: !4659)
!4666 = !DILocation(line: 70, column: 59, scope: !4659)
!4667 = !DILocation(line: 70, column: 7, scope: !4604)
!4668 = !DILocation(line: 72, column: 13, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4670, file: !269, line: 72, column: 11)
!4670 = distinct !DILexicalBlock(scope: !4659, file: !269, line: 71, column: 5)
!4671 = !DILocation(line: 72, column: 11, scope: !4670)
!4672 = !DILocation(line: 73, column: 9, scope: !4669)
!4673 = !DILocation(line: 73, column: 15, scope: !4669)
!4674 = !DILocation(line: 74, column: 7, scope: !4670)
!4675 = !DILocation(line: 77, column: 3, scope: !4604)
!4676 = !DILocation(line: 78, column: 1, scope: !4604)
!4677 = distinct !DISubprogram(name: "hard_locale", scope: !271, file: !271, line: 27, type: !4678, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !4)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!29, !72}
!4680 = !DILocalVariable(name: "category", arg: 1, scope: !4677, file: !271, line: 27, type: !72)
!4681 = !DILocation(line: 27, column: 18, scope: !4677)
!4682 = !DILocalVariable(name: "locale", scope: !4677, file: !271, line: 29, type: !4683)
!4683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !4684)
!4684 = !{!4685}
!4685 = !DISubrange(count: 257)
!4686 = !DILocation(line: 29, column: 8, scope: !4677)
!4687 = !DILocation(line: 31, column: 25, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4677, file: !271, line: 31, column: 7)
!4689 = !DILocation(line: 31, column: 35, scope: !4688)
!4690 = !DILocation(line: 31, column: 7, scope: !4688)
!4691 = !DILocation(line: 31, column: 7, scope: !4677)
!4692 = !DILocation(line: 32, column: 5, scope: !4688)
!4693 = !DILocation(line: 34, column: 20, scope: !4677)
!4694 = !DILocation(line: 34, column: 12, scope: !4677)
!4695 = !DILocation(line: 34, column: 33, scope: !4677)
!4696 = !DILocation(line: 34, column: 38, scope: !4677)
!4697 = !DILocation(line: 34, column: 49, scope: !4677)
!4698 = !DILocation(line: 34, column: 41, scope: !4677)
!4699 = !DILocation(line: 34, column: 66, scope: !4677)
!4700 = !DILocation(line: 34, column: 10, scope: !4677)
!4701 = !DILocation(line: 34, column: 3, scope: !4677)
!4702 = !DILocation(line: 35, column: 1, scope: !4677)
!4703 = distinct !DISubprogram(name: "locale_charset", scope: !273, file: !273, line: 831, type: !4704, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !272, retainedNodes: !4)
!4704 = !DISubroutineType(types: !95)
!4705 = !DILocalVariable(name: "codeset", scope: !4703, file: !273, line: 833, type: !6)
!4706 = !DILocation(line: 833, column: 15, scope: !4703)
!4707 = !DILocation(line: 847, column: 13, scope: !4703)
!4708 = !DILocation(line: 847, column: 11, scope: !4703)
!4709 = !DILocation(line: 911, column: 7, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4703, file: !273, line: 911, column: 7)
!4711 = !DILocation(line: 911, column: 15, scope: !4710)
!4712 = !DILocation(line: 911, column: 7, scope: !4703)
!4713 = !DILocation(line: 913, column: 13, scope: !4710)
!4714 = !DILocation(line: 913, column: 5, scope: !4710)
!4715 = !DILocation(line: 1070, column: 13, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4717, file: !273, line: 1070, column: 13)
!4717 = distinct !DILexicalBlock(scope: !4718, file: !273, line: 1060, column: 7)
!4718 = distinct !DILexicalBlock(scope: !4703, file: !273, line: 1019, column: 3)
!4719 = !DILocation(line: 1070, column: 24, scope: !4716)
!4720 = !DILocation(line: 1070, column: 13, scope: !4717)
!4721 = !DILocation(line: 1071, column: 19, scope: !4716)
!4722 = !DILocation(line: 1071, column: 11, scope: !4716)
!4723 = !DILocation(line: 1158, column: 10, scope: !4703)
!4724 = !DILocation(line: 1158, column: 3, scope: !4703)
!4725 = !DILocalVariable(name: "username", arg: 1, scope: !666, file: !663, line: 66, type: !6)
!4726 = !DILocation(line: 66, column: 25, scope: !666)
!4727 = !DILocalVariable(name: "gid", arg: 2, scope: !666, file: !663, line: 66, type: !23)
!4728 = !DILocation(line: 66, column: 41, scope: !666)
!4729 = !DILocalVariable(name: "groups", arg: 3, scope: !666, file: !663, line: 66, type: !669)
!4730 = !DILocation(line: 66, column: 54, scope: !666)
!4731 = !DILocalVariable(name: "max_n_groups", scope: !666, file: !663, line: 68, type: !72)
!4732 = !DILocation(line: 68, column: 7, scope: !666)
!4733 = !DILocalVariable(name: "ng", scope: !666, file: !663, line: 69, type: !72)
!4734 = !DILocation(line: 69, column: 7, scope: !666)
!4735 = !DILocalVariable(name: "g", scope: !666, file: !663, line: 70, type: !200)
!4736 = !DILocation(line: 70, column: 10, scope: !666)
!4737 = !DILocation(line: 81, column: 7, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !666, file: !663, line: 81, column: 7)
!4739 = !DILocation(line: 81, column: 7, scope: !666)
!4740 = !DILocation(line: 84, column: 20, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4738, file: !663, line: 82, column: 5)
!4742 = !DILocation(line: 86, column: 35, scope: !4741)
!4743 = !DILocation(line: 86, column: 11, scope: !4741)
!4744 = !DILocation(line: 86, column: 9, scope: !4741)
!4745 = !DILocation(line: 87, column: 11, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4741, file: !663, line: 87, column: 11)
!4747 = !DILocation(line: 87, column: 13, scope: !4746)
!4748 = !DILocation(line: 87, column: 11, scope: !4741)
!4749 = !DILocation(line: 88, column: 9, scope: !4746)
!4750 = !DILocation(line: 90, column: 7, scope: !4741)
!4751 = !DILocalVariable(name: "h", scope: !4752, file: !663, line: 92, type: !200)
!4752 = distinct !DILexicalBlock(scope: !4741, file: !663, line: 91, column: 9)
!4753 = !DILocation(line: 92, column: 18, scope: !4752)
!4754 = !DILocalVariable(name: "last_n_groups", scope: !4752, file: !663, line: 93, type: !72)
!4755 = !DILocation(line: 93, column: 15, scope: !4752)
!4756 = !DILocation(line: 93, column: 31, scope: !4752)
!4757 = !DILocation(line: 96, column: 30, scope: !4752)
!4758 = !DILocation(line: 96, column: 40, scope: !4752)
!4759 = !DILocation(line: 96, column: 45, scope: !4752)
!4760 = !DILocation(line: 96, column: 16, scope: !4752)
!4761 = !DILocation(line: 96, column: 14, scope: !4752)
!4762 = !DILocation(line: 100, column: 15, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4752, file: !663, line: 100, column: 15)
!4764 = !DILocation(line: 100, column: 18, scope: !4763)
!4765 = !DILocation(line: 100, column: 22, scope: !4763)
!4766 = !DILocation(line: 100, column: 25, scope: !4763)
!4767 = !DILocation(line: 100, column: 42, scope: !4763)
!4768 = !DILocation(line: 100, column: 39, scope: !4763)
!4769 = !DILocation(line: 100, column: 15, scope: !4752)
!4770 = !DILocation(line: 101, column: 26, scope: !4763)
!4771 = !DILocation(line: 101, column: 13, scope: !4763)
!4772 = !DILocation(line: 103, column: 38, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4752, file: !663, line: 103, column: 15)
!4774 = !DILocation(line: 103, column: 41, scope: !4773)
!4775 = !DILocation(line: 103, column: 20, scope: !4773)
!4776 = !DILocation(line: 103, column: 18, scope: !4773)
!4777 = !DILocation(line: 103, column: 56, scope: !4773)
!4778 = !DILocation(line: 103, column: 15, scope: !4752)
!4779 = !DILocalVariable(name: "saved_errno", scope: !4780, file: !663, line: 105, type: !72)
!4780 = distinct !DILexicalBlock(scope: !4773, file: !663, line: 104, column: 13)
!4781 = !DILocation(line: 105, column: 19, scope: !4780)
!4782 = !DILocation(line: 105, column: 33, scope: !4780)
!4783 = !DILocation(line: 106, column: 21, scope: !4780)
!4784 = !DILocation(line: 106, column: 15, scope: !4780)
!4785 = !DILocation(line: 107, column: 23, scope: !4780)
!4786 = !DILocation(line: 107, column: 15, scope: !4780)
!4787 = !DILocation(line: 107, column: 21, scope: !4780)
!4788 = !DILocation(line: 108, column: 15, scope: !4780)
!4789 = !DILocation(line: 110, column: 15, scope: !4752)
!4790 = !DILocation(line: 110, column: 13, scope: !4752)
!4791 = !DILocation(line: 112, column: 20, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4752, file: !663, line: 112, column: 15)
!4793 = !DILocation(line: 112, column: 17, scope: !4792)
!4794 = !DILocation(line: 112, column: 15, scope: !4752)
!4795 = !DILocation(line: 114, column: 25, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4792, file: !663, line: 113, column: 13)
!4797 = !DILocation(line: 114, column: 16, scope: !4796)
!4798 = !DILocation(line: 114, column: 23, scope: !4796)
!4799 = !DILocation(line: 117, column: 22, scope: !4796)
!4800 = !DILocation(line: 117, column: 15, scope: !4796)
!4801 = distinct !{!4801, !4750, !4802}
!4802 = !DILocation(line: 119, column: 9, scope: !4741)
!4803 = !DILocation(line: 124, column: 19, scope: !666)
!4804 = !DILocation(line: 125, column: 42, scope: !666)
!4805 = !DILocation(line: 125, column: 52, scope: !666)
!4806 = !DILocation(line: 125, column: 21, scope: !666)
!4807 = !DILocation(line: 126, column: 21, scope: !666)
!4808 = !DILocation(line: 124, column: 16, scope: !666)
!4809 = !DILocation(line: 131, column: 7, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !666, file: !663, line: 131, column: 7)
!4811 = !DILocation(line: 131, column: 20, scope: !4810)
!4812 = !DILocation(line: 131, column: 7, scope: !666)
!4813 = !DILocation(line: 133, column: 11, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4815, file: !663, line: 133, column: 11)
!4815 = distinct !DILexicalBlock(scope: !4810, file: !663, line: 132, column: 5)
!4816 = !DILocation(line: 133, column: 17, scope: !4814)
!4817 = !DILocation(line: 133, column: 27, scope: !4814)
!4818 = !DILocation(line: 133, column: 35, scope: !4814)
!4819 = !DILocation(line: 133, column: 33, scope: !4814)
!4820 = !DILocation(line: 133, column: 11, scope: !4815)
!4821 = !DILocation(line: 135, column: 21, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4814, file: !663, line: 134, column: 9)
!4823 = !DILocation(line: 135, column: 12, scope: !4822)
!4824 = !DILocation(line: 135, column: 19, scope: !4822)
!4825 = !DILocation(line: 136, column: 16, scope: !4822)
!4826 = !DILocation(line: 136, column: 12, scope: !4822)
!4827 = !DILocation(line: 136, column: 14, scope: !4822)
!4828 = !DILocation(line: 137, column: 18, scope: !4822)
!4829 = !DILocation(line: 137, column: 22, scope: !4822)
!4830 = !DILocation(line: 137, column: 11, scope: !4822)
!4831 = !DILocation(line: 139, column: 7, scope: !4815)
!4832 = !DILocation(line: 142, column: 7, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !666, file: !663, line: 142, column: 7)
!4834 = !DILocation(line: 142, column: 20, scope: !4833)
!4835 = !DILocation(line: 142, column: 25, scope: !4833)
!4836 = !DILocation(line: 142, column: 30, scope: !4833)
!4837 = !DILocation(line: 142, column: 39, scope: !4833)
!4838 = !DILocation(line: 142, column: 42, scope: !4833)
!4839 = !DILocation(line: 142, column: 46, scope: !4833)
!4840 = !DILocation(line: 142, column: 7, scope: !666)
!4841 = !DILocation(line: 143, column: 17, scope: !4833)
!4842 = !DILocation(line: 143, column: 5, scope: !4833)
!4843 = !DILocation(line: 144, column: 31, scope: !666)
!4844 = !DILocation(line: 144, column: 7, scope: !666)
!4845 = !DILocation(line: 144, column: 5, scope: !666)
!4846 = !DILocation(line: 145, column: 7, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !666, file: !663, line: 145, column: 7)
!4848 = !DILocation(line: 145, column: 9, scope: !4847)
!4849 = !DILocation(line: 145, column: 7, scope: !666)
!4850 = !DILocation(line: 146, column: 5, scope: !4847)
!4851 = !DILocation(line: 148, column: 9, scope: !666)
!4852 = !DILocation(line: 149, column: 23, scope: !666)
!4853 = !DILocation(line: 149, column: 37, scope: !666)
!4854 = !DILocation(line: 149, column: 40, scope: !666)
!4855 = !DILocation(line: 149, column: 50, scope: !666)
!4856 = !DILocation(line: 149, column: 11, scope: !666)
!4857 = !DILocation(line: 150, column: 22, scope: !666)
!4858 = !DILocation(line: 150, column: 38, scope: !666)
!4859 = !DILocation(line: 150, column: 42, scope: !666)
!4860 = !DILocation(line: 150, column: 35, scope: !666)
!4861 = !DILocation(line: 151, column: 33, scope: !666)
!4862 = !DILocation(line: 151, column: 38, scope: !666)
!4863 = !DILocation(line: 151, column: 42, scope: !666)
!4864 = !DILocation(line: 151, column: 35, scope: !666)
!4865 = !DILocation(line: 150, column: 11, scope: !666)
!4866 = !DILocation(line: 148, column: 6, scope: !666)
!4867 = !DILocation(line: 153, column: 7, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !666, file: !663, line: 153, column: 7)
!4869 = !DILocation(line: 153, column: 10, scope: !4868)
!4870 = !DILocation(line: 153, column: 7, scope: !666)
!4871 = !DILocalVariable(name: "saved_errno", scope: !4872, file: !663, line: 156, type: !72)
!4872 = distinct !DILexicalBlock(scope: !4868, file: !663, line: 154, column: 5)
!4873 = !DILocation(line: 156, column: 11, scope: !4872)
!4874 = !DILocation(line: 156, column: 25, scope: !4872)
!4875 = !DILocation(line: 157, column: 13, scope: !4872)
!4876 = !DILocation(line: 157, column: 7, scope: !4872)
!4877 = !DILocation(line: 158, column: 15, scope: !4872)
!4878 = !DILocation(line: 158, column: 7, scope: !4872)
!4879 = !DILocation(line: 158, column: 13, scope: !4872)
!4880 = !DILocation(line: 159, column: 7, scope: !4872)
!4881 = !DILocation(line: 162, column: 8, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !666, file: !663, line: 162, column: 7)
!4883 = !DILocation(line: 162, column: 17, scope: !4882)
!4884 = !DILocation(line: 162, column: 20, scope: !4882)
!4885 = !DILocation(line: 162, column: 24, scope: !4882)
!4886 = !DILocation(line: 162, column: 7, scope: !666)
!4887 = !DILocation(line: 164, column: 12, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4882, file: !663, line: 163, column: 5)
!4889 = !DILocation(line: 164, column: 8, scope: !4888)
!4890 = !DILocation(line: 164, column: 10, scope: !4888)
!4891 = !DILocation(line: 165, column: 9, scope: !4888)
!4892 = !DILocation(line: 166, column: 5, scope: !4888)
!4893 = !DILocation(line: 167, column: 13, scope: !666)
!4894 = !DILocation(line: 167, column: 4, scope: !666)
!4895 = !DILocation(line: 167, column: 11, scope: !666)
!4896 = !DILocation(line: 185, column: 11, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !666, file: !663, line: 185, column: 7)
!4898 = !DILocation(line: 185, column: 9, scope: !4897)
!4899 = !DILocation(line: 185, column: 7, scope: !666)
!4900 = !DILocalVariable(name: "first", scope: !4901, file: !663, line: 187, type: !23)
!4901 = distinct !DILexicalBlock(scope: !4897, file: !663, line: 186, column: 5)
!4902 = !DILocation(line: 187, column: 13, scope: !4901)
!4903 = !DILocation(line: 187, column: 22, scope: !4901)
!4904 = !DILocation(line: 187, column: 21, scope: !4901)
!4905 = !DILocalVariable(name: "next", scope: !4901, file: !663, line: 188, type: !200)
!4906 = !DILocation(line: 188, column: 14, scope: !4901)
!4907 = !DILocalVariable(name: "groups_end", scope: !4901, file: !663, line: 189, type: !200)
!4908 = !DILocation(line: 189, column: 14, scope: !4901)
!4909 = !DILocation(line: 189, column: 27, scope: !4901)
!4910 = !DILocation(line: 189, column: 31, scope: !4901)
!4911 = !DILocation(line: 189, column: 29, scope: !4901)
!4912 = !DILocation(line: 191, column: 19, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4901, file: !663, line: 191, column: 7)
!4914 = !DILocation(line: 191, column: 21, scope: !4913)
!4915 = !DILocation(line: 191, column: 17, scope: !4913)
!4916 = !DILocation(line: 191, column: 12, scope: !4913)
!4917 = !DILocation(line: 191, column: 26, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4913, file: !663, line: 191, column: 7)
!4919 = !DILocation(line: 191, column: 33, scope: !4918)
!4920 = !DILocation(line: 191, column: 31, scope: !4918)
!4921 = !DILocation(line: 191, column: 7, scope: !4913)
!4922 = !DILocation(line: 193, column: 16, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4924, file: !663, line: 193, column: 15)
!4924 = distinct !DILexicalBlock(scope: !4918, file: !663, line: 192, column: 9)
!4925 = !DILocation(line: 193, column: 15, scope: !4923)
!4926 = !DILocation(line: 193, column: 24, scope: !4923)
!4927 = !DILocation(line: 193, column: 21, scope: !4923)
!4928 = !DILocation(line: 193, column: 30, scope: !4923)
!4929 = !DILocation(line: 193, column: 34, scope: !4923)
!4930 = !DILocation(line: 193, column: 33, scope: !4923)
!4931 = !DILocation(line: 193, column: 43, scope: !4923)
!4932 = !DILocation(line: 193, column: 42, scope: !4923)
!4933 = !DILocation(line: 193, column: 39, scope: !4923)
!4934 = !DILocation(line: 193, column: 15, scope: !4924)
!4935 = !DILocation(line: 194, column: 15, scope: !4923)
!4936 = !DILocation(line: 194, column: 13, scope: !4923)
!4937 = !DILocation(line: 196, column: 21, scope: !4923)
!4938 = !DILocation(line: 196, column: 20, scope: !4923)
!4939 = !DILocation(line: 196, column: 14, scope: !4923)
!4940 = !DILocation(line: 196, column: 18, scope: !4923)
!4941 = !DILocation(line: 197, column: 9, scope: !4924)
!4942 = !DILocation(line: 191, column: 49, scope: !4918)
!4943 = !DILocation(line: 191, column: 7, scope: !4918)
!4944 = distinct !{!4944, !4921, !4945, !745}
!4945 = !DILocation(line: 197, column: 9, scope: !4913)
!4946 = !DILocation(line: 198, column: 5, scope: !4901)
!4947 = !DILocation(line: 200, column: 10, scope: !666)
!4948 = !DILocation(line: 200, column: 3, scope: !666)
!4949 = !DILocation(line: 201, column: 1, scope: !666)
!4950 = distinct !DISubprogram(name: "realloc_groupbuf", scope: !663, file: !663, line: 43, type: !4951, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !662, retainedNodes: !4)
!4951 = !DISubroutineType(types: !4952)
!4952 = !{!200, !200, !152}
!4953 = !DILocalVariable(name: "g", arg: 1, scope: !4950, file: !663, line: 43, type: !200)
!4954 = !DILocation(line: 43, column: 26, scope: !4950)
!4955 = !DILocalVariable(name: "num", arg: 2, scope: !4950, file: !663, line: 43, type: !152)
!4956 = !DILocation(line: 43, column: 36, scope: !4950)
!4957 = !DILocation(line: 45, column: 7, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4950, file: !663, line: 45, column: 7)
!4959 = !DILocation(line: 45, column: 7, scope: !4950)
!4960 = !DILocation(line: 47, column: 7, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4958, file: !663, line: 46, column: 5)
!4962 = !DILocation(line: 47, column: 13, scope: !4961)
!4963 = !DILocation(line: 48, column: 7, scope: !4961)
!4964 = !DILocation(line: 51, column: 19, scope: !4950)
!4965 = !DILocation(line: 51, column: 22, scope: !4950)
!4966 = !DILocation(line: 51, column: 26, scope: !4950)
!4967 = !DILocation(line: 51, column: 10, scope: !4950)
!4968 = !DILocation(line: 51, column: 3, scope: !4950)
!4969 = !DILocation(line: 52, column: 1, scope: !4950)
!4970 = distinct !DISubprogram(name: "setlocale_null_r", scope: !674, file: !674, line: 269, type: !4971, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !673, retainedNodes: !4)
!4971 = !DISubroutineType(types: !4972)
!4972 = !{!72, !72, !9, !152}
!4973 = !DILocalVariable(name: "category", arg: 1, scope: !4970, file: !674, line: 269, type: !72)
!4974 = !DILocation(line: 269, column: 23, scope: !4970)
!4975 = !DILocalVariable(name: "buf", arg: 2, scope: !4970, file: !674, line: 269, type: !9)
!4976 = !DILocation(line: 269, column: 39, scope: !4970)
!4977 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4970, file: !674, line: 269, type: !152)
!4978 = !DILocation(line: 269, column: 51, scope: !4970)
!4979 = !DILocation(line: 274, column: 35, scope: !4970)
!4980 = !DILocation(line: 274, column: 45, scope: !4970)
!4981 = !DILocation(line: 274, column: 50, scope: !4970)
!4982 = !DILocation(line: 274, column: 10, scope: !4970)
!4983 = !DILocation(line: 274, column: 3, scope: !4970)
!4984 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !674, file: !674, line: 91, type: !4971, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !673, retainedNodes: !4)
!4985 = !DILocalVariable(name: "category", arg: 1, scope: !4984, file: !674, line: 91, type: !72)
!4986 = !DILocation(line: 91, column: 30, scope: !4984)
!4987 = !DILocalVariable(name: "buf", arg: 2, scope: !4984, file: !674, line: 91, type: !9)
!4988 = !DILocation(line: 91, column: 46, scope: !4984)
!4989 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4984, file: !674, line: 91, type: !152)
!4990 = !DILocation(line: 91, column: 58, scope: !4984)
!4991 = !DILocalVariable(name: "result", scope: !4984, file: !674, line: 140, type: !6)
!4992 = !DILocation(line: 140, column: 15, scope: !4984)
!4993 = !DILocation(line: 140, column: 51, scope: !4984)
!4994 = !DILocation(line: 140, column: 24, scope: !4984)
!4995 = !DILocation(line: 142, column: 7, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4984, file: !674, line: 142, column: 7)
!4997 = !DILocation(line: 142, column: 14, scope: !4996)
!4998 = !DILocation(line: 142, column: 7, scope: !4984)
!4999 = !DILocation(line: 145, column: 11, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !5001, file: !674, line: 145, column: 11)
!5001 = distinct !DILexicalBlock(scope: !4996, file: !674, line: 143, column: 5)
!5002 = !DILocation(line: 145, column: 19, scope: !5000)
!5003 = !DILocation(line: 145, column: 11, scope: !5001)
!5004 = !DILocation(line: 149, column: 9, scope: !5000)
!5005 = !DILocation(line: 149, column: 16, scope: !5000)
!5006 = !DILocation(line: 150, column: 7, scope: !5001)
!5007 = !DILocalVariable(name: "length", scope: !5008, file: !674, line: 154, type: !152)
!5008 = distinct !DILexicalBlock(scope: !4996, file: !674, line: 153, column: 5)
!5009 = !DILocation(line: 154, column: 14, scope: !5008)
!5010 = !DILocation(line: 154, column: 31, scope: !5008)
!5011 = !DILocation(line: 154, column: 23, scope: !5008)
!5012 = !DILocation(line: 155, column: 11, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !5008, file: !674, line: 155, column: 11)
!5014 = !DILocation(line: 155, column: 20, scope: !5013)
!5015 = !DILocation(line: 155, column: 18, scope: !5013)
!5016 = !DILocation(line: 155, column: 11, scope: !5008)
!5017 = !DILocation(line: 157, column: 19, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !5013, file: !674, line: 156, column: 9)
!5019 = !DILocation(line: 157, column: 24, scope: !5018)
!5020 = !DILocation(line: 157, column: 32, scope: !5018)
!5021 = !DILocation(line: 157, column: 39, scope: !5018)
!5022 = !DILocation(line: 157, column: 11, scope: !5018)
!5023 = !DILocation(line: 158, column: 11, scope: !5018)
!5024 = !DILocation(line: 162, column: 15, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !5026, file: !674, line: 162, column: 15)
!5026 = distinct !DILexicalBlock(scope: !5013, file: !674, line: 161, column: 9)
!5027 = !DILocation(line: 162, column: 23, scope: !5025)
!5028 = !DILocation(line: 162, column: 15, scope: !5026)
!5029 = !DILocation(line: 167, column: 23, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5025, file: !674, line: 163, column: 13)
!5031 = !DILocation(line: 167, column: 28, scope: !5030)
!5032 = !DILocation(line: 167, column: 36, scope: !5030)
!5033 = !DILocation(line: 167, column: 44, scope: !5030)
!5034 = !DILocation(line: 167, column: 15, scope: !5030)
!5035 = !DILocation(line: 168, column: 15, scope: !5030)
!5036 = !DILocation(line: 168, column: 19, scope: !5030)
!5037 = !DILocation(line: 168, column: 27, scope: !5030)
!5038 = !DILocation(line: 168, column: 32, scope: !5030)
!5039 = !DILocation(line: 169, column: 13, scope: !5030)
!5040 = !DILocation(line: 170, column: 11, scope: !5026)
!5041 = !DILocation(line: 174, column: 1, scope: !4984)
!5042 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !674, file: !674, line: 60, type: !5043, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !673, retainedNodes: !4)
!5043 = !DISubroutineType(types: !5044)
!5044 = !{!6, !72}
!5045 = !DILocalVariable(name: "category", arg: 1, scope: !5042, file: !674, line: 60, type: !72)
!5046 = !DILocation(line: 60, column: 32, scope: !5042)
!5047 = !DILocalVariable(name: "result", scope: !5042, file: !674, line: 62, type: !6)
!5048 = !DILocation(line: 62, column: 15, scope: !5042)
!5049 = !DILocation(line: 62, column: 35, scope: !5042)
!5050 = !DILocation(line: 62, column: 24, scope: !5042)
!5051 = !DILocation(line: 87, column: 10, scope: !5042)
!5052 = !DILocation(line: 87, column: 3, scope: !5042)
!5053 = distinct !DISubprogram(name: "setlocale_null", scope: !674, file: !674, line: 301, type: !5043, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !673, retainedNodes: !4)
!5054 = !DILocalVariable(name: "category", arg: 1, scope: !5053, file: !674, line: 301, type: !72)
!5055 = !DILocation(line: 301, column: 21, scope: !5053)
!5056 = !DILocation(line: 304, column: 37, scope: !5053)
!5057 = !DILocation(line: 304, column: 10, scope: !5053)
!5058 = !DILocation(line: 304, column: 3, scope: !5053)
!5059 = distinct !DISubprogram(name: "rpl_fclose", scope: !676, file: !676, line: 58, type: !5060, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !675, retainedNodes: !4)
!5060 = !DISubroutineType(types: !5061)
!5061 = !{!72, !5062}
!5062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5063, size: 64)
!5063 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3706, line: 7, baseType: !5064)
!5064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3708, line: 49, size: 1728, elements: !5065)
!5065 = !{!5066, !5067, !5068, !5069, !5070, !5071, !5072, !5073, !5074, !5075, !5076, !5077, !5078, !5079, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5094, !5095}
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5064, file: !3708, line: 51, baseType: !72, size: 32)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5064, file: !3708, line: 54, baseType: !9, size: 64, offset: 64)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5064, file: !3708, line: 55, baseType: !9, size: 64, offset: 128)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5064, file: !3708, line: 56, baseType: !9, size: 64, offset: 192)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5064, file: !3708, line: 57, baseType: !9, size: 64, offset: 256)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5064, file: !3708, line: 58, baseType: !9, size: 64, offset: 320)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5064, file: !3708, line: 59, baseType: !9, size: 64, offset: 384)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5064, file: !3708, line: 60, baseType: !9, size: 64, offset: 448)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5064, file: !3708, line: 61, baseType: !9, size: 64, offset: 512)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5064, file: !3708, line: 64, baseType: !9, size: 64, offset: 576)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5064, file: !3708, line: 65, baseType: !9, size: 64, offset: 640)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5064, file: !3708, line: 66, baseType: !9, size: 64, offset: 704)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5064, file: !3708, line: 68, baseType: !3723, size: 64, offset: 768)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5064, file: !3708, line: 70, baseType: !5080, size: 64, offset: 832)
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5064, size: 64)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5064, file: !3708, line: 72, baseType: !72, size: 32, offset: 896)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5064, file: !3708, line: 73, baseType: !72, size: 32, offset: 928)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5064, file: !3708, line: 74, baseType: !3730, size: 64, offset: 960)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5064, file: !3708, line: 77, baseType: !151, size: 16, offset: 1024)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5064, file: !3708, line: 78, baseType: !3733, size: 8, offset: 1040)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5064, file: !3708, line: 79, baseType: !3735, size: 8, offset: 1048)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5064, file: !3708, line: 81, baseType: !3739, size: 64, offset: 1088)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5064, file: !3708, line: 89, baseType: !3742, size: 64, offset: 1152)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5064, file: !3708, line: 91, baseType: !3744, size: 64, offset: 1216)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5064, file: !3708, line: 92, baseType: !3747, size: 64, offset: 1280)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5064, file: !3708, line: 93, baseType: !5080, size: 64, offset: 1344)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5064, file: !3708, line: 94, baseType: !10, size: 64, offset: 1408)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5064, file: !3708, line: 95, baseType: !152, size: 64, offset: 1472)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5064, file: !3708, line: 96, baseType: !72, size: 32, offset: 1536)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5064, file: !3708, line: 98, baseType: !3754, size: 160, offset: 1568)
!5096 = !DILocalVariable(name: "fp", arg: 1, scope: !5059, file: !676, line: 58, type: !5062)
!5097 = !DILocation(line: 58, column: 19, scope: !5059)
!5098 = !DILocalVariable(name: "saved_errno", scope: !5059, file: !676, line: 60, type: !72)
!5099 = !DILocation(line: 60, column: 7, scope: !5059)
!5100 = !DILocalVariable(name: "fd", scope: !5059, file: !676, line: 61, type: !72)
!5101 = !DILocation(line: 61, column: 7, scope: !5059)
!5102 = !DILocalVariable(name: "result", scope: !5059, file: !676, line: 62, type: !72)
!5103 = !DILocation(line: 62, column: 7, scope: !5059)
!5104 = !DILocation(line: 65, column: 16, scope: !5059)
!5105 = !DILocation(line: 65, column: 8, scope: !5059)
!5106 = !DILocation(line: 65, column: 6, scope: !5059)
!5107 = !DILocation(line: 66, column: 7, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5059, file: !676, line: 66, column: 7)
!5109 = !DILocation(line: 66, column: 10, scope: !5108)
!5110 = !DILocation(line: 66, column: 7, scope: !5059)
!5111 = !DILocation(line: 67, column: 28, scope: !5108)
!5112 = !DILocation(line: 67, column: 12, scope: !5108)
!5113 = !DILocation(line: 67, column: 5, scope: !5108)
!5114 = !DILocation(line: 72, column: 9, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5059, file: !676, line: 72, column: 7)
!5116 = !DILocation(line: 72, column: 23, scope: !5115)
!5117 = !DILocation(line: 72, column: 41, scope: !5115)
!5118 = !DILocation(line: 72, column: 33, scope: !5115)
!5119 = !DILocation(line: 72, column: 26, scope: !5115)
!5120 = !DILocation(line: 72, column: 59, scope: !5115)
!5121 = !DILocation(line: 73, column: 7, scope: !5115)
!5122 = !DILocation(line: 73, column: 18, scope: !5115)
!5123 = !DILocation(line: 73, column: 10, scope: !5115)
!5124 = !DILocation(line: 72, column: 7, scope: !5059)
!5125 = !DILocation(line: 74, column: 19, scope: !5115)
!5126 = !DILocation(line: 74, column: 17, scope: !5115)
!5127 = !DILocation(line: 74, column: 5, scope: !5115)
!5128 = !DILocation(line: 100, column: 28, scope: !5059)
!5129 = !DILocation(line: 100, column: 12, scope: !5059)
!5130 = !DILocation(line: 100, column: 10, scope: !5059)
!5131 = !DILocation(line: 105, column: 7, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5059, file: !676, line: 105, column: 7)
!5133 = !DILocation(line: 105, column: 19, scope: !5132)
!5134 = !DILocation(line: 105, column: 7, scope: !5059)
!5135 = !DILocation(line: 107, column: 15, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5132, file: !676, line: 106, column: 5)
!5137 = !DILocation(line: 107, column: 7, scope: !5136)
!5138 = !DILocation(line: 107, column: 13, scope: !5136)
!5139 = !DILocation(line: 108, column: 14, scope: !5136)
!5140 = !DILocation(line: 109, column: 5, scope: !5136)
!5141 = !DILocation(line: 111, column: 10, scope: !5059)
!5142 = !DILocation(line: 111, column: 3, scope: !5059)
!5143 = !DILocation(line: 112, column: 1, scope: !5059)
!5144 = distinct !DISubprogram(name: "rpl_fflush", scope: !678, file: !678, line: 129, type: !5145, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !677, retainedNodes: !4)
!5145 = !DISubroutineType(types: !5146)
!5146 = !{!72, !5147}
!5147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5148, size: 64)
!5148 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3706, line: 7, baseType: !5149)
!5149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3708, line: 49, size: 1728, elements: !5150)
!5150 = !{!5151, !5152, !5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5163, !5164, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180}
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5149, file: !3708, line: 51, baseType: !72, size: 32)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5149, file: !3708, line: 54, baseType: !9, size: 64, offset: 64)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5149, file: !3708, line: 55, baseType: !9, size: 64, offset: 128)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5149, file: !3708, line: 56, baseType: !9, size: 64, offset: 192)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5149, file: !3708, line: 57, baseType: !9, size: 64, offset: 256)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5149, file: !3708, line: 58, baseType: !9, size: 64, offset: 320)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5149, file: !3708, line: 59, baseType: !9, size: 64, offset: 384)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5149, file: !3708, line: 60, baseType: !9, size: 64, offset: 448)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5149, file: !3708, line: 61, baseType: !9, size: 64, offset: 512)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5149, file: !3708, line: 64, baseType: !9, size: 64, offset: 576)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5149, file: !3708, line: 65, baseType: !9, size: 64, offset: 640)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5149, file: !3708, line: 66, baseType: !9, size: 64, offset: 704)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5149, file: !3708, line: 68, baseType: !3723, size: 64, offset: 768)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5149, file: !3708, line: 70, baseType: !5165, size: 64, offset: 832)
!5165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5149, size: 64)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5149, file: !3708, line: 72, baseType: !72, size: 32, offset: 896)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5149, file: !3708, line: 73, baseType: !72, size: 32, offset: 928)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5149, file: !3708, line: 74, baseType: !3730, size: 64, offset: 960)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5149, file: !3708, line: 77, baseType: !151, size: 16, offset: 1024)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5149, file: !3708, line: 78, baseType: !3733, size: 8, offset: 1040)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5149, file: !3708, line: 79, baseType: !3735, size: 8, offset: 1048)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5149, file: !3708, line: 81, baseType: !3739, size: 64, offset: 1088)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5149, file: !3708, line: 89, baseType: !3742, size: 64, offset: 1152)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5149, file: !3708, line: 91, baseType: !3744, size: 64, offset: 1216)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5149, file: !3708, line: 92, baseType: !3747, size: 64, offset: 1280)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5149, file: !3708, line: 93, baseType: !5165, size: 64, offset: 1344)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5149, file: !3708, line: 94, baseType: !10, size: 64, offset: 1408)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5149, file: !3708, line: 95, baseType: !152, size: 64, offset: 1472)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5149, file: !3708, line: 96, baseType: !72, size: 32, offset: 1536)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5149, file: !3708, line: 98, baseType: !3754, size: 160, offset: 1568)
!5181 = !DILocalVariable(name: "stream", arg: 1, scope: !5144, file: !678, line: 129, type: !5147)
!5182 = !DILocation(line: 129, column: 19, scope: !5144)
!5183 = !DILocation(line: 150, column: 7, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5144, file: !678, line: 150, column: 7)
!5185 = !DILocation(line: 150, column: 14, scope: !5184)
!5186 = !DILocation(line: 150, column: 22, scope: !5184)
!5187 = !DILocation(line: 150, column: 27, scope: !5184)
!5188 = !DILocation(line: 150, column: 7, scope: !5144)
!5189 = !DILocation(line: 151, column: 20, scope: !5184)
!5190 = !DILocation(line: 151, column: 12, scope: !5184)
!5191 = !DILocation(line: 151, column: 5, scope: !5184)
!5192 = !DILocation(line: 156, column: 44, scope: !5144)
!5193 = !DILocation(line: 156, column: 3, scope: !5144)
!5194 = !DILocation(line: 158, column: 18, scope: !5144)
!5195 = !DILocation(line: 158, column: 10, scope: !5144)
!5196 = !DILocation(line: 158, column: 3, scope: !5144)
!5197 = !DILocation(line: 235, column: 1, scope: !5144)
!5198 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !678, file: !678, line: 41, type: !5199, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !677, retainedNodes: !4)
!5199 = !DISubroutineType(types: !5200)
!5200 = !{null, !5147}
!5201 = !DILocalVariable(name: "fp", arg: 1, scope: !5198, file: !678, line: 41, type: !5147)
!5202 = !DILocation(line: 41, column: 48, scope: !5198)
!5203 = !DILocation(line: 43, column: 7, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5198, file: !678, line: 43, column: 7)
!5205 = !DILocation(line: 43, column: 11, scope: !5204)
!5206 = !DILocation(line: 43, column: 18, scope: !5204)
!5207 = !DILocation(line: 43, column: 7, scope: !5198)
!5208 = !DILocation(line: 45, column: 13, scope: !5204)
!5209 = !DILocation(line: 45, column: 5, scope: !5204)
!5210 = !DILocation(line: 46, column: 1, scope: !5198)
!5211 = distinct !DISubprogram(name: "rpl_fseeko", scope: !680, file: !680, line: 28, type: !5212, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !679, retainedNodes: !4)
!5212 = !DISubroutineType(types: !5213)
!5213 = !{!72, !5214, !5248, !72}
!5214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5215, size: 64)
!5215 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3706, line: 7, baseType: !5216)
!5216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3708, line: 49, size: 1728, elements: !5217)
!5217 = !{!5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247}
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5216, file: !3708, line: 51, baseType: !72, size: 32)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5216, file: !3708, line: 54, baseType: !9, size: 64, offset: 64)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5216, file: !3708, line: 55, baseType: !9, size: 64, offset: 128)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5216, file: !3708, line: 56, baseType: !9, size: 64, offset: 192)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5216, file: !3708, line: 57, baseType: !9, size: 64, offset: 256)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5216, file: !3708, line: 58, baseType: !9, size: 64, offset: 320)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5216, file: !3708, line: 59, baseType: !9, size: 64, offset: 384)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5216, file: !3708, line: 60, baseType: !9, size: 64, offset: 448)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5216, file: !3708, line: 61, baseType: !9, size: 64, offset: 512)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5216, file: !3708, line: 64, baseType: !9, size: 64, offset: 576)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5216, file: !3708, line: 65, baseType: !9, size: 64, offset: 640)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5216, file: !3708, line: 66, baseType: !9, size: 64, offset: 704)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5216, file: !3708, line: 68, baseType: !3723, size: 64, offset: 768)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5216, file: !3708, line: 70, baseType: !5232, size: 64, offset: 832)
!5232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5216, size: 64)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5216, file: !3708, line: 72, baseType: !72, size: 32, offset: 896)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5216, file: !3708, line: 73, baseType: !72, size: 32, offset: 928)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5216, file: !3708, line: 74, baseType: !3730, size: 64, offset: 960)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5216, file: !3708, line: 77, baseType: !151, size: 16, offset: 1024)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5216, file: !3708, line: 78, baseType: !3733, size: 8, offset: 1040)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5216, file: !3708, line: 79, baseType: !3735, size: 8, offset: 1048)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5216, file: !3708, line: 81, baseType: !3739, size: 64, offset: 1088)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5216, file: !3708, line: 89, baseType: !3742, size: 64, offset: 1152)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5216, file: !3708, line: 91, baseType: !3744, size: 64, offset: 1216)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5216, file: !3708, line: 92, baseType: !3747, size: 64, offset: 1280)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5216, file: !3708, line: 93, baseType: !5232, size: 64, offset: 1344)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5216, file: !3708, line: 94, baseType: !10, size: 64, offset: 1408)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5216, file: !3708, line: 95, baseType: !152, size: 64, offset: 1472)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5216, file: !3708, line: 96, baseType: !72, size: 32, offset: 1536)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5216, file: !3708, line: 98, baseType: !3754, size: 160, offset: 1568)
!5248 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1092, line: 63, baseType: !3730)
!5249 = !DILocalVariable(name: "fp", arg: 1, scope: !5211, file: !680, line: 28, type: !5214)
!5250 = !DILocation(line: 28, column: 15, scope: !5211)
!5251 = !DILocalVariable(name: "offset", arg: 2, scope: !5211, file: !680, line: 28, type: !5248)
!5252 = !DILocation(line: 28, column: 25, scope: !5211)
!5253 = !DILocalVariable(name: "whence", arg: 3, scope: !5211, file: !680, line: 28, type: !72)
!5254 = !DILocation(line: 28, column: 37, scope: !5211)
!5255 = !DILocation(line: 52, column: 7, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !5211, file: !680, line: 52, column: 7)
!5257 = !DILocation(line: 52, column: 11, scope: !5256)
!5258 = !DILocation(line: 52, column: 27, scope: !5256)
!5259 = !DILocation(line: 52, column: 31, scope: !5256)
!5260 = !DILocation(line: 52, column: 24, scope: !5256)
!5261 = !DILocation(line: 53, column: 7, scope: !5256)
!5262 = !DILocation(line: 53, column: 10, scope: !5256)
!5263 = !DILocation(line: 53, column: 14, scope: !5256)
!5264 = !DILocation(line: 53, column: 31, scope: !5256)
!5265 = !DILocation(line: 53, column: 35, scope: !5256)
!5266 = !DILocation(line: 53, column: 28, scope: !5256)
!5267 = !DILocation(line: 54, column: 7, scope: !5256)
!5268 = !DILocation(line: 54, column: 10, scope: !5256)
!5269 = !DILocation(line: 54, column: 14, scope: !5256)
!5270 = !DILocation(line: 54, column: 28, scope: !5256)
!5271 = !DILocation(line: 52, column: 7, scope: !5211)
!5272 = !DILocalVariable(name: "pos", scope: !5273, file: !680, line: 117, type: !5248)
!5273 = distinct !DILexicalBlock(scope: !5256, file: !680, line: 113, column: 5)
!5274 = !DILocation(line: 117, column: 13, scope: !5273)
!5275 = !DILocation(line: 117, column: 34, scope: !5273)
!5276 = !DILocation(line: 117, column: 26, scope: !5273)
!5277 = !DILocation(line: 117, column: 39, scope: !5273)
!5278 = !DILocation(line: 117, column: 47, scope: !5273)
!5279 = !DILocation(line: 117, column: 19, scope: !5273)
!5280 = !DILocation(line: 118, column: 11, scope: !5281)
!5281 = distinct !DILexicalBlock(scope: !5273, file: !680, line: 118, column: 11)
!5282 = !DILocation(line: 118, column: 15, scope: !5281)
!5283 = !DILocation(line: 118, column: 11, scope: !5273)
!5284 = !DILocation(line: 124, column: 11, scope: !5285)
!5285 = distinct !DILexicalBlock(scope: !5281, file: !680, line: 119, column: 9)
!5286 = !DILocation(line: 129, column: 7, scope: !5273)
!5287 = !DILocation(line: 129, column: 11, scope: !5273)
!5288 = !DILocation(line: 129, column: 18, scope: !5273)
!5289 = !DILocation(line: 130, column: 21, scope: !5273)
!5290 = !DILocation(line: 130, column: 7, scope: !5273)
!5291 = !DILocation(line: 130, column: 11, scope: !5273)
!5292 = !DILocation(line: 130, column: 19, scope: !5273)
!5293 = !DILocation(line: 161, column: 7, scope: !5273)
!5294 = !DILocation(line: 163, column: 18, scope: !5211)
!5295 = !DILocation(line: 163, column: 22, scope: !5211)
!5296 = !DILocation(line: 163, column: 30, scope: !5211)
!5297 = !DILocation(line: 163, column: 10, scope: !5211)
!5298 = !DILocation(line: 163, column: 3, scope: !5211)
!5299 = !DILocation(line: 164, column: 1, scope: !5211)
!5300 = distinct !DISubprogram(name: "c_isalnum", scope: !5301, file: !5301, line: 169, type: !4678, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !681, retainedNodes: !4)
!5301 = !DIFile(filename: "../lib/c-ctype.h", directory: "/nobackup/klee_LLVM_12/Dataset-1/coreutils-8.32/obj-llvm")
!5302 = !DILocalVariable(name: "c", arg: 1, scope: !5300, file: !5301, line: 169, type: !72)
!5303 = !DILocation(line: 169, column: 16, scope: !5300)
!5304 = !DILocation(line: 171, column: 11, scope: !5300)
!5305 = !DILocation(line: 171, column: 3, scope: !5300)
!5306 = !DILocation(line: 176, column: 7, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5300, file: !5301, line: 172, column: 5)
!5308 = !DILocation(line: 178, column: 7, scope: !5307)
!5309 = !DILocation(line: 180, column: 1, scope: !5300)
!5310 = distinct !DISubprogram(name: "c_isalpha", scope: !5301, file: !5301, line: 183, type: !4678, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !681, retainedNodes: !4)
!5311 = !DILocalVariable(name: "c", arg: 1, scope: !5310, file: !5301, line: 183, type: !72)
!5312 = !DILocation(line: 183, column: 16, scope: !5310)
!5313 = !DILocation(line: 185, column: 11, scope: !5310)
!5314 = !DILocation(line: 185, column: 3, scope: !5310)
!5315 = !DILocation(line: 189, column: 7, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5310, file: !5301, line: 186, column: 5)
!5317 = !DILocation(line: 191, column: 7, scope: !5316)
!5318 = !DILocation(line: 193, column: 1, scope: !5310)
!5319 = distinct !DISubprogram(name: "c_isascii", scope: !5301, file: !5301, line: 198, type: !4678, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !681, retainedNodes: !4)
!5320 = !DILocalVariable(name: "c", arg: 1, scope: !5319, file: !5301, line: 198, type: !72)
!5321 = !DILocation(line: 198, column: 16, scope: !5319)
!5322 = !DILocation(line: 200, column: 11, scope: !5319)
!5323 = !DILocation(line: 200, column: 3, scope: !5319)
!5324 = !DILocation(line: 208, column: 7, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5319, file: !5301, line: 201, column: 5)
!5326 = !DILocation(line: 210, column: 7, scope: !5325)
!5327 = !DILocation(line: 212, column: 1, scope: !5319)
!5328 = distinct !DISubprogram(name: "c_isblank", scope: !5301, file: !5301, line: 215, type: !4678, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !681, retainedNodes: !4)
!5329 = !DILocalVariable(name: "c", arg: 1, scope: !5328, file: !5301, line: 215, type: !72)
!5330 = !DILocation(line: 215, column: 16, scope: !5328)
!5331 = !DILocation(line: 217, column: 10, scope: !5328)
!5332 = !DILocation(line: 217, column: 12, scope: !5328)
!5333 = !DILocation(line: 217, column: 19, scope: !5328)
!5334 = !DILocation(line: 217, column: 22, scope: !5328)
!5335 = !DILocation(line: 217, column: 24, scope: !5328)
!5336 = !DILocation(line: 217, column: 3, scope: !5328)
!5337 = distinct !DISubprogram(name: "c_iscntrl", scope: !5301, file: !5301, line: 221, type: !4678, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !681, retainedNodes: !4)
!5338 = !DILocalVariable(name: "c", arg: 1, scope: !5337, file: !5301, line: 221, type: !72)
!5339 = !DILocation(line: 221, column: 16, scope: !5337)
!5340 = !DILocation(line: 223, column: 11, scope: !5337)
!5341 = !DILocation(line: 223, column: 3, scope: !5337)
!5342 = !DILocation(line: 226, column: 7, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5337, file: !5301, line: 224, column: 5)
!5344 = !DILocation(line: 228, column: 7, scope: !5343)
!5345 = !DILocation(line: 230, column: 1, scope: !5337)
!5346 = distinct !DISubprogram(name: "c_isdigit", scope: !5301, file: !5301, line: 233, type: !4678, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !681, retainedNodes: !4)
!5347 = !DILocalVariable(name: "c", arg: 1, scope: !5346, file: !5301, line: 233, type: !72)
!5348 = !DILocation(line: 233, column: 16, scope: !5346)
!5349 = !DILocation(line: 235, column: 11, scope: !5346)
!5350 = !DILocation(line: 235, column: 3, scope: !5346)
!5351 = !DILocation(line: 238, column: 7, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5346, file: !5301, line: 236, column: 5)
!5353 = !DILocation(line: 240, column: 7, scope: !5352)
!5354 = !DILocation(line: 242, column: 1, scope: !5346)
!5355 = distinct !DISubprogram(name: "c_isgraph", scope: !5301, file: !5301, line: 245, type: !4678, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !681, retainedNodes: !4)
!5356 = !DILocalVariable(name: "c", arg: 1, scope: !5355, file: !5301, line: 245, type: !72)
!5357 = !DILocation(line: 245, column: 16, scope: !5355)
!5358 = !DILocation(line: 247, column: 11, scope: !5355)
!5359 = !DILocation(line: 247, column: 3, scope: !5355)
!5360 = !DILocation(line: 253, column: 7, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5355, file: !5301, line: 248, column: 5)
!5362 = !DILocation(line: 255, column: 7, scope: !5361)
!5363 = !DILocation(line: 257, column: 1, scope: !5355)
!5364 = distinct !DISubprogram(name: "c_islower", scope: !5301, file: !5301, line: 260, type: !4678, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !681, retainedNodes: !4)
!5365 = !DILocalVariable(name: "c", arg: 1, scope: !5364, file: !5301, line: 260, type: !72)
!5366 = !DILocation(line: 260, column: 16, scope: !5364)
!5367 = !DILocation(line: 262, column: 11, scope: !5364)
!5368 = !DILocation(line: 262, column: 3, scope: !5364)
!5369 = !DILocation(line: 265, column: 7, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5364, file: !5301, line: 263, column: 5)
!5371 = !DILocation(line: 267, column: 7, scope: !5370)
!5372 = !DILocation(line: 269, column: 1, scope: !5364)
!5373 = distinct !DISubprogram(name: "c_isprint", scope: !5301, file: !5301, line: 272, type: !4678, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !681, retainedNodes: !4)
!5374 = !DILocalVariable(name: "c", arg: 1, scope: !5373, file: !5301, line: 272, type: !72)
!5375 = !DILocation(line: 272, column: 16, scope: !5373)
!5376 = !DILocation(line: 274, column: 11, scope: !5373)
!5377 = !DILocation(line: 274, column: 3, scope: !5373)
!5378 = !DILocation(line: 281, column: 7, scope: !5379)
!5379 = distinct !DILexicalBlock(scope: !5373, file: !5301, line: 275, column: 5)
!5380 = !DILocation(line: 283, column: 7, scope: !5379)
!5381 = !DILocation(line: 285, column: 1, scope: !5373)
!5382 = distinct !DISubprogram(name: "c_ispunct", scope: !5301, file: !5301, line: 288, type: !4678, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !681, retainedNodes: !4)
!5383 = !DILocalVariable(name: "c", arg: 1, scope: !5382, file: !5301, line: 288, type: !72)
!5384 = !DILocation(line: 288, column: 16, scope: !5382)
!5385 = !DILocation(line: 290, column: 11, scope: !5382)
!5386 = !DILocation(line: 290, column: 3, scope: !5382)
!5387 = !DILocation(line: 293, column: 7, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5382, file: !5301, line: 291, column: 5)
!5389 = !DILocation(line: 295, column: 7, scope: !5388)
!5390 = !DILocation(line: 297, column: 1, scope: !5382)
!5391 = distinct !DISubprogram(name: "c_isspace", scope: !5301, file: !5301, line: 300, type: !4678, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !681, retainedNodes: !4)
!5392 = !DILocalVariable(name: "c", arg: 1, scope: !5391, file: !5301, line: 300, type: !72)
!5393 = !DILocation(line: 300, column: 16, scope: !5391)
!5394 = !DILocation(line: 302, column: 11, scope: !5391)
!5395 = !DILocation(line: 302, column: 3, scope: !5391)
!5396 = !DILocation(line: 305, column: 7, scope: !5397)
!5397 = distinct !DILexicalBlock(scope: !5391, file: !5301, line: 303, column: 5)
!5398 = !DILocation(line: 307, column: 7, scope: !5397)
!5399 = !DILocation(line: 309, column: 1, scope: !5391)
!5400 = distinct !DISubprogram(name: "c_isupper", scope: !5301, file: !5301, line: 312, type: !4678, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !681, retainedNodes: !4)
!5401 = !DILocalVariable(name: "c", arg: 1, scope: !5400, file: !5301, line: 312, type: !72)
!5402 = !DILocation(line: 312, column: 16, scope: !5400)
!5403 = !DILocation(line: 314, column: 11, scope: !5400)
!5404 = !DILocation(line: 314, column: 3, scope: !5400)
!5405 = !DILocation(line: 317, column: 7, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5400, file: !5301, line: 315, column: 5)
!5407 = !DILocation(line: 319, column: 7, scope: !5406)
!5408 = !DILocation(line: 321, column: 1, scope: !5400)
!5409 = distinct !DISubprogram(name: "c_isxdigit", scope: !5301, file: !5301, line: 324, type: !4678, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !681, retainedNodes: !4)
!5410 = !DILocalVariable(name: "c", arg: 1, scope: !5409, file: !5301, line: 324, type: !72)
!5411 = !DILocation(line: 324, column: 17, scope: !5409)
!5412 = !DILocation(line: 326, column: 11, scope: !5409)
!5413 = !DILocation(line: 326, column: 3, scope: !5409)
!5414 = !DILocation(line: 330, column: 7, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5409, file: !5301, line: 327, column: 5)
!5416 = !DILocation(line: 332, column: 7, scope: !5415)
!5417 = !DILocation(line: 334, column: 1, scope: !5409)
!5418 = distinct !DISubprogram(name: "c_tolower", scope: !5301, file: !5301, line: 337, type: !5419, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !681, retainedNodes: !4)
!5419 = !DISubroutineType(types: !5420)
!5420 = !{!72, !72}
!5421 = !DILocalVariable(name: "c", arg: 1, scope: !5418, file: !5301, line: 337, type: !72)
!5422 = !DILocation(line: 337, column: 16, scope: !5418)
!5423 = !DILocation(line: 339, column: 11, scope: !5418)
!5424 = !DILocation(line: 339, column: 3, scope: !5418)
!5425 = !DILocation(line: 342, column: 14, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5418, file: !5301, line: 340, column: 5)
!5427 = !DILocation(line: 342, column: 16, scope: !5426)
!5428 = !DILocation(line: 342, column: 22, scope: !5426)
!5429 = !DILocation(line: 342, column: 7, scope: !5426)
!5430 = !DILocation(line: 344, column: 14, scope: !5426)
!5431 = !DILocation(line: 344, column: 7, scope: !5426)
!5432 = !DILocation(line: 346, column: 1, scope: !5418)
!5433 = distinct !DISubprogram(name: "c_toupper", scope: !5301, file: !5301, line: 349, type: !5419, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !681, retainedNodes: !4)
!5434 = !DILocalVariable(name: "c", arg: 1, scope: !5433, file: !5301, line: 349, type: !72)
!5435 = !DILocation(line: 349, column: 16, scope: !5433)
!5436 = !DILocation(line: 351, column: 11, scope: !5433)
!5437 = !DILocation(line: 351, column: 3, scope: !5433)
!5438 = !DILocation(line: 354, column: 14, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5433, file: !5301, line: 352, column: 5)
!5440 = !DILocation(line: 354, column: 16, scope: !5439)
!5441 = !DILocation(line: 354, column: 22, scope: !5439)
!5442 = !DILocation(line: 354, column: 7, scope: !5439)
!5443 = !DILocation(line: 356, column: 14, scope: !5439)
!5444 = !DILocation(line: 356, column: 7, scope: !5439)
!5445 = !DILocation(line: 358, column: 1, scope: !5433)
!5446 = distinct !DISubprogram(name: "getugroups", scope: !684, file: !684, line: 61, type: !5447, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !683, retainedNodes: !4)
!5447 = !DISubroutineType(types: !5448)
!5448 = !{!72, !72, !200, !6, !23}
!5449 = !DILocalVariable(name: "maxcount", arg: 1, scope: !5446, file: !684, line: 61, type: !72)
!5450 = !DILocation(line: 61, column: 17, scope: !5446)
!5451 = !DILocalVariable(name: "grouplist", arg: 2, scope: !5446, file: !684, line: 61, type: !200)
!5452 = !DILocation(line: 61, column: 34, scope: !5446)
!5453 = !DILocalVariable(name: "username", arg: 3, scope: !5446, file: !684, line: 61, type: !6)
!5454 = !DILocation(line: 61, column: 57, scope: !5446)
!5455 = !DILocalVariable(name: "gid", arg: 4, scope: !5446, file: !684, line: 62, type: !23)
!5456 = !DILocation(line: 62, column: 19, scope: !5446)
!5457 = !DILocalVariable(name: "count", scope: !5446, file: !684, line: 64, type: !72)
!5458 = !DILocation(line: 64, column: 7, scope: !5446)
!5459 = !DILocation(line: 66, column: 7, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5446, file: !684, line: 66, column: 7)
!5461 = !DILocation(line: 66, column: 11, scope: !5460)
!5462 = !DILocation(line: 66, column: 7, scope: !5446)
!5463 = !DILocation(line: 68, column: 11, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5465, file: !684, line: 68, column: 11)
!5465 = distinct !DILexicalBlock(scope: !5460, file: !684, line: 67, column: 5)
!5466 = !DILocation(line: 68, column: 20, scope: !5464)
!5467 = !DILocation(line: 68, column: 11, scope: !5465)
!5468 = !DILocation(line: 69, column: 28, scope: !5464)
!5469 = !DILocation(line: 69, column: 9, scope: !5464)
!5470 = !DILocation(line: 69, column: 19, scope: !5464)
!5471 = !DILocation(line: 69, column: 26, scope: !5464)
!5472 = !DILocation(line: 70, column: 7, scope: !5465)
!5473 = !DILocation(line: 71, column: 5, scope: !5465)
!5474 = !DILocation(line: 73, column: 3, scope: !5446)
!5475 = !DILocation(line: 74, column: 3, scope: !5446)
!5476 = !DILocalVariable(name: "cp", scope: !5477, file: !684, line: 76, type: !201)
!5477 = distinct !DILexicalBlock(scope: !5446, file: !684, line: 75, column: 5)
!5478 = !DILocation(line: 76, column: 14, scope: !5477)
!5479 = !DILocalVariable(name: "grp", scope: !5477, file: !684, line: 77, type: !5480)
!5480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5481, size: 64)
!5481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !1190, line: 42, size: 256, elements: !5482)
!5482 = !{!5483, !5484, !5485, !5486}
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !5481, file: !1190, line: 44, baseType: !9, size: 64)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !5481, file: !1190, line: 45, baseType: !9, size: 64, offset: 64)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !5481, file: !1190, line: 46, baseType: !24, size: 32, offset: 128)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !5481, file: !1190, line: 47, baseType: !201, size: 64, offset: 192)
!5487 = !DILocation(line: 77, column: 21, scope: !5477)
!5488 = !DILocation(line: 79, column: 7, scope: !5477)
!5489 = !DILocation(line: 79, column: 13, scope: !5477)
!5490 = !DILocation(line: 80, column: 13, scope: !5477)
!5491 = !DILocation(line: 80, column: 11, scope: !5477)
!5492 = !DILocation(line: 81, column: 11, scope: !5493)
!5493 = distinct !DILexicalBlock(scope: !5477, file: !684, line: 81, column: 11)
!5494 = !DILocation(line: 81, column: 15, scope: !5493)
!5495 = !DILocation(line: 81, column: 11, scope: !5477)
!5496 = !DILocation(line: 82, column: 9, scope: !5493)
!5497 = !DILocation(line: 84, column: 17, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !5477, file: !684, line: 84, column: 7)
!5499 = !DILocation(line: 84, column: 22, scope: !5498)
!5500 = !DILocation(line: 84, column: 15, scope: !5498)
!5501 = !DILocation(line: 84, column: 12, scope: !5498)
!5502 = !DILocation(line: 84, column: 31, scope: !5503)
!5503 = distinct !DILexicalBlock(scope: !5498, file: !684, line: 84, column: 7)
!5504 = !DILocation(line: 84, column: 30, scope: !5503)
!5505 = !DILocation(line: 84, column: 7, scope: !5498)
!5506 = !DILocalVariable(name: "n", scope: !5507, file: !684, line: 86, type: !72)
!5507 = distinct !DILexicalBlock(scope: !5503, file: !684, line: 85, column: 9)
!5508 = !DILocation(line: 86, column: 15, scope: !5507)
!5509 = !DILocation(line: 88, column: 18, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5507, file: !684, line: 88, column: 16)
!5511 = !DILocation(line: 88, column: 16, scope: !5507)
!5512 = !DILocation(line: 89, column: 13, scope: !5510)
!5513 = !DILocation(line: 92, column: 18, scope: !5514)
!5514 = distinct !DILexicalBlock(scope: !5507, file: !684, line: 92, column: 11)
!5515 = !DILocation(line: 92, column: 16, scope: !5514)
!5516 = !DILocation(line: 92, column: 23, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5514, file: !684, line: 92, column: 11)
!5518 = !DILocation(line: 92, column: 27, scope: !5517)
!5519 = !DILocation(line: 92, column: 25, scope: !5517)
!5520 = !DILocation(line: 92, column: 11, scope: !5514)
!5521 = !DILocation(line: 93, column: 17, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5517, file: !684, line: 93, column: 17)
!5523 = !DILocation(line: 93, column: 27, scope: !5522)
!5524 = !DILocation(line: 93, column: 30, scope: !5522)
!5525 = !DILocation(line: 93, column: 40, scope: !5522)
!5526 = !DILocation(line: 93, column: 46, scope: !5522)
!5527 = !DILocation(line: 93, column: 51, scope: !5522)
!5528 = !DILocation(line: 93, column: 43, scope: !5522)
!5529 = !DILocation(line: 93, column: 17, scope: !5517)
!5530 = !DILocation(line: 94, column: 15, scope: !5522)
!5531 = !DILocation(line: 92, column: 34, scope: !5517)
!5532 = !DILocation(line: 92, column: 11, scope: !5517)
!5533 = distinct !{!5533, !5520, !5534, !745}
!5534 = !DILocation(line: 94, column: 15, scope: !5514)
!5535 = !DILocation(line: 97, column: 15, scope: !5536)
!5536 = distinct !DILexicalBlock(scope: !5507, file: !684, line: 97, column: 15)
!5537 = !DILocation(line: 97, column: 20, scope: !5536)
!5538 = !DILocation(line: 97, column: 17, scope: !5536)
!5539 = !DILocation(line: 97, column: 15, scope: !5507)
!5540 = !DILocation(line: 99, column: 19, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5542, file: !684, line: 99, column: 19)
!5542 = distinct !DILexicalBlock(scope: !5536, file: !684, line: 98, column: 13)
!5543 = !DILocation(line: 99, column: 28, scope: !5541)
!5544 = !DILocation(line: 99, column: 19, scope: !5542)
!5545 = !DILocation(line: 101, column: 23, scope: !5546)
!5546 = distinct !DILexicalBlock(scope: !5547, file: !684, line: 101, column: 23)
!5547 = distinct !DILexicalBlock(scope: !5541, file: !684, line: 100, column: 17)
!5548 = !DILocation(line: 101, column: 32, scope: !5546)
!5549 = !DILocation(line: 101, column: 29, scope: !5546)
!5550 = !DILocation(line: 101, column: 23, scope: !5547)
!5551 = !DILocation(line: 102, column: 21, scope: !5546)
!5552 = !DILocation(line: 103, column: 38, scope: !5547)
!5553 = !DILocation(line: 103, column: 43, scope: !5547)
!5554 = !DILocation(line: 103, column: 19, scope: !5547)
!5555 = !DILocation(line: 103, column: 29, scope: !5547)
!5556 = !DILocation(line: 103, column: 36, scope: !5547)
!5557 = !DILocation(line: 104, column: 17, scope: !5547)
!5558 = !DILocation(line: 105, column: 19, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5542, file: !684, line: 105, column: 19)
!5560 = !DILocation(line: 105, column: 25, scope: !5559)
!5561 = !DILocation(line: 105, column: 19, scope: !5542)
!5562 = !DILocation(line: 107, column: 19, scope: !5563)
!5563 = distinct !DILexicalBlock(scope: !5559, file: !684, line: 106, column: 17)
!5564 = !DILocation(line: 107, column: 25, scope: !5563)
!5565 = !DILocation(line: 108, column: 19, scope: !5563)
!5566 = !DILocation(line: 110, column: 20, scope: !5542)
!5567 = !DILocation(line: 111, column: 13, scope: !5542)
!5568 = !DILocation(line: 112, column: 9, scope: !5507)
!5569 = !DILocation(line: 84, column: 35, scope: !5503)
!5570 = !DILocation(line: 84, column: 7, scope: !5503)
!5571 = distinct !{!5571, !5505, !5572, !745}
!5572 = !DILocation(line: 112, column: 9, scope: !5498)
!5573 = distinct !{!5573, !5475, !5574}
!5574 = !DILocation(line: 113, column: 5, scope: !5446)
!5575 = !DILocation(line: 115, column: 7, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5446, file: !684, line: 115, column: 7)
!5577 = !DILocation(line: 115, column: 13, scope: !5576)
!5578 = !DILocation(line: 115, column: 7, scope: !5446)
!5579 = !DILocation(line: 116, column: 11, scope: !5576)
!5580 = !DILocation(line: 116, column: 5, scope: !5576)
!5581 = !DILocation(line: 115, column: 16, scope: !5576)
!5582 = !DILabel(scope: !5446, name: "done", file: !684, line: 118)
!5583 = !DILocation(line: 118, column: 2, scope: !5446)
!5584 = !DILocalVariable(name: "saved_errno", scope: !5585, file: !684, line: 120, type: !72)
!5585 = distinct !DILexicalBlock(scope: !5446, file: !684, line: 119, column: 3)
!5586 = !DILocation(line: 120, column: 9, scope: !5585)
!5587 = !DILocation(line: 120, column: 23, scope: !5585)
!5588 = !DILocation(line: 121, column: 5, scope: !5585)
!5589 = !DILocation(line: 122, column: 13, scope: !5585)
!5590 = !DILocation(line: 122, column: 5, scope: !5585)
!5591 = !DILocation(line: 122, column: 11, scope: !5585)
!5592 = !DILocation(line: 125, column: 10, scope: !5446)
!5593 = !DILocation(line: 125, column: 3, scope: !5446)
