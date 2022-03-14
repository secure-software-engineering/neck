; ModuleID = 'dnsproxy.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.request = type { i16, %struct.sockaddr_in, i16, i8, %struct.event, %struct.request**, %struct.request* }
%struct.event = type { %struct.event_callback, %union.anon.0, i32, %struct.event_base*, %union.anon.2, i16, i16, %struct.timeval }
%struct.event_callback = type { %struct.anon, i16, i8, i8, %union.anon, i8* }
%struct.anon = type { %struct.event_callback*, %struct.event_callback** }
%union.anon = type { void (i32, i16, i8*)* }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.event*, %struct.event** }
%struct.event_base = type opaque
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.anon.1, %struct.timeval }
%struct.timeval = type { i64, i64 }
%struct.internal = type { i32, i32, %struct.internal* }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@authoritative_port = dso_local global i32 53, align 4, !dbg !0
@authoritative_timeout = dso_local global i32 10, align 4, !dbg !155
@recursive_port = dso_local global i32 53, align 4, !dbg !157
@recursive_timeout = dso_local global i32 90, align 4, !dbg !159
@stats_timeout = dso_local global i32 3600, align 4, !dbg !161
@port = dso_local global i32 53, align 4, !dbg !163
@authoritative = dso_local global i8* null, align 8, !dbg !165
@recursive = dso_local global i8* null, align 8, !dbg !172
@listenat = dso_local global i8* null, align 8, !dbg !170
@user = dso_local global i8* null, align 8, !dbg !174
@chrootdir = dso_local global i8* null, align 8, !dbg !168
@active_queries = dso_local global i64 0, align 8, !dbg !176
@all_queries = dso_local global i64 0, align 8, !dbg !179
@authoritative_queries = dso_local global i64 0, align 8, !dbg !181
@recursive_queries = dso_local global i64 0, align 8, !dbg !183
@removed_queries = dso_local global i64 0, align 8, !dbg !185
@dropped_queries = dso_local global i64 0, align 8, !dbg !187
@answered_queries = dso_local global i64 0, align 8, !dbg !189
@dropped_answers = dso_local global i64 0, align 8, !dbg !191
@late_answers = dso_local global i64 0, align 8, !dbg !193
@hash_collisions = dso_local global i64 0, align 8, !dbg !195
@.str = private unnamed_addr constant [21 x i8] c"exiting on signal %d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"/etc/dnsproxy.conf\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"c:dhV\00", align 1
@optarg = external dso_local global i8*, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"dnsproxy 1.17\0A\00", align 1
@.str.4 = private unnamed_addr constant [170 x i8] c"usage: dnsproxy [-c file] [-dhV]\0A\09-c file  Read configuration from file\0A\09-d       Detach and run as a daemon\0A\09-h       This help text\0A\09-V       Show version information\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"unable to parse configuration\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"8.8.8.8\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"authoritative= %s\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"No authoritative or recursive server defined\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@sock_query = internal global i32 0, align 4, !dbg !201
@.str.10 = private unnamed_addr constant [28 x i8] c"unable to create socket: %s\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"unable to bind socket: %s\00", align 1
@sock_answer = internal global i32 0, align 4, !dbg !203
@authoritative_addr = internal global %struct.sockaddr_in zeroinitializer, align 4, !dbg !197
@recursive_addr = internal global %struct.sockaddr_in zeroinitializer, align 4, !dbg !199
@.str.12 = private unnamed_addr constant [20 x i8] c"unable to daemonize\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"dnsproxy\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"unable to find user %s\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"unable to chroot to %s\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"unable to chdir\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"setgroups: %s\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"setresgid: %s\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"setresuid: %s\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"recvfrom failed: %s\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"answer too short\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"sendto failed: %s\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"query too short from %s\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"calloc: %s\00", align 1
@queryid = internal global i16 0, align 2, !dbg !205
@.str.26 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1.27 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@request_hash = internal global [1024 x %struct.request*] zeroinitializer, align 16, !dbg !207
@.str.34 = private unnamed_addr constant [11 x i8] c"calloc: %s\00", align 1
@internals = internal global %struct.internal* null, align 8, !dbg !308
@log_on_syslog = internal global i32 0, align 4, !dbg !319
@.str.39 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1.47 = private unnamed_addr constant [4 x i8] c" \09=\00", align 1
@.str.2.48 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.3.49 = private unnamed_addr constant [14 x i8] c"authoritative\00", align 1
@.str.4.50 = private unnamed_addr constant [22 x i8] c"authoritative-timeout\00", align 1
@.str.5.51 = private unnamed_addr constant [19 x i8] c"authoritative-port\00", align 1
@.str.6.52 = private unnamed_addr constant [10 x i8] c"recursive\00", align 1
@.str.7.53 = private unnamed_addr constant [18 x i8] c"recursive-timeout\00", align 1
@.str.8.54 = private unnamed_addr constant [15 x i8] c"recursive-port\00", align 1
@.str.9.55 = private unnamed_addr constant [11 x i8] c"statistics\00", align 1
@.str.10.56 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.11.57 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.12.58 = private unnamed_addr constant [7 x i8] c"chroot\00", align 1
@.str.13.59 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.14.60 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.15.61 = private unnamed_addr constant [21 x i8] c"Unable to parse '%s'\00", align 1
@tv = internal global %struct.timeval zeroinitializer, align 8, !dbg !324
@timeout.64 = internal global %struct.event zeroinitializer, align 8, !dbg !329
@.str.65 = private unnamed_addr constant [16 x i8] c"evtimer_add: %s\00", align 1
@.str.1.66 = private unnamed_addr constant [14 x i8] c"event_add: %s\00", align 1
@.str.2.67 = private unnamed_addr constant [45 x i8] c"ActiveQr AuthorQr RecursQr AllQuery Answered\00", align 1
@.str.3.68 = private unnamed_addr constant [25 x i8] c"%8ld %8ld %8ld %8ld %8ld\00", align 1
@.str.4.69 = private unnamed_addr constant [45 x i8] c"TimeoutQ DroppedQ DroppedA LateAnsw HashColl\00", align 1
@.str.9001 = private unnamed_addr constant [11 x i8] c"psr.source\00", section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @signal_handler(i32 %0, i16 signext %1, i8* %2) #0 !dbg !410 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !411, metadata !DIExpression()), !dbg !412
  store i16 %1, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !413, metadata !DIExpression()), !dbg !414
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !415, metadata !DIExpression()), !dbg !416
  %7 = call i32 @event_loopexit(%struct.timeval* null), !dbg !417
  %8 = load i32, i32* %4, align 4, !dbg !418
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %8), !dbg !419
  ret void, !dbg !420
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @event_loopexit(%struct.timeval*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @klee_dump_memory() #0 !dbg !421 {
  ret void, !dbg !424
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 !dbg !425 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.passwd*, align 8
  %8 = alloca %struct.sockaddr_in, align 4
  %9 = alloca %struct.event, align 8
  %10 = alloca %struct.event, align 8
  %11 = alloca %struct.event, align 8
  %12 = alloca %struct.event, align 8
  %13 = alloca %struct.event, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !429, metadata !DIExpression()), !dbg !430
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !431, metadata !DIExpression()), !dbg !432
  call void @llvm.dbg.declare(metadata i32* %6, metadata !433, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.declare(metadata %struct.passwd** %7, metadata !435, metadata !DIExpression()), !dbg !449
  store %struct.passwd* null, %struct.passwd** %7, align 8, !dbg !449
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %8, metadata !450, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.declare(metadata %struct.event* %9, metadata !452, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.declare(metadata %struct.event* %10, metadata !454, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.declare(metadata %struct.event* %11, metadata !456, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.declare(metadata %struct.event* %12, metadata !458, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.declare(metadata %struct.event* %13, metadata !460, metadata !DIExpression()), !dbg !461
  call void @llvm.dbg.declare(metadata i8** %14, metadata !462, metadata !DIExpression()), !dbg !465
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8, !dbg !465
  call void @llvm.dbg.declare(metadata i32* %15, metadata !466, metadata !DIExpression()), !dbg !467
  store i32 0, i32* %15, align 4, !dbg !467
  br label %17, !dbg !468

17:                                               ; preds = %34, %2
  %18 = load i32, i32* %4, align 4, !dbg !469
  %19 = load i8**, i8*** %5, align 8, !dbg !470
  %20 = call i32 @getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #11, !dbg !471
  store i32 %20, i32* %6, align 4, !dbg !472
  %21 = icmp ne i32 %20, -1, !dbg !473
  br i1 %21, label %22, label %35, !dbg !468

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4, !dbg !474
  switch i32 %23, label %31 [
    i32 99, label %24
    i32 100, label %26
    i32 86, label %27
    i32 104, label %30
  ], !dbg !476

24:                                               ; preds = %22
  %25 = load i8*, i8** @optarg, align 8, !dbg !477
  store i8* %25, i8** %14, align 8, !dbg !479
  br label %34, !dbg !480

26:                                               ; preds = %22
  store i32 1, i32* %15, align 4, !dbg !481
  br label %34, !dbg !482

27:                                               ; preds = %22
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !483
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)), !dbg !484
  call void @exit(i32 0) #12, !dbg !485
  unreachable, !dbg !485

30:                                               ; preds = %22
  br label %31, !dbg !485

31:                                               ; preds = %22, %30
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !486
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([170 x i8], [170 x i8]* @.str.4, i64 0, i64 0)), !dbg !487
  call void @exit(i32 1) #12, !dbg !488
  unreachable, !dbg !488

34:                                               ; preds = %26, %24
  br label %17, !dbg !468, !llvm.loop !489

35:                                               ; preds = %17
  %36 = load i8*, i8** %14, align 8, !dbg !492
  %37 = call i32 @parse(i8* %36), !dbg !494
  %38 = icmp ne i32 %37, 0, !dbg !494
  br i1 %38, label %40, label %39, !dbg !495

39:                                               ; preds = %35
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0)), !dbg !496
  br label %40, !dbg !496

40:                                               ; preds = %39, %35
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** @authoritative, align 8, !dbg !497
  call void @klee_dump_memory(), !dbg !498
  %41 = load i8*, i8** @authoritative, align 8, !dbg !499
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %41), !dbg !500
  %43 = load i8*, i8** @authoritative, align 8, !dbg !501
  %44 = icmp ne i8* %43, null, !dbg !501
  br i1 %44, label %45, label %48, !dbg !503

45:                                               ; preds = %40
  %46 = load i8*, i8** @recursive, align 8, !dbg !504
  %47 = icmp ne i8* %46, null, !dbg !504
  br i1 %47, label %49, label %48, !dbg !505

48:                                               ; preds = %45, %40
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0)), !dbg !506
  br label %49, !dbg !506

49:                                               ; preds = %48, %45
  %50 = load i8*, i8** @listenat, align 8, !dbg !507
  %51 = icmp ne i8* %50, null, !dbg !507
  br i1 %51, label %54, label %52, !dbg !509

52:                                               ; preds = %49
  %53 = call noalias i8* @strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !510
  store i8* %53, i8** @listenat, align 8, !dbg !511
  br label %54, !dbg !512

54:                                               ; preds = %52, %49
  %55 = call i32 @socket(i32 2, i32 2, i32 0) #11, !dbg !513
  store i32 %55, i32* @sock_query, align 4, !dbg !515
  %56 = icmp eq i32 %55, -1, !dbg !516
  br i1 %56, label %57, label %61, !dbg !517

57:                                               ; preds = %54
  %58 = call i32* @__errno_location() #13, !dbg !518
  %59 = load i32, i32* %58, align 4, !dbg !518
  %60 = call i8* @strerror(i32 %59) #11, !dbg !519
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8* %60), !dbg !520
  br label %61, !dbg !520

61:                                               ; preds = %57, %54
  %62 = bitcast %struct.sockaddr_in* %8 to i8*, !dbg !521
  call void @llvm.memset.p0i8.i64(i8* align 4 %62, i8 0, i64 16, i1 false), !dbg !521
  %63 = load i8*, i8** @listenat, align 8, !dbg !522
  %64 = call i32 @inet_addr(i8* %63) #11, !dbg !523
  %65 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2, !dbg !524
  %66 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %65, i32 0, i32 0, !dbg !525
  store i32 %64, i32* %66, align 4, !dbg !526
  %67 = load i32, i32* @port, align 4, !dbg !527
  %68 = trunc i32 %67 to i16, !dbg !527
  %69 = call zeroext i16 @htons(i16 zeroext %68) #13, !dbg !528
  %70 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1, !dbg !529
  store i16 %69, i16* %70, align 2, !dbg !530
  %71 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0, !dbg !531
  store i16 2, i16* %71, align 4, !dbg !532
  %72 = load i32, i32* @sock_query, align 4, !dbg !533
  %73 = bitcast %union.__CONST_SOCKADDR_ARG* %16 to %struct.sockaddr**, !dbg !535
  %74 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*, !dbg !535
  store %struct.sockaddr* %74, %struct.sockaddr** %73, align 8, !dbg !535
  %75 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %16, i32 0, i32 0, !dbg !536
  %76 = load %struct.sockaddr*, %struct.sockaddr** %75, align 8, !dbg !536
  %77 = call i32 @bind(i32 %72, %struct.sockaddr* %76, i32 16) #11, !dbg !536
  %78 = icmp ne i32 %77, 0, !dbg !537
  br i1 %78, label %79, label %83, !dbg !538

79:                                               ; preds = %61
  %80 = call i32* @__errno_location() #13, !dbg !539
  %81 = load i32, i32* %80, align 4, !dbg !539
  %82 = call i8* @strerror(i32 %81) #11, !dbg !540
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i8* %82), !dbg !541
  br label %83, !dbg !541

83:                                               ; preds = %79, %61
  %84 = call i32 @socket(i32 2, i32 2, i32 0) #11, !dbg !542
  store i32 %84, i32* @sock_answer, align 4, !dbg !544
  %85 = icmp eq i32 %84, -1, !dbg !545
  br i1 %85, label %86, label %90, !dbg !546

86:                                               ; preds = %83
  %87 = call i32* @__errno_location() #13, !dbg !547
  %88 = load i32, i32* %87, align 4, !dbg !547
  %89 = call i8* @strerror(i32 %88) #11, !dbg !548
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8* %89), !dbg !549
  br label %90, !dbg !549

90:                                               ; preds = %86, %83
  call void @llvm.memset.p0i8.i64(i8* align 4 bitcast (%struct.sockaddr_in* @authoritative_addr to i8*), i8 0, i64 16, i1 false), !dbg !550
  %91 = load i8*, i8** @authoritative, align 8, !dbg !551
  %92 = call i32 @inet_addr(i8* %91) #11, !dbg !552
  store i32 %92, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @authoritative_addr, i32 0, i32 2, i32 0), align 4, !dbg !553
  %93 = load i32, i32* @authoritative_port, align 4, !dbg !554
  %94 = trunc i32 %93 to i16, !dbg !554
  %95 = call zeroext i16 @htons(i16 zeroext %94) #13, !dbg !555
  store i16 %95, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @authoritative_addr, i32 0, i32 1), align 2, !dbg !556
  store i16 2, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @authoritative_addr, i32 0, i32 0), align 4, !dbg !557
  call void @llvm.memset.p0i8.i64(i8* align 4 bitcast (%struct.sockaddr_in* @recursive_addr to i8*), i8 0, i64 16, i1 false), !dbg !558
  %96 = load i8*, i8** @recursive, align 8, !dbg !559
  %97 = call i32 @inet_addr(i8* %96) #11, !dbg !560
  store i32 %97, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @recursive_addr, i32 0, i32 2, i32 0), align 4, !dbg !561
  %98 = load i32, i32* @recursive_port, align 4, !dbg !562
  %99 = trunc i32 %98 to i16, !dbg !562
  %100 = call zeroext i16 @htons(i16 zeroext %99) #13, !dbg !563
  store i16 %100, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @recursive_addr, i32 0, i32 1), align 2, !dbg !564
  store i16 2, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @recursive_addr, i32 0, i32 0), align 4, !dbg !565
  %101 = load i32, i32* %15, align 4, !dbg !566
  %102 = icmp ne i32 %101, 0, !dbg !566
  br i1 %102, label %103, label %108, !dbg !568

103:                                              ; preds = %90
  %104 = call i32 @daemon(i32 0, i32 0) #11, !dbg !569
  %105 = icmp eq i32 %104, -1, !dbg !572
  br i1 %105, label %106, label %107, !dbg !573

106:                                              ; preds = %103
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0)), !dbg !574
  br label %107, !dbg !574

107:                                              ; preds = %106, %103
  call void @log_syslog(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)), !dbg !575
  br label %108, !dbg !576

108:                                              ; preds = %107, %90
  %109 = load i8*, i8** @user, align 8, !dbg !577
  %110 = icmp ne i8* %109, null, !dbg !577
  br i1 %110, label %111, label %119, !dbg !579

111:                                              ; preds = %108
  %112 = load i8*, i8** @user, align 8, !dbg !580
  %113 = call %struct.passwd* @getpwnam(i8* %112), !dbg !582
  store %struct.passwd* %113, %struct.passwd** %7, align 8, !dbg !583
  %114 = load %struct.passwd*, %struct.passwd** %7, align 8, !dbg !584
  %115 = icmp ne %struct.passwd* %114, null, !dbg !584
  br i1 %115, label %118, label %116, !dbg !586

116:                                              ; preds = %111
  %117 = load i8*, i8** @user, align 8, !dbg !587
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i8* %117), !dbg !588
  br label %118, !dbg !588

118:                                              ; preds = %116, %111
  br label %119, !dbg !589

119:                                              ; preds = %118, %108
  %120 = load i8*, i8** @chrootdir, align 8, !dbg !590
  %121 = icmp ne i8* %120, null, !dbg !590
  br i1 %121, label %122, label %133, !dbg !592

122:                                              ; preds = %119
  %123 = load i8*, i8** @chrootdir, align 8, !dbg !593
  %124 = call i32 @chroot(i8* %123) #11, !dbg !596
  %125 = icmp eq i32 %124, -1, !dbg !597
  br i1 %125, label %126, label %128, !dbg !598

126:                                              ; preds = %122
  %127 = load i8*, i8** @chrootdir, align 8, !dbg !599
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i8* %127), !dbg !600
  br label %128, !dbg !600

128:                                              ; preds = %126, %122
  %129 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #11, !dbg !601
  %130 = icmp eq i32 %129, -1, !dbg !603
  br i1 %130, label %131, label %132, !dbg !604

131:                                              ; preds = %128
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0)), !dbg !605
  br label %132, !dbg !605

132:                                              ; preds = %131, %128
  br label %133, !dbg !606

133:                                              ; preds = %132, %119
  %134 = load i8*, i8** @user, align 8, !dbg !607
  %135 = icmp ne i8* %134, null, !dbg !607
  br i1 %135, label %136, label %178, !dbg !609

136:                                              ; preds = %133
  %137 = load %struct.passwd*, %struct.passwd** %7, align 8, !dbg !610
  %138 = getelementptr inbounds %struct.passwd, %struct.passwd* %137, i32 0, i32 3, !dbg !613
  %139 = call i32 @setgroups(i64 1, i32* %138) #11, !dbg !614
  %140 = icmp slt i32 %139, 0, !dbg !615
  br i1 %140, label %141, label %145, !dbg !616

141:                                              ; preds = %136
  %142 = call i32* @__errno_location() #13, !dbg !617
  %143 = load i32, i32* %142, align 4, !dbg !617
  %144 = call i8* @strerror(i32 %143) #11, !dbg !618
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %144), !dbg !619
  br label %145, !dbg !619

145:                                              ; preds = %141, %136
  %146 = load %struct.passwd*, %struct.passwd** %7, align 8, !dbg !620
  %147 = getelementptr inbounds %struct.passwd, %struct.passwd* %146, i32 0, i32 3, !dbg !622
  %148 = load i32, i32* %147, align 4, !dbg !622
  %149 = load %struct.passwd*, %struct.passwd** %7, align 8, !dbg !623
  %150 = getelementptr inbounds %struct.passwd, %struct.passwd* %149, i32 0, i32 3, !dbg !624
  %151 = load i32, i32* %150, align 4, !dbg !624
  %152 = load %struct.passwd*, %struct.passwd** %7, align 8, !dbg !625
  %153 = getelementptr inbounds %struct.passwd, %struct.passwd* %152, i32 0, i32 3, !dbg !626
  %154 = load i32, i32* %153, align 4, !dbg !626
  %155 = call i32 @setresgid(i32 %148, i32 %151, i32 %154) #11, !dbg !627
  %156 = icmp slt i32 %155, 0, !dbg !628
  br i1 %156, label %157, label %161, !dbg !629

157:                                              ; preds = %145
  %158 = call i32* @__errno_location() #13, !dbg !630
  %159 = load i32, i32* %158, align 4, !dbg !630
  %160 = call i8* @strerror(i32 %159) #11, !dbg !631
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* %160), !dbg !632
  br label %161, !dbg !632

161:                                              ; preds = %157, %145
  %162 = load %struct.passwd*, %struct.passwd** %7, align 8, !dbg !633
  %163 = getelementptr inbounds %struct.passwd, %struct.passwd* %162, i32 0, i32 2, !dbg !635
  %164 = load i32, i32* %163, align 8, !dbg !635
  %165 = load %struct.passwd*, %struct.passwd** %7, align 8, !dbg !636
  %166 = getelementptr inbounds %struct.passwd, %struct.passwd* %165, i32 0, i32 2, !dbg !637
  %167 = load i32, i32* %166, align 8, !dbg !637
  %168 = load %struct.passwd*, %struct.passwd** %7, align 8, !dbg !638
  %169 = getelementptr inbounds %struct.passwd, %struct.passwd* %168, i32 0, i32 2, !dbg !639
  %170 = load i32, i32* %169, align 8, !dbg !639
  %171 = call i32 @setresuid(i32 %164, i32 %167, i32 %170) #11, !dbg !640
  %172 = icmp slt i32 %171, 0, !dbg !641
  br i1 %172, label %173, label %177, !dbg !642

173:                                              ; preds = %161
  %174 = call i32* @__errno_location() #13, !dbg !643
  %175 = load i32, i32* %174, align 4, !dbg !643
  %176 = call i8* @strerror(i32 %175) #11, !dbg !644
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* %176), !dbg !645
  br label %177, !dbg !645

177:                                              ; preds = %173, %161
  br label %178, !dbg !646

178:                                              ; preds = %177, %133
  %179 = call %struct.event_base* @event_init(), !dbg !647
  call void @event_set(%struct.event* %11, i32 2, i16 signext 24, void (i32, i16, i8*)* @signal_handler, i8* null), !dbg !648
  call void @event_set(%struct.event* %12, i32 15, i16 signext 24, void (i32, i16, i8*)* @signal_handler, i8* null), !dbg !649
  call void @event_set(%struct.event* %13, i32 1, i16 signext 24, void (i32, i16, i8*)* @signal_handler, i8* null), !dbg !650
  %180 = call i32 @event_add(%struct.event* %11, %struct.timeval* null), !dbg !651
  %181 = call i32 @event_add(%struct.event* %12, %struct.timeval* null), !dbg !652
  %182 = call i32 @event_add(%struct.event* %13, %struct.timeval* null), !dbg !653
  call void @statistics_start(), !dbg !654
  %183 = load i32, i32* @sock_query, align 4, !dbg !655
  %184 = bitcast %struct.event* %9 to i8*, !dbg !656
  call void @event_set(%struct.event* %9, i32 %183, i16 signext 2, void (i32, i16, i8*)* @do_query, i8* %184), !dbg !657
  %185 = load i32, i32* @sock_answer, align 4, !dbg !658
  %186 = bitcast %struct.event* %10 to i8*, !dbg !659
  call void @event_set(%struct.event* %10, i32 %185, i16 signext 2, void (i32, i16, i8*)* @do_answer, i8* %186), !dbg !660
  %187 = call i32 @event_add(%struct.event* %9, %struct.timeval* null), !dbg !661
  %188 = call i32 @event_add(%struct.event* %10, %struct.timeval* null), !dbg !662
  %189 = call i32 @event_dispatch(), !dbg !663
  ret i32 0, !dbg !664
}

