; ModuleID = 'knock.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@o_verbose = dso_local global i32 0, align 4, !dbg !0
@o_udp = dso_local global i32 0, align 4, !dbg !60
@.str.4 = private unnamed_addr constant [5 x i8] c"vuhV\00", align 1
@main.opts = internal global [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 0, i32* null, i32 86 }, %struct.option zeroinitializer], align 16, !dbg !63
@optind = external dso_local global i32, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"Cannot resolve hostname\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Cannot open socket\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"hitting udp %s:%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"hitting tcp %s:%u\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.9 = private unnamed_addr constant [65 x i8] c"usage: knock [options] <host> <port[:proto]> [port[:proto]] ...\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"options:\0A\00", align 1
@.str.11 = private unnamed_addr constant [69 x i8] c"  -u, --udp            make all ports hits use UDP (default is TCP)\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"  -v, --verbose        be verbose\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"  -V, --version        display version\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"  -h, --help           this help\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [62 x i8] c"example:  knock myserver.example.com 123:tcp 456:udp 789:tcp\0A\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"knock %s\0A\00", align 1
@version = internal global [4 x i8] c"0.5\00", align 1, !dbg !84
@.str.18 = private unnamed_addr constant [58 x i8] c"Copyright (C) 2004-2005 Judd Vinet <jvinet@zeroflux.org>\0A\00", align 1
@.str = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"version\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_dump_memory() #0 !dbg !93 {
  ret void, !dbg !96
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 !dbg !65 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hostent*, align 8
  %8 = alloca %struct.sockaddr_in, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %17 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !97, metadata !DIExpression()), !dbg !98
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata i32* %6, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata %struct.hostent** %7, metadata !103, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %8, metadata !114, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata i32* %9, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata i32* %10, metadata !140, metadata !DIExpression()), !dbg !141
  store i32 1, i32* %10, align 4, !dbg !141
  br label %18, !dbg !142

18:                                               ; preds = %35, %2
  %19 = load i32, i32* %4, align 4, !dbg !143
  %20 = load i8**, i8*** %5, align 8, !dbg !144
  %21 = call i32 @getopt_long(i32 %19, i8** %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @main.opts, i64 0, i64 0), i32* %10) #9, !dbg !145
  store i32 %21, i32* %9, align 4, !dbg !146
  %22 = icmp ne i32 %21, 0, !dbg !142
  br i1 %22, label %23, label %36, !dbg !142

23:                                               ; preds = %18
  %24 = load i32, i32* %9, align 4, !dbg !147
  %25 = icmp slt i32 %24, 0, !dbg !150
  br i1 %25, label %26, label %27, !dbg !151

26:                                               ; preds = %23
  br label %36, !dbg !152

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4, !dbg !154
  switch i32 %28, label %34 [
    i32 0, label %29
    i32 118, label %30
    i32 117, label %31
    i32 86, label %32
    i32 104, label %33
  ], !dbg !155

29:                                               ; preds = %27
  br label %35, !dbg !156

30:                                               ; preds = %27
  store i32 1, i32* @o_verbose, align 4, !dbg !158
  br label %35, !dbg !159

31:                                               ; preds = %27
  store i32 1, i32* @o_udp, align 4, !dbg !160
  br label %35, !dbg !161

32:                                               ; preds = %27
  call void @ver(), !dbg !162
  br label %33, !dbg !162

33:                                               ; preds = %27, %32
  br label %34, !dbg !162

34:                                               ; preds = %27, %33
  call void @usage(), !dbg !163
  br label %35, !dbg !164

35:                                               ; preds = %34, %31, %30, %29
  br label %18, !dbg !142, !llvm.loop !165

36:                                               ; preds = %26, %18
  call void @klee_dump_memory(), !dbg !168
  %37 = load i32, i32* %4, align 4, !dbg !169
  %38 = load i32, i32* @optind, align 4, !dbg !171
  %39 = sub nsw i32 %37, %38, !dbg !172
  %40 = icmp slt i32 %39, 2, !dbg !173
  br i1 %40, label %41, label %42, !dbg !174

41:                                               ; preds = %36
  call void @usage(), !dbg !175
  br label %42, !dbg !177

42:                                               ; preds = %41, %36
  %43 = load i8**, i8*** %5, align 8, !dbg !178
  %44 = load i32, i32* @optind, align 4, !dbg !179
  %45 = add nsw i32 %44, 1, !dbg !179
  store i32 %45, i32* @optind, align 4, !dbg !179
  %46 = sext i32 %44 to i64, !dbg !178
  %47 = getelementptr inbounds i8*, i8** %43, i64 %46, !dbg !178
  %48 = load i8*, i8** %47, align 8, !dbg !178
  %49 = call %struct.hostent* @gethostbyname(i8* %48), !dbg !180
  store %struct.hostent* %49, %struct.hostent** %7, align 8, !dbg !181
  %50 = load %struct.hostent*, %struct.hostent** %7, align 8, !dbg !182
  %51 = icmp eq %struct.hostent* %50, null, !dbg !184
  br i1 %51, label %52, label %55, !dbg !185

