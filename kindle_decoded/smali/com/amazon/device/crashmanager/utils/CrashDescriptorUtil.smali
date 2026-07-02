.class public Lcom/amazon/device/crashmanager/utils/CrashDescriptorUtil;
.super Ljava/lang/Object;
.source "CrashDescriptorUtil.java"


# static fields
.field static final ARTIFACT_BUFFER_SIZE:I = 0x6400

.field static final MAX_NUMBER_OF_LINES_TO_SEARCH_FOR_PROCESS_NAME:I = 0xa

.field static final MAX_NUMBER_OF_LINES_TO_SEARCH_FOR_STACK_TRACE:I = 0x64

.field private static final log:Lcom/amazon/dp/logger/DPLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/amazon/dp/logger/DPLogger;

    const-string v1, "CrashDescriptorUtil"

    invoke-direct {v0, v1}, Lcom/amazon/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/crashmanager/utils/CrashDescriptorUtil;->log:Lcom/amazon/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateCrashDescriptor(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 52
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SHA1"

    .line 55
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 56
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static calculateCrashDescriptorFromTrace(Ljava/io/BufferedReader;Ljava/io/Writer;Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;Ljava/lang/String;Ljava/lang/String;[CLcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;Lcom/amazon/client/metrics/common/MetricEvent;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    invoke-static {p0, p5}, Lcom/amazon/device/crashmanager/utils/CrashDescriptorUtil;->fetchBodyFromReader(Ljava/io/BufferedReader;[C)Ljava/io/BufferedReader;

    move-result-object p0

    .line 83
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result p5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch p5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p5, "NATIVE_CRASH"

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x4

    goto :goto_1

    :sswitch_1
    const-string p5, "JAVA_CRASH"

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x0

    goto :goto_1

    :sswitch_2
    const-string p5, "STRICT_MODE_VIOLATION"

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x2

    goto :goto_1

    :sswitch_3
    const-string p5, "ANR"

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    goto :goto_1

    :sswitch_4
    const-string p5, "PIN_FAILURE"

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p4, -0x1

    :goto_1
    if-eqz p4, :cond_5

    if-eq p4, v3, :cond_4

    if-eq p4, v2, :cond_3

    if-eq p4, v1, :cond_2

    if-eq p4, v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 101
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/amazon/device/crashmanager/utils/CrashDescriptorUtil;->extractStackTraceForNativeCrash(Ljava/io/BufferedReader;Ljava/io/Writer;Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;)Ljava/lang/StringBuilder;

    move-result-object p0

    goto :goto_2

    .line 97
    :cond_2
    invoke-static {p0, p7}, Lcom/amazon/device/crashmanager/utils/CrashDescriptorUtil;->extractStackTraceForPinFailures(Ljava/io/BufferedReader;Lcom/amazon/client/metrics/common/MetricEvent;)Ljava/lang/StringBuilder;

    move-result-object p0

    goto :goto_2

    .line 93
    :cond_3
    invoke-static {p0}, Lcom/amazon/device/crashmanager/utils/CrashDescriptorUtil;->extractStackTraceForSMV(Ljava/io/BufferedReader;)Ljava/lang/StringBuilder;

    move-result-object p0

    goto :goto_2

    .line 89
    :cond_4
    invoke-static {p0, p6}, Lcom/amazon/device/crashmanager/utils/CrashDescriptorUtil;->extractStackTraceForANR(Ljava/io/BufferedReader;Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;)Ljava/lang/StringBuilder;

    move-result-object p0

    goto :goto_2

    .line 85
    :cond_5
    invoke-static {p0, p3}, Lcom/amazon/device/crashmanager/utils/CrashDescriptorUtil;->extractStackTraceForJavaCrash(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 108
    :goto_2
    invoke-static {p0}, Lcom/amazon/device/crashmanager/utils/CrashDescriptorUtil;->calculateCrashDescriptor(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x2c25ab60 -> :sswitch_4
        0xfdc5 -> :sswitch_3
        0x2281bd9f -> :sswitch_2
        0x3ca7cf2a -> :sswitch_1
        0x6374655f -> :sswitch_0
    .end sparse-switch
.end method

.method public static extractProcessNameFromNativeCrash(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    .line 245
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 250
    :cond_0
    sget-object v3, Lcom/amazon/device/crashmanager/processor/NativeCrashArtifactProcessor;->NATIVE_APP_NAME_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 251
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    .line 252
    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    :cond_2
    :goto_1
    sget-object p0, Lcom/amazon/device/crashmanager/utils/CrashDescriptorUtil;->log:Lcom/amazon/dp/logger/DPLogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "extractNativeCrashInfoFromCrashBody"

    const-string v2, "Could not extract \'Process\' from native crash."

    invoke-virtual {p0, v1, v2, v0}, Lcom/amazon/dp/logger/DPLoggerBase;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static extractStackTraceForANR(Ljava/io/BufferedReader;Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;)Ljava/lang/StringBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 323
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Cmd line: "

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    :cond_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 333
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const-string v2, "DALVIK THREADS"

    .line 334
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 340
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    invoke-virtual {p1}, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->getProcessName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 344
    invoke-virtual {p1}, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 356
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    add-int/lit8 v3, v3, 0x1

    .line 359
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/16 v6, 0xa

    if-nez v5, :cond_4

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_4

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0xd

    if-ne v5, v7, :cond_5

    :cond_4
    if-ge v3, v6, :cond_7

    .line 361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->getProcessName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    .line 365
    :cond_5
    sget-object v5, Lcom/amazon/device/crashmanager/processor/AnrArtifactProcessor;->REGEX_STACK_TRACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 366
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_0

    .line 369
    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 373
    :cond_7
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-gtz p0, :cond_8

    .line 374
    sget-object p0, Lcom/amazon/device/crashmanager/utils/CrashDescriptorUtil;->log:Lcom/amazon/dp/logger/DPLogger;

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "extractAnrInfoFromCrashBody"

    const-string v2, "No stack trace."

    invoke-virtual {p0, v0, v2, p1}, Lcom/amazon/dp/logger/DPLoggerBase;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_8
    return-object v0

    :cond_9
    :goto_2
    return-object v1
.end method

.method private static extractStackTraceForJavaCrash(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    .line 271
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 276
    sput v1, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;->REGEX_GROUP_ID:I

    if-eqz p1, :cond_4

    const-string v2, "***"

    .line 279
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x4

    .line 280
    sput p1, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;->REGEX_GROUP_ID:I

    const/4 p1, 0x0

    .line 282
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    const-string v3, "backtrace:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x32

    if-ge p1, v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 287
    :cond_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    .line 291
    :cond_2
    sget-object v2, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;->REGEX_STACK_TRACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 294
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 297
    :cond_3
    sget v2, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;->REGEX_GROUP_ID:I

    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 302
    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-gtz p0, :cond_5

    .line 303
    sget-object p0, Lcom/amazon/device/crashmanager/utils/CrashDescriptorUtil;->log:Lcom/amazon/dp/logger/DPLogger;

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "extractJavaCrashInfoFromCrashBody"

    const-string v1, "No stack trace."

    invoke-virtual {p0, v0, v1, p1}, Lcom/amazon/dp/logger/DPLoggerBase;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_5
    return-object v0
.end method

.method private static extractStackTraceForNativeCrash(Ljava/io/BufferedReader;Ljava/io/Writer;Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;)Ljava/lang/StringBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    invoke-static {p0}, Lcom/amazon/device/crashmanager/utils/CrashDescriptorUtil;->extractProcessNameFromNativeCrash(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 188
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Process"

    .line 189
    invoke-interface {p2, v2, v1, p1}, Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    const/16 v1, 0x64

    if-ge p2, v1, :cond_5

    .line 199
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_3

    .line 205
    :cond_1
    sget-object v2, Lcom/amazon/device/crashmanager/processor/NativeCrashArtifactProcessor;->STACKFRAME_IDENTIFIER:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 p1, 0x1

    .line 209
    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :goto_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_2

    .line 217
    :cond_2
    sget-object v1, Lcom/amazon/device/crashmanager/processor/NativeCrashArtifactProcessor;->STACKFRAME_IDENTIFIER:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 218
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 220
    invoke-virtual {p2, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    :goto_2
    return-object v0

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 228
    :cond_5
    :goto_3
    sget-object p0, Lcom/amazon/device/crashmanager/utils/CrashDescriptorUtil;->log:Lcom/amazon/dp/logger/DPLogger;

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "extractNativeCrashInfoFromCrashBody"

    const-string v0, "Could not find stack trace in native crash."

    invoke-virtual {p0, p2, v0, p1}, Lcom/amazon/dp/logger/DPLoggerBase;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3
.end method

.method private static extractStackTraceForPinFailures(Ljava/io/BufferedReader;Lcom/amazon/client/metrics/common/MetricEvent;)Ljava/lang/StringBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 391
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 392
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    sget-object p0, Lcom/amazon/device/crashmanager/utils/CrashDescriptorUtil;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "extractStackTraceForPinFailures"

    const-string v2, "Domain and/or Certificate information not present in the PinFailure"

    invoke-virtual {p0, v1, v2, v0}, Lcom/amazon/dp/logger/DPLoggerBase;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string p0, "emptyPinCrashBody"

    .line 394
    invoke-interface {p1, p0, v0, v1}, Lcom/amazon/client/metrics/common/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    const/4 p0, 0x0

    return-object p0

    .line 397
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private static extractStackTraceForSMV(Ljava/io/BufferedReader;)Ljava/lang/StringBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-gtz p0, :cond_1

    .line 163
    sget-object p0, Lcom/amazon/device/crashmanager/utils/CrashDescriptorUtil;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "extractSmvInfoFromCrashBody"

    const-string v2, "No stack trace."

    invoke-virtual {p0, v1, v2, v0}, Lcom/amazon/dp/logger/DPLoggerBase;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static fetchBodyFromReader(Ljava/io/BufferedReader;[C)Ljava/io/BufferedReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x6400

    .line 124
    invoke-virtual {p0, v0}, Ljava/io/BufferedReader;->mark(I)V

    const/4 v1, 0x0

    .line 126
    :try_start_0
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/BufferedReader;->read([CII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {p0}, Ljava/io/BufferedReader;->reset()V

    .line 135
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/CharArrayReader;

    invoke-direct {v0, p1}, Ljava/io/CharArrayReader;-><init>([C)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    return-object p0

    :catchall_0
    move-exception p1

    .line 128
    invoke-virtual {p0}, Ljava/io/BufferedReader;->reset()V

    .line 129
    throw p1
.end method