; Function Attrs: nounwind
declare dso_local i32 @getopt(i32, i8**, i8*) #3

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @strdup(i8*) #3

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #5

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8*) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #5

; Function Attrs: nounwind
declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #3

declare dso_local %struct.passwd* @getpwnam(i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @chroot(i8*) #3

; Function Attrs: nounwind
declare dso_local i32 @chdir(i8*) #3

; Function Attrs: nounwind
declare dso_local i32 @setgroups(i64, i32*) #3

; Function Attrs: nounwind
declare dso_local i32 @setresgid(i32, i32, i32) #3

; Function Attrs: nounwind
declare dso_local i32 @setresuid(i32, i32, i32) #3

declare dso_local %struct.event_base* @event_init() #2

declare dso_local void @event_set(%struct.event*, i32, i16 signext, void (i32, i16, i8*)*, i8*) #2

declare dso_local i32 @event_add(%struct.event*, %struct.timeval*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_query(i32 %0, i16 signext %1, i8* %2) #0 !dbg !665 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca [4096 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.request*, align 8
  %12 = alloca %struct.timeval, align 8
  %13 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %14 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %15 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !666, metadata !DIExpression()), !dbg !667
  store i16 %1, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !668, metadata !DIExpression()), !dbg !669
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !670, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.declare(metadata [4096 x i8]* %7, metadata !672, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.declare(metadata i32* %8, metadata !677, metadata !DIExpression()), !dbg !678
  store i32 0, i32* %8, align 4, !dbg !678
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %9, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.declare(metadata i32* %10, metadata !681, metadata !DIExpression()), !dbg !682
  store i32 16, i32* %10, align 4, !dbg !682
  call void @llvm.dbg.declare(metadata %struct.request** %11, metadata !683, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.declare(metadata %struct.timeval* %12, metadata !685, metadata !DIExpression()), !dbg !686
  %16 = load i64, i64* @all_queries, align 8, !dbg !687
  %17 = add i64 %16, 1, !dbg !687
  store i64 %17, i64* @all_queries, align 8, !dbg !687
  %18 = load i8*, i8** %6, align 8, !dbg !688
  %19 = bitcast i8* %18 to %struct.event*, !dbg !689
  %20 = call i32 @event_add(%struct.event* %19, %struct.timeval* null), !dbg !690
  %21 = load i32, i32* %4, align 4, !dbg !691
  %22 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0, !dbg !693
  %23 = bitcast %union.__CONST_SOCKADDR_ARG* %13 to %struct.sockaddr**, !dbg !694
  %24 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*, !dbg !694
  store %struct.sockaddr* %24, %struct.sockaddr** %23, align 8, !dbg !694
  %25 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %13, i32 0, i32 0, !dbg !695
  %26 = load %struct.sockaddr*, %struct.sockaddr** %25, align 8, !dbg !695
  %27 = call i64 @recvfrom(i32 %21, i8* %22, i64 4096, i32 0, %struct.sockaddr* %26, i32* %10), !dbg !695
  %28 = trunc i64 %27 to i32, !dbg !695
  store i32 %28, i32* %8, align 4, !dbg !696
  %29 = icmp eq i32 %28, -1, !dbg !697
  br i1 %29, label %30, label %36, !dbg !698

30:                                               ; preds = %3
  %31 = call i32* @__errno_location() #13, !dbg !699
  %32 = load i32, i32* %31, align 4, !dbg !699
  %33 = call i8* @strerror(i32 %32) #11, !dbg !701
  call void (i8*, ...) @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i8* %33), !dbg !702
  %34 = load i64, i64* @dropped_queries, align 8, !dbg !703
  %35 = add i64 %34, 1, !dbg !703
  store i64 %35, i64* @dropped_queries, align 8, !dbg !703
  br label %158, !dbg !704

36:                                               ; preds = %3
  %37 = load i32, i32* %8, align 4, !dbg !705
  %38 = icmp slt i32 %37, 12, !dbg !707
  br i1 %38, label %39, label %46, !dbg !708

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2, !dbg !709
  %41 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %40, i32 0, i32 0, !dbg !711
  %42 = load i32, i32* %41, align 4, !dbg !711
  %43 = call i8* @inet_ntoa(i32 %42) #11, !dbg !711
  call void (i8*, ...) @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0), i8* %43), !dbg !712
  %44 = load i64, i64* @dropped_queries, align 8, !dbg !713
  %45 = add i64 %44, 1, !dbg !713
  store i64 %45, i64* @dropped_queries, align 8, !dbg !713
  br label %158, !dbg !714

46:                                               ; preds = %36
  %47 = call noalias i8* @calloc(i64 1, i64 168) #11, !dbg !715
  %48 = bitcast i8* %47 to %struct.request*, !dbg !715
  store %struct.request* %48, %struct.request** %11, align 8, !dbg !717
  %49 = icmp eq %struct.request* %48, null, !dbg !718
  br i1 %49, label %50, label %56, !dbg !719

50:                                               ; preds = %46
  %51 = call i32* @__errno_location() #13, !dbg !720
  %52 = load i32, i32* %51, align 4, !dbg !720
  %53 = call i8* @strerror(i32 %52) #11, !dbg !722
  call void (i8*, ...) @error(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i8* %53), !dbg !723
  %54 = load i64, i64* @dropped_queries, align 8, !dbg !724
  %55 = add i64 %54, 1, !dbg !724
  store i64 %55, i64* @dropped_queries, align 8, !dbg !724
  br label %158, !dbg !725

56:                                               ; preds = %46
  %57 = load i16, i16* @queryid, align 2, !dbg !726
  %58 = add i16 %57, 1, !dbg !726
  store i16 %58, i16* @queryid, align 2, !dbg !726
  %59 = load %struct.request*, %struct.request** %11, align 8, !dbg !727
  %60 = getelementptr inbounds %struct.request, %struct.request* %59, i32 0, i32 0, !dbg !728
  store i16 %57, i16* %60, align 8, !dbg !729
  %61 = load %struct.request*, %struct.request** %11, align 8, !dbg !730
  %62 = getelementptr inbounds %struct.request, %struct.request* %61, i32 0, i32 1, !dbg !731
  %63 = bitcast %struct.sockaddr_in* %62 to i8*, !dbg !732
  %64 = bitcast %struct.sockaddr_in* %9 to i8*, !dbg !732
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 16, i1 false), !dbg !732
  %65 = load %struct.request*, %struct.request** %11, align 8, !dbg !733
  %66 = getelementptr inbounds %struct.request, %struct.request* %65, i32 0, i32 2, !dbg !734
  %67 = bitcast i16* %66 to i8*, !dbg !735
  %68 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0, !dbg !736
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 16 %68, i64 2, i1 false), !dbg !735
  %69 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2, !dbg !737
  %70 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %69, i32 0, i32 0, !dbg !739
  %71 = load i32, i32* %70, align 4, !dbg !739
  %72 = call i32 @is_internal(i32 %71), !dbg !739
  %73 = icmp ne i32 %72, 0, !dbg !739
  br i1 %73, label %74, label %83, !dbg !740

74:                                               ; preds = %56
  %75 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0, !dbg !741
  %76 = getelementptr inbounds i8, i8* %75, i64 2, !dbg !741
  %77 = load i8, i8* %76, align 1, !dbg !741
  %78 = sext i8 %77 to i32, !dbg !741
  %79 = and i32 %78, 1, !dbg !741
  %80 = trunc i32 %79 to i8, !dbg !741
  %81 = load %struct.request*, %struct.request** %11, align 8, !dbg !743
  %82 = getelementptr inbounds %struct.request, %struct.request* %81, i32 0, i32 3, !dbg !744
  store i8 %80, i8* %82, align 2, !dbg !745
  br label %86, !dbg !746

83:                                               ; preds = %56
  %84 = load %struct.request*, %struct.request** %11, align 8, !dbg !747
  %85 = getelementptr inbounds %struct.request, %struct.request* %84, i32 0, i32 3, !dbg !749
  store i8 0, i8* %85, align 2, !dbg !750
  br label %86

86:                                               ; preds = %83, %74
  %87 = load %struct.request*, %struct.request** %11, align 8, !dbg !751
  call void @hash_add_request(%struct.request* %87), !dbg !752
  %88 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0, !dbg !753
  %89 = load %struct.request*, %struct.request** %11, align 8, !dbg !754
  %90 = getelementptr inbounds %struct.request, %struct.request* %89, i32 0, i32 0, !dbg !755
  %91 = bitcast i16* %90 to i8*, !dbg !756
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %88, i8* align 8 %91, i64 2, i1 false), !dbg !756
  %92 = load %struct.request*, %struct.request** %11, align 8, !dbg !757
  %93 = getelementptr inbounds %struct.request, %struct.request* %92, i32 0, i32 3, !dbg !759
  %94 = load i8, i8* %93, align 2, !dbg !759
  %95 = icmp ne i8 %94, 0, !dbg !757
  br i1 %95, label %96, label %127, !dbg !760

96:                                               ; preds = %86
  %97 = load %struct.request*, %struct.request** %11, align 8, !dbg !761
  %98 = getelementptr inbounds %struct.request, %struct.request* %97, i32 0, i32 4, !dbg !763
  %99 = load %struct.request*, %struct.request** %11, align 8, !dbg !764
  %100 = bitcast %struct.request* %99 to i8*, !dbg !764
  call void @event_set(%struct.event* %98, i32 -1, i16 signext 0, void (i32, i16, i8*)* @timeout, i8* %100), !dbg !765
  %101 = load i32, i32* @recursive_timeout, align 4, !dbg !766
  %102 = zext i32 %101 to i64, !dbg !766
  %103 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0, !dbg !767
  store i64 %102, i64* %103, align 8, !dbg !768
  %104 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1, !dbg !769
  store i64 0, i64* %104, align 8, !dbg !770
  %105 = load %struct.request*, %struct.request** %11, align 8, !dbg !771
  %106 = getelementptr inbounds %struct.request, %struct.request* %105, i32 0, i32 4, !dbg !772
  %107 = call i32 @event_add(%struct.event* %106, %struct.timeval* %12), !dbg !773
  %108 = load i32, i32* @sock_answer, align 4, !dbg !774
  %109 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0, !dbg !776
  %110 = load i32, i32* %8, align 4, !dbg !777
  %111 = zext i32 %110 to i64, !dbg !778
  %112 = bitcast %union.__CONST_SOCKADDR_ARG* %14 to %struct.sockaddr**, !dbg !779
  store %struct.sockaddr* bitcast (%struct.sockaddr_in* @recursive_addr to %struct.sockaddr*), %struct.sockaddr** %112, align 8, !dbg !779
  %113 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %14, i32 0, i32 0, !dbg !780
  %114 = load %struct.sockaddr*, %struct.sockaddr** %113, align 8, !dbg !780
  %115 = call i64 @sendto(i32 %108, i8* %109, i64 %111, i32 0, %struct.sockaddr* %114, i32 16), !dbg !780
  %116 = trunc i64 %115 to i32, !dbg !780
  store i32 %116, i32* %8, align 4, !dbg !781
  %117 = icmp eq i32 %116, -1, !dbg !782
  br i1 %117, label %118, label %124, !dbg !783

118:                                              ; preds = %96
  %119 = call i32* @__errno_location() #13, !dbg !784
  %120 = load i32, i32* %119, align 4, !dbg !784
  %121 = call i8* @strerror(i32 %120) #11, !dbg !786
  call void (i8*, ...) @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i8* %121), !dbg !787
  %122 = load i64, i64* @dropped_queries, align 8, !dbg !788
  %123 = add i64 %122, 1, !dbg !788
  store i64 %123, i64* @dropped_queries, align 8, !dbg !788
  br label %158, !dbg !789

124:                                              ; preds = %96
  %125 = load i64, i64* @recursive_queries, align 8, !dbg !790
  %126 = add i64 %125, 1, !dbg !790
  store i64 %126, i64* @recursive_queries, align 8, !dbg !790
  br label %158, !dbg !791

127:                                              ; preds = %86
  %128 = load %struct.request*, %struct.request** %11, align 8, !dbg !792
  %129 = getelementptr inbounds %struct.request, %struct.request* %128, i32 0, i32 4, !dbg !794
  %130 = load %struct.request*, %struct.request** %11, align 8, !dbg !795
  %131 = bitcast %struct.request* %130 to i8*, !dbg !795
  call void @event_set(%struct.event* %129, i32 -1, i16 signext 0, void (i32, i16, i8*)* @timeout, i8* %131), !dbg !796
  %132 = load i32, i32* @authoritative_timeout, align 4, !dbg !797
  %133 = zext i32 %132 to i64, !dbg !797
  %134 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0, !dbg !798
  store i64 %133, i64* %134, align 8, !dbg !799
  %135 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1, !dbg !800
  store i64 0, i64* %135, align 8, !dbg !801
  %136 = load %struct.request*, %struct.request** %11, align 8, !dbg !802
  %137 = getelementptr inbounds %struct.request, %struct.request* %136, i32 0, i32 4, !dbg !803
  %138 = call i32 @event_add(%struct.event* %137, %struct.timeval* %12), !dbg !804
  %139 = load i32, i32* @sock_answer, align 4, !dbg !805
  %140 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0, !dbg !807
  %141 = load i32, i32* %8, align 4, !dbg !808
  %142 = zext i32 %141 to i64, !dbg !809
  %143 = bitcast %union.__CONST_SOCKADDR_ARG* %15 to %struct.sockaddr**, !dbg !810
  store %struct.sockaddr* bitcast (%struct.sockaddr_in* @authoritative_addr to %struct.sockaddr*), %struct.sockaddr** %143, align 8, !dbg !810
  %144 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %15, i32 0, i32 0, !dbg !811
  %145 = load %struct.sockaddr*, %struct.sockaddr** %144, align 8, !dbg !811
  %146 = call i64 @sendto(i32 %139, i8* %140, i64 %142, i32 0, %struct.sockaddr* %145, i32 16), !dbg !811
  %147 = trunc i64 %146 to i32, !dbg !811
  store i32 %147, i32* %8, align 4, !dbg !812
  %148 = icmp eq i32 %147, -1, !dbg !813
  br i1 %148, label %149, label %155, !dbg !814

149:                                              ; preds = %127
  %150 = call i32* @__errno_location() #13, !dbg !815
  %151 = load i32, i32* %150, align 4, !dbg !815
  %152 = call i8* @strerror(i32 %151) #11, !dbg !817
  call void (i8*, ...) @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i8* %152), !dbg !818
  %153 = load i64, i64* @dropped_queries, align 8, !dbg !819
  %154 = add i64 %153, 1, !dbg !819
  store i64 %154, i64* @dropped_queries, align 8, !dbg !819
  br label %158, !dbg !820

155:                                              ; preds = %127
  %156 = load i64, i64* @authoritative_queries, align 8, !dbg !821
  %157 = add i64 %156, 1, !dbg !821
  store i64 %157, i64* @authoritative_queries, align 8, !dbg !821
  br label %158

158:                                              ; preds = %30, %39, %50, %118, %149, %155, %124
  ret void, !dbg !822
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_answer(i32 %0, i16 signext %1, i8* %2) #0 !dbg !823 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca [4096 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.request*, align 8
  %10 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %11 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !824, metadata !DIExpression()), !dbg !825
  store i16 %1, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !826, metadata !DIExpression()), !dbg !827
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !828, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.declare(metadata [4096 x i8]* %7, metadata !830, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.declare(metadata i32* %8, metadata !832, metadata !DIExpression()), !dbg !833
  store i32 0, i32* %8, align 4, !dbg !833
  call void @llvm.dbg.declare(metadata %struct.request** %9, metadata !834, metadata !DIExpression()), !dbg !835
  store %struct.request* null, %struct.request** %9, align 8, !dbg !835
  %12 = load i8*, i8** %6, align 8, !dbg !836
  %13 = bitcast i8* %12 to %struct.event*, !dbg !837
  %14 = call i32 @event_add(%struct.event* %13, %struct.timeval* null), !dbg !838
  %15 = load i32, i32* %4, align 4, !dbg !839
  %16 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0, !dbg !841
  %17 = bitcast %union.__CONST_SOCKADDR_ARG* %10 to %struct.sockaddr**, !dbg !842
  store %struct.sockaddr* null, %struct.sockaddr** %17, align 8, !dbg !842
  %18 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %10, i32 0, i32 0, !dbg !843
  %19 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8, !dbg !843
  %20 = call i64 @recvfrom(i32 %15, i8* %16, i64 4096, i32 0, %struct.sockaddr* %19, i32* null), !dbg !843
  %21 = trunc i64 %20 to i32, !dbg !843
  store i32 %21, i32* %8, align 4, !dbg !844
  %22 = icmp eq i32 %21, -1, !dbg !845
  br i1 %22, label %23, label %29, !dbg !846

23:                                               ; preds = %3
  %24 = call i32* @__errno_location() #13, !dbg !847
  %25 = load i32, i32* %24, align 4, !dbg !847
  %26 = call i8* @strerror(i32 %25) #11, !dbg !849
  call void (i8*, ...) @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i8* %26), !dbg !850
  %27 = load i64, i64* @dropped_answers, align 8, !dbg !851
  %28 = add i64 %27, 1, !dbg !851
  store i64 %28, i64* @dropped_answers, align 8, !dbg !851
  br label %76, !dbg !852

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4, !dbg !853
  %31 = icmp slt i32 %30, 12, !dbg !855
  br i1 %31, label %32, label %35, !dbg !856

32:                                               ; preds = %29
  call void (i8*, ...) @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0)), !dbg !857
  %33 = load i64, i64* @dropped_answers, align 8, !dbg !859
  %34 = add i64 %33, 1, !dbg !859
  store i64 %34, i64* @dropped_answers, align 8, !dbg !859
  br label %76, !dbg !860

35:                                               ; preds = %29
  %36 = bitcast [4096 x i8]* %7 to i16*, !dbg !861
  %37 = load i16, i16* %36, align 16, !dbg !861
  %38 = call %struct.request* @hash_find_request(i16 zeroext %37), !dbg !863
  store %struct.request* %38, %struct.request** %9, align 8, !dbg !864
  %39 = icmp eq %struct.request* %38, null, !dbg !865
  br i1 %39, label %40, label %43, !dbg !866

40:                                               ; preds = %35
  %41 = load i64, i64* @late_answers, align 8, !dbg !867
  %42 = add i64 %41, 1, !dbg !867
  store i64 %42, i64* @late_answers, align 8, !dbg !867
  br label %76, !dbg !869

43:                                               ; preds = %35
  %44 = load %struct.request*, %struct.request** %9, align 8, !dbg !870
  %45 = getelementptr inbounds %struct.request, %struct.request* %44, i32 0, i32 4, !dbg !871
  %46 = call i32 @event_del(%struct.event* %45), !dbg !872
  %47 = load %struct.request*, %struct.request** %9, align 8, !dbg !873
  call void @hash_remove_request(%struct.request* %47), !dbg !874
  %48 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0, !dbg !875
  %49 = load %struct.request*, %struct.request** %9, align 8, !dbg !876
  %50 = getelementptr inbounds %struct.request, %struct.request* %49, i32 0, i32 2, !dbg !877
  %51 = bitcast i16* %50 to i8*, !dbg !878
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %48, i8* align 4 %51, i64 2, i1 false), !dbg !878
  %52 = load i32, i32* @sock_query, align 4, !dbg !879
  %53 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0, !dbg !881
  %54 = load i32, i32* %8, align 4, !dbg !882
  %55 = zext i32 %54 to i64, !dbg !883
  %56 = bitcast %union.__CONST_SOCKADDR_ARG* %11 to %struct.sockaddr**, !dbg !884
  %57 = load %struct.request*, %struct.request** %9, align 8, !dbg !885
  %58 = getelementptr inbounds %struct.request, %struct.request* %57, i32 0, i32 1, !dbg !886
  %59 = bitcast %struct.sockaddr_in* %58 to %struct.sockaddr*, !dbg !884
  store %struct.sockaddr* %59, %struct.sockaddr** %56, align 8, !dbg !884
  %60 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %11, i32 0, i32 0, !dbg !887
  %61 = load %struct.sockaddr*, %struct.sockaddr** %60, align 8, !dbg !887
  %62 = call i64 @sendto(i32 %52, i8* %53, i64 %55, i32 0, %struct.sockaddr* %61, i32 16), !dbg !887
  %63 = icmp eq i64 %62, -1, !dbg !888
  br i1 %63, label %64, label %70, !dbg !889

64:                                               ; preds = %43
  %65 = call i32* @__errno_location() #13, !dbg !890
  %66 = load i32, i32* %65, align 4, !dbg !890
  %67 = call i8* @strerror(i32 %66) #11, !dbg !892
  call void (i8*, ...) @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i8* %67), !dbg !893
  %68 = load i64, i64* @dropped_answers, align 8, !dbg !894
  %69 = add i64 %68, 1, !dbg !894
  store i64 %69, i64* @dropped_answers, align 8, !dbg !894
  br label %73, !dbg !895

70:                                               ; preds = %43
  %71 = load i64, i64* @answered_queries, align 8, !dbg !896
  %72 = add i64 %71, 1, !dbg !896
  store i64 %72, i64* @answered_queries, align 8, !dbg !896
  br label %73

73:                                               ; preds = %70, %64
  %74 = load %struct.request*, %struct.request** %9, align 8, !dbg !897
  %75 = bitcast %struct.request* %74 to i8*, !dbg !897
  call void @free(i8* %75) #11, !dbg !898
  br label %76, !dbg !899

76:                                               ; preds = %73, %40, %32, %23
  ret void, !dbg !899
}

declare dso_local i32 @event_dispatch() #2

declare dso_local i64 @recvfrom(i32, i8*, i64, i32, %struct.sockaddr*, i32*) #2

declare dso_local i32 @event_del(%struct.event*) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

declare dso_local i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @inet_ntoa(i32) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timeout(i32 %0, i16 signext %1, i8* %2) #0 !dbg !900 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !901, metadata !DIExpression()), !dbg !902
  store i16 %1, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !903, metadata !DIExpression()), !dbg !904
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !905, metadata !DIExpression()), !dbg !906
  %7 = load i8*, i8** %6, align 8, !dbg !907
  %8 = bitcast i8* %7 to %struct.request*, !dbg !908
  call void @hash_remove_request(%struct.request* %8), !dbg !909
  %9 = load i8*, i8** %6, align 8, !dbg !910
  %10 = bitcast i8* %9 to %struct.request*, !dbg !911
  %11 = bitcast %struct.request* %10 to i8*, !dbg !911
  call void @free(i8* %11) #11, !dbg !912
  %12 = load i64, i64* @removed_queries, align 8, !dbg !913
  %13 = add i64 %12, 1, !dbg !913
  store i64 %13, i64* @removed_queries, align 8, !dbg !913
  ret void, !dbg !914
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @daemon(i32 %0, i32 %1) #0 !dbg !915 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !918, metadata !DIExpression()), !dbg !919
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !920, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.declare(metadata i32* %6, metadata !922, metadata !DIExpression()), !dbg !923
  %7 = call i32 @fork() #11, !dbg !924
  switch i32 %7, label %10 [
    i32 -1, label %8
    i32 0, label %9
  ], !dbg !925

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !926
  br label %43, !dbg !926