52:                                               ; preds = %42
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !186
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0)), !dbg !188
  call void @exit(i32 1) #10, !dbg !189
  unreachable, !dbg !189

55:                                               ; preds = %42
  br label %56, !dbg !190

56:                                               ; preds = %169, %55
  %57 = load i32, i32* @optind, align 4, !dbg !191
  %58 = load i32, i32* %4, align 4, !dbg !194
  %59 = icmp slt i32 %57, %58, !dbg !195
  br i1 %59, label %60, label %172, !dbg !196

60:                                               ; preds = %56
  call void @llvm.dbg.declare(metadata i16* %11, metadata !197, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.declare(metadata i16* %12, metadata !200, metadata !DIExpression()), !dbg !201
  store i16 1, i16* %12, align 2, !dbg !201
  call void @llvm.dbg.declare(metadata i8** %13, metadata !202, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata i8** %14, metadata !204, metadata !DIExpression()), !dbg !205
  %61 = load i8**, i8*** %5, align 8, !dbg !206
  %62 = load i32, i32* @optind, align 4, !dbg !207
  %63 = sext i32 %62 to i64, !dbg !206
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63, !dbg !206
  %65 = load i8*, i8** %64, align 8, !dbg !206
  %66 = call noalias i8* @strdup(i8* %65) #9, !dbg !208
  store i8* %66, i8** %14, align 8, !dbg !205
  %67 = load i8*, i8** %14, align 8, !dbg !209
  %68 = call i8* @strchr(i8* %67, i32 58) #11, !dbg !211
  store i8* %68, i8** %13, align 8, !dbg !212
  %69 = icmp ne i8* %68, null, !dbg !212
  br i1 %69, label %70, label %83, !dbg !213

70:                                               ; preds = %60
  %71 = load i8*, i8** %13, align 8, !dbg !214
  store i8 0, i8* %71, align 1, !dbg !216
  %72 = load i8*, i8** %14, align 8, !dbg !217
  %73 = call i32 @atoi(i8* %72) #11, !dbg !218
  %74 = trunc i32 %73 to i16, !dbg !218
  store i16 %74, i16* %11, align 2, !dbg !219
  %75 = load i8*, i8** %13, align 8, !dbg !220
  %76 = getelementptr inbounds i8, i8* %75, i32 1, !dbg !220
  store i8* %76, i8** %13, align 8, !dbg !220
  store i8* %76, i8** %14, align 8, !dbg !221
  %77 = load i8*, i8** %14, align 8, !dbg !222
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #11, !dbg !224
  %79 = icmp ne i32 %78, 0, !dbg !224
  br i1 %79, label %81, label %80, !dbg !225

80:                                               ; preds = %70
  store i16 2, i16* %12, align 2, !dbg !226
  br label %82, !dbg !228

81:                                               ; preds = %70
  store i16 1, i16* %12, align 2, !dbg !229
  br label %82

82:                                               ; preds = %81, %80
  br label %87, !dbg !231

83:                                               ; preds = %60
  %84 = load i8*, i8** %14, align 8, !dbg !232
  %85 = call i32 @atoi(i8* %84) #11, !dbg !234
  %86 = trunc i32 %85 to i16, !dbg !234
  store i16 %86, i16* %11, align 2, !dbg !235
  br label %87

87:                                               ; preds = %83, %82
  %88 = load i32, i32* @o_udp, align 4, !dbg !236
  %89 = icmp ne i32 %88, 0, !dbg !236
  br i1 %89, label %94, label %90, !dbg !238

90:                                               ; preds = %87
  %91 = load i16, i16* %12, align 2, !dbg !239
  %92 = zext i16 %91 to i32, !dbg !239
  %93 = icmp eq i32 %92, 2, !dbg !240
  br i1 %93, label %94, label %102, !dbg !241

94:                                               ; preds = %90, %87
  %95 = call i32 @socket(i32 2, i32 2, i32 0) #9, !dbg !242
  store i32 %95, i32* %6, align 4, !dbg !244
  %96 = load i32, i32* %6, align 4, !dbg !245
  %97 = icmp eq i32 %96, -1, !dbg !247
  br i1 %97, label %98, label %101, !dbg !248

98:                                               ; preds = %94
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !249
  %100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0)), !dbg !251
  call void @exit(i32 1) #10, !dbg !252
  unreachable, !dbg !252

101:                                              ; preds = %94
  br label %116, !dbg !253

102:                                              ; preds = %90
  call void @llvm.dbg.declare(metadata i32* %15, metadata !254, metadata !DIExpression()), !dbg !256
  %103 = call i32 @socket(i32 2, i32 1, i32 0) #9, !dbg !257
  store i32 %103, i32* %6, align 4, !dbg !258
  %104 = load i32, i32* %6, align 4, !dbg !259
  %105 = icmp eq i32 %104, -1, !dbg !261
  br i1 %105, label %106, label %109, !dbg !262

106:                                              ; preds = %102
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !263
  %108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0)), !dbg !265
  call void @exit(i32 1) #10, !dbg !266
  unreachable, !dbg !266