9:                                                ; preds = %2
  br label %11, !dbg !928

10:                                               ; preds = %2
  call void @_exit(i32 0) #14, !dbg !929
  unreachable, !dbg !929

11:                                               ; preds = %9
  %12 = call i32 @setsid() #11, !dbg !930
  %13 = icmp eq i32 %12, -1, !dbg !932
  br i1 %13, label %14, label %15, !dbg !933

14:                                               ; preds = %11
  store i32 -1, i32* %3, align 4, !dbg !934
  br label %43, !dbg !934

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4, !dbg !935
  %17 = icmp ne i32 %16, 0, !dbg !935
  br i1 %17, label %23, label %18, !dbg !937

18:                                               ; preds = %15
  %19 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #11, !dbg !938
  %20 = icmp ne i32 %19, 0, !dbg !938
  br i1 %20, label %21, label %22, !dbg !940

21:                                               ; preds = %18
  store i32 -1, i32* %3, align 4, !dbg !941
  br label %43, !dbg !941

22:                                               ; preds = %18
  br label %23, !dbg !942

23:                                               ; preds = %22, %15
  %24 = load i32, i32* %5, align 4, !dbg !943
  %25 = icmp ne i32 %24, 0, !dbg !943
  br i1 %25, label %42, label %26, !dbg !945

26:                                               ; preds = %23
  %27 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.27, i64 0, i64 0), i32 2, i32 0), !dbg !946
  store i32 %27, i32* %6, align 4, !dbg !947
  %28 = icmp ne i32 %27, -1, !dbg !948
  br i1 %28, label %29, label %42, !dbg !949

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4, !dbg !950
  %31 = call i32 @dup2(i32 %30, i32 0) #11, !dbg !952
  %32 = load i32, i32* %6, align 4, !dbg !953
  %33 = call i32 @dup2(i32 %32, i32 1) #11, !dbg !954
  %34 = load i32, i32* %6, align 4, !dbg !955
  %35 = call i32 @dup2(i32 %34, i32 2) #11, !dbg !956
  %36 = load i32, i32* %6, align 4, !dbg !957
  %37 = icmp sgt i32 %36, 2, !dbg !959
  br i1 %37, label %38, label %41, !dbg !960

38:                                               ; preds = %29
  %39 = load i32, i32* %6, align 4, !dbg !961
  %40 = call i32 @close(i32 %39), !dbg !962
  br label %41, !dbg !963

41:                                               ; preds = %38, %29
  br label %42, !dbg !964

42:                                               ; preds = %41, %26, %23
  store i32 0, i32* %3, align 4, !dbg !965
  br label %43, !dbg !965

43:                                               ; preds = %42, %21, %14, %8
  %44 = load i32, i32* %3, align 4, !dbg !966
  ret i32 %44, !dbg !966
}

; Function Attrs: nounwind
declare dso_local i32 @fork() #3

; Function Attrs: noreturn
declare dso_local void @_exit(i32) #8

; Function Attrs: nounwind
declare dso_local i32 @setsid() #3

declare dso_local i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @dup2(i32, i32) #3

declare dso_local i32 @close(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hash_add_request(%struct.request* %0) #0 !dbg !967 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.request**, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.request** %2, metadata !970, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.declare(metadata %struct.request*** %3, metadata !972, metadata !DIExpression()), !dbg !973
  %4 = load %struct.request*, %struct.request** %2, align 8, !dbg !974
  %5 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 0, !dbg !974
  %6 = load i16, i16* %5, align 8, !dbg !974
  %7 = zext i16 %6 to i32, !dbg !974
  %8 = and i32 %7, 1023, !dbg !974
  %9 = sext i32 %8 to i64, !dbg !975
  %10 = getelementptr inbounds [1024 x %struct.request*], [1024 x %struct.request*]* @request_hash, i64 0, i64 %9, !dbg !975
  store %struct.request** %10, %struct.request*** %3, align 8, !dbg !973
  %11 = load %struct.request**, %struct.request*** %3, align 8, !dbg !976
  %12 = load %struct.request*, %struct.request** %11, align 8, !dbg !978
  %13 = load %struct.request*, %struct.request** %2, align 8, !dbg !979
  %14 = getelementptr inbounds %struct.request, %struct.request* %13, i32 0, i32 6, !dbg !980
  store %struct.request* %12, %struct.request** %14, align 8, !dbg !981
  %15 = icmp ne %struct.request* %12, null, !dbg !982
  br i1 %15, label %16, label %24, !dbg !983

16:                                               ; preds = %1
  %17 = load %struct.request*, %struct.request** %2, align 8, !dbg !984
  %18 = getelementptr inbounds %struct.request, %struct.request* %17, i32 0, i32 6, !dbg !986
  %19 = load %struct.request**, %struct.request*** %3, align 8, !dbg !987
  %20 = load %struct.request*, %struct.request** %19, align 8, !dbg !988
  %21 = getelementptr inbounds %struct.request, %struct.request* %20, i32 0, i32 5, !dbg !989
  store %struct.request** %18, %struct.request*** %21, align 8, !dbg !990
  %22 = load i64, i64* @hash_collisions, align 8, !dbg !991
  %23 = add i64 %22, 1, !dbg !991
  store i64 %23, i64* @hash_collisions, align 8, !dbg !991
  br label %24, !dbg !992

24:                                               ; preds = %16, %1
  %25 = load %struct.request*, %struct.request** %2, align 8, !dbg !993
  %26 = load %struct.request**, %struct.request*** %3, align 8, !dbg !994
  store %struct.request* %25, %struct.request** %26, align 8, !dbg !995
  %27 = load %struct.request**, %struct.request*** %3, align 8, !dbg !996
  %28 = load %struct.request*, %struct.request** %2, align 8, !dbg !997
  %29 = getelementptr inbounds %struct.request, %struct.request* %28, i32 0, i32 5, !dbg !998
  store %struct.request** %27, %struct.request*** %29, align 8, !dbg !999
  %30 = load i64, i64* @active_queries, align 8, !dbg !1000
  %31 = add i64 %30, 1, !dbg !1000
  store i64 %31, i64* @active_queries, align 8, !dbg !1000
  ret void, !dbg !1001
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hash_remove_request(%struct.request* %0) #0 !dbg !1002 {
  %2 = alloca %struct.request*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.request** %2, metadata !1003, metadata !DIExpression()), !dbg !1004
  %3 = load %struct.request*, %struct.request** %2, align 8, !dbg !1005
  %4 = getelementptr inbounds %struct.request, %struct.request* %3, i32 0, i32 5, !dbg !1007
  %5 = load %struct.request**, %struct.request*** %4, align 8, !dbg !1007
  %6 = icmp ne %struct.request** %5, null, !dbg !1005
  br i1 %6, label %8, label %7, !dbg !1008

7:                                                ; preds = %1
  br label %32, !dbg !1009

8:                                                ; preds = %1
  %9 = load %struct.request*, %struct.request** %2, align 8, !dbg !1010
  %10 = getelementptr inbounds %struct.request, %struct.request* %9, i32 0, i32 6, !dbg !1012
  %11 = load %struct.request*, %struct.request** %10, align 8, !dbg !1012
  %12 = icmp ne %struct.request* %11, null, !dbg !1010
  br i1 %12, label %13, label %21, !dbg !1013

13:                                               ; preds = %8
  %14 = load %struct.request*, %struct.request** %2, align 8, !dbg !1014
  %15 = getelementptr inbounds %struct.request, %struct.request* %14, i32 0, i32 5, !dbg !1015
  %16 = load %struct.request**, %struct.request*** %15, align 8, !dbg !1015
  %17 = load %struct.request*, %struct.request** %2, align 8, !dbg !1016
  %18 = getelementptr inbounds %struct.request, %struct.request* %17, i32 0, i32 6, !dbg !1017
  %19 = load %struct.request*, %struct.request** %18, align 8, !dbg !1017
  %20 = getelementptr inbounds %struct.request, %struct.request* %19, i32 0, i32 5, !dbg !1018
  store %struct.request** %16, %struct.request*** %20, align 8, !dbg !1019
  br label %21, !dbg !1016

21:                                               ; preds = %13, %8
  %22 = load %struct.request*, %struct.request** %2, align 8, !dbg !1020
  %23 = getelementptr inbounds %struct.request, %struct.request* %22, i32 0, i32 6, !dbg !1021
  %24 = load %struct.request*, %struct.request** %23, align 8, !dbg !1021
  %25 = load %struct.request*, %struct.request** %2, align 8, !dbg !1022
  %26 = getelementptr inbounds %struct.request, %struct.request* %25, i32 0, i32 5, !dbg !1023
  %27 = load %struct.request**, %struct.request*** %26, align 8, !dbg !1023
  store %struct.request* %24, %struct.request** %27, align 8, !dbg !1024
  %28 = load %struct.request*, %struct.request** %2, align 8, !dbg !1025
  %29 = getelementptr inbounds %struct.request, %struct.request* %28, i32 0, i32 5, !dbg !1026
  store %struct.request** null, %struct.request*** %29, align 8, !dbg !1027
  %30 = load i64, i64* @active_queries, align 8, !dbg !1028
  %31 = add i64 %30, -1, !dbg !1028
  store i64 %31, i64* @active_queries, align 8, !dbg !1028
  br label %32, !dbg !1029

32:                                               ; preds = %21, %7
  ret void, !dbg !1029
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.request* @hash_find_request(i16 zeroext %0) #0 !dbg !1030 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.request*, align 8
  store i16 %0, i16* %2, align 2
  call void @llvm.dbg.declare(metadata i16* %2, metadata !1033, metadata !DIExpression()), !dbg !1034
  call void @llvm.dbg.declare(metadata %struct.request** %3, metadata !1035, metadata !DIExpression()), !dbg !1036
  %4 = load i16, i16* %2, align 2, !dbg !1037
  %5 = zext i16 %4 to i32, !dbg !1037
  %6 = and i32 %5, 1023, !dbg !1037
  %7 = sext i32 %6 to i64, !dbg !1038
  %8 = getelementptr inbounds [1024 x %struct.request*], [1024 x %struct.request*]* @request_hash, i64 0, i64 %7, !dbg !1038
  %9 = load %struct.request*, %struct.request** %8, align 8, !dbg !1038
  store %struct.request* %9, %struct.request** %3, align 8, !dbg !1036
  br label %10, !dbg !1039

10:                                               ; preds = %23, %1
  %11 = load %struct.request*, %struct.request** %3, align 8, !dbg !1040
  %12 = icmp ne %struct.request* %11, null, !dbg !1040
  br i1 %12, label %14, label %13, !dbg !1045

13:                                               ; preds = %10
  br label %27, !dbg !1046

14:                                               ; preds = %10
  %15 = load %struct.request*, %struct.request** %3, align 8, !dbg !1047
  %16 = getelementptr inbounds %struct.request, %struct.request* %15, i32 0, i32 0, !dbg !1049
  %17 = load i16, i16* %16, align 8, !dbg !1049
  %18 = zext i16 %17 to i32, !dbg !1047
  %19 = load i16, i16* %2, align 2, !dbg !1050
  %20 = zext i16 %19 to i32, !dbg !1050
  %21 = icmp eq i32 %18, %20, !dbg !1051
  br i1 %21, label %22, label %23, !dbg !1052

22:                                               ; preds = %14
  br label %27, !dbg !1053

23:                                               ; preds = %14
  %24 = load %struct.request*, %struct.request** %3, align 8, !dbg !1054
  %25 = getelementptr inbounds %struct.request, %struct.request* %24, i32 0, i32 6, !dbg !1055
  %26 = load %struct.request*, %struct.request** %25, align 8, !dbg !1055
  store %struct.request* %26, %struct.request** %3, align 8, !dbg !1056
  br label %10, !dbg !1057, !llvm.loop !1058

27:                                               ; preds = %22, %13
  %28 = load %struct.request*, %struct.request** %3, align 8, !dbg !1061
  ret %struct.request* %28, !dbg !1062
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_internal(i8* %0) #0 !dbg !1063 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.in_addr, align 4
  %7 = alloca %struct.internal*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1066, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1068, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1070, metadata !DIExpression()), !dbg !1071
  call void @llvm.dbg.declare(metadata %struct.in_addr* %6, metadata !1072, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.declare(metadata %struct.internal** %7, metadata !1077, metadata !DIExpression()), !dbg !1078
  %8 = load i8*, i8** %3, align 8, !dbg !1079
  %9 = icmp eq i8* %8, null, !dbg !1081
  br i1 %9, label %10, label %11, !dbg !1082

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !1083
  br label %59, !dbg !1083

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8, !dbg !1084
  %13 = call i8* @strchr(i8* %12, i32 47) #15, !dbg !1086
  store i8* %13, i8** %4, align 8, !dbg !1087
  %14 = icmp ne i8* %13, null, !dbg !1088
  br i1 %14, label %15, label %22, !dbg !1089

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8, !dbg !1090
  %17 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !1092
  %18 = call i64 @strtol(i8* %17, i8** null, i32 10) #11, !dbg !1093
  %19 = srem i64 %18, 32, !dbg !1094
  %20 = trunc i64 %19 to i32, !dbg !1093
  store i32 %20, i32* %5, align 4, !dbg !1095
  %21 = load i8*, i8** %4, align 8, !dbg !1096
  store i8 0, i8* %21, align 1, !dbg !1097
  br label %23, !dbg !1098

22:                                               ; preds = %11
  store i32 32, i32* %5, align 4, !dbg !1099
  br label %23

23:                                               ; preds = %22, %15
  %24 = load i8*, i8** %3, align 8, !dbg !1101
  %25 = bitcast %struct.in_addr* %6 to i8*, !dbg !1103
  %26 = call i32 @inet_pton(i32 2, i8* %24, i8* %25) #11, !dbg !1104
  %27 = icmp ne i32 %26, 1, !dbg !1105
  br i1 %27, label %28, label %29, !dbg !1106

28:                                               ; preds = %23
  store i32 0, i32* %2, align 4, !dbg !1107
  br label %59, !dbg !1107

29:                                               ; preds = %23
  %30 = call noalias i8* @calloc(i64 1, i64 16) #11, !dbg !1108
  %31 = bitcast i8* %30 to %struct.internal*, !dbg !1108
  store %struct.internal* %31, %struct.internal** %7, align 8, !dbg !1110
  %32 = icmp eq %struct.internal* %31, null, !dbg !1111
  br i1 %32, label %33, label %37, !dbg !1112

33:                                               ; preds = %29
  %34 = call i32* @__errno_location() #13, !dbg !1113
  %35 = load i32, i32* %34, align 4, !dbg !1113
  %36 = call i8* @strerror(i32 %35) #11, !dbg !1114
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8* %36), !dbg !1115
  br label %37, !dbg !1115

37:                                               ; preds = %33, %29
  %38 = load %struct.internal*, %struct.internal** %7, align 8, !dbg !1116
  %39 = getelementptr inbounds %struct.internal, %struct.internal* %38, i32 0, i32 0, !dbg !1117
  %40 = bitcast i32* %39 to i8*, !dbg !1118
  %41 = bitcast %struct.in_addr* %6 to i8*, !dbg !1118
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 4 %41, i64 4, i1 false), !dbg !1118
  %42 = load i32, i32* %5, align 4, !dbg !1119
  %43 = sub nsw i32 32, %42, !dbg !1120
  %44 = shl i32 -1, %43, !dbg !1121
  %45 = call i32 @htonl(i32 %44) #13, !dbg !1122
  %46 = load %struct.internal*, %struct.internal** %7, align 8, !dbg !1123
  %47 = getelementptr inbounds %struct.internal, %struct.internal* %46, i32 0, i32 1, !dbg !1124
  store i32 %45, i32* %47, align 4, !dbg !1125
  %48 = load %struct.internal*, %struct.internal** %7, align 8, !dbg !1126
  %49 = getelementptr inbounds %struct.internal, %struct.internal* %48, i32 0, i32 1, !dbg !1127
  %50 = load i32, i32* %49, align 4, !dbg !1127
  %51 = load %struct.internal*, %struct.internal** %7, align 8, !dbg !1128
  %52 = getelementptr inbounds %struct.internal, %struct.internal* %51, i32 0, i32 0, !dbg !1129
  %53 = load i32, i32* %52, align 8, !dbg !1130
  %54 = and i32 %53, %50, !dbg !1130
  store i32 %54, i32* %52, align 8, !dbg !1130
  %55 = load %struct.internal*, %struct.internal** @internals, align 8, !dbg !1131
  %56 = load %struct.internal*, %struct.internal** %7, align 8, !dbg !1132
  %57 = getelementptr inbounds %struct.internal, %struct.internal* %56, i32 0, i32 2, !dbg !1133
  store %struct.internal* %55, %struct.internal** %57, align 8, !dbg !1134
  %58 = load %struct.internal*, %struct.internal** %7, align 8, !dbg !1135
  store %struct.internal* %58, %struct.internal** @internals, align 8, !dbg !1136
  store i32 1, i32* %2, align 4, !dbg !1137
  br label %59, !dbg !1137

59:                                               ; preds = %37, %28, %10
  %60 = load i32, i32* %2, align 4, !dbg !1138
  ret i32 %60, !dbg !1138
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #9

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8*, i8**, i32) #3

; Function Attrs: nounwind
declare dso_local i32 @inet_pton(i32, i8*, i8*) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local i32 @htonl(i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_internal(i32 %0) #0 !dbg !1139 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.in_addr, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.internal*, align 8
  %6 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata %struct.in_addr* %3, metadata !1142, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1144, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.declare(metadata %struct.internal** %5, metadata !1146, metadata !DIExpression()), !dbg !1147
  %7 = bitcast i32* %4 to i8*, !dbg !1148
  %8 = bitcast %struct.in_addr* %3 to i8*, !dbg !1148
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 4, i1 false), !dbg !1148
  %9 = load %struct.internal*, %struct.internal** @internals, align 8, !dbg !1149
  store %struct.internal* %9, %struct.internal** %5, align 8, !dbg !1151
  br label %10, !dbg !1152

10:                                               ; preds = %25, %1
  %11 = load %struct.internal*, %struct.internal** %5, align 8, !dbg !1153
  %12 = icmp ne %struct.internal* %11, null, !dbg !1155
  br i1 %12, label %13, label %29, !dbg !1156

13:                                               ; preds = %10
  %14 = load %struct.internal*, %struct.internal** %5, align 8, !dbg !1157
  %15 = getelementptr inbounds %struct.internal, %struct.internal* %14, i32 0, i32 0, !dbg !1160
  %16 = load i32, i32* %15, align 8, !dbg !1160
  %17 = load i32, i32* %4, align 4, !dbg !1161
  %18 = load %struct.internal*, %struct.internal** %5, align 8, !dbg !1162
  %19 = getelementptr inbounds %struct.internal, %struct.internal* %18, i32 0, i32 1, !dbg !1163
  %20 = load i32, i32* %19, align 4, !dbg !1163
  %21 = and i32 %17, %20, !dbg !1164
  %22 = icmp eq i32 %16, %21, !dbg !1165
  br i1 %22, label %23, label %24, !dbg !1166

23:                                               ; preds = %13
  store i32 1, i32* %2, align 4, !dbg !1167
  br label %30, !dbg !1167

24:                                               ; preds = %13
  br label %25, !dbg !1168

25:                                               ; preds = %24
  %26 = load %struct.internal*, %struct.internal** %5, align 8, !dbg !1169
  %27 = getelementptr inbounds %struct.internal, %struct.internal* %26, i32 0, i32 2, !dbg !1170
  %28 = load %struct.internal*, %struct.internal** %27, align 8, !dbg !1170
  store %struct.internal* %28, %struct.internal** %5, align 8, !dbg !1171
  br label %10, !dbg !1172, !llvm.loop !1173

29:                                               ; preds = %10
  store i32 0, i32* %2, align 4, !dbg !1175
  br label %30, !dbg !1175

30:                                               ; preds = %29, %23
  %31 = load i32, i32* %2, align 4, !dbg !1176
  ret i32 %31, !dbg !1176
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_syslog(i8* %0) #0 !dbg !1177 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1180, metadata !DIExpression()), !dbg !1181
  %3 = load i8*, i8** %2, align 8, !dbg !1182
  call void @openlog(i8* %3, i32 8, i32 24), !dbg !1183
  %4 = load i32, i32* @log_on_syslog, align 4, !dbg !1184
  %5 = add nsw i32 %4, 1, !dbg !1184
  store i32 %5, i32* @log_on_syslog, align 4, !dbg !1184
  ret void, !dbg !1185
}

declare dso_local void @openlog(i8*, i32, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @info(i8* %0, ...) #0 !dbg !1186 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1189, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !1191, metadata !DIExpression()), !dbg !1206
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !1207
  %5 = bitcast %struct.__va_list_tag* %4 to i8*, !dbg !1207
  call void @llvm.va_start(i8* %5), !dbg !1207
  %6 = load i8*, i8** %2, align 8, !dbg !1208
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !1209
  call void @log_printf(i32 6, i8* %6, %struct.__va_list_tag* %7), !dbg !1210
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !1211
  %9 = bitcast %struct.__va_list_tag* %8 to i8*, !dbg !1211
  call void @llvm.va_end(i8* %9), !dbg !1211
  ret void, !dbg !1212
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #10

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_printf(i32 %0, i8* %1, %struct.__va_list_tag* %2) #0 !dbg !1213 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__va_list_tag*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1217, metadata !DIExpression()), !dbg !1218
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1219, metadata !DIExpression()), !dbg !1220
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %6, metadata !1221, metadata !DIExpression()), !dbg !1222
  %7 = load i32, i32* @log_on_syslog, align 4, !dbg !1223
  %8 = icmp ne i32 %7, 0, !dbg !1223
  br i1 %8, label %9, label %13, !dbg !1225

9:                                                ; preds = %3
  %10 = load i32, i32* %4, align 4, !dbg !1226
  %11 = load i8*, i8** %5, align 8, !dbg !1227
  %12 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8, !dbg !1228
  call void @vsyslog(i32 %10, i8* %11, %struct.__va_list_tag* %12), !dbg !1229
  br label %25, !dbg !1229

13:                                               ; preds = %3
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1230
  %15 = load i8*, i8** %5, align 8, !dbg !1232
  %16 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8, !dbg !1233
  %17 = call i32 @vfprintf(%struct._IO_FILE* %14, i8* %15, %struct.__va_list_tag* %16), !dbg !1234
  %18 = load i8*, i8** %5, align 8, !dbg !1235
  %19 = call i8* @strchr(i8* %18, i32 10) #15, !dbg !1237
  %20 = icmp eq i8* %19, null, !dbg !1238
  br i1 %20, label %21, label %24, !dbg !1239