109:                                              ; preds = %102
  %110 = load i32, i32* %6, align 4, !dbg !267
  %111 = call i32 (i32, i32, ...) @fcntl(i32 %110, i32 3, i32 0), !dbg !268
  store i32 %111, i32* %15, align 4, !dbg !269
  %112 = load i32, i32* %6, align 4, !dbg !270
  %113 = load i32, i32* %15, align 4, !dbg !271
  %114 = or i32 %113, 2048, !dbg !272
  %115 = call i32 (i32, i32, ...) @fcntl(i32 %112, i32 4, i32 %114), !dbg !273
  br label %116

116:                                              ; preds = %109, %101
  %117 = bitcast %struct.sockaddr_in* %8 to i8*, !dbg !274
  call void @llvm.memset.p0i8.i64(i8* align 4 %117, i8 0, i64 16, i1 false), !dbg !274
  %118 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0, !dbg !275
  store i16 2, i16* %118, align 4, !dbg !276
  %119 = load %struct.hostent*, %struct.hostent** %7, align 8, !dbg !277
  %120 = getelementptr inbounds %struct.hostent, %struct.hostent* %119, i32 0, i32 4, !dbg !278
  %121 = load i8**, i8*** %120, align 8, !dbg !278
  %122 = getelementptr inbounds i8*, i8** %121, i64 0, !dbg !277
  %123 = load i8*, i8** %122, align 8, !dbg !277
  %124 = bitcast i8* %123 to i64*, !dbg !279
  %125 = load i64, i64* %124, align 8, !dbg !279
  %126 = trunc i64 %125 to i32, !dbg !279
  %127 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2, !dbg !280
  %128 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %127, i32 0, i32 0, !dbg !281
  store i32 %126, i32* %128, align 4, !dbg !282
  %129 = load i16, i16* %11, align 2, !dbg !283
  %130 = call zeroext i16 @htons(i16 zeroext %129) #12, !dbg !284
  %131 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1, !dbg !285
  store i16 %130, i16* %131, align 2, !dbg !286
  %132 = load i32, i32* @o_udp, align 4, !dbg !287
  %133 = icmp ne i32 %132, 0, !dbg !287
  br i1 %133, label %138, label %134, !dbg !289

134:                                              ; preds = %116
  %135 = load i16, i16* %12, align 2, !dbg !290
  %136 = zext i16 %135 to i32, !dbg !290
  %137 = icmp eq i32 %136, 2, !dbg !291
  br i1 %137, label %138, label %153, !dbg !292

138:                                              ; preds = %134, %116
  %139 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2, !dbg !293
  %140 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %139, i32 0, i32 0, !dbg !295
  %141 = load i32, i32* %140, align 4, !dbg !295
  %142 = call i8* @inet_ntoa(i32 %141) #9, !dbg !295
  %143 = load i16, i16* %11, align 2, !dbg !296
  %144 = zext i16 %143 to i32, !dbg !296
  call void (i8*, ...) @vprint(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %142, i32 %144), !dbg !297
  %145 = load i32, i32* %6, align 4, !dbg !298
  %146 = bitcast %union.__CONST_SOCKADDR_ARG* %16 to %struct.sockaddr**, !dbg !299
  %147 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*, !dbg !299
  store %struct.sockaddr* %147, %struct.sockaddr** %146, align 8, !dbg !299
  %148 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %16, i32 0, i32 0, !dbg !300
  %149 = load %struct.sockaddr*, %struct.sockaddr** %148, align 8, !dbg !300
  %150 = call i32 @connect(i32 %145, %struct.sockaddr* %149, i32 16), !dbg !300
  %151 = load i32, i32* %6, align 4, !dbg !301
  %152 = call i64 @send(i32 %151, i8* null, i64 0, i32 64), !dbg !302
  br label %166, !dbg !303

153:                                              ; preds = %134
  %154 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2, !dbg !304
  %155 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %154, i32 0, i32 0, !dbg !306
  %156 = load i32, i32* %155, align 4, !dbg !306
  %157 = call i8* @inet_ntoa(i32 %156) #9, !dbg !306
  %158 = load i16, i16* %11, align 2, !dbg !307
  %159 = zext i16 %158 to i32, !dbg !307
  call void (i8*, ...) @vprint(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %157, i32 %159), !dbg !308
  %160 = load i32, i32* %6, align 4, !dbg !309
  %161 = bitcast %union.__CONST_SOCKADDR_ARG* %17 to %struct.sockaddr**, !dbg !310
  %162 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*, !dbg !310
  store %struct.sockaddr* %162, %struct.sockaddr** %161, align 8, !dbg !310
  %163 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %17, i32 0, i32 0, !dbg !311
  %164 = load %struct.sockaddr*, %struct.sockaddr** %163, align 8, !dbg !311
  %165 = call i32 @connect(i32 %160, %struct.sockaddr* %164, i32 16), !dbg !311
  br label %166

166:                                              ; preds = %153, %138
  %167 = load i32, i32* %6, align 4, !dbg !312
  %168 = call i32 @close(i32 %167), !dbg !313
  br label %169, !dbg !314

169:                                              ; preds = %166
  %170 = load i32, i32* @optind, align 4, !dbg !315
  %171 = add nsw i32 %170, 1, !dbg !315
  store i32 %171, i32* @optind, align 4, !dbg !315
  br label %56, !dbg !316, !llvm.loop !317

172:                                              ; preds = %56
  ret i32 0, !dbg !319
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @ver() #0 !dbg !320 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @version, i64 0, i64 0)), !dbg !321
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0)), !dbg !322
  call void @exit(i32 0) #10, !dbg !323
  unreachable, !dbg !323
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @usage() #0 !dbg !324 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i64 0, i64 0)), !dbg !325
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)), !dbg !326
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.11, i64 0, i64 0)), !dbg !327
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0)), !dbg !328
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0)), !dbg !329
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0)), !dbg !330
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)), !dbg !331
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.16, i64 0, i64 0)), !dbg !332
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)), !dbg !333
  call void @exit(i32 1) #10, !dbg !334
  unreachable, !dbg !334
}

declare dso_local %struct.hostent* @gethostbyname(i8*) #3

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: nounwind
declare dso_local noalias i8* @strdup(i8*) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #5

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #5

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @fcntl(i32, i32, ...) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #7

; Function Attrs: nounwind
declare dso_local i8* @inet_ntoa(i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @vprint(i8* %0, ...) #0 !dbg !335 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !338, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !340, metadata !DIExpression()), !dbg !355
  %4 = load i32, i32* @o_verbose, align 4, !dbg !356
  %5 = icmp ne i32 %4, 0, !dbg !356
  br i1 %5, label %6, label %16, !dbg !358

6:                                                ; preds = %1
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !359
  %8 = bitcast %struct.__va_list_tag* %7 to i8*, !dbg !359
  call void @llvm.va_start(i8* %8), !dbg !359
  %9 = load i8*, i8** %2, align 8, !dbg !361
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !362
  %11 = call i32 @vprintf(i8* %9, %struct.__va_list_tag* %10), !dbg !363
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !364
  %13 = bitcast %struct.__va_list_tag* %12 to i8*, !dbg !364
  call void @llvm.va_end(i8* %13), !dbg !364
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !365
  %15 = call i32 @fflush(%struct._IO_FILE* %14), !dbg !366
  br label %16, !dbg !367

16:                                               ; preds = %6, %1
  ret void, !dbg !368
}

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #3

declare dso_local i64 @send(i32, i8*, i64, i32) #3

declare dso_local i32 @close(i32) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #8

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #8