21:                                               ; preds = %13
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1240
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0)), !dbg !1241
  br label %24, !dbg !1241

24:                                               ; preds = %21, %13
  br label %25

25:                                               ; preds = %24, %9
  ret void, !dbg !1242
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #10

declare dso_local void @vsyslog(i32, i8*, %struct.__va_list_tag*) #2

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i8* %0, ...) #0 !dbg !1243 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1244, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !1246, metadata !DIExpression()), !dbg !1247
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !1248
  %5 = bitcast %struct.__va_list_tag* %4 to i8*, !dbg !1248
  call void @llvm.va_start(i8* %5), !dbg !1248
  %6 = load i8*, i8** %2, align 8, !dbg !1249
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !1250
  call void @log_printf(i32 3, i8* %6, %struct.__va_list_tag* %7), !dbg !1251
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !1252
  %9 = bitcast %struct.__va_list_tag* %8 to i8*, !dbg !1252
  call void @llvm.va_end(i8* %9), !dbg !1252
  ret void, !dbg !1253
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fatal(i8* %0, ...) #0 !dbg !1254 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1255, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !1257, metadata !DIExpression()), !dbg !1258
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !1259
  %5 = bitcast %struct.__va_list_tag* %4 to i8*, !dbg !1259
  call void @llvm.va_start(i8* %5), !dbg !1259
  %6 = load i8*, i8** %2, align 8, !dbg !1260
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !1261
  call void @log_printf(i32 3, i8* %6, %struct.__va_list_tag* %7), !dbg !1262
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !1263
  %9 = bitcast %struct.__va_list_tag* %8 to i8*, !dbg !1263
  call void @llvm.va_end(i8* %9), !dbg !1263
  call void @exit(i32 1) #12, !dbg !1264
  unreachable, !dbg !1264
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse(i8* %0) #0 !dbg !1265 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1268, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !1270, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1325, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1328, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1330, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1332, metadata !DIExpression()), !dbg !1333
  %Data1 = bitcast [1024 x i8]* %5 to i8*
  call void @llvm.var.annotation(i8* %Data1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9001, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9001, i32 11, i8* null)
  %9 = load i8*, i8** %3, align 8, !dbg !1334
  %10 = call %struct._IO_FILE* @fopen(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0)), !dbg !1336
  store %struct._IO_FILE* %10, %struct._IO_FILE** %4, align 8, !dbg !1337
  %11 = icmp eq %struct._IO_FILE* %10, null, !dbg !1338
  br i1 %11, label %12, label %13, !dbg !1339

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !1340
  br label %130, !dbg !1340

13:                                               ; preds = %1
  br label %14, !dbg !1341

14:                                               ; preds = %125, %122, %115, %108, %100, %93, %85, %77, %69, %62, %54, %46, %39, %34, %13
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1342
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1343
  %17 = call i8* @fgets(i8* %15, i32 1024, %struct._IO_FILE* %16), !dbg !1344
  %18 = icmp ne i8* %17, null, !dbg !1345
  br i1 %18, label %19, label %127, !dbg !1341

19:                                               ; preds = %14
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1346
  %21 = call i8* @strchr(i8* %20, i32 35) #15, !dbg !1349
  store i8* %21, i8** %6, align 8, !dbg !1350
  %22 = icmp ne i8* %21, null, !dbg !1351
  br i1 %22, label %23, label %25, !dbg !1352

23:                                               ; preds = %19
  %24 = load i8*, i8** %6, align 8, !dbg !1353
  store i8 0, i8* %24, align 1, !dbg !1354
  br label %25, !dbg !1355

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1356
  %27 = call i8* @strtok(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.47, i64 0, i64 0)) #11, !dbg !1357
  store i8* %27, i8** %7, align 8, !dbg !1358
  %28 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.48, i64 0, i64 0)) #11, !dbg !1359
  store i8* %28, i8** %8, align 8, !dbg !1360
  %29 = load i8*, i8** %7, align 8, !dbg !1361
  %30 = icmp ne i8* %29, null, !dbg !1361
  br i1 %30, label %31, label %34, !dbg !1363

31:                                               ; preds = %25
  %32 = load i8*, i8** %8, align 8, !dbg !1364
  %33 = icmp ne i8* %32, null, !dbg !1364
  br i1 %33, label %35, label %34, !dbg !1365

34:                                               ; preds = %31, %25
  br label %14, !dbg !1366, !llvm.loop !1367

35:                                               ; preds = %31
  %36 = load i8*, i8** %7, align 8, !dbg !1369
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3.49, i64 0, i64 0)) #15, !dbg !1371
  %38 = icmp ne i32 %37, 0, !dbg !1371
  br i1 %38, label %42, label %39, !dbg !1372

39:                                               ; preds = %35
  %40 = load i8*, i8** %8, align 8, !dbg !1373
  %41 = call noalias i8* @strdup(i8* %40) #11, !dbg !1375
  store i8* %41, i8** @authoritative, align 8, !dbg !1376
  br label %14, !dbg !1377, !llvm.loop !1367

42:                                               ; preds = %35
  %43 = load i8*, i8** %7, align 8, !dbg !1378
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4.50, i64 0, i64 0)) #15, !dbg !1380
  %45 = icmp ne i32 %44, 0, !dbg !1380
  br i1 %45, label %50, label %46, !dbg !1381

46:                                               ; preds = %42
  %47 = load i8*, i8** %8, align 8, !dbg !1382
  %48 = call i64 @strtol(i8* %47, i8** null, i32 10) #11, !dbg !1384
  %49 = trunc i64 %48 to i32, !dbg !1384
  store i32 %49, i32* @authoritative_timeout, align 4, !dbg !1385
  br label %14, !dbg !1386, !llvm.loop !1367

50:                                               ; preds = %42
  %51 = load i8*, i8** %7, align 8, !dbg !1387
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5.51, i64 0, i64 0)) #15, !dbg !1389
  %53 = icmp ne i32 %52, 0, !dbg !1389
  br i1 %53, label %58, label %54, !dbg !1390

54:                                               ; preds = %50
  %55 = load i8*, i8** %8, align 8, !dbg !1391
  %56 = call i64 @strtol(i8* %55, i8** null, i32 10) #11, !dbg !1393
  %57 = trunc i64 %56 to i32, !dbg !1393
  store i32 %57, i32* @authoritative_port, align 4, !dbg !1394
  br label %14, !dbg !1395, !llvm.loop !1367

58:                                               ; preds = %50
  %59 = load i8*, i8** %7, align 8, !dbg !1396
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.52, i64 0, i64 0)) #15, !dbg !1398
  %61 = icmp ne i32 %60, 0, !dbg !1398
  br i1 %61, label %65, label %62, !dbg !1399

62:                                               ; preds = %58
  %63 = load i8*, i8** %8, align 8, !dbg !1400
  %64 = call noalias i8* @strdup(i8* %63) #11, !dbg !1402
  store i8* %64, i8** @recursive, align 8, !dbg !1403
  br label %14, !dbg !1404, !llvm.loop !1367

65:                                               ; preds = %58
  %66 = load i8*, i8** %7, align 8, !dbg !1405
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7.53, i64 0, i64 0)) #15, !dbg !1407
  %68 = icmp ne i32 %67, 0, !dbg !1407
  br i1 %68, label %73, label %69, !dbg !1408

69:                                               ; preds = %65
  %70 = load i8*, i8** %8, align 8, !dbg !1409
  %71 = call i64 @strtol(i8* %70, i8** null, i32 10) #11, !dbg !1411
  %72 = trunc i64 %71 to i32, !dbg !1411
  store i32 %72, i32* @recursive_timeout, align 4, !dbg !1412
  br label %14, !dbg !1413, !llvm.loop !1367

73:                                               ; preds = %65
  %74 = load i8*, i8** %7, align 8, !dbg !1414
  %75 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8.54, i64 0, i64 0)) #15, !dbg !1416
  %76 = icmp ne i32 %75, 0, !dbg !1416
  br i1 %76, label %81, label %77, !dbg !1417

77:                                               ; preds = %73
  %78 = load i8*, i8** %8, align 8, !dbg !1418
  %79 = call i64 @strtol(i8* %78, i8** null, i32 10) #11, !dbg !1420
  %80 = trunc i64 %79 to i32, !dbg !1420
  store i32 %80, i32* @recursive_port, align 4, !dbg !1421
  br label %14, !dbg !1422, !llvm.loop !1367

81:                                               ; preds = %73
  %82 = load i8*, i8** %7, align 8, !dbg !1423
  %83 = call i32 @strcmp(i8* %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9.55, i64 0, i64 0)) #15, !dbg !1425
  %84 = icmp ne i32 %83, 0, !dbg !1425
  br i1 %84, label %89, label %85, !dbg !1426

85:                                               ; preds = %81
  %86 = load i8*, i8** %8, align 8, !dbg !1427
  %87 = call i64 @strtol(i8* %86, i8** null, i32 10) #11, !dbg !1429
  %88 = trunc i64 %87 to i32, !dbg !1429
  store i32 %88, i32* @stats_timeout, align 4, !dbg !1430
  br label %14, !dbg !1431, !llvm.loop !1367

89:                                               ; preds = %81
  %90 = load i8*, i8** %7, align 8, !dbg !1432
  %91 = call i32 @strcmp(i8* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10.56, i64 0, i64 0)) #15, !dbg !1434
  %92 = icmp ne i32 %91, 0, !dbg !1434
  br i1 %92, label %96, label %93, !dbg !1435

93:                                               ; preds = %89
  %94 = load i8*, i8** %8, align 8, !dbg !1436
  %95 = call noalias i8* @strdup(i8* %94) #11, !dbg !1438
  store i8* %95, i8** @listenat, align 8, !dbg !1439
  br label %14, !dbg !1440, !llvm.loop !1367

96:                                               ; preds = %89
  %97 = load i8*, i8** %7, align 8, !dbg !1441
  %98 = call i32 @strcmp(i8* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11.57, i64 0, i64 0)) #15, !dbg !1443
  %99 = icmp ne i32 %98, 0, !dbg !1443
  br i1 %99, label %104, label %100, !dbg !1444

100:                                              ; preds = %96
  %101 = load i8*, i8** %8, align 8, !dbg !1445
  %102 = call i64 @strtol(i8* %101, i8** null, i32 10) #11, !dbg !1447
  %103 = trunc i64 %102 to i32, !dbg !1447
  store i32 %103, i32* @port, align 4, !dbg !1448
  br label %14, !dbg !1449, !llvm.loop !1367

104:                                              ; preds = %96
  %105 = load i8*, i8** %7, align 8, !dbg !1450
  %106 = call i32 @strcmp(i8* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12.58, i64 0, i64 0)) #15, !dbg !1452
  %107 = icmp ne i32 %106, 0, !dbg !1452
  br i1 %107, label %111, label %108, !dbg !1453

108:                                              ; preds = %104
  %109 = load i8*, i8** %8, align 8, !dbg !1454
  %110 = call noalias i8* @strdup(i8* %109) #11, !dbg !1456
  store i8* %110, i8** @chrootdir, align 8, !dbg !1457
  br label %14, !dbg !1458, !llvm.loop !1367

111:                                              ; preds = %104
  %112 = load i8*, i8** %7, align 8, !dbg !1459
  %113 = call i32 @strcmp(i8* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13.59, i64 0, i64 0)) #15, !dbg !1461
  %114 = icmp ne i32 %113, 0, !dbg !1461
  br i1 %114, label %118, label %115, !dbg !1462

115:                                              ; preds = %111
  %116 = load i8*, i8** %8, align 8, !dbg !1463
  %117 = call noalias i8* @strdup(i8* %116) #11, !dbg !1465
  store i8* %117, i8** @user, align 8, !dbg !1466
  br label %14, !dbg !1467, !llvm.loop !1367

118:                                              ; preds = %111
  %119 = load i8*, i8** %7, align 8, !dbg !1468
  %120 = call i32 @strcmp(i8* %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14.60, i64 0, i64 0)) #15, !dbg !1470
  %121 = icmp ne i32 %120, 0, !dbg !1470
  br i1 %121, label %125, label %122, !dbg !1471

122:                                              ; preds = %118
  %123 = load i8*, i8** %8, align 8, !dbg !1472
  %124 = call i32 @add_internal(i8* %123), !dbg !1474
  br label %14, !dbg !1475, !llvm.loop !1367

125:                                              ; preds = %118
  %126 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1476
  call void (i8*, ...) @info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15.61, i64 0, i64 0), i8* %126), !dbg !1477
  br label %14, !dbg !1341, !llvm.loop !1367

127:                                              ; preds = %14
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1478
  %129 = call i32 @fclose(%struct._IO_FILE* %128), !dbg !1479
  store i32 1, i32* %2, align 4, !dbg !1480
  br label %130, !dbg !1480

130:                                              ; preds = %127, %12
  %131 = load i32, i32* %2, align 4, !dbg !1481
  ret i32 %131, !dbg !1481
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local i8* @strtok(i8*, i8*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #9

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @statistics_start() #0 !dbg !1482 {
  %1 = load i32, i32* @stats_timeout, align 4, !dbg !1483
  %2 = icmp ugt i32 %1, 0, !dbg !1485
  br i1 %2, label %3, label %13, !dbg !1486

3:                                                ; preds = %0
  %4 = load i32, i32* @stats_timeout, align 4, !dbg !1487
  %5 = zext i32 %4 to i64, !dbg !1487
  store i64 %5, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tv, i32 0, i32 0), align 8, !dbg !1489
  store i64 0, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @tv, i32 0, i32 1), align 8, !dbg !1490
  call void @event_set(%struct.event* @timeout.64, i32 -1, i16 signext 0, void (i32, i16, i8*)* @statistics_timeout, i8* null), !dbg !1491
  %6 = call i32 @event_add(%struct.event* @timeout.64, %struct.timeval* @tv), !dbg !1492
  %7 = icmp eq i32 %6, -1, !dbg !1494
  br i1 %7, label %8, label %12, !dbg !1495

8:                                                ; preds = %3
  %9 = call i32* @__errno_location() #13, !dbg !1496
  %10 = load i32, i32* %9, align 4, !dbg !1496
  %11 = call i8* @strerror(i32 %10) #11, !dbg !1497
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.65, i64 0, i64 0), i8* %11), !dbg !1498
  br label %12, !dbg !1498

12:                                               ; preds = %8, %3
  br label %13, !dbg !1499

13:                                               ; preds = %12, %0
  ret void, !dbg !1500
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @statistics_timeout(i32 %0, i16 signext %1, i8* %2) #0 !dbg !1501 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1502, metadata !DIExpression()), !dbg !1503
  store i16 %1, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !1504, metadata !DIExpression()), !dbg !1505
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1506, metadata !DIExpression()), !dbg !1507
  %7 = call i32 @event_add(%struct.event* @timeout.64, %struct.timeval* @tv), !dbg !1508
  %8 = icmp eq i32 %7, -1, !dbg !1510
  br i1 %8, label %9, label %13, !dbg !1511

9:                                                ; preds = %3
  %10 = call i32* @__errno_location() #13, !dbg !1512
  %11 = load i32, i32* %10, align 4, !dbg !1512
  %12 = call i8* @strerror(i32 %11) #11, !dbg !1513
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i8* %12), !dbg !1514
  br label %13, !dbg !1514