declare dso_local i32 @fflush(%struct._IO_FILE*) #3

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #7 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2}
!llvm.ident = !{!89}
!llvm.module.flags = !{!90, !91, !92}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "o_verbose", scope: !2, file: !3, line: 45, type: !62, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !43, globals: !59, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/knock.c", directory: "/home/mohannad/Dataset-5/knockd-0.5")
!4 = !{!5, !18}
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
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 200, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!21 = !DIEnumerator(name: "MSG_OOB", value: 1, isUnsigned: true)
!22 = !DIEnumerator(name: "MSG_PEEK", value: 2, isUnsigned: true)
!23 = !DIEnumerator(name: "MSG_DONTROUTE", value: 4, isUnsigned: true)
!24 = !DIEnumerator(name: "MSG_TRYHARD", value: 4, isUnsigned: true)
!25 = !DIEnumerator(name: "MSG_CTRUNC", value: 8, isUnsigned: true)
!26 = !DIEnumerator(name: "MSG_PROXY", value: 16, isUnsigned: true)
!27 = !DIEnumerator(name: "MSG_TRUNC", value: 32, isUnsigned: true)
!28 = !DIEnumerator(name: "MSG_DONTWAIT", value: 64, isUnsigned: true)
!29 = !DIEnumerator(name: "MSG_EOR", value: 128, isUnsigned: true)
!30 = !DIEnumerator(name: "MSG_WAITALL", value: 256, isUnsigned: true)
!31 = !DIEnumerator(name: "MSG_FIN", value: 512, isUnsigned: true)
!32 = !DIEnumerator(name: "MSG_SYN", value: 1024, isUnsigned: true)
!33 = !DIEnumerator(name: "MSG_CONFIRM", value: 2048, isUnsigned: true)
!34 = !DIEnumerator(name: "MSG_RST", value: 4096, isUnsigned: true)
!35 = !DIEnumerator(name: "MSG_ERRQUEUE", value: 8192, isUnsigned: true)
!36 = !DIEnumerator(name: "MSG_NOSIGNAL", value: 16384, isUnsigned: true)
!37 = !DIEnumerator(name: "MSG_MORE", value: 32768, isUnsigned: true)
!38 = !DIEnumerator(name: "MSG_WAITFORONE", value: 65536, isUnsigned: true)
!39 = !DIEnumerator(name: "MSG_BATCH", value: 262144, isUnsigned: true)
!40 = !DIEnumerator(name: "MSG_ZEROCOPY", value: 67108864, isUnsigned: true)
!41 = !DIEnumerator(name: "MSG_FASTOPEN", value: 536870912, isUnsigned: true)
!42 = !DIEnumerator(name: "MSG_CMSG_CLOEXEC", value: 1073741824, isUnsigned: true)
!43 = !{!44, !45, !47}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !19, line: 178, size: 128, elements: !49)
!49 = !{!50, !54}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !48, file: !19, line: 180, baseType: !51, size: 16)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !52, line: 28, baseType: !53)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "")
!53 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !48, file: !19, line: 181, baseType: !55, size: 112, offset: 16)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 112, elements: !57)
!56 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!57 = !{!58}
!58 = !DISubrange(count: 14)
!59 = !{!0, !60, !63, !84}
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "o_udp", scope: !2, file: !3, line: 46, type: !62, isLocal: false, isDefinition: true)
!62 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "opts", scope: !65, file: !3, line: 57, type: !71, isLocal: true, isDefinition: true)
!65 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 51, type: !66, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !70)
!66 = !DISubroutineType(types: !67)
!67 = !{!62, !62, !68}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!70 = !{}
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 1280, elements: !82)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !73, line: 50, size: 256, elements: !74)
!73 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "")
!74 = !{!75, !78, !79, !81}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !72, file: !73, line: 52, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !72, file: !73, line: 55, baseType: !62, size: 32, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !72, file: !73, line: 56, baseType: !80, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !72, file: !73, line: 57, baseType: !62, size: 32, offset: 192)
!82 = !{!83}
!83 = !DISubrange(count: 5)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "version", scope: !2, file: !3, line: 35, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 32, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 4)
!89 = !{!"clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)"}
!90 = !{i32 7, !"Dwarf Version", i32 4}
!91 = !{i32 2, !"Debug Info Version", i32 3}
!92 = !{i32 1, !"wchar_size", i32 4}
!93 = distinct !DISubprogram(name: "klee_dump_memory", scope: !3, file: !3, line: 49, type: !94, scopeLine: 49, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !70)
!94 = !DISubroutineType(types: !95)
!95 = !{null}
!96 = !DILocation(line: 49, column: 26, scope: !93)
!97 = !DILocalVariable(name: "argc", arg: 1, scope: !65, file: !3, line: 51, type: !62)
!98 = !DILocation(line: 51, column: 14, scope: !65)
!99 = !DILocalVariable(name: "argv", arg: 2, scope: !65, file: !3, line: 51, type: !68)
!100 = !DILocation(line: 51, column: 27, scope: !65)
!101 = !DILocalVariable(name: "sd", scope: !65, file: !3, line: 53, type: !62)
!102 = !DILocation(line: 53, column: 6, scope: !65)
!103 = !DILocalVariable(name: "host", scope: !65, file: !3, line: 54, type: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hostent", file: !106, line: 98, size: 256, elements: !107)
!106 = !DIFile(filename: "/usr/include/netdb.h", directory: "")
!107 = !{!108, !109, !110, !111, !112}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "h_name", scope: !105, file: !106, line: 100, baseType: !69, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "h_aliases", scope: !105, file: !106, line: 101, baseType: !68, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "h_addrtype", scope: !105, file: !106, line: 102, baseType: !62, size: 32, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "h_length", scope: !105, file: !106, line: 103, baseType: !62, size: 32, offset: 160)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "h_addr_list", scope: !105, file: !106, line: 104, baseType: !68, size: 64, offset: 192)
!113 = !DILocation(line: 54, column: 18, scope: !65)
!114 = !DILocalVariable(name: "addr", scope: !65, file: !3, line: 55, type: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !116, line: 238, size: 128, elements: !117)
!116 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "")
!117 = !{!118, !119, !125, !132}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !115, file: !116, line: 240, baseType: !51, size: 16)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !115, file: !116, line: 241, baseType: !120, size: 16, offset: 16)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !116, line: 119, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !122, line: 25, baseType: !123)
!122 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !124, line: 40, baseType: !53)
!124 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!125 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !115, file: !116, line: 242, baseType: !126, size: 32, offset: 32)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !116, line: 31, size: 32, elements: !127)
!127 = !{!128}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !126, file: !116, line: 33, baseType: !129, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !116, line: 30, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !122, line: 26, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !124, line: 42, baseType: !7)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !115, file: !116, line: 245, baseType: !133, size: 64, offset: 64)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 64, elements: !135)
!134 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!135 = !{!136}
!136 = !DISubrange(count: 8)
!137 = !DILocation(line: 55, column: 21, scope: !65)
!138 = !DILocalVariable(name: "opt", scope: !65, file: !3, line: 56, type: !62)
!139 = !DILocation(line: 56, column: 6, scope: !65)
!140 = !DILocalVariable(name: "optidx", scope: !65, file: !3, line: 56, type: !62)
!141 = !DILocation(line: 56, column: 11, scope: !65)
!142 = !DILocation(line: 66, column: 2, scope: !65)
!143 = !DILocation(line: 66, column: 27, scope: !65)
!144 = !DILocation(line: 66, column: 33, scope: !65)
!145 = !DILocation(line: 66, column: 15, scope: !65)
!146 = !DILocation(line: 66, column: 13, scope: !65)
!147 = !DILocation(line: 67, column: 6, scope: !148)
!148 = distinct !DILexicalBlock(scope: !149, file: !3, line: 67, column: 6)
!149 = distinct !DILexicalBlock(scope: !65, file: !3, line: 66, column: 64)
!150 = !DILocation(line: 67, column: 10, scope: !148)
!151 = !DILocation(line: 67, column: 6, scope: !149)
!152 = !DILocation(line: 68, column: 4, scope: !153)
!153 = distinct !DILexicalBlock(scope: !148, file: !3, line: 67, column: 15)
!154 = !DILocation(line: 70, column: 10, scope: !149)
!155 = !DILocation(line: 70, column: 3, scope: !149)
!156 = !DILocation(line: 71, column: 14, scope: !157)
!157 = distinct !DILexicalBlock(scope: !149, file: !3, line: 70, column: 15)
!158 = !DILocation(line: 72, column: 24, scope: !157)
!159 = !DILocation(line: 72, column: 29, scope: !157)
!160 = !DILocation(line: 73, column: 20, scope: !157)
!161 = !DILocation(line: 73, column: 25, scope: !157)
!162 = !DILocation(line: 74, column: 14, scope: !157)
!163 = !DILocation(line: 76, column: 13, scope: !157)
!164 = !DILocation(line: 77, column: 3, scope: !157)
!165 = distinct !{!165, !142, !166, !167}
!166 = !DILocation(line: 78, column: 2, scope: !65)
!167 = !{!"llvm.loop.mustprogress"}
!168 = !DILocation(line: 79, column: 1, scope: !65)
!169 = !DILocation(line: 80, column: 6, scope: !170)
!170 = distinct !DILexicalBlock(scope: !65, file: !3, line: 80, column: 5)
!171 = !DILocation(line: 80, column: 13, scope: !170)
!172 = !DILocation(line: 80, column: 11, scope: !170)
!173 = !DILocation(line: 80, column: 21, scope: !170)
!174 = !DILocation(line: 80, column: 5, scope: !65)
!175 = !DILocation(line: 81, column: 3, scope: !176)
!176 = distinct !DILexicalBlock(scope: !170, file: !3, line: 80, column: 26)
!177 = !DILocation(line: 82, column: 2, scope: !176)
!178 = !DILocation(line: 84, column: 23, scope: !65)
!179 = !DILocation(line: 84, column: 34, scope: !65)
!180 = !DILocation(line: 84, column: 9, scope: !65)
!181 = !DILocation(line: 84, column: 7, scope: !65)
!182 = !DILocation(line: 85, column: 5, scope: !183)
!183 = distinct !DILexicalBlock(scope: !65, file: !3, line: 85, column: 5)
!184 = !DILocation(line: 85, column: 10, scope: !183)
!185 = !DILocation(line: 85, column: 5, scope: !65)
!186 = !DILocation(line: 86, column: 11, scope: !187)
!187 = distinct !DILexicalBlock(scope: !183, file: !3, line: 85, column: 19)
!188 = !DILocation(line: 86, column: 3, scope: !187)
!189 = !DILocation(line: 87, column: 3, scope: !187)
!190 = !DILocation(line: 89, column: 2, scope: !65)
!191 = !DILocation(line: 89, column: 8, scope: !192)
!192 = distinct !DILexicalBlock(scope: !193, file: !3, line: 89, column: 2)
!193 = distinct !DILexicalBlock(scope: !65, file: !3, line: 89, column: 2)
!194 = !DILocation(line: 89, column: 17, scope: !192)
!195 = !DILocation(line: 89, column: 15, scope: !192)
!196 = !DILocation(line: 89, column: 2, scope: !193)
!197 = !DILocalVariable(name: "port", scope: !198, file: !3, line: 90, type: !53)
!198 = distinct !DILexicalBlock(scope: !192, file: !3, line: 89, column: 33)
!199 = !DILocation(line: 90, column: 18, scope: !198)
!200 = !DILocalVariable(name: "proto", scope: !198, file: !3, line: 90, type: !53)
!201 = !DILocation(line: 90, column: 24, scope: !198)
!202 = !DILocalVariable(name: "ptr", scope: !198, file: !3, line: 91, type: !69)
!203 = !DILocation(line: 91, column: 9, scope: !198)
!204 = !DILocalVariable(name: "arg", scope: !198, file: !3, line: 91, type: !69)
!205 = !DILocation(line: 91, column: 15, scope: !198)
!206 = !DILocation(line: 91, column: 28, scope: !198)
!207 = !DILocation(line: 91, column: 33, scope: !198)
!208 = !DILocation(line: 91, column: 21, scope: !198)
!209 = !DILocation(line: 93, column: 20, scope: !210)
!210 = distinct !DILexicalBlock(scope: !198, file: !3, line: 93, column: 6)
!211 = !DILocation(line: 93, column: 13, scope: !210)
!212 = !DILocation(line: 93, column: 11, scope: !210)
!213 = !DILocation(line: 93, column: 6, scope: !198)
!214 = !DILocation(line: 94, column: 5, scope: !215)
!215 = distinct !DILexicalBlock(scope: !210, file: !3, line: 93, column: 32)
!216 = !DILocation(line: 94, column: 9, scope: !215)
!217 = !DILocation(line: 95, column: 16, scope: !215)
!218 = !DILocation(line: 95, column: 11, scope: !215)
!219 = !DILocation(line: 95, column: 9, scope: !215)
!220 = !DILocation(line: 96, column: 10, scope: !215)
!221 = !DILocation(line: 96, column: 8, scope: !215)
!222 = !DILocation(line: 97, column: 15, scope: !223)
!223 = distinct !DILexicalBlock(scope: !215, file: !3, line: 97, column: 7)
!224 = !DILocation(line: 97, column: 8, scope: !223)
!225 = !DILocation(line: 97, column: 7, scope: !215)
!226 = !DILocation(line: 98, column: 11, scope: !227)
!227 = distinct !DILexicalBlock(scope: !223, file: !3, line: 97, column: 28)
!228 = !DILocation(line: 99, column: 4, scope: !227)
!229 = !DILocation(line: 100, column: 11, scope: !230)
!230 = distinct !DILexicalBlock(scope: !223, file: !3, line: 99, column: 11)
!231 = !DILocation(line: 102, column: 3, scope: !215)
!232 = !DILocation(line: 103, column: 16, scope: !233)
!233 = distinct !DILexicalBlock(scope: !210, file: !3, line: 102, column: 10)
!234 = !DILocation(line: 103, column: 11, scope: !233)
!235 = !DILocation(line: 103, column: 9, scope: !233)
!236 = !DILocation(line: 106, column: 6, scope: !237)
!237 = distinct !DILexicalBlock(scope: !198, file: !3, line: 106, column: 6)
!238 = !DILocation(line: 106, column: 12, scope: !237)
!239 = !DILocation(line: 106, column: 15, scope: !237)
!240 = !DILocation(line: 106, column: 21, scope: !237)
!241 = !DILocation(line: 106, column: 6, scope: !198)
!242 = !DILocation(line: 107, column: 9, scope: !243)
!243 = distinct !DILexicalBlock(scope: !237, file: !3, line: 106, column: 35)
!244 = !DILocation(line: 107, column: 7, scope: !243)
!245 = !DILocation(line: 108, column: 7, scope: !246)
!246 = distinct !DILexicalBlock(scope: !243, file: !3, line: 108, column: 7)
!247 = !DILocation(line: 108, column: 10, scope: !246)
!248 = !DILocation(line: 108, column: 7, scope: !243)
!249 = !DILocation(line: 109, column: 13, scope: !250)
!250 = distinct !DILexicalBlock(scope: !246, file: !3, line: 108, column: 17)
!251 = !DILocation(line: 109, column: 5, scope: !250)
!252 = !DILocation(line: 110, column: 5, scope: !250)
!253 = !DILocation(line: 112, column: 3, scope: !243)
!254 = !DILocalVariable(name: "flags", scope: !255, file: !3, line: 113, type: !62)
!255 = distinct !DILexicalBlock(scope: !237, file: !3, line: 112, column: 10)
!256 = !DILocation(line: 113, column: 8, scope: !255)
!257 = !DILocation(line: 114, column: 9, scope: !255)
!258 = !DILocation(line: 114, column: 7, scope: !255)
!259 = !DILocation(line: 115, column: 7, scope: !260)
!260 = distinct !DILexicalBlock(scope: !255, file: !3, line: 115, column: 7)
!261 = !DILocation(line: 115, column: 10, scope: !260)
!262 = !DILocation(line: 115, column: 7, scope: !255)
!263 = !DILocation(line: 116, column: 13, scope: !264)
!264 = distinct !DILexicalBlock(scope: !260, file: !3, line: 115, column: 17)
!265 = !DILocation(line: 116, column: 5, scope: !264)
!266 = !DILocation(line: 117, column: 5, scope: !264)
!267 = !DILocation(line: 119, column: 18, scope: !255)
!268 = !DILocation(line: 119, column: 12, scope: !255)
!269 = !DILocation(line: 119, column: 10, scope: !255)
!270 = !DILocation(line: 120, column: 10, scope: !255)
!271 = !DILocation(line: 120, column: 23, scope: !255)
!272 = !DILocation(line: 120, column: 29, scope: !255)
!273 = !DILocation(line: 120, column: 4, scope: !255)
!274 = !DILocation(line: 122, column: 3, scope: !198)
!275 = !DILocation(line: 123, column: 8, scope: !198)
!276 = !DILocation(line: 123, column: 19, scope: !198)
!277 = !DILocation(line: 124, column: 35, scope: !198)
!278 = !DILocation(line: 124, column: 41, scope: !198)
!279 = !DILocation(line: 124, column: 26, scope: !198)
!280 = !DILocation(line: 124, column: 8, scope: !198)
!281 = !DILocation(line: 124, column: 17, scope: !198)
!282 = !DILocation(line: 124, column: 24, scope: !198)
!283 = !DILocation(line: 125, column: 25, scope: !198)
!284 = !DILocation(line: 125, column: 19, scope: !198)
!285 = !DILocation(line: 125, column: 8, scope: !198)
!286 = !DILocation(line: 125, column: 17, scope: !198)
!287 = !DILocation(line: 126, column: 6, scope: !288)
!288 = distinct !DILexicalBlock(scope: !198, file: !3, line: 126, column: 6)
!289 = !DILocation(line: 126, column: 12, scope: !288)
!290 = !DILocation(line: 126, column: 15, scope: !288)
!291 = !DILocation(line: 126, column: 21, scope: !288)
!292 = !DILocation(line: 126, column: 6, scope: !198)
!293 = !DILocation(line: 127, column: 49, scope: !294)
!294 = distinct !DILexicalBlock(scope: !288, file: !3, line: 126, column: 35)
!295 = !DILocation(line: 127, column: 34, scope: !294)
!296 = !DILocation(line: 127, column: 60, scope: !294)
!297 = !DILocation(line: 127, column: 4, scope: !294)
!298 = !DILocation(line: 128, column: 12, scope: !294)
!299 = !DILocation(line: 128, column: 16, scope: !294)
!300 = !DILocation(line: 128, column: 4, scope: !294)
!301 = !DILocation(line: 129, column: 9, scope: !294)
!302 = !DILocation(line: 129, column: 4, scope: !294)
!303 = !DILocation(line: 130, column: 3, scope: !294)
!304 = !DILocation(line: 131, column: 49, scope: !305)
!305 = distinct !DILexicalBlock(scope: !288, file: !3, line: 130, column: 10)
!306 = !DILocation(line: 131, column: 34, scope: !305)
!307 = !DILocation(line: 131, column: 60, scope: !305)
!308 = !DILocation(line: 131, column: 4, scope: !305)
!309 = !DILocation(line: 132, column: 12, scope: !305)
!310 = !DILocation(line: 132, column: 16, scope: !305)
!311 = !DILocation(line: 132, column: 4, scope: !305)
!312 = !DILocation(line: 134, column: 9, scope: !198)
!313 = !DILocation(line: 134, column: 3, scope: !198)
!314 = !DILocation(line: 135, column: 2, scope: !198)
!315 = !DILocation(line: 89, column: 29, scope: !192)
!316 = !DILocation(line: 89, column: 2, scope: !192)
!317 = distinct !{!317, !196, !318, !167}
!318 = !DILocation(line: 135, column: 2, scope: !193)
!319 = !DILocation(line: 137, column: 2, scope: !65)
!320 = distinct !DISubprogram(name: "ver", scope: !3, file: !3, line: 164, type: !94, scopeLine: 164, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !70)
!321 = !DILocation(line: 165, column: 2, scope: !320)
!322 = !DILocation(line: 166, column: 2, scope: !320)
!323 = !DILocation(line: 167, column: 2, scope: !320)
!324 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 151, type: !94, scopeLine: 151, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !70)
!325 = !DILocation(line: 152, column: 2, scope: !324)
!326 = !DILocation(line: 153, column: 2, scope: !324)
!327 = !DILocation(line: 154, column: 2, scope: !324)
!328 = !DILocation(line: 155, column: 2, scope: !324)
!329 = !DILocation(line: 156, column: 2, scope: !324)
!330 = !DILocation(line: 157, column: 2, scope: !324)
!331 = !DILocation(line: 158, column: 2, scope: !324)
!332 = !DILocation(line: 159, column: 2, scope: !324)
!333 = !DILocation(line: 160, column: 2, scope: !324)
!334 = !DILocation(line: 161, column: 2, scope: !324)
!335 = distinct !DISubprogram(name: "vprint", scope: !3, file: !3, line: 140, type: !336, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !70)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !69, null}
!338 = !DILocalVariable(name: "fmt", arg: 1, scope: !335, file: !3, line: 140, type: !69)
!339 = !DILocation(line: 140, column: 19, scope: !335)
!340 = !DILocalVariable(name: "args", scope: !335, file: !3, line: 142, type: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !342, line: 52, baseType: !343)
!342 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !344, line: 32, baseType: !345)
!344 = !DIFile(filename: "/usr/local/lib/clang/12.0.1/include/stdarg.h", directory: "")
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !346)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 192, elements: !353)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !348)
!348 = !{!349, !350, !351, !352}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !347, file: !3, line: 142, baseType: !7, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !347, file: !3, line: 142, baseType: !7, size: 32, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !347, file: !3, line: 142, baseType: !44, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !347, file: !3, line: 142, baseType: !44, size: 64, offset: 128)
!353 = !{!354}
!354 = !DISubrange(count: 1)
!355 = !DILocation(line: 142, column: 10, scope: !335)
!356 = !DILocation(line: 143, column: 5, scope: !357)
!357 = distinct !DILexicalBlock(scope: !335, file: !3, line: 143, column: 5)
!358 = !DILocation(line: 143, column: 5, scope: !335)
!359 = !DILocation(line: 144, column: 3, scope: !360)
!360 = distinct !DILexicalBlock(scope: !357, file: !3, line: 143, column: 16)
!361 = !DILocation(line: 145, column: 11, scope: !360)
!362 = !DILocation(line: 145, column: 16, scope: !360)
!363 = !DILocation(line: 145, column: 3, scope: !360)
!364 = !DILocation(line: 146, column: 3, scope: !360)
!365 = !DILocation(line: 147, column: 10, scope: !360)
!366 = !DILocation(line: 147, column: 3, scope: !360)
!367 = !DILocation(line: 148, column: 2, scope: !360)
!368 = !DILocation(line: 149, column: 1, scope: !335)