13:                                               ; preds = %9, %3
  call void (i8*, ...) @info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2.67, i64 0, i64 0)), !dbg !1515
  %14 = load i64, i64* @active_queries, align 8, !dbg !1516
  %15 = load i64, i64* @authoritative_queries, align 8, !dbg !1517
  %16 = load i64, i64* @recursive_queries, align 8, !dbg !1518
  %17 = load i64, i64* @all_queries, align 8, !dbg !1519
  %18 = load i64, i64* @answered_queries, align 8, !dbg !1520
  call void (i8*, ...) @info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3.68, i64 0, i64 0), i64 %14, i64 %15, i64 %16, i64 %17, i64 %18), !dbg !1521
  call void (i8*, ...) @info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4.69, i64 0, i64 0)), !dbg !1522
  %19 = load i64, i64* @removed_queries, align 8, !dbg !1523
  %20 = load i64, i64* @dropped_queries, align 8, !dbg !1524
  %21 = load i64, i64* @dropped_answers, align 8, !dbg !1525
  %22 = load i64, i64* @late_answers, align 8, !dbg !1526
  %23 = load i64, i64* @hash_collisions, align 8, !dbg !1527
  call void (i8*, ...) @info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3.68, i64 0, i64 0), i64 %19, i64 %20, i64 %21, i64 %22, i64 %23), !dbg !1528
  ret void, !dbg !1529
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nosync nounwind willreturn }
attributes #8 = { noreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind readnone willreturn }
attributes #14 = { noreturn }
attributes #15 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2, !402, !209, !310, !321, !404, !326}
!llvm.ident = !{!406, !406, !406, !406, !406, !406, !406}
!llvm.module.flags = !{!407, !408, !409}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "authoritative_port", scope: !2, file: !124, line: 76, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !18, globals: !154, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "dnsproxy.c", directory: "/nobackup/klee_LLVM_12/dnsproxy")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !6, line: 24, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17}
!9 = !DIEnumerator(name: "SOCK_STREAM", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "SOCK_DGRAM", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "SOCK_RAW", value: 3, isUnsigned: true)
!12 = !DIEnumerator(name: "SOCK_RDM", value: 4, isUnsigned: true)
!13 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5, isUnsigned: true)
!14 = !DIEnumerator(name: "SOCK_DCCP", value: 6, isUnsigned: true)
!15 = !DIEnumerator(name: "SOCK_PACKET", value: 10, isUnsigned: true)
!16 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288, isUnsigned: true)
!17 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048, isUnsigned: true)
!18 = !{!19, !32, !33, !7, !122, !153}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !21, line: 178, size: 128, elements: !22)
!21 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "")
!22 = !{!23, !27}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !20, file: !21, line: 180, baseType: !24, size: 16)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !25, line: 28, baseType: !26)
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "")
!26 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !20, file: !21, line: 181, baseType: !28, size: 112, offset: 16)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 112, elements: !30)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = !{!31}
!31 = !DISubrange(count: 14)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event", file: !35, line: 123, size: 1024, elements: !36)
!35 = !DIFile(filename: "/usr/include/event2/event_struct.h", directory: "")
!36 = !{!37, !74, !84, !85, !88, !119, !120, !121}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "ev_evcallback", scope: !34, file: !35, line: 124, baseType: !38, size: 320)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event_callback", file: !35, line: 107, size: 320, elements: !39)
!39 = !{!40, !47, !49, !55, !56, !73}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_active_next", scope: !38, file: !35, line: 108, baseType: !41, size: 128)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !38, file: !35, line: 108, size: 128, elements: !42)
!42 = !{!43, !45}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !41, file: !35, line: 108, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !41, file: !35, line: 108, baseType: !46, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_flags", scope: !38, file: !35, line: 109, baseType: !48, size: 16, offset: 128)
!48 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_pri", scope: !38, file: !35, line: 110, baseType: !50, size: 8, offset: 144)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !51, line: 24, baseType: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !53, line: 38, baseType: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!54 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_closure", scope: !38, file: !35, line: 111, baseType: !50, size: 8, offset: 152)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_cb_union", scope: !38, file: !35, line: 118, baseType: !57, size: 64, offset: 192)
!57 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !38, file: !35, line: 113, size: 64, elements: !58)
!58 = !{!59, !64, !68, !72}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_callback", scope: !57, file: !35, line: 114, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !63, !48, !32}
!63 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_selfcb", scope: !57, file: !35, line: 115, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !44, !32}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_evfinalize", scope: !57, file: !35, line: 116, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !33, !32}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_cbfinalize", scope: !57, file: !35, line: 117, baseType: !65, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_arg", scope: !38, file: !35, line: 119, baseType: !32, size: 64, offset: 256)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout_pos", scope: !34, file: !35, line: 130, baseType: !75, size: 128, offset: 320)
!75 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !34, file: !35, line: 127, size: 128, elements: !76)
!76 = !{!77, !83}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "ev_next_with_common_timeout", scope: !75, file: !35, line: 128, baseType: !78, size: 128)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !75, file: !35, line: 128, size: 128, elements: !79)
!79 = !{!80, !81}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !78, file: !35, line: 128, baseType: !33, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !78, file: !35, line: 128, baseType: !82, size: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "min_heap_idx", scope: !75, file: !35, line: 129, baseType: !63, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "ev_fd", scope: !34, file: !35, line: 131, baseType: !63, size: 32, offset: 448)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "ev_base", scope: !34, file: !35, line: 133, baseType: !86, size: 64, offset: 512)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_base", file: !35, line: 122, flags: DIFlagFwdDecl)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "ev_", scope: !34, file: !35, line: 149, baseType: !89, size: 256, offset: 576)
!89 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !34, file: !35, line: 135, size: 256, elements: !90)
!90 = !{!91, !108}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "ev_io", scope: !89, file: !35, line: 140, baseType: !92, size: 256)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !89, file: !35, line: 137, size: 256, elements: !93)
!93 = !{!94, !99}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "ev_io_next", scope: !92, file: !35, line: 138, baseType: !95, size: 128)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !92, file: !35, line: 138, size: 128, elements: !96)
!96 = !{!97, !98}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "le_next", scope: !95, file: !35, line: 138, baseType: !33, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "le_prev", scope: !95, file: !35, line: 138, baseType: !82, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout", scope: !92, file: !35, line: 139, baseType: !100, size: 128, offset: 128)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !101, line: 8, size: 128, elements: !102)
!101 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "")
!102 = !{!103, !106}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !100, file: !101, line: 10, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !53, line: 160, baseType: !105)
!105 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !100, file: !101, line: 11, baseType: !107, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !53, line: 162, baseType: !105)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "ev_signal", scope: !89, file: !35, line: 148, baseType: !109, size: 256)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !89, file: !35, line: 143, size: 256, elements: !110)
!110 = !{!111, !116, !117}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "ev_signal_next", scope: !109, file: !35, line: 144, baseType: !112, size: 128)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !109, file: !35, line: 144, size: 128, elements: !113)
!113 = !{!114, !115}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "le_next", scope: !112, file: !35, line: 144, baseType: !33, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "le_prev", scope: !112, file: !35, line: 144, baseType: !82, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ev_ncalls", scope: !109, file: !35, line: 145, baseType: !48, size: 16, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "ev_pncalls", scope: !109, file: !35, line: 147, baseType: !118, size: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "ev_events", scope: !34, file: !35, line: 151, baseType: !48, size: 16, offset: 832)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "ev_res", scope: !34, file: !35, line: 152, baseType: !48, size: 16, offset: 848)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout", scope: !34, file: !35, line: 153, baseType: !100, size: 128, offset: 896)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !124, line: 63, size: 1344, elements: !125)
!124 = !DIFile(filename: "./dnsproxy.h", directory: "/nobackup/klee_LLVM_12/dnsproxy")
!125 = !{!126, !127, !147, !148, !149, !150, !152}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !123, file: !124, line: 64, baseType: !26, size: 16)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !123, file: !124, line: 66, baseType: !128, size: 128, offset: 32)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !129, line: 238, size: 128, elements: !130)
!129 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "")
!130 = !{!131, !132, !136, !143}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !128, file: !129, line: 240, baseType: !24, size: 16)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !128, file: !129, line: 241, baseType: !133, size: 16, offset: 16)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !129, line: 119, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !51, line: 25, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !53, line: 40, baseType: !26)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !128, file: !129, line: 242, baseType: !137, size: 32, offset: 32)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !129, line: 31, size: 32, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !137, file: !129, line: 33, baseType: !140, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !129, line: 30, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !51, line: 26, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !53, line: 42, baseType: !7)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !128, file: !129, line: 245, baseType: !144, size: 64, offset: 64)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 64, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 8)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "clientid", scope: !123, file: !124, line: 67, baseType: !26, size: 16, offset: 160)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "recursion", scope: !123, file: !124, line: 68, baseType: !54, size: 8, offset: 176)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !123, file: !124, line: 70, baseType: !34, size: 1024, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !123, file: !124, line: 72, baseType: !151, size: 64, offset: 1216)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !123, file: !124, line: 73, baseType: !122, size: 64, offset: 1280)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!154 = !{!0, !155, !157, !159, !161, !163, !165, !168, !170, !172, !174, !176, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205}
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "authoritative_timeout", scope: !2, file: !124, line: 77, type: !7, isLocal: false, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "recursive_port", scope: !2, file: !124, line: 78, type: !7, isLocal: false, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "recursive_timeout", scope: !2, file: !124, line: 79, type: !7, isLocal: false, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "stats_timeout", scope: !2, file: !124, line: 80, type: !7, isLocal: false, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "port", scope: !2, file: !124, line: 81, type: !7, isLocal: false, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "authoritative", scope: !2, file: !124, line: 83, type: !167, isLocal: false, isDefinition: true)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "chrootdir", scope: !2, file: !124, line: 84, type: !167, isLocal: false, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "listenat", scope: !2, file: !124, line: 85, type: !167, isLocal: false, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "recursive", scope: !2, file: !124, line: 86, type: !167, isLocal: false, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "user", scope: !2, file: !124, line: 87, type: !167, isLocal: false, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "active_queries", scope: !2, file: !124, line: 89, type: !178, isLocal: false, isDefinition: true)
!178 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "all_queries", scope: !2, file: !124, line: 90, type: !178, isLocal: false, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "authoritative_queries", scope: !2, file: !124, line: 91, type: !178, isLocal: false, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "recursive_queries", scope: !2, file: !124, line: 92, type: !178, isLocal: false, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "removed_queries", scope: !2, file: !124, line: 93, type: !178, isLocal: false, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "dropped_queries", scope: !2, file: !124, line: 94, type: !178, isLocal: false, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "answered_queries", scope: !2, file: !124, line: 95, type: !178, isLocal: false, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "dropped_answers", scope: !2, file: !124, line: 96, type: !178, isLocal: false, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "late_answers", scope: !2, file: !124, line: 97, type: !178, isLocal: false, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "hash_collisions", scope: !2, file: !124, line: 98, type: !178, isLocal: false, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "authoritative_addr", scope: !2, file: !3, line: 41, type: !128, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "recursive_addr", scope: !2, file: !3, line: 42, type: !128, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "sock_query", scope: !2, file: !3, line: 43, type: !63, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "sock_answer", scope: !2, file: !3, line: 44, type: !63, isLocal: true, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "queryid", scope: !2, file: !3, line: 38, type: !26, isLocal: true, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "request_hash", scope: !209, file: !210, line: 29, type: !214, isLocal: true, isDefinition: true)
!209 = distinct !DICompileUnit(language: DW_LANG_C99, file: !210, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, retainedTypes: !212, globals: !213, splitDebugInlining: false, nameTableKind: None)
!210 = !DIFile(filename: "hash.c", directory: "/nobackup/klee_LLVM_12/dnsproxy")
!211 = !{}
!212 = !{!32}
!213 = !{!207}
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 65536, elements: !306)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !124, line: 63, size: 1344, elements: !217)
!217 = !{!218, !219, !229, !230, !231, !303, !305}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !216, file: !124, line: 64, baseType: !26, size: 16)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !216, file: !124, line: 66, baseType: !220, size: 128, offset: 32)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !129, line: 238, size: 128, elements: !221)
!221 = !{!222, !223, !224, !228}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !220, file: !129, line: 240, baseType: !24, size: 16)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !220, file: !129, line: 241, baseType: !133, size: 16, offset: 16)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !220, file: !129, line: 242, baseType: !225, size: 32, offset: 32)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !129, line: 31, size: 32, elements: !226)
!226 = !{!227}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !225, file: !129, line: 33, baseType: !140, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !220, file: !129, line: 245, baseType: !144, size: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "clientid", scope: !216, file: !124, line: 67, baseType: !26, size: 16, offset: 160)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "recursion", scope: !216, file: !124, line: 68, baseType: !54, size: 8, offset: 176)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !216, file: !124, line: 70, baseType: !232, size: 1024, offset: 192)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event", file: !35, line: 123, size: 1024, elements: !233)
!233 = !{!234, !262, !272, !273, !274, !300, !301, !302}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "ev_evcallback", scope: !232, file: !35, line: 124, baseType: !235, size: 320)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event_callback", file: !35, line: 107, size: 320, elements: !236)
!236 = !{!237, !244, !245, !246, !247, !261}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_active_next", scope: !235, file: !35, line: 108, baseType: !238, size: 128)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !235, file: !35, line: 108, size: 128, elements: !239)
!239 = !{!240, !242}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !238, file: !35, line: 108, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !238, file: !35, line: 108, baseType: !243, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_flags", scope: !235, file: !35, line: 109, baseType: !48, size: 16, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_pri", scope: !235, file: !35, line: 110, baseType: !50, size: 8, offset: 144)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_closure", scope: !235, file: !35, line: 111, baseType: !50, size: 8, offset: 152)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_cb_union", scope: !235, file: !35, line: 118, baseType: !248, size: 64, offset: 192)
!248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !235, file: !35, line: 113, size: 64, elements: !249)
!249 = !{!250, !251, !255, !260}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_callback", scope: !248, file: !35, line: 114, baseType: !60, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_selfcb", scope: !248, file: !35, line: 115, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !241, !32}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_evfinalize", scope: !248, file: !35, line: 116, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !259, !32}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_cbfinalize", scope: !248, file: !35, line: 117, baseType: !252, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_arg", scope: !235, file: !35, line: 119, baseType: !32, size: 64, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout_pos", scope: !232, file: !35, line: 130, baseType: !263, size: 128, offset: 320)
!263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !232, file: !35, line: 127, size: 128, elements: !264)
!264 = !{!265, !271}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "ev_next_with_common_timeout", scope: !263, file: !35, line: 128, baseType: !266, size: 128)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !263, file: !35, line: 128, size: 128, elements: !267)
!267 = !{!268, !269}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !266, file: !35, line: 128, baseType: !259, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !266, file: !35, line: 128, baseType: !270, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "min_heap_idx", scope: !263, file: !35, line: 129, baseType: !63, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "ev_fd", scope: !232, file: !35, line: 131, baseType: !63, size: 32, offset: 448)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "ev_base", scope: !232, file: !35, line: 133, baseType: !86, size: 64, offset: 512)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "ev_", scope: !232, file: !35, line: 149, baseType: !275, size: 256, offset: 576)
!275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !232, file: !35, line: 135, size: 256, elements: !276)
!276 = !{!277, !290}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "ev_io", scope: !275, file: !35, line: 140, baseType: !278, size: 256)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !275, file: !35, line: 137, size: 256, elements: !279)
!279 = !{!280, !285}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "ev_io_next", scope: !278, file: !35, line: 138, baseType: !281, size: 128)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !278, file: !35, line: 138, size: 128, elements: !282)
!282 = !{!283, !284}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "le_next", scope: !281, file: !35, line: 138, baseType: !259, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "le_prev", scope: !281, file: !35, line: 138, baseType: !270, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout", scope: !278, file: !35, line: 139, baseType: !286, size: 128, offset: 128)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !101, line: 8, size: 128, elements: !287)
!287 = !{!288, !289}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !286, file: !101, line: 10, baseType: !104, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !286, file: !101, line: 11, baseType: !107, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ev_signal", scope: !275, file: !35, line: 148, baseType: !291, size: 256)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !275, file: !35, line: 143, size: 256, elements: !292)
!292 = !{!293, !298, !299}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ev_signal_next", scope: !291, file: !35, line: 144, baseType: !294, size: 128)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !291, file: !35, line: 144, size: 128, elements: !295)
!295 = !{!296, !297}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "le_next", scope: !294, file: !35, line: 144, baseType: !259, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "le_prev", scope: !294, file: !35, line: 144, baseType: !270, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ev_ncalls", scope: !291, file: !35, line: 145, baseType: !48, size: 16, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ev_pncalls", scope: !291, file: !35, line: 147, baseType: !118, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ev_events", scope: !232, file: !35, line: 151, baseType: !48, size: 16, offset: 832)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "ev_res", scope: !232, file: !35, line: 152, baseType: !48, size: 16, offset: 848)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout", scope: !232, file: !35, line: 153, baseType: !286, size: 128, offset: 896)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !216, file: !124, line: 72, baseType: !304, size: 64, offset: 1216)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !216, file: !124, line: 73, baseType: !215, size: 64, offset: 1280)
!306 = !{!307}
!307 = !DISubrange(count: 1024)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(name: "internals", scope: !310, file: !311, line: 36, type: !313, isLocal: true, isDefinition: true)
!310 = distinct !DICompileUnit(language: DW_LANG_C99, file: !311, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, retainedTypes: !212, globals: !312, splitDebugInlining: false, nameTableKind: None)
!311 = !DIFile(filename: "internal.c", directory: "/nobackup/klee_LLVM_12/dnsproxy")
!312 = !{!308}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "internal", file: !311, line: 30, size: 128, elements: !315)
!315 = !{!316, !317, !318}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !314, file: !311, line: 31, baseType: !7, size: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !314, file: !311, line: 32, baseType: !7, size: 32, offset: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !311, line: 33, baseType: !313, size: 64, offset: 64)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(name: "log_on_syslog", scope: !321, file: !322, line: 30, type: !63, isLocal: true, isDefinition: true)
!321 = distinct !DICompileUnit(language: DW_LANG_C99, file: !322, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, retainedTypes: !212, globals: !323, splitDebugInlining: false, nameTableKind: None)
!322 = !DIFile(filename: "log.c", directory: "/nobackup/klee_LLVM_12/dnsproxy")
!323 = !{!319}
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(name: "tv", scope: !326, file: !327, line: 29, type: !385, isLocal: true, isDefinition: true)
!326 = distinct !DICompileUnit(language: DW_LANG_C99, file: !327, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, retainedTypes: !212, globals: !328, splitDebugInlining: false, nameTableKind: None)
!327 = !DIFile(filename: "stats.c", directory: "/nobackup/klee_LLVM_12/dnsproxy")
!328 = !{!329, !324}
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(name: "timeout", scope: !326, file: !327, line: 28, type: !331, isLocal: true, isDefinition: true)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event", file: !35, line: 123, size: 1024, elements: !332)
!332 = !{!333, !361, !371, !372, !373, !399, !400, !401}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "ev_evcallback", scope: !331, file: !35, line: 124, baseType: !334, size: 320)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event_callback", file: !35, line: 107, size: 320, elements: !335)
!335 = !{!336, !343, !344, !345, !346, !360}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_active_next", scope: !334, file: !35, line: 108, baseType: !337, size: 128)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !334, file: !35, line: 108, size: 128, elements: !338)
!338 = !{!339, !341}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !337, file: !35, line: 108, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !337, file: !35, line: 108, baseType: !342, size: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_flags", scope: !334, file: !35, line: 109, baseType: !48, size: 16, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_pri", scope: !334, file: !35, line: 110, baseType: !50, size: 8, offset: 144)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_closure", scope: !334, file: !35, line: 111, baseType: !50, size: 8, offset: 152)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_cb_union", scope: !334, file: !35, line: 118, baseType: !347, size: 64, offset: 192)
!347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !334, file: !35, line: 113, size: 64, elements: !348)
!348 = !{!349, !350, !354, !359}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_callback", scope: !347, file: !35, line: 114, baseType: !60, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_selfcb", scope: !347, file: !35, line: 115, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !340, !32}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_evfinalize", scope: !347, file: !35, line: 116, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !358, !32}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_cbfinalize", scope: !347, file: !35, line: 117, baseType: !351, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_arg", scope: !334, file: !35, line: 119, baseType: !32, size: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout_pos", scope: !331, file: !35, line: 130, baseType: !362, size: 128, offset: 320)
!362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !331, file: !35, line: 127, size: 128, elements: !363)
!363 = !{!364, !370}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ev_next_with_common_timeout", scope: !362, file: !35, line: 128, baseType: !365, size: 128)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !362, file: !35, line: 128, size: 128, elements: !366)
!366 = !{!367, !368}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !365, file: !35, line: 128, baseType: !358, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !365, file: !35, line: 128, baseType: !369, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "min_heap_idx", scope: !362, file: !35, line: 129, baseType: !63, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ev_fd", scope: !331, file: !35, line: 131, baseType: !63, size: 32, offset: 448)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "ev_base", scope: !331, file: !35, line: 133, baseType: !86, size: 64, offset: 512)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "ev_", scope: !331, file: !35, line: 149, baseType: !374, size: 256, offset: 576)
!374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !331, file: !35, line: 135, size: 256, elements: !375)
!375 = !{!376, !389}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "ev_io", scope: !374, file: !35, line: 140, baseType: !377, size: 256)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !374, file: !35, line: 137, size: 256, elements: !378)
!378 = !{!379, !384}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ev_io_next", scope: !377, file: !35, line: 138, baseType: !380, size: 128)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !377, file: !35, line: 138, size: 128, elements: !381)
!381 = !{!382, !383}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "le_next", scope: !380, file: !35, line: 138, baseType: !358, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "le_prev", scope: !380, file: !35, line: 138, baseType: !369, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout", scope: !377, file: !35, line: 139, baseType: !385, size: 128, offset: 128)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !101, line: 8, size: 128, elements: !386)
!386 = !{!387, !388}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !385, file: !101, line: 10, baseType: !104, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !385, file: !101, line: 11, baseType: !107, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "ev_signal", scope: !374, file: !35, line: 148, baseType: !390, size: 256)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !374, file: !35, line: 143, size: 256, elements: !391)
!391 = !{!392, !397, !398}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "ev_signal_next", scope: !390, file: !35, line: 144, baseType: !393, size: 128)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !390, file: !35, line: 144, size: 128, elements: !394)
!394 = !{!395, !396}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "le_next", scope: !393, file: !35, line: 144, baseType: !358, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "le_prev", scope: !393, file: !35, line: 144, baseType: !369, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "ev_ncalls", scope: !390, file: !35, line: 145, baseType: !48, size: 16, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "ev_pncalls", scope: !390, file: !35, line: 147, baseType: !118, size: 64, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "ev_events", scope: !331, file: !35, line: 151, baseType: !48, size: 16, offset: 832)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "ev_res", scope: !331, file: !35, line: 152, baseType: !48, size: 16, offset: 848)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout", scope: !331, file: !35, line: 153, baseType: !385, size: 128, offset: 896)
!402 = distinct !DICompileUnit(language: DW_LANG_C99, file: !403, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, splitDebugInlining: false, nameTableKind: None)
!403 = !DIFile(filename: "daemon.c", directory: "/nobackup/klee_LLVM_12/dnsproxy")
!404 = distinct !DICompileUnit(language: DW_LANG_C99, file: !405, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, retainedTypes: !212, splitDebugInlining: false, nameTableKind: None)
!405 = !DIFile(filename: "parse.c", directory: "/nobackup/klee_LLVM_12/dnsproxy")
!406 = !{!"clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)"}
!407 = !{i32 7, !"Dwarf Version", i32 4}
!408 = !{i32 2, !"Debug Info Version", i32 3}
!409 = !{i32 1, !"wchar_size", i32 4}
!410 = distinct !DISubprogram(name: "signal_handler", scope: !3, file: !3, line: 58, type: !61, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!411 = !DILocalVariable(name: "sig", arg: 1, scope: !410, file: !3, line: 58, type: !63)
!412 = !DILocation(line: 58, column: 20, scope: !410)
!413 = !DILocalVariable(name: "event", arg: 2, scope: !410, file: !3, line: 58, type: !48)
!414 = !DILocation(line: 58, column: 31, scope: !410)
!415 = !DILocalVariable(name: "arg", arg: 3, scope: !410, file: !3, line: 58, type: !32)
!416 = !DILocation(line: 58, column: 44, scope: !410)
!417 = !DILocation(line: 60, column: 8, scope: !410)
!418 = !DILocation(line: 61, column: 32, scope: !410)
!419 = !DILocation(line: 61, column: 2, scope: !410)
!420 = !DILocation(line: 62, column: 1, scope: !410)
!421 = distinct !DISubprogram(name: "klee_dump_memory", scope: !3, file: !3, line: 236, type: !422, scopeLine: 236, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!422 = !DISubroutineType(types: !423)
!423 = !{null}
!424 = !DILocation(line: 236, column: 26, scope: !421)
!425 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 239, type: !426, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!426 = !DISubroutineType(types: !427)
!427 = !{!63, !63, !428}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!429 = !DILocalVariable(name: "argc", arg: 1, scope: !425, file: !3, line: 239, type: !63)
!430 = !DILocation(line: 239, column: 10, scope: !425)
!431 = !DILocalVariable(name: "argv", arg: 2, scope: !425, file: !3, line: 239, type: !428)
!432 = !DILocation(line: 239, column: 22, scope: !425)
!433 = !DILocalVariable(name: "ch", scope: !425, file: !3, line: 241, type: !63)
!434 = !DILocation(line: 241, column: 6, scope: !425)
!435 = !DILocalVariable(name: "pw", scope: !425, file: !3, line: 242, type: !436)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !438, line: 49, size: 384, elements: !439)
!438 = !DIFile(filename: "/usr/include/pwd.h", directory: "")
!439 = !{!440, !441, !442, !444, !446, !447, !448}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !437, file: !438, line: 51, baseType: !167, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !437, file: !438, line: 52, baseType: !167, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !437, file: !438, line: 54, baseType: !443, size: 32, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !53, line: 146, baseType: !7)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !437, file: !438, line: 55, baseType: !445, size: 32, offset: 160)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !53, line: 147, baseType: !7)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !437, file: !438, line: 56, baseType: !167, size: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !437, file: !438, line: 57, baseType: !167, size: 64, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !437, file: !438, line: 58, baseType: !167, size: 64, offset: 320)
!449 = !DILocation(line: 242, column: 17, scope: !425)
!450 = !DILocalVariable(name: "addr", scope: !425, file: !3, line: 243, type: !128)
!451 = !DILocation(line: 243, column: 21, scope: !425)
!452 = !DILocalVariable(name: "evq", scope: !425, file: !3, line: 244, type: !34)
!453 = !DILocation(line: 244, column: 15, scope: !425)
!454 = !DILocalVariable(name: "eva", scope: !425, file: !3, line: 244, type: !34)
!455 = !DILocation(line: 244, column: 20, scope: !425)
!456 = !DILocalVariable(name: "evsigint", scope: !425, file: !3, line: 245, type: !34)
!457 = !DILocation(line: 245, column: 15, scope: !425)
!458 = !DILocalVariable(name: "evsigterm", scope: !425, file: !3, line: 245, type: !34)
!459 = !DILocation(line: 245, column: 25, scope: !425)
!460 = !DILocalVariable(name: "evsighup", scope: !425, file: !3, line: 245, type: !34)
!461 = !DILocation(line: 245, column: 36, scope: !425)
!462 = !DILocalVariable(name: "config", scope: !425, file: !3, line: 246, type: !463)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!465 = !DILocation(line: 246, column: 14, scope: !425)
!466 = !DILocalVariable(name: "daemonize", scope: !425, file: !3, line: 247, type: !63)
!467 = !DILocation(line: 247, column: 6, scope: !425)
!468 = !DILocation(line: 250, column: 2, scope: !425)
!469 = !DILocation(line: 250, column: 22, scope: !425)
!470 = !DILocation(line: 250, column: 28, scope: !425)
!471 = !DILocation(line: 250, column: 15, scope: !425)
!472 = !DILocation(line: 250, column: 13, scope: !425)
!473 = !DILocation(line: 250, column: 44, scope: !425)
!474 = !DILocation(line: 251, column: 11, scope: !475)
!475 = distinct !DILexicalBlock(scope: !425, file: !3, line: 250, column: 51)
!476 = !DILocation(line: 251, column: 3, scope: !475)
!477 = !DILocation(line: 253, column: 13, scope: !478)
!478 = distinct !DILexicalBlock(scope: !475, file: !3, line: 251, column: 15)
!479 = !DILocation(line: 253, column: 11, scope: !478)
!480 = !DILocation(line: 254, column: 4, scope: !478)
!481 = !DILocation(line: 256, column: 14, scope: !478)
!482 = !DILocation(line: 257, column: 4, scope: !478)
!483 = !DILocation(line: 259, column: 12, scope: !478)
!484 = !DILocation(line: 259, column: 4, scope: !478)
!485 = !DILocation(line: 260, column: 4, scope: !478)
!486 = !DILocation(line: 264, column: 12, scope: !478)
!487 = !DILocation(line: 264, column: 4, scope: !478)
!488 = !DILocation(line: 270, column: 4, scope: !478)
!489 = distinct !{!489, !468, !490, !491}
!490 = !DILocation(line: 272, column: 2, scope: !425)
!491 = !{!"llvm.loop.mustprogress"}
!492 = !DILocation(line: 275, column: 13, scope: !493)
!493 = distinct !DILexicalBlock(scope: !425, file: !3, line: 275, column: 6)
!494 = !DILocation(line: 275, column: 7, scope: !493)
!495 = !DILocation(line: 275, column: 6, scope: !425)
!496 = !DILocation(line: 276, column: 3, scope: !493)
!497 = !DILocation(line: 278, column: 16, scope: !425)
!498 = !DILocation(line: 279, column: 2, scope: !425)
!499 = !DILocation(line: 280, column: 30, scope: !425)
!500 = !DILocation(line: 280, column: 2, scope: !425)
!501 = !DILocation(line: 281, column: 7, scope: !502)
!502 = distinct !DILexicalBlock(scope: !425, file: !3, line: 281, column: 6)
!503 = !DILocation(line: 281, column: 21, scope: !502)
!504 = !DILocation(line: 281, column: 25, scope: !502)
!505 = !DILocation(line: 281, column: 6, scope: !425)
!506 = !DILocation(line: 282, column: 3, scope: !502)
!507 = !DILocation(line: 284, column: 7, scope: !508)
!508 = distinct !DILexicalBlock(scope: !425, file: !3, line: 284, column: 6)
!509 = !DILocation(line: 284, column: 6, scope: !425)
!510 = !DILocation(line: 285, column: 14, scope: !508)
!511 = !DILocation(line: 285, column: 12, scope: !508)
!512 = !DILocation(line: 285, column: 3, scope: !508)
!513 = !DILocation(line: 288, column: 20, scope: !514)
!514 = distinct !DILexicalBlock(scope: !425, file: !3, line: 288, column: 6)
!515 = !DILocation(line: 288, column: 18, scope: !514)
!516 = !DILocation(line: 288, column: 52, scope: !514)
!517 = !DILocation(line: 288, column: 6, scope: !425)
!518 = !DILocation(line: 289, column: 49, scope: !514)
!519 = !DILocation(line: 289, column: 40, scope: !514)
!520 = !DILocation(line: 289, column: 3, scope: !514)
!521 = !DILocation(line: 291, column: 2, scope: !425)
!522 = !DILocation(line: 292, column: 35, scope: !425)
!523 = !DILocation(line: 292, column: 25, scope: !425)
!524 = !DILocation(line: 292, column: 7, scope: !425)
!525 = !DILocation(line: 292, column: 16, scope: !425)
!526 = !DILocation(line: 292, column: 23, scope: !425)
!527 = !DILocation(line: 293, column: 24, scope: !425)
!528 = !DILocation(line: 293, column: 18, scope: !425)
!529 = !DILocation(line: 293, column: 7, scope: !425)
!530 = !DILocation(line: 293, column: 16, scope: !425)
!531 = !DILocation(line: 294, column: 7, scope: !425)
!532 = !DILocation(line: 294, column: 18, scope: !425)
!533 = !DILocation(line: 296, column: 11, scope: !534)
!534 = distinct !DILexicalBlock(scope: !425, file: !3, line: 296, column: 6)
!535 = !DILocation(line: 296, column: 23, scope: !534)
!536 = !DILocation(line: 296, column: 6, scope: !534)
!537 = !DILocation(line: 296, column: 63, scope: !534)
!538 = !DILocation(line: 296, column: 6, scope: !425)
!539 = !DILocation(line: 297, column: 47, scope: !534)
!540 = !DILocation(line: 297, column: 38, scope: !534)
!541 = !DILocation(line: 297, column: 3, scope: !534)
!542 = !DILocation(line: 300, column: 21, scope: !543)
!543 = distinct !DILexicalBlock(scope: !425, file: !3, line: 300, column: 6)
!544 = !DILocation(line: 300, column: 19, scope: !543)
!545 = !DILocation(line: 300, column: 53, scope: !543)
!546 = !DILocation(line: 300, column: 6, scope: !425)
!547 = !DILocation(line: 301, column: 49, scope: !543)
!548 = !DILocation(line: 301, column: 40, scope: !543)
!549 = !DILocation(line: 301, column: 3, scope: !543)
!550 = !DILocation(line: 304, column: 2, scope: !425)
!551 = !DILocation(line: 305, column: 49, scope: !425)
!552 = !DILocation(line: 305, column: 39, scope: !425)
!553 = !DILocation(line: 305, column: 37, scope: !425)
!554 = !DILocation(line: 306, column: 38, scope: !425)
!555 = !DILocation(line: 306, column: 32, scope: !425)
!556 = !DILocation(line: 306, column: 30, scope: !425)
!557 = !DILocation(line: 307, column: 32, scope: !425)
!558 = !DILocation(line: 309, column: 2, scope: !425)
!559 = !DILocation(line: 310, column: 45, scope: !425)
!560 = !DILocation(line: 310, column: 35, scope: !425)
!561 = !DILocation(line: 310, column: 33, scope: !425)
!562 = !DILocation(line: 311, column: 34, scope: !425)
!563 = !DILocation(line: 311, column: 28, scope: !425)
!564 = !DILocation(line: 311, column: 26, scope: !425)
!565 = !DILocation(line: 312, column: 28, scope: !425)
!566 = !DILocation(line: 315, column: 6, scope: !567)
!567 = distinct !DILexicalBlock(scope: !425, file: !3, line: 315, column: 6)
!568 = !DILocation(line: 315, column: 6, scope: !425)
!569 = !DILocation(line: 316, column: 7, scope: !570)
!570 = distinct !DILexicalBlock(scope: !571, file: !3, line: 316, column: 7)
!571 = distinct !DILexicalBlock(scope: !567, file: !3, line: 315, column: 17)
!572 = !DILocation(line: 316, column: 20, scope: !570)
!573 = !DILocation(line: 316, column: 7, scope: !571)
!574 = !DILocation(line: 317, column: 4, scope: !570)
!575 = !DILocation(line: 318, column: 3, scope: !571)
!576 = !DILocation(line: 319, column: 2, scope: !571)
!577 = !DILocation(line: 322, column: 6, scope: !578)
!578 = distinct !DILexicalBlock(scope: !425, file: !3, line: 322, column: 6)
!579 = !DILocation(line: 322, column: 6, scope: !425)
!580 = !DILocation(line: 323, column: 17, scope: !581)
!581 = distinct !DILexicalBlock(scope: !578, file: !3, line: 322, column: 12)
!582 = !DILocation(line: 323, column: 8, scope: !581)
!583 = !DILocation(line: 323, column: 6, scope: !581)
!584 = !DILocation(line: 324, column: 8, scope: !585)
!585 = distinct !DILexicalBlock(scope: !581, file: !3, line: 324, column: 7)
!586 = !DILocation(line: 324, column: 7, scope: !581)
!587 = !DILocation(line: 325, column: 36, scope: !585)
!588 = !DILocation(line: 325, column: 4, scope: !585)
!589 = !DILocation(line: 326, column: 2, scope: !581)
!590 = !DILocation(line: 329, column: 6, scope: !591)
!591 = distinct !DILexicalBlock(scope: !425, file: !3, line: 329, column: 6)
!592 = !DILocation(line: 329, column: 6, scope: !425)
!593 = !DILocation(line: 330, column: 14, scope: !594)
!594 = distinct !DILexicalBlock(scope: !595, file: !3, line: 330, column: 7)
!595 = distinct !DILexicalBlock(scope: !591, file: !3, line: 329, column: 17)
!596 = !DILocation(line: 330, column: 7, scope: !594)
!597 = !DILocation(line: 330, column: 25, scope: !594)
!598 = !DILocation(line: 330, column: 7, scope: !595)
!599 = !DILocation(line: 331, column: 36, scope: !594)
!600 = !DILocation(line: 331, column: 4, scope: !594)
!601 = !DILocation(line: 332, column: 7, scope: !602)
!602 = distinct !DILexicalBlock(scope: !595, file: !3, line: 332, column: 7)
!603 = !DILocation(line: 332, column: 18, scope: !602)
!604 = !DILocation(line: 332, column: 7, scope: !595)
!605 = !DILocation(line: 333, column: 4, scope: !602)
!606 = !DILocation(line: 334, column: 2, scope: !595)
!607 = !DILocation(line: 337, column: 6, scope: !608)
!608 = distinct !DILexicalBlock(scope: !425, file: !3, line: 337, column: 6)
!609 = !DILocation(line: 337, column: 6, scope: !425)
!610 = !DILocation(line: 338, column: 21, scope: !611)
!611 = distinct !DILexicalBlock(scope: !612, file: !3, line: 338, column: 7)
!612 = distinct !DILexicalBlock(scope: !608, file: !3, line: 337, column: 12)
!613 = !DILocation(line: 338, column: 25, scope: !611)
!614 = !DILocation(line: 338, column: 7, scope: !611)
!615 = !DILocation(line: 338, column: 33, scope: !611)
!616 = !DILocation(line: 338, column: 7, scope: !612)
!617 = !DILocation(line: 339, column: 36, scope: !611)
!618 = !DILocation(line: 339, column: 27, scope: !611)
!619 = !DILocation(line: 339, column: 4, scope: !611)
!620 = !DILocation(line: 341, column: 17, scope: !621)
!621 = distinct !DILexicalBlock(scope: !612, file: !3, line: 341, column: 7)
!622 = !DILocation(line: 341, column: 21, scope: !621)
!623 = !DILocation(line: 341, column: 29, scope: !621)
!624 = !DILocation(line: 341, column: 33, scope: !621)
!625 = !DILocation(line: 341, column: 41, scope: !621)
!626 = !DILocation(line: 341, column: 45, scope: !621)
!627 = !DILocation(line: 341, column: 7, scope: !621)
!628 = !DILocation(line: 341, column: 53, scope: !621)
!629 = !DILocation(line: 341, column: 7, scope: !612)
!630 = !DILocation(line: 342, column: 36, scope: !621)
!631 = !DILocation(line: 342, column: 27, scope: !621)
!632 = !DILocation(line: 342, column: 4, scope: !621)
!633 = !DILocation(line: 353, column: 17, scope: !634)
!634 = distinct !DILexicalBlock(scope: !612, file: !3, line: 353, column: 7)
!635 = !DILocation(line: 353, column: 21, scope: !634)
!636 = !DILocation(line: 353, column: 29, scope: !634)
!637 = !DILocation(line: 353, column: 33, scope: !634)
!638 = !DILocation(line: 353, column: 41, scope: !634)
!639 = !DILocation(line: 353, column: 45, scope: !634)
!640 = !DILocation(line: 353, column: 7, scope: !634)
!641 = !DILocation(line: 353, column: 53, scope: !634)
!642 = !DILocation(line: 353, column: 7, scope: !612)
!643 = !DILocation(line: 354, column: 36, scope: !634)
!644 = !DILocation(line: 354, column: 27, scope: !634)
!645 = !DILocation(line: 354, column: 4, scope: !634)
!646 = !DILocation(line: 364, column: 2, scope: !612)
!647 = !DILocation(line: 366, column: 2, scope: !425)
!648 = !DILocation(line: 369, column: 2, scope: !425)
!649 = !DILocation(line: 370, column: 2, scope: !425)
!650 = !DILocation(line: 371, column: 2, scope: !425)
!651 = !DILocation(line: 372, column: 2, scope: !425)
!652 = !DILocation(line: 373, column: 2, scope: !425)
!653 = !DILocation(line: 374, column: 2, scope: !425)
!654 = !DILocation(line: 377, column: 2, scope: !425)
!655 = !DILocation(line: 380, column: 18, scope: !425)
!656 = !DILocation(line: 380, column: 49, scope: !425)
!657 = !DILocation(line: 380, column: 2, scope: !425)
!658 = !DILocation(line: 381, column: 18, scope: !425)
!659 = !DILocation(line: 381, column: 51, scope: !425)
!660 = !DILocation(line: 381, column: 2, scope: !425)
!661 = !DILocation(line: 382, column: 2, scope: !425)
!662 = !DILocation(line: 383, column: 2, scope: !425)
!663 = !DILocation(line: 386, column: 2, scope: !425)
!664 = !DILocation(line: 388, column: 2, scope: !425)
!665 = distinct !DISubprogram(name: "do_query", scope: !3, file: !3, line: 84, type: !61, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!666 = !DILocalVariable(name: "fd", arg: 1, scope: !665, file: !3, line: 84, type: !63)
!667 = !DILocation(line: 84, column: 14, scope: !665)
!668 = !DILocalVariable(name: "event", arg: 2, scope: !665, file: !3, line: 84, type: !48)
!669 = !DILocation(line: 84, column: 24, scope: !665)
!670 = !DILocalVariable(name: "arg", arg: 3, scope: !665, file: !3, line: 84, type: !32)
!671 = !DILocation(line: 84, column: 37, scope: !665)
!672 = !DILocalVariable(name: "buf", scope: !665, file: !3, line: 86, type: !673)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 32768, elements: !674)
!674 = !{!675}
!675 = !DISubrange(count: 4096)
!676 = !DILocation(line: 86, column: 7, scope: !665)
!677 = !DILocalVariable(name: "byte", scope: !665, file: !3, line: 87, type: !63)
!678 = !DILocation(line: 87, column: 6, scope: !665)
!679 = !DILocalVariable(name: "fromaddr", scope: !665, file: !3, line: 88, type: !128)
!680 = !DILocation(line: 88, column: 21, scope: !665)
!681 = !DILocalVariable(name: "fromlen", scope: !665, file: !3, line: 89, type: !7)
!682 = !DILocation(line: 89, column: 15, scope: !665)
!683 = !DILocalVariable(name: "req", scope: !665, file: !3, line: 90, type: !122)
!684 = !DILocation(line: 90, column: 18, scope: !665)
!685 = !DILocalVariable(name: "tv", scope: !665, file: !3, line: 91, type: !100)
!686 = !DILocation(line: 91, column: 17, scope: !665)
!687 = !DILocation(line: 93, column: 2, scope: !665)
!688 = !DILocation(line: 96, column: 28, scope: !665)
!689 = !DILocation(line: 96, column: 12, scope: !665)
!690 = !DILocation(line: 96, column: 2, scope: !665)
!691 = !DILocation(line: 99, column: 23, scope: !692)
!692 = distinct !DILexicalBlock(scope: !665, file: !3, line: 99, column: 6)
!693 = !DILocation(line: 99, column: 27, scope: !692)
!694 = !DILocation(line: 100, column: 8, scope: !692)
!695 = !DILocation(line: 99, column: 14, scope: !692)
!696 = !DILocation(line: 99, column: 12, scope: !692)
!697 = !DILocation(line: 100, column: 49, scope: !692)
!698 = !DILocation(line: 99, column: 6, scope: !665)
!699 = !DILocation(line: 101, column: 41, scope: !700)
!700 = distinct !DILexicalBlock(scope: !692, file: !3, line: 100, column: 56)
!701 = !DILocation(line: 101, column: 32, scope: !700)
!702 = !DILocation(line: 101, column: 3, scope: !700)
!703 = !DILocation(line: 102, column: 3, scope: !700)
!704 = !DILocation(line: 103, column: 3, scope: !700)
!705 = !DILocation(line: 107, column: 6, scope: !706)
!706 = distinct !DILexicalBlock(scope: !665, file: !3, line: 107, column: 6)
!707 = !DILocation(line: 107, column: 11, scope: !706)
!708 = !DILocation(line: 107, column: 6, scope: !665)
!709 = !DILocation(line: 109, column: 26, scope: !710)
!710 = distinct !DILexicalBlock(scope: !706, file: !3, line: 107, column: 17)
!711 = !DILocation(line: 109, column: 7, scope: !710)
!712 = !DILocation(line: 108, column: 3, scope: !710)
!713 = !DILocation(line: 110, column: 3, scope: !710)
!714 = !DILocation(line: 111, column: 3, scope: !710)
!715 = !DILocation(line: 115, column: 13, scope: !716)
!716 = distinct !DILexicalBlock(scope: !665, file: !3, line: 115, column: 6)
!717 = !DILocation(line: 115, column: 11, scope: !716)
!718 = !DILocation(line: 115, column: 48, scope: !716)
!719 = !DILocation(line: 115, column: 6, scope: !665)
!720 = !DILocation(line: 116, column: 32, scope: !721)
!721 = distinct !DILexicalBlock(scope: !716, file: !3, line: 115, column: 57)
!722 = !DILocation(line: 116, column: 23, scope: !721)
!723 = !DILocation(line: 116, column: 3, scope: !721)
!724 = !DILocation(line: 117, column: 3, scope: !721)
!725 = !DILocation(line: 118, column: 3, scope: !721)
!726 = !DILocation(line: 122, column: 12, scope: !665)
!727 = !DILocation(line: 122, column: 2, scope: !665)
!728 = !DILocation(line: 122, column: 7, scope: !665)
!729 = !DILocation(line: 122, column: 10, scope: !665)
!730 = !DILocation(line: 123, column: 10, scope: !665)
!731 = !DILocation(line: 123, column: 15, scope: !665)
!732 = !DILocation(line: 123, column: 2, scope: !665)
!733 = !DILocation(line: 124, column: 10, scope: !665)
!734 = !DILocation(line: 124, column: 15, scope: !665)
!735 = !DILocation(line: 124, column: 2, scope: !665)
!736 = !DILocation(line: 124, column: 26, scope: !665)
!737 = !DILocation(line: 127, column: 27, scope: !738)
!738 = distinct !DILexicalBlock(scope: !665, file: !3, line: 127, column: 6)
!739 = !DILocation(line: 127, column: 6, scope: !738)
!740 = !DILocation(line: 127, column: 6, scope: !665)
!741 = !DILocation(line: 128, column: 20, scope: !742)
!742 = distinct !DILexicalBlock(scope: !738, file: !3, line: 127, column: 38)
!743 = !DILocation(line: 128, column: 3, scope: !742)
!744 = !DILocation(line: 128, column: 8, scope: !742)
!745 = !DILocation(line: 128, column: 18, scope: !742)
!746 = !DILocation(line: 130, column: 2, scope: !742)
!747 = !DILocation(line: 132, column: 3, scope: !748)
!748 = distinct !DILexicalBlock(scope: !738, file: !3, line: 130, column: 9)
!749 = !DILocation(line: 132, column: 8, scope: !748)
!750 = !DILocation(line: 132, column: 18, scope: !748)
!751 = !DILocation(line: 137, column: 19, scope: !665)
!752 = !DILocation(line: 137, column: 2, scope: !665)
!753 = !DILocation(line: 140, column: 10, scope: !665)
!754 = !DILocation(line: 140, column: 19, scope: !665)
!755 = !DILocation(line: 140, column: 24, scope: !665)
!756 = !DILocation(line: 140, column: 2, scope: !665)
!757 = !DILocation(line: 142, column: 6, scope: !758)
!758 = distinct !DILexicalBlock(scope: !665, file: !3, line: 142, column: 6)
!759 = !DILocation(line: 142, column: 11, scope: !758)
!760 = !DILocation(line: 142, column: 6, scope: !665)
!761 = !DILocation(line: 145, column: 14, scope: !762)
!762 = distinct !DILexicalBlock(scope: !758, file: !3, line: 142, column: 22)
!763 = !DILocation(line: 145, column: 19, scope: !762)
!764 = !DILocation(line: 145, column: 44, scope: !762)
!765 = !DILocation(line: 145, column: 3, scope: !762)
!766 = !DILocation(line: 146, column: 13, scope: !762)
!767 = !DILocation(line: 146, column: 6, scope: !762)
!768 = !DILocation(line: 146, column: 12, scope: !762)
!769 = !DILocation(line: 146, column: 35, scope: !762)
!770 = !DILocation(line: 146, column: 42, scope: !762)
!771 = !DILocation(line: 147, column: 14, scope: !762)
!772 = !DILocation(line: 147, column: 19, scope: !762)
!773 = !DILocation(line: 147, column: 3, scope: !762)
!774 = !DILocation(line: 150, column: 22, scope: !775)
!775 = distinct !DILexicalBlock(scope: !762, file: !3, line: 150, column: 7)
!776 = !DILocation(line: 150, column: 35, scope: !775)
!777 = !DILocation(line: 150, column: 54, scope: !775)
!778 = !DILocation(line: 150, column: 40, scope: !775)
!779 = !DILocation(line: 151, column: 9, scope: !775)
!780 = !DILocation(line: 150, column: 15, scope: !775)
!781 = !DILocation(line: 150, column: 13, scope: !775)
!782 = !DILocation(line: 152, column: 38, scope: !775)
!783 = !DILocation(line: 150, column: 7, scope: !762)
!784 = !DILocation(line: 153, column: 40, scope: !785)
!785 = distinct !DILexicalBlock(scope: !775, file: !3, line: 152, column: 45)
!786 = !DILocation(line: 153, column: 31, scope: !785)
!787 = !DILocation(line: 153, column: 4, scope: !785)
!788 = !DILocation(line: 154, column: 4, scope: !785)
!789 = !DILocation(line: 155, column: 4, scope: !785)
!790 = !DILocation(line: 158, column: 3, scope: !762)
!791 = !DILocation(line: 160, column: 2, scope: !762)
!792 = !DILocation(line: 163, column: 14, scope: !793)
!793 = distinct !DILexicalBlock(scope: !758, file: !3, line: 160, column: 9)
!794 = !DILocation(line: 163, column: 19, scope: !793)
!795 = !DILocation(line: 163, column: 44, scope: !793)
!796 = !DILocation(line: 163, column: 3, scope: !793)
!797 = !DILocation(line: 164, column: 13, scope: !793)
!798 = !DILocation(line: 164, column: 6, scope: !793)
!799 = !DILocation(line: 164, column: 12, scope: !793)
!800 = !DILocation(line: 164, column: 39, scope: !793)
!801 = !DILocation(line: 164, column: 46, scope: !793)
!802 = !DILocation(line: 165, column: 14, scope: !793)
!803 = !DILocation(line: 165, column: 19, scope: !793)
!804 = !DILocation(line: 165, column: 3, scope: !793)
!805 = !DILocation(line: 168, column: 22, scope: !806)
!806 = distinct !DILexicalBlock(scope: !793, file: !3, line: 168, column: 7)
!807 = !DILocation(line: 168, column: 35, scope: !806)
!808 = !DILocation(line: 168, column: 54, scope: !806)
!809 = !DILocation(line: 168, column: 40, scope: !806)
!810 = !DILocation(line: 169, column: 9, scope: !806)
!811 = !DILocation(line: 168, column: 15, scope: !806)
!812 = !DILocation(line: 168, column: 13, scope: !806)
!813 = !DILocation(line: 170, column: 38, scope: !806)
!814 = !DILocation(line: 168, column: 7, scope: !793)
!815 = !DILocation(line: 171, column: 40, scope: !816)
!816 = distinct !DILexicalBlock(scope: !806, file: !3, line: 170, column: 45)
!817 = !DILocation(line: 171, column: 31, scope: !816)
!818 = !DILocation(line: 171, column: 4, scope: !816)
!819 = !DILocation(line: 172, column: 4, scope: !816)
!820 = !DILocation(line: 173, column: 4, scope: !816)
!821 = !DILocation(line: 176, column: 3, scope: !793)
!822 = !DILocation(line: 178, column: 1, scope: !665)
!823 = distinct !DISubprogram(name: "do_answer", scope: !3, file: !3, line: 187, type: !61, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!824 = !DILocalVariable(name: "fd", arg: 1, scope: !823, file: !3, line: 187, type: !63)
!825 = !DILocation(line: 187, column: 15, scope: !823)
!826 = !DILocalVariable(name: "event", arg: 2, scope: !823, file: !3, line: 187, type: !48)
!827 = !DILocation(line: 187, column: 25, scope: !823)
!828 = !DILocalVariable(name: "arg", arg: 3, scope: !823, file: !3, line: 187, type: !32)
!829 = !DILocation(line: 187, column: 38, scope: !823)
!830 = !DILocalVariable(name: "buf", scope: !823, file: !3, line: 189, type: !673)
!831 = !DILocation(line: 189, column: 7, scope: !823)
!832 = !DILocalVariable(name: "byte", scope: !823, file: !3, line: 190, type: !63)
!833 = !DILocation(line: 190, column: 6, scope: !823)
!834 = !DILocalVariable(name: "query", scope: !823, file: !3, line: 191, type: !122)
!835 = !DILocation(line: 191, column: 18, scope: !823)
!836 = !DILocation(line: 194, column: 28, scope: !823)
!837 = !DILocation(line: 194, column: 12, scope: !823)
!838 = !DILocation(line: 194, column: 2, scope: !823)
!839 = !DILocation(line: 197, column: 23, scope: !840)
!840 = distinct !DILexicalBlock(scope: !823, file: !3, line: 197, column: 6)
!841 = !DILocation(line: 197, column: 27, scope: !840)
!842 = !DILocation(line: 197, column: 48, scope: !840)
!843 = !DILocation(line: 197, column: 14, scope: !840)
!844 = !DILocation(line: 197, column: 12, scope: !840)
!845 = !DILocation(line: 197, column: 61, scope: !840)
!846 = !DILocation(line: 197, column: 6, scope: !823)
!847 = !DILocation(line: 198, column: 41, scope: !848)
!848 = distinct !DILexicalBlock(scope: !840, file: !3, line: 197, column: 68)
!849 = !DILocation(line: 198, column: 32, scope: !848)
!850 = !DILocation(line: 198, column: 3, scope: !848)
!851 = !DILocation(line: 199, column: 3, scope: !848)
!852 = !DILocation(line: 200, column: 3, scope: !848)
!853 = !DILocation(line: 204, column: 6, scope: !854)
!854 = distinct !DILexicalBlock(scope: !823, file: !3, line: 204, column: 6)
!855 = !DILocation(line: 204, column: 11, scope: !854)
!856 = !DILocation(line: 204, column: 6, scope: !823)
!857 = !DILocation(line: 205, column: 3, scope: !858)
!858 = distinct !DILexicalBlock(scope: !854, file: !3, line: 204, column: 17)
!859 = !DILocation(line: 206, column: 3, scope: !858)
!860 = !DILocation(line: 207, column: 3, scope: !858)
!861 = !DILocation(line: 211, column: 33, scope: !862)
!862 = distinct !DILexicalBlock(scope: !823, file: !3, line: 211, column: 6)
!863 = !DILocation(line: 211, column: 15, scope: !862)
!864 = !DILocation(line: 211, column: 13, scope: !862)
!865 = !DILocation(line: 211, column: 61, scope: !862)
!866 = !DILocation(line: 211, column: 6, scope: !823)
!867 = !DILocation(line: 212, column: 3, scope: !868)
!868 = distinct !DILexicalBlock(scope: !862, file: !3, line: 211, column: 70)
!869 = !DILocation(line: 213, column: 3, scope: !868)
!870 = !DILocation(line: 215, column: 13, scope: !823)
!871 = !DILocation(line: 215, column: 20, scope: !823)
!872 = !DILocation(line: 215, column: 2, scope: !823)
!873 = !DILocation(line: 216, column: 22, scope: !823)
!874 = !DILocation(line: 216, column: 2, scope: !823)
!875 = !DILocation(line: 219, column: 10, scope: !823)
!876 = !DILocation(line: 219, column: 19, scope: !823)
!877 = !DILocation(line: 219, column: 26, scope: !823)
!878 = !DILocation(line: 219, column: 2, scope: !823)
!879 = !DILocation(line: 222, column: 13, scope: !880)
!880 = distinct !DILexicalBlock(scope: !823, file: !3, line: 222, column: 6)
!881 = !DILocation(line: 222, column: 25, scope: !880)
!882 = !DILocation(line: 222, column: 44, scope: !880)
!883 = !DILocation(line: 222, column: 30, scope: !880)
!884 = !DILocation(line: 223, column: 8, scope: !880)
!885 = !DILocation(line: 223, column: 28, scope: !880)
!886 = !DILocation(line: 223, column: 35, scope: !880)
!887 = !DILocation(line: 222, column: 6, scope: !880)
!888 = !DILocation(line: 224, column: 36, scope: !880)
!889 = !DILocation(line: 222, column: 6, scope: !823)
!890 = !DILocation(line: 225, column: 39, scope: !891)
!891 = distinct !DILexicalBlock(scope: !880, file: !3, line: 224, column: 43)
!892 = !DILocation(line: 225, column: 30, scope: !891)
!893 = !DILocation(line: 225, column: 3, scope: !891)
!894 = !DILocation(line: 226, column: 3, scope: !891)
!895 = !DILocation(line: 227, column: 2, scope: !891)
!896 = !DILocation(line: 228, column: 3, scope: !880)
!897 = !DILocation(line: 230, column: 7, scope: !823)
!898 = !DILocation(line: 230, column: 2, scope: !823)
!899 = !DILocation(line: 231, column: 1, scope: !823)
!900 = distinct !DISubprogram(name: "timeout", scope: !3, file: !3, line: 70, type: !61, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!901 = !DILocalVariable(name: "fd", arg: 1, scope: !900, file: !3, line: 70, type: !63)
!902 = !DILocation(line: 70, column: 13, scope: !900)
!903 = !DILocalVariable(name: "event", arg: 2, scope: !900, file: !3, line: 70, type: !48)
!904 = !DILocation(line: 70, column: 23, scope: !900)
!905 = !DILocalVariable(name: "arg", arg: 3, scope: !900, file: !3, line: 70, type: !32)
!906 = !DILocation(line: 70, column: 36, scope: !900)
!907 = !DILocation(line: 72, column: 40, scope: !900)
!908 = !DILocation(line: 72, column: 22, scope: !900)
!909 = !DILocation(line: 72, column: 2, scope: !900)
!910 = !DILocation(line: 73, column: 25, scope: !900)
!911 = !DILocation(line: 73, column: 7, scope: !900)
!912 = !DILocation(line: 73, column: 2, scope: !900)
!913 = !DILocation(line: 74, column: 2, scope: !900)
!914 = !DILocation(line: 75, column: 1, scope: !900)
!915 = distinct !DISubprogram(name: "daemon", scope: !403, file: !403, line: 39, type: !916, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !402, retainedNodes: !211)
!916 = !DISubroutineType(types: !917)
!917 = !{!63, !63, !63}
!918 = !DILocalVariable(name: "nochdir", arg: 1, scope: !915, file: !403, line: 39, type: !63)
!919 = !DILocation(line: 39, column: 12, scope: !915)
!920 = !DILocalVariable(name: "noclose", arg: 2, scope: !915, file: !403, line: 39, type: !63)
!921 = !DILocation(line: 39, column: 25, scope: !915)
!922 = !DILocalVariable(name: "fd", scope: !915, file: !403, line: 41, type: !63)
!923 = !DILocation(line: 41, column: 6, scope: !915)
!924 = !DILocation(line: 43, column: 10, scope: !915)
!925 = !DILocation(line: 43, column: 2, scope: !915)
!926 = !DILocation(line: 45, column: 3, scope: !927)
!927 = distinct !DILexicalBlock(scope: !915, file: !403, line: 43, column: 18)
!928 = !DILocation(line: 47, column: 3, scope: !927)
!929 = !DILocation(line: 49, column: 3, scope: !927)
!930 = !DILocation(line: 52, column: 6, scope: !931)
!931 = distinct !DILexicalBlock(scope: !915, file: !403, line: 52, column: 6)
!932 = !DILocation(line: 52, column: 15, scope: !931)
!933 = !DILocation(line: 52, column: 6, scope: !915)
!934 = !DILocation(line: 53, column: 3, scope: !931)
!935 = !DILocation(line: 55, column: 7, scope: !936)
!936 = distinct !DILexicalBlock(scope: !915, file: !403, line: 55, column: 6)
!937 = !DILocation(line: 55, column: 6, scope: !915)
!938 = !DILocation(line: 56, column: 7, scope: !939)
!939 = distinct !DILexicalBlock(scope: !936, file: !403, line: 56, column: 7)
!940 = !DILocation(line: 56, column: 7, scope: !936)
!941 = !DILocation(line: 57, column: 25, scope: !939)
!942 = !DILocation(line: 56, column: 16, scope: !939)
!943 = !DILocation(line: 59, column: 7, scope: !944)
!944 = distinct !DILexicalBlock(scope: !915, file: !403, line: 59, column: 6)
!945 = !DILocation(line: 59, column: 15, scope: !944)
!946 = !DILocation(line: 59, column: 24, scope: !944)
!947 = !DILocation(line: 59, column: 22, scope: !944)
!948 = !DILocation(line: 59, column: 54, scope: !944)
!949 = !DILocation(line: 59, column: 6, scope: !915)
!950 = !DILocation(line: 60, column: 14, scope: !951)
!951 = distinct !DILexicalBlock(scope: !944, file: !403, line: 59, column: 61)
!952 = !DILocation(line: 60, column: 9, scope: !951)
!953 = !DILocation(line: 61, column: 14, scope: !951)
!954 = !DILocation(line: 61, column: 9, scope: !951)
!955 = !DILocation(line: 62, column: 14, scope: !951)
!956 = !DILocation(line: 62, column: 9, scope: !951)
!957 = !DILocation(line: 63, column: 7, scope: !958)
!958 = distinct !DILexicalBlock(scope: !951, file: !403, line: 63, column: 7)
!959 = !DILocation(line: 63, column: 10, scope: !958)
!960 = !DILocation(line: 63, column: 7, scope: !951)
!961 = !DILocation(line: 64, column: 17, scope: !958)
!962 = !DILocation(line: 64, column: 10, scope: !958)
!963 = !DILocation(line: 64, column: 4, scope: !958)
!964 = !DILocation(line: 65, column: 2, scope: !951)
!965 = !DILocation(line: 66, column: 2, scope: !915)
!966 = !DILocation(line: 67, column: 1, scope: !915)
!967 = distinct !DISubprogram(name: "hash_add_request", scope: !210, file: !210, line: 32, type: !968, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !209, retainedNodes: !211)
!968 = !DISubroutineType(types: !969)
!969 = !{null, !215}
!970 = !DILocalVariable(name: "req", arg: 1, scope: !967, file: !210, line: 32, type: !215)
!971 = !DILocation(line: 32, column: 34, scope: !967)
!972 = !DILocalVariable(name: "p", scope: !967, file: !210, line: 34, type: !304)
!973 = !DILocation(line: 34, column: 19, scope: !967)
!974 = !DILocation(line: 34, column: 37, scope: !967)
!975 = !DILocation(line: 34, column: 24, scope: !967)
!976 = !DILocation(line: 36, column: 20, scope: !977)
!977 = distinct !DILexicalBlock(scope: !967, file: !210, line: 36, column: 6)
!978 = !DILocation(line: 36, column: 19, scope: !977)
!979 = !DILocation(line: 36, column: 7, scope: !977)
!980 = !DILocation(line: 36, column: 12, scope: !977)
!981 = !DILocation(line: 36, column: 17, scope: !977)
!982 = !DILocation(line: 36, column: 23, scope: !977)
!983 = !DILocation(line: 36, column: 6, scope: !967)
!984 = !DILocation(line: 37, column: 17, scope: !985)
!985 = distinct !DILexicalBlock(scope: !977, file: !210, line: 36, column: 32)
!986 = !DILocation(line: 37, column: 22, scope: !985)
!987 = !DILocation(line: 37, column: 5, scope: !985)
!988 = !DILocation(line: 37, column: 4, scope: !985)
!989 = !DILocation(line: 37, column: 9, scope: !985)
!990 = !DILocation(line: 37, column: 14, scope: !985)
!991 = !DILocation(line: 38, column: 3, scope: !985)
!992 = !DILocation(line: 39, column: 2, scope: !985)
!993 = !DILocation(line: 40, column: 7, scope: !967)
!994 = !DILocation(line: 40, column: 3, scope: !967)
!995 = !DILocation(line: 40, column: 5, scope: !967)
!996 = !DILocation(line: 41, column: 14, scope: !967)
!997 = !DILocation(line: 41, column: 2, scope: !967)
!998 = !DILocation(line: 41, column: 7, scope: !967)
!999 = !DILocation(line: 41, column: 12, scope: !967)
!1000 = !DILocation(line: 43, column: 2, scope: !967)
!1001 = !DILocation(line: 44, column: 1, scope: !967)
!1002 = distinct !DISubprogram(name: "hash_remove_request", scope: !210, file: !210, line: 47, type: !968, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !209, retainedNodes: !211)
!1003 = !DILocalVariable(name: "req", arg: 1, scope: !1002, file: !210, line: 47, type: !215)
!1004 = !DILocation(line: 47, column: 37, scope: !1002)
!1005 = !DILocation(line: 49, column: 7, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1002, file: !210, line: 49, column: 6)
!1007 = !DILocation(line: 49, column: 12, scope: !1006)
!1008 = !DILocation(line: 49, column: 6, scope: !1002)
!1009 = !DILocation(line: 49, column: 18, scope: !1006)
!1010 = !DILocation(line: 50, column: 6, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1002, file: !210, line: 50, column: 6)
!1012 = !DILocation(line: 50, column: 11, scope: !1011)
!1013 = !DILocation(line: 50, column: 6, scope: !1002)
!1014 = !DILocation(line: 51, column: 21, scope: !1011)
!1015 = !DILocation(line: 51, column: 26, scope: !1011)
!1016 = !DILocation(line: 51, column: 3, scope: !1011)
!1017 = !DILocation(line: 51, column: 8, scope: !1011)
!1018 = !DILocation(line: 51, column: 14, scope: !1011)
!1019 = !DILocation(line: 51, column: 19, scope: !1011)
!1020 = !DILocation(line: 52, column: 15, scope: !1002)
!1021 = !DILocation(line: 52, column: 20, scope: !1002)
!1022 = !DILocation(line: 52, column: 3, scope: !1002)
!1023 = !DILocation(line: 52, column: 8, scope: !1002)
!1024 = !DILocation(line: 52, column: 13, scope: !1002)
!1025 = !DILocation(line: 53, column: 2, scope: !1002)
!1026 = !DILocation(line: 53, column: 7, scope: !1002)
!1027 = !DILocation(line: 53, column: 12, scope: !1002)
!1028 = !DILocation(line: 55, column: 2, scope: !1002)
!1029 = !DILocation(line: 56, column: 1, scope: !1002)
!1030 = distinct !DISubprogram(name: "hash_find_request", scope: !210, file: !210, line: 59, type: !1031, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !209, retainedNodes: !211)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!215, !26}
!1033 = !DILocalVariable(name: "id", arg: 1, scope: !1030, file: !210, line: 59, type: !26)
!1034 = !DILocation(line: 59, column: 34, scope: !1030)
!1035 = !DILocalVariable(name: "req", scope: !1030, file: !210, line: 61, type: !215)
!1036 = !DILocation(line: 61, column: 18, scope: !1030)
!1037 = !DILocation(line: 61, column: 37, scope: !1030)
!1038 = !DILocation(line: 61, column: 24, scope: !1030)
!1039 = !DILocation(line: 63, column: 2, scope: !1030)
!1040 = !DILocation(line: 64, column: 8, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !210, line: 64, column: 7)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !210, line: 63, column: 11)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !210, line: 63, column: 2)
!1044 = distinct !DILexicalBlock(scope: !1030, file: !210, line: 63, column: 2)
!1045 = !DILocation(line: 64, column: 7, scope: !1042)
!1046 = !DILocation(line: 64, column: 13, scope: !1041)
!1047 = !DILocation(line: 65, column: 7, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1042, file: !210, line: 65, column: 7)
!1049 = !DILocation(line: 65, column: 12, scope: !1048)
!1050 = !DILocation(line: 65, column: 18, scope: !1048)
!1051 = !DILocation(line: 65, column: 15, scope: !1048)
!1052 = !DILocation(line: 65, column: 7, scope: !1042)
!1053 = !DILocation(line: 65, column: 22, scope: !1048)
!1054 = !DILocation(line: 66, column: 9, scope: !1042)
!1055 = !DILocation(line: 66, column: 14, scope: !1042)
!1056 = !DILocation(line: 66, column: 7, scope: !1042)
!1057 = !DILocation(line: 63, column: 2, scope: !1043)
!1058 = distinct !{!1058, !1059, !1060}
!1059 = !DILocation(line: 63, column: 2, scope: !1044)
!1060 = !DILocation(line: 67, column: 2, scope: !1044)
!1061 = !DILocation(line: 69, column: 9, scope: !1030)
!1062 = !DILocation(line: 69, column: 2, scope: !1030)
!1063 = distinct !DISubprogram(name: "add_internal", scope: !311, file: !311, line: 39, type: !1064, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !310, retainedNodes: !211)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!63, !167}
!1066 = !DILocalVariable(name: "s", arg: 1, scope: !1063, file: !311, line: 39, type: !167)
!1067 = !DILocation(line: 39, column: 20, scope: !1063)
!1068 = !DILocalVariable(name: "p", scope: !1063, file: !311, line: 41, type: !167)
!1069 = !DILocation(line: 41, column: 8, scope: !1063)
!1070 = !DILocalVariable(name: "mask", scope: !1063, file: !311, line: 42, type: !63)
!1071 = !DILocation(line: 42, column: 6, scope: !1063)
!1072 = !DILocalVariable(name: "addr", scope: !1063, file: !311, line: 43, type: !1073)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !129, line: 31, size: 32, elements: !1074)
!1074 = !{!1075}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !1073, file: !129, line: 33, baseType: !140, size: 32)
!1076 = !DILocation(line: 43, column: 17, scope: !1063)
!1077 = !DILocalVariable(name: "ipa", scope: !1063, file: !311, line: 44, type: !313)
!1078 = !DILocation(line: 44, column: 19, scope: !1063)
!1079 = !DILocation(line: 46, column: 6, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1063, file: !311, line: 46, column: 6)
!1081 = !DILocation(line: 46, column: 8, scope: !1080)
!1082 = !DILocation(line: 46, column: 6, scope: !1063)
!1083 = !DILocation(line: 47, column: 3, scope: !1080)
!1084 = !DILocation(line: 49, column: 18, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1063, file: !311, line: 49, column: 6)
!1086 = !DILocation(line: 49, column: 11, scope: !1085)
!1087 = !DILocation(line: 49, column: 9, scope: !1085)
!1088 = !DILocation(line: 49, column: 27, scope: !1085)
!1089 = !DILocation(line: 49, column: 6, scope: !1063)
!1090 = !DILocation(line: 50, column: 17, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1085, file: !311, line: 49, column: 36)
!1092 = !DILocation(line: 50, column: 18, scope: !1091)
!1093 = !DILocation(line: 50, column: 10, scope: !1091)
!1094 = !DILocation(line: 50, column: 32, scope: !1091)
!1095 = !DILocation(line: 50, column: 8, scope: !1091)
!1096 = !DILocation(line: 51, column: 4, scope: !1091)
!1097 = !DILocation(line: 51, column: 6, scope: !1091)
!1098 = !DILocation(line: 52, column: 2, scope: !1091)
!1099 = !DILocation(line: 53, column: 8, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1085, file: !311, line: 52, column: 9)
!1101 = !DILocation(line: 56, column: 25, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1063, file: !311, line: 56, column: 6)
!1103 = !DILocation(line: 56, column: 28, scope: !1102)
!1104 = !DILocation(line: 56, column: 6, scope: !1102)
!1105 = !DILocation(line: 56, column: 35, scope: !1102)
!1106 = !DILocation(line: 56, column: 6, scope: !1063)
!1107 = !DILocation(line: 57, column: 3, scope: !1102)
!1108 = !DILocation(line: 59, column: 13, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1063, file: !311, line: 59, column: 6)
!1110 = !DILocation(line: 59, column: 11, scope: !1109)
!1111 = !DILocation(line: 59, column: 49, scope: !1109)
!1112 = !DILocation(line: 59, column: 6, scope: !1063)
!1113 = !DILocation(line: 60, column: 32, scope: !1109)
!1114 = !DILocation(line: 60, column: 23, scope: !1109)
!1115 = !DILocation(line: 60, column: 3, scope: !1109)
!1116 = !DILocation(line: 62, column: 10, scope: !1063)
!1117 = !DILocation(line: 62, column: 15, scope: !1063)
!1118 = !DILocation(line: 62, column: 2, scope: !1063)
!1119 = !DILocation(line: 63, column: 40, scope: !1063)
!1120 = !DILocation(line: 63, column: 38, scope: !1063)
!1121 = !DILocation(line: 63, column: 31, scope: !1063)
!1122 = !DILocation(line: 63, column: 14, scope: !1063)
!1123 = !DILocation(line: 63, column: 2, scope: !1063)
!1124 = !DILocation(line: 63, column: 7, scope: !1063)
!1125 = !DILocation(line: 63, column: 12, scope: !1063)
!1126 = !DILocation(line: 64, column: 15, scope: !1063)
!1127 = !DILocation(line: 64, column: 20, scope: !1063)
!1128 = !DILocation(line: 64, column: 2, scope: !1063)
!1129 = !DILocation(line: 64, column: 7, scope: !1063)
!1130 = !DILocation(line: 64, column: 12, scope: !1063)
!1131 = !DILocation(line: 65, column: 14, scope: !1063)
!1132 = !DILocation(line: 65, column: 2, scope: !1063)
!1133 = !DILocation(line: 65, column: 7, scope: !1063)
!1134 = !DILocation(line: 65, column: 12, scope: !1063)
!1135 = !DILocation(line: 66, column: 14, scope: !1063)
!1136 = !DILocation(line: 66, column: 12, scope: !1063)
!1137 = !DILocation(line: 71, column: 2, scope: !1063)
!1138 = !DILocation(line: 72, column: 1, scope: !1063)
!1139 = distinct !DISubprogram(name: "is_internal", scope: !311, file: !311, line: 75, type: !1140, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !310, retainedNodes: !211)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!63, !1073}
!1142 = !DILocalVariable(name: "arg", arg: 1, scope: !1139, file: !311, line: 75, type: !1073)
!1143 = !DILocation(line: 75, column: 28, scope: !1139)
!1144 = !DILocalVariable(name: "addr", scope: !1139, file: !311, line: 77, type: !7)
!1145 = !DILocation(line: 77, column: 15, scope: !1139)
!1146 = !DILocalVariable(name: "p", scope: !1139, file: !311, line: 78, type: !313)
!1147 = !DILocation(line: 78, column: 19, scope: !1139)
!1148 = !DILocation(line: 81, column: 2, scope: !1139)
!1149 = !DILocation(line: 83, column: 11, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1139, file: !311, line: 83, column: 2)
!1151 = !DILocation(line: 83, column: 9, scope: !1150)
!1152 = !DILocation(line: 83, column: 7, scope: !1150)
!1153 = !DILocation(line: 83, column: 22, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1150, file: !311, line: 83, column: 2)
!1155 = !DILocation(line: 83, column: 24, scope: !1154)
!1156 = !DILocation(line: 83, column: 2, scope: !1150)
!1157 = !DILocation(line: 85, column: 7, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !311, line: 85, column: 7)
!1159 = distinct !DILexicalBlock(scope: !1154, file: !311, line: 83, column: 46)
!1160 = !DILocation(line: 85, column: 10, scope: !1158)
!1161 = !DILocation(line: 85, column: 19, scope: !1158)
!1162 = !DILocation(line: 85, column: 26, scope: !1158)
!1163 = !DILocation(line: 85, column: 29, scope: !1158)
!1164 = !DILocation(line: 85, column: 24, scope: !1158)
!1165 = !DILocation(line: 85, column: 15, scope: !1158)
!1166 = !DILocation(line: 85, column: 7, scope: !1159)
!1167 = !DILocation(line: 86, column: 4, scope: !1158)
!1168 = !DILocation(line: 87, column: 2, scope: !1159)
!1169 = !DILocation(line: 83, column: 37, scope: !1154)
!1170 = !DILocation(line: 83, column: 40, scope: !1154)
!1171 = !DILocation(line: 83, column: 35, scope: !1154)
!1172 = !DILocation(line: 83, column: 2, scope: !1154)
!1173 = distinct !{!1173, !1156, !1174, !491}
!1174 = !DILocation(line: 87, column: 2, scope: !1150)
!1175 = !DILocation(line: 89, column: 2, scope: !1139)
!1176 = !DILocation(line: 90, column: 1, scope: !1139)
!1177 = distinct !DISubprogram(name: "log_syslog", scope: !322, file: !322, line: 33, type: !1178, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !321, retainedNodes: !211)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{null, !463}
!1180 = !DILocalVariable(name: "tag", arg: 1, scope: !1177, file: !322, line: 33, type: !463)
!1181 = !DILocation(line: 33, column: 24, scope: !1177)
!1182 = !DILocation(line: 35, column: 10, scope: !1177)
!1183 = !DILocation(line: 35, column: 2, scope: !1177)
!1184 = !DILocation(line: 36, column: 2, scope: !1177)
!1185 = !DILocation(line: 37, column: 1, scope: !1177)
!1186 = distinct !DISubprogram(name: "info", scope: !322, file: !322, line: 52, type: !1187, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !321, retainedNodes: !211)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{null, !463, null}
!1189 = !DILocalVariable(name: "fmt", arg: 1, scope: !1186, file: !322, line: 52, type: !463)
!1190 = !DILocation(line: 52, column: 18, scope: !1186)
!1191 = !DILocalVariable(name: "ap", scope: !1186, file: !322, line: 54, type: !1192)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1193, line: 52, baseType: !1194)
!1193 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1195, line: 32, baseType: !1196)
!1195 = !DIFile(filename: "LLVM_12.0_src/llvm-project/build/lib/clang/12.0.1/include/stdarg.h", directory: "/nobackup")
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !322, baseType: !1197)
!1197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1198, size: 192, elements: !1204)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1199)
!1199 = !{!1200, !1201, !1202, !1203}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1198, file: !322, line: 54, baseType: !7, size: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1198, file: !322, line: 54, baseType: !7, size: 32, offset: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1198, file: !322, line: 54, baseType: !32, size: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1198, file: !322, line: 54, baseType: !32, size: 64, offset: 128)
!1204 = !{!1205}
!1205 = !DISubrange(count: 1)
!1206 = !DILocation(line: 54, column: 10, scope: !1186)
!1207 = !DILocation(line: 56, column: 2, scope: !1186)
!1208 = !DILocation(line: 57, column: 23, scope: !1186)
!1209 = !DILocation(line: 57, column: 28, scope: !1186)
!1210 = !DILocation(line: 57, column: 2, scope: !1186)
!1211 = !DILocation(line: 58, column: 2, scope: !1186)
!1212 = !DILocation(line: 59, column: 1, scope: !1186)
!1213 = distinct !DISubprogram(name: "log_printf", scope: !322, file: !322, line: 40, type: !1214, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !321, retainedNodes: !211)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{null, !63, !463, !1216}
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1217 = !DILocalVariable(name: "level", arg: 1, scope: !1213, file: !322, line: 40, type: !63)
!1218 = !DILocation(line: 40, column: 16, scope: !1213)
!1219 = !DILocalVariable(name: "fmt", arg: 2, scope: !1213, file: !322, line: 40, type: !463)
!1220 = !DILocation(line: 40, column: 35, scope: !1213)
!1221 = !DILocalVariable(name: "ap", arg: 3, scope: !1213, file: !322, line: 40, type: !1216)
!1222 = !DILocation(line: 40, column: 48, scope: !1213)
!1223 = !DILocation(line: 42, column: 6, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1213, file: !322, line: 42, column: 6)
!1225 = !DILocation(line: 42, column: 6, scope: !1213)
!1226 = !DILocation(line: 43, column: 11, scope: !1224)
!1227 = !DILocation(line: 43, column: 18, scope: !1224)
!1228 = !DILocation(line: 43, column: 23, scope: !1224)
!1229 = !DILocation(line: 43, column: 3, scope: !1224)
!1230 = !DILocation(line: 45, column: 18, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1224, file: !322, line: 44, column: 7)
!1232 = !DILocation(line: 45, column: 26, scope: !1231)
!1233 = !DILocation(line: 45, column: 31, scope: !1231)
!1234 = !DILocation(line: 45, column: 9, scope: !1231)
!1235 = !DILocation(line: 46, column: 14, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1231, file: !322, line: 46, column: 7)
!1237 = !DILocation(line: 46, column: 7, scope: !1236)
!1238 = !DILocation(line: 46, column: 25, scope: !1236)
!1239 = !DILocation(line: 46, column: 7, scope: !1231)
!1240 = !DILocation(line: 47, column: 12, scope: !1236)
!1241 = !DILocation(line: 47, column: 4, scope: !1236)
!1242 = !DILocation(line: 49, column: 1, scope: !1213)
!1243 = distinct !DISubprogram(name: "error", scope: !322, file: !322, line: 62, type: !1187, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !321, retainedNodes: !211)
!1244 = !DILocalVariable(name: "fmt", arg: 1, scope: !1243, file: !322, line: 62, type: !463)
!1245 = !DILocation(line: 62, column: 19, scope: !1243)
!1246 = !DILocalVariable(name: "ap", scope: !1243, file: !322, line: 64, type: !1192)
!1247 = !DILocation(line: 64, column: 10, scope: !1243)
!1248 = !DILocation(line: 66, column: 2, scope: !1243)
!1249 = !DILocation(line: 67, column: 22, scope: !1243)
!1250 = !DILocation(line: 67, column: 27, scope: !1243)
!1251 = !DILocation(line: 67, column: 2, scope: !1243)
!1252 = !DILocation(line: 68, column: 2, scope: !1243)
!1253 = !DILocation(line: 69, column: 1, scope: !1243)
!1254 = distinct !DISubprogram(name: "fatal", scope: !322, file: !322, line: 72, type: !1187, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !321, retainedNodes: !211)
!1255 = !DILocalVariable(name: "fmt", arg: 1, scope: !1254, file: !322, line: 72, type: !463)
!1256 = !DILocation(line: 72, column: 19, scope: !1254)
!1257 = !DILocalVariable(name: "ap", scope: !1254, file: !322, line: 74, type: !1192)
!1258 = !DILocation(line: 74, column: 10, scope: !1254)
!1259 = !DILocation(line: 76, column: 2, scope: !1254)
!1260 = !DILocation(line: 77, column: 22, scope: !1254)
!1261 = !DILocation(line: 77, column: 27, scope: !1254)
!1262 = !DILocation(line: 77, column: 2, scope: !1254)
!1263 = !DILocation(line: 78, column: 2, scope: !1254)
!1264 = !DILocation(line: 80, column: 2, scope: !1254)
!1265 = distinct !DISubprogram(name: "parse", scope: !405, file: !405, line: 34, type: !1266, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !404, retainedNodes: !211)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!63, !463}
!1268 = !DILocalVariable(name: "fname", arg: 1, scope: !1265, file: !405, line: 34, type: !463)
!1269 = !DILocation(line: 34, column: 19, scope: !1265)
!1270 = !DILocalVariable(name: "f", scope: !1265, file: !405, line: 36, type: !1271)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1273, line: 7, baseType: !1274)
!1273 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1275, line: 49, size: 1728, elements: !1276)
!1275 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1276 = !{!1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1292, !1294, !1295, !1296, !1298, !1299, !1301, !1303, !1306, !1308, !1311, !1314, !1315, !1316, !1319, !1320}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1274, file: !1275, line: 51, baseType: !63, size: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1274, file: !1275, line: 54, baseType: !167, size: 64, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1274, file: !1275, line: 55, baseType: !167, size: 64, offset: 128)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1274, file: !1275, line: 56, baseType: !167, size: 64, offset: 192)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1274, file: !1275, line: 57, baseType: !167, size: 64, offset: 256)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1274, file: !1275, line: 58, baseType: !167, size: 64, offset: 320)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1274, file: !1275, line: 59, baseType: !167, size: 64, offset: 384)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1274, file: !1275, line: 60, baseType: !167, size: 64, offset: 448)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1274, file: !1275, line: 61, baseType: !167, size: 64, offset: 512)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1274, file: !1275, line: 64, baseType: !167, size: 64, offset: 576)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1274, file: !1275, line: 65, baseType: !167, size: 64, offset: 640)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1274, file: !1275, line: 66, baseType: !167, size: 64, offset: 704)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1274, file: !1275, line: 68, baseType: !1290, size: 64, offset: 768)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1275, line: 36, flags: DIFlagFwdDecl)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1274, file: !1275, line: 70, baseType: !1293, size: 64, offset: 832)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1274, file: !1275, line: 72, baseType: !63, size: 32, offset: 896)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1274, file: !1275, line: 73, baseType: !63, size: 32, offset: 928)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1274, file: !1275, line: 74, baseType: !1297, size: 64, offset: 960)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !53, line: 152, baseType: !105)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1274, file: !1275, line: 77, baseType: !26, size: 16, offset: 1024)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1274, file: !1275, line: 78, baseType: !1300, size: 8, offset: 1040)
!1300 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1274, file: !1275, line: 79, baseType: !1302, size: 8, offset: 1048)
!1302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 8, elements: !1204)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1274, file: !1275, line: 81, baseType: !1304, size: 64, offset: 1088)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1275, line: 43, baseType: null)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1274, file: !1275, line: 89, baseType: !1307, size: 64, offset: 1152)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !53, line: 153, baseType: !105)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1274, file: !1275, line: 91, baseType: !1309, size: 64, offset: 1216)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1275, line: 37, flags: DIFlagFwdDecl)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1274, file: !1275, line: 92, baseType: !1312, size: 64, offset: 1280)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1275, line: 38, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1274, file: !1275, line: 93, baseType: !1293, size: 64, offset: 1344)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1274, file: !1275, line: 94, baseType: !32, size: 64, offset: 1408)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1274, file: !1275, line: 95, baseType: !1317, size: 64, offset: 1472)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1318, line: 46, baseType: !178)
!1318 = !DIFile(filename: "LLVM_12.0_src/llvm-project/build/lib/clang/12.0.1/include/stddef.h", directory: "/nobackup")
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1274, file: !1275, line: 96, baseType: !63, size: 32, offset: 1536)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1274, file: !1275, line: 98, baseType: !1321, size: 160, offset: 1568)
!1321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 160, elements: !1322)
!1322 = !{!1323}
!1323 = !DISubrange(count: 20)
!1324 = !DILocation(line: 36, column: 8, scope: !1265)
!1325 = !DILocalVariable(name: "buf", scope: !1265, file: !405, line: 37, type: !1326)
!1326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 8192, elements: !306)
!1327 = !DILocation(line: 37, column: 7, scope: !1265)
!1328 = !DILocalVariable(name: "s", scope: !1265, file: !405, line: 38, type: !167)
!1329 = !DILocation(line: 38, column: 8, scope: !1265)
!1330 = !DILocalVariable(name: "key", scope: !1265, file: !405, line: 38, type: !167)
!1331 = !DILocation(line: 38, column: 12, scope: !1265)
!1332 = !DILocalVariable(name: "arg", scope: !1265, file: !405, line: 38, type: !167)
!1333 = !DILocation(line: 38, column: 18, scope: !1265)
!1334 = !DILocation(line: 40, column: 17, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1265, file: !405, line: 40, column: 6)
!1336 = !DILocation(line: 40, column: 11, scope: !1335)
!1337 = !DILocation(line: 40, column: 9, scope: !1335)
!1338 = !DILocation(line: 40, column: 30, scope: !1335)
!1339 = !DILocation(line: 40, column: 6, scope: !1265)
!1340 = !DILocation(line: 41, column: 3, scope: !1335)
!1341 = !DILocation(line: 43, column: 2, scope: !1265)
!1342 = !DILocation(line: 43, column: 15, scope: !1265)
!1343 = !DILocation(line: 43, column: 33, scope: !1265)
!1344 = !DILocation(line: 43, column: 9, scope: !1265)
!1345 = !DILocation(line: 43, column: 36, scope: !1265)
!1346 = !DILocation(line: 45, column: 19, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !405, line: 45, column: 7)
!1348 = distinct !DILexicalBlock(scope: !1265, file: !405, line: 43, column: 45)
!1349 = !DILocation(line: 45, column: 12, scope: !1347)
!1350 = !DILocation(line: 45, column: 10, scope: !1347)
!1351 = !DILocation(line: 45, column: 30, scope: !1347)
!1352 = !DILocation(line: 45, column: 7, scope: !1348)
!1353 = !DILocation(line: 46, column: 5, scope: !1347)
!1354 = !DILocation(line: 46, column: 7, scope: !1347)
!1355 = !DILocation(line: 46, column: 4, scope: !1347)
!1356 = !DILocation(line: 48, column: 16, scope: !1348)
!1357 = !DILocation(line: 48, column: 9, scope: !1348)
!1358 = !DILocation(line: 48, column: 7, scope: !1348)
!1359 = !DILocation(line: 49, column: 9, scope: !1348)
!1360 = !DILocation(line: 49, column: 7, scope: !1348)
!1361 = !DILocation(line: 50, column: 8, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1348, file: !405, line: 50, column: 7)
!1363 = !DILocation(line: 50, column: 12, scope: !1362)
!1364 = !DILocation(line: 50, column: 16, scope: !1362)
!1365 = !DILocation(line: 50, column: 7, scope: !1348)
!1366 = !DILocation(line: 51, column: 4, scope: !1362)
!1367 = distinct !{!1367, !1341, !1368, !491}
!1368 = !DILocation(line: 105, column: 2, scope: !1265)
!1369 = !DILocation(line: 55, column: 15, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1348, file: !405, line: 55, column: 7)
!1371 = !DILocation(line: 55, column: 8, scope: !1370)
!1372 = !DILocation(line: 55, column: 7, scope: !1348)
!1373 = !DILocation(line: 56, column: 27, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1370, file: !405, line: 55, column: 38)
!1375 = !DILocation(line: 56, column: 20, scope: !1374)
!1376 = !DILocation(line: 56, column: 18, scope: !1374)
!1377 = !DILocation(line: 57, column: 4, scope: !1374)
!1378 = !DILocation(line: 59, column: 15, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1348, file: !405, line: 59, column: 7)
!1380 = !DILocation(line: 59, column: 8, scope: !1379)
!1381 = !DILocation(line: 59, column: 7, scope: !1348)
!1382 = !DILocation(line: 60, column: 35, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1379, file: !405, line: 59, column: 46)
!1384 = !DILocation(line: 60, column: 28, scope: !1383)
!1385 = !DILocation(line: 60, column: 26, scope: !1383)
!1386 = !DILocation(line: 61, column: 4, scope: !1383)
!1387 = !DILocation(line: 63, column: 15, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1348, file: !405, line: 63, column: 7)
!1389 = !DILocation(line: 63, column: 8, scope: !1388)
!1390 = !DILocation(line: 63, column: 7, scope: !1348)
!1391 = !DILocation(line: 64, column: 32, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1388, file: !405, line: 63, column: 43)
!1393 = !DILocation(line: 64, column: 25, scope: !1392)
!1394 = !DILocation(line: 64, column: 23, scope: !1392)
!1395 = !DILocation(line: 65, column: 4, scope: !1392)
!1396 = !DILocation(line: 67, column: 15, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1348, file: !405, line: 67, column: 7)
!1398 = !DILocation(line: 67, column: 8, scope: !1397)
!1399 = !DILocation(line: 67, column: 7, scope: !1348)
!1400 = !DILocation(line: 68, column: 23, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1397, file: !405, line: 67, column: 34)
!1402 = !DILocation(line: 68, column: 16, scope: !1401)
!1403 = !DILocation(line: 68, column: 14, scope: !1401)
!1404 = !DILocation(line: 69, column: 4, scope: !1401)
!1405 = !DILocation(line: 71, column: 15, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1348, file: !405, line: 71, column: 7)
!1407 = !DILocation(line: 71, column: 8, scope: !1406)
!1408 = !DILocation(line: 71, column: 7, scope: !1348)
!1409 = !DILocation(line: 72, column: 31, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1406, file: !405, line: 71, column: 42)
!1411 = !DILocation(line: 72, column: 24, scope: !1410)
!1412 = !DILocation(line: 72, column: 22, scope: !1410)
!1413 = !DILocation(line: 73, column: 4, scope: !1410)
!1414 = !DILocation(line: 75, column: 15, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1348, file: !405, line: 75, column: 7)
!1416 = !DILocation(line: 75, column: 8, scope: !1415)
!1417 = !DILocation(line: 75, column: 7, scope: !1348)
!1418 = !DILocation(line: 76, column: 28, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1415, file: !405, line: 75, column: 39)
!1420 = !DILocation(line: 76, column: 21, scope: !1419)
!1421 = !DILocation(line: 76, column: 19, scope: !1419)
!1422 = !DILocation(line: 77, column: 4, scope: !1419)
!1423 = !DILocation(line: 79, column: 15, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1348, file: !405, line: 79, column: 7)
!1425 = !DILocation(line: 79, column: 8, scope: !1424)
!1426 = !DILocation(line: 79, column: 7, scope: !1348)
!1427 = !DILocation(line: 80, column: 27, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1424, file: !405, line: 79, column: 35)
!1429 = !DILocation(line: 80, column: 20, scope: !1428)
!1430 = !DILocation(line: 80, column: 18, scope: !1428)
!1431 = !DILocation(line: 81, column: 4, scope: !1428)
!1432 = !DILocation(line: 83, column: 15, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1348, file: !405, line: 83, column: 7)
!1434 = !DILocation(line: 83, column: 8, scope: !1433)
!1435 = !DILocation(line: 83, column: 7, scope: !1348)
!1436 = !DILocation(line: 84, column: 22, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1433, file: !405, line: 83, column: 31)
!1438 = !DILocation(line: 84, column: 15, scope: !1437)
!1439 = !DILocation(line: 84, column: 13, scope: !1437)
!1440 = !DILocation(line: 85, column: 4, scope: !1437)
!1441 = !DILocation(line: 87, column: 15, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1348, file: !405, line: 87, column: 7)
!1443 = !DILocation(line: 87, column: 8, scope: !1442)
!1444 = !DILocation(line: 87, column: 7, scope: !1348)
!1445 = !DILocation(line: 88, column: 18, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1442, file: !405, line: 87, column: 29)
!1447 = !DILocation(line: 88, column: 11, scope: !1446)
!1448 = !DILocation(line: 88, column: 9, scope: !1446)
!1449 = !DILocation(line: 89, column: 4, scope: !1446)
!1450 = !DILocation(line: 91, column: 15, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1348, file: !405, line: 91, column: 7)
!1452 = !DILocation(line: 91, column: 8, scope: !1451)
!1453 = !DILocation(line: 91, column: 7, scope: !1348)
!1454 = !DILocation(line: 92, column: 23, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1451, file: !405, line: 91, column: 31)
!1456 = !DILocation(line: 92, column: 16, scope: !1455)
!1457 = !DILocation(line: 92, column: 14, scope: !1455)
!1458 = !DILocation(line: 93, column: 4, scope: !1455)
!1459 = !DILocation(line: 95, column: 15, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1348, file: !405, line: 95, column: 7)
!1461 = !DILocation(line: 95, column: 8, scope: !1460)
!1462 = !DILocation(line: 95, column: 7, scope: !1348)
!1463 = !DILocation(line: 96, column: 18, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1460, file: !405, line: 95, column: 29)
!1465 = !DILocation(line: 96, column: 11, scope: !1464)
!1466 = !DILocation(line: 96, column: 9, scope: !1464)
!1467 = !DILocation(line: 97, column: 4, scope: !1464)
!1468 = !DILocation(line: 99, column: 15, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1348, file: !405, line: 99, column: 7)
!1470 = !DILocation(line: 99, column: 8, scope: !1469)
!1471 = !DILocation(line: 99, column: 7, scope: !1348)
!1472 = !DILocation(line: 100, column: 17, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1469, file: !405, line: 99, column: 33)
!1474 = !DILocation(line: 100, column: 4, scope: !1473)
!1475 = !DILocation(line: 101, column: 4, scope: !1473)
!1476 = !DILocation(line: 104, column: 32, scope: !1348)
!1477 = !DILocation(line: 104, column: 3, scope: !1348)
!1478 = !DILocation(line: 107, column: 9, scope: !1265)
!1479 = !DILocation(line: 107, column: 2, scope: !1265)
!1480 = !DILocation(line: 109, column: 2, scope: !1265)
!1481 = !DILocation(line: 110, column: 1, scope: !1265)
!1482 = distinct !DISubprogram(name: "statistics_start", scope: !327, file: !327, line: 49, type: !422, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !326, retainedNodes: !211)
!1483 = !DILocation(line: 51, column: 6, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1482, file: !327, line: 51, column: 6)
!1485 = !DILocation(line: 51, column: 20, scope: !1484)
!1486 = !DILocation(line: 51, column: 6, scope: !1482)
!1487 = !DILocation(line: 52, column: 13, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1484, file: !327, line: 51, column: 25)
!1489 = !DILocation(line: 52, column: 12, scope: !1488)
!1490 = !DILocation(line: 53, column: 13, scope: !1488)
!1491 = !DILocation(line: 55, column: 3, scope: !1488)
!1492 = !DILocation(line: 56, column: 7, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1488, file: !327, line: 56, column: 7)
!1494 = !DILocation(line: 56, column: 34, scope: !1493)
!1495 = !DILocation(line: 56, column: 7, scope: !1488)
!1496 = !DILocation(line: 57, column: 38, scope: !1493)
!1497 = !DILocation(line: 57, column: 29, scope: !1493)
!1498 = !DILocation(line: 57, column: 4, scope: !1493)
!1499 = !DILocation(line: 58, column: 2, scope: !1488)
!1500 = !DILocation(line: 59, column: 1, scope: !1482)
!1501 = distinct !DISubprogram(name: "statistics_timeout", scope: !327, file: !327, line: 33, type: !61, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !326, retainedNodes: !211)
!1502 = !DILocalVariable(name: "fd", arg: 1, scope: !1501, file: !327, line: 33, type: !63)
!1503 = !DILocation(line: 33, column: 24, scope: !1501)
!1504 = !DILocalVariable(name: "event", arg: 2, scope: !1501, file: !327, line: 33, type: !48)
!1505 = !DILocation(line: 33, column: 34, scope: !1501)
!1506 = !DILocalVariable(name: "arg", arg: 3, scope: !1501, file: !327, line: 33, type: !32)
!1507 = !DILocation(line: 33, column: 47, scope: !1501)
!1508 = !DILocation(line: 36, column: 6, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1501, file: !327, line: 36, column: 6)
!1510 = !DILocation(line: 36, column: 31, scope: !1509)
!1511 = !DILocation(line: 36, column: 6, scope: !1501)
!1512 = !DILocation(line: 37, column: 35, scope: !1509)
!1513 = !DILocation(line: 37, column: 26, scope: !1509)
!1514 = !DILocation(line: 37, column: 3, scope: !1509)
!1515 = !DILocation(line: 40, column: 2, scope: !1501)
!1516 = !DILocation(line: 41, column: 35, scope: !1501)
!1517 = !DILocation(line: 41, column: 51, scope: !1501)
!1518 = !DILocation(line: 42, column: 6, scope: !1501)
!1519 = !DILocation(line: 42, column: 25, scope: !1501)
!1520 = !DILocation(line: 42, column: 38, scope: !1501)
!1521 = !DILocation(line: 41, column: 2, scope: !1501)
!1522 = !DILocation(line: 43, column: 2, scope: !1501)
!1523 = !DILocation(line: 44, column: 35, scope: !1501)
!1524 = !DILocation(line: 44, column: 52, scope: !1501)
!1525 = !DILocation(line: 45, column: 6, scope: !1501)
!1526 = !DILocation(line: 45, column: 23, scope: !1501)
!1527 = !DILocation(line: 45, column: 37, scope: !1501)
!1528 = !DILocation(line: 44, column: 2, scope: !1501)
!1529 = !DILocation(line: 46, column: 1, scope: !1501)
