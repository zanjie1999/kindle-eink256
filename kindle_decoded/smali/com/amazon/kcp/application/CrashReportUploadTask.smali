.class public Lcom/amazon/kcp/application/CrashReportUploadTask;
.super Ljava/lang/Object;
.source "CrashReportUploadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final BACKTRACE_START_IDENTIFIER:Ljava/lang/String; = "backtrace:"

.field private static final DEFAULT_BACKTRACE:Ljava/lang/String; = "default_backtrace"

.field private static final EVENTS:Ljava/lang/String; = "Events"

.field private static final MAX_BACKTRACE_LINE_OFFSET:I = 0x64

.field private static final MESSAGE_DIGEST_ALGORITHM:Ljava/lang/String; = "SHA-256"

.field private static final METADATA:Ljava/lang/String; = "Metadata"

.field private static final METADATA_BUILD_TAGS:Ljava/lang/String; = "BuildTags"

.field private static final METADATA_BUILD_TYPE:Ljava/lang/String; = "BuildType"

.field private static final METADATA_COR:Ljava/lang/String; = "countryOfResidence"

.field private static final METADATA_CRASH_DESCRIPTOR:Ljava/lang/String; = "CrashDescriptor"

.field private static final METADATA_CRASH_IDENTIFIER:Ljava/lang/String; = "CrashIdentifier"

.field private static final METADATA_CRASH_TIME_UTC:Ljava/lang/String; = "CrashTimeUtc"

.field private static final METADATA_CRASH_TYPE:Ljava/lang/String; = "CrashType"

.field private static final METADATA_DEVICE_SERIAL_NUMBER:Ljava/lang/String; = "DeviceSerialNumber"

.field private static final METADATA_DEVICE_TYPE:Ljava/lang/String; = "DeviceType"

.field private static final METADATA_OS_BUILD_NUMBER:Ljava/lang/String; = "OsBuildNumber"

.field private static final METADATA_PFM:Ljava/lang/String; = "MarketplaceID"

.field private static final METADATA_PROCESS:Ljava/lang/String; = "Process"

.field private static final METADATA_SPECTATOR_VERSION:Ljava/lang/String; = "SpectatorVersion"

.field private static final METADATA_VERSION:Ljava/lang/String; = "Version"

.field private static final MIN_NUM_LINES_TO_BE_READ:I = 0xa

.field private static final REGEX_STACK_TRACE_DATA:Ljava/lang/String; = "(at\\s.*\\(.*\\))"

.field private static final REGEX_STACK_TRACE_PATTERN:Ljava/util/regex/Pattern;

.field private static final STACKFRAME_IDENTIFIER:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final crashType:Ljava/lang/String;

.field private final filePath:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final previousCrashIdentifier:Ljava/lang/String;

.field private final renameFileAfterUpload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/amazon/kcp/application/CrashReportUploadTask;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/CrashReportUploadTask;->TAG:Ljava/lang/String;

    const-string v0, "(at\\s.*\\(.*\\))"

    .line 63
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/CrashReportUploadTask;->REGEX_STACK_TRACE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "#\\d+\\s+pc\\s+[\\w\\d]+\\s+([^\\+^\\r^\\n]+)"

    .line 85
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/CrashReportUploadTask;->STACKFRAME_IDENTIFIER:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/kcp/application/CrashReportUploadTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/CrashReportUploadTask;->packageName:Ljava/lang/String;

    .line 106
    iput-object p1, p0, Lcom/amazon/kcp/application/CrashReportUploadTask;->filePath:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcom/amazon/kcp/application/CrashReportUploadTask;->crashType:Ljava/lang/String;

    .line 108
    iput-boolean p4, p0, Lcom/amazon/kcp/application/CrashReportUploadTask;->renameFileAfterUpload:Z

    .line 109
    iput-object p3, p0, Lcom/amazon/kcp/application/CrashReportUploadTask;->previousCrashIdentifier:Ljava/lang/String;

    return-void
.end method

.method private extractStackTraceForANR(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "default_backtrace"

    const/4 v1, 0x0

    .line 374
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 378
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "DALVIK THREADS"

    if-eqz p1, :cond_1

    .line 379
    :try_start_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    if-eqz p1, :cond_8

    .line 384
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 389
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    iget-object v1, p0, Lcom/amazon/kcp/application/CrashReportUploadTask;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 403
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    add-int/lit8 v3, v3, 0x1

    .line 406
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/16 v6, 0xa

    if-nez v5, :cond_3

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_3

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0xd

    if-ne v5, v7, :cond_4

    :cond_3
    if-ge v3, v6, :cond_6

    .line 408
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/kcp/application/CrashReportUploadTask;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    .line 412
    :cond_4
    sget-object v5, Lcom/amazon/kcp/application/CrashReportUploadTask;->REGEX_STACK_TRACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 413
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_0

    .line 416
    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 420
    :cond_6
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_7

    const-string p1, "extractAnrInfoFromCrashBody"

    const-string v1, "No stack trace."

    .line 421
    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 429
    invoke-static {v2}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    .line 425
    :cond_7
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 429
    invoke-static {v2}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p1

    :cond_8
    :goto_2
    invoke-static {v2}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 427
    :goto_3
    :try_start_4
    sget-object v2, Lcom/amazon/kcp/application/CrashReportUploadTask;->TAG:Ljava/lang/String;

    const-string v3, "Error reading crash dump."

    invoke-static {v2, v3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 429
    invoke-static {v1}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :goto_4
    invoke-static {v1}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 430
    throw p1
.end method

.method private static extractStackTraceForTombstone(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 323
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 324
    :try_start_1
    new-instance p0, Ljava/io/InputStreamReader;

    invoke-direct {p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 325
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0x64

    if-ge v1, v4, :cond_3

    .line 328
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    const-string v5, "backtrace:"

    .line 332
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 334
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 338
    :cond_1
    sget-object v4, Lcom/amazon/kcp/application/CrashReportUploadTask;->STACKFRAME_IDENTIFIER:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 339
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    .line 340
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 355
    invoke-static {v3}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 356
    invoke-static {p0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 357
    invoke-static {v2}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v3

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v1, v3

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v3

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p0, v1

    goto :goto_6

    :catch_4
    move-exception v0

    move-object p0, v1

    goto :goto_3

    :catch_5
    move-exception v0

    move-object p0, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object p0, v1

    move-object v2, p0

    goto :goto_6

    :catch_6
    move-exception v0

    move-object p0, v1

    move-object v2, p0

    .line 353
    :goto_3
    :try_start_4
    sget-object v3, Lcom/amazon/kcp/application/CrashReportUploadTask;->TAG:Ljava/lang/String;

    const-string v4, "Error reading crash dump."

    invoke-static {v3, v4, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_7
    move-exception v0

    move-object p0, v1

    move-object v2, p0

    .line 351
    :goto_4
    sget-object v3, Lcom/amazon/kcp/application/CrashReportUploadTask;->TAG:Ljava/lang/String;

    const-string v4, "Could not get UTF-8 charset"

    invoke-static {v3, v4, v0}, Lcom/amazon/kindle/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 355
    :goto_5
    invoke-static {v1}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 356
    invoke-static {p0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 357
    invoke-static {v2}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const-string p0, "default_backtrace"

    return-object p0

    :catchall_3
    move-exception v0

    .line 355
    :goto_6
    invoke-static {v1}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 356
    invoke-static {p0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 357
    invoke-static {v2}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 358
    throw v0
.end method

.method private getAnrTraceFilePaths(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 152
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 153
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "traces"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 154
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 161
    sget-object v2, Lcom/amazon/kcp/application/CrashReportUploadTask;->TAG:Ljava/lang/String;

    const-string v3, "Unable to retrieve list of anr traces"

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "traces.txt"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private getCrashDescriptor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "data_app_anr"

    .line 291
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 292
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/CrashReportUploadTask;->extractStackTraceForANR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "SYSTEM_TOMBSTONE"

    .line 293
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 294
    invoke-static {p1}, Lcom/amazon/kcp/application/CrashReportUploadTask;->extractStackTraceForTombstone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_2

    return-object v1

    :cond_2
    :try_start_0
    const-string p2, "SHA-256"

    .line 301
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    .line 302
    new-instance v0, Ljava/math/BigInteger;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 303
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Calculated crash descriptor: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 308
    sget-object p2, Lcom/amazon/kcp/application/CrashReportUploadTask;->TAG:Ljava/lang/String;

    const-string v0, "Could not get UTF-8 charset"

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 306
    sget-object p2, Lcom/amazon/kcp/application/CrashReportUploadTask;->TAG:Ljava/lang/String;

    const-string v0, "Could not get MessageDigest Algorithm"

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v1
.end method

.method private uploadFileToDET(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "data_app_anr"

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preparing to upload crash log to DET: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v5, 0x0

    .line 183
    :try_start_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "SYSTEM_TOMBSTONE"

    if-eqz v6, :cond_1

    .line 185
    :try_start_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/application/IAppSettingsController;->getLastCrashDetectionTime()J

    move-result-wide v5

    .line 186
    iget-object v8, v1, Lcom/amazon/kcp/application/CrashReportUploadTask;->packageName:Ljava/lang/String;

    invoke-static {v8, v0, v5, v6}, Lcom/amazon/kcp/application/AppAnrTraceParser;->parseAnrTrace(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    .line 187
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v6, v8, v9}, Lcom/amazon/kcp/application/IAppSettingsController;->setLastAnrDetectionTime(J)V

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v5, "UTF-8"

    .line 190
    invoke-static {v4, v5}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_2
    :goto_0
    if-nez v5, :cond_3

    return-void

    :cond_3
    const-string v6, "Read %d characters from crash log file."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 197
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 199
    invoke-direct {v1, v5, v2}, Lcom/amazon/kcp/application/CrashReportUploadTask;->getCrashDescriptor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    return-void

    .line 204
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 205
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-lez v12, :cond_5

    .line 208
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Error reading file, path: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", length: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_5
    return-void

    .line 215
    :cond_6
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v8

    invoke-interface {v8}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getVersionName()Ljava/lang/String;

    move-result-object v8

    .line 216
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v9

    invoke-interface {v9}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getAppVersionNumber()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 217
    sget-object v10, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    .line 219
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v12

    .line 220
    invoke-interface {v12}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v13

    .line 221
    invoke-interface {v12}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceId()Ljava/lang/String;

    move-result-object v12

    .line 222
    sget-object v14, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 223
    sget-object v15, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 225
    new-instance v0, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    move-object/from16 v16, v3

    const-string v3, "Metadata"

    invoke-direct {v0, v3}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;

    move-object/from16 v17, v4

    const-string v4, "Process"

    move-object/from16 v18, v7

    iget-object v7, v1, Lcom/amazon/kcp/application/CrashReportUploadTask;->packageName:Ljava/lang/String;

    invoke-direct {v3, v4, v7}, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0, v3}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->addValue(Ljava/lang/Object;)Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    new-instance v3, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;

    const-string v4, "Version"

    invoke-direct {v3, v4, v8}, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0, v3}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->addValue(Ljava/lang/Object;)Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    new-instance v3, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;

    const-string v4, "SpectatorVersion"

    invoke-direct {v3, v4, v9}, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, v3}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->addValue(Ljava/lang/Object;)Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    new-instance v3, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;

    const-string v4, "OsBuildNumber"

    invoke-direct {v3, v4, v10}, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, v3}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->addValue(Ljava/lang/Object;)Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    new-instance v3, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;

    const-string v4, "CrashType"

    invoke-direct {v3, v4, v2}, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0, v3}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->addValue(Ljava/lang/Object;)Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    new-instance v3, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;

    const-string v4, "CrashDescriptor"

    invoke-direct {v3, v4, v6}, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0, v3}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->addValue(Ljava/lang/Object;)Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    new-instance v3, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;

    const-string v4, "CrashTimeUtc"

    invoke-direct {v3, v4, v11}, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0, v3}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->addValue(Ljava/lang/Object;)Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    new-instance v3, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;

    const-string v4, "DeviceType"

    invoke-direct {v3, v4, v13}, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0, v3}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->addValue(Ljava/lang/Object;)Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    new-instance v3, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;

    const-string v4, "DeviceSerialNumber"

    invoke-direct {v3, v4, v12}, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0, v3}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->addValue(Ljava/lang/Object;)Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    new-instance v3, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;

    const-string v4, "BuildType"

    invoke-direct {v3, v4, v14}, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0, v3}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->addValue(Ljava/lang/Object;)Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    new-instance v3, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;

    const-string v4, "BuildTags"

    invoke-direct {v3, v4, v15}, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0, v3}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->addValue(Ljava/lang/Object;)Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    .line 237
    iget-object v3, v1, Lcom/amazon/kcp/application/CrashReportUploadTask;->previousCrashIdentifier:Ljava/lang/String;

    invoke-static {v3}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 238
    new-instance v3, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;

    const-string v4, "CrashIdentifier"

    iget-object v6, v1, Lcom/amazon/kcp/application/CrashReportUploadTask;->previousCrashIdentifier:Ljava/lang/String;

    invoke-direct {v3, v4, v6}, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->addValue(Ljava/lang/Object;)Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    .line 242
    :cond_7
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v3

    .line 243
    invoke-interface {v3}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 244
    invoke-interface {v3}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 246
    invoke-interface {v3}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getUserCOR()Ljava/lang/String;

    move-result-object v4

    .line 247
    invoke-interface {v3}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getUserPFM()Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_8

    .line 249
    new-instance v6, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;

    const-string v7, "countryOfResidence"

    invoke-direct {v6, v7, v4}, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->addValue(Ljava/lang/Object;)Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    :cond_8
    if-eqz v3, :cond_9

    .line 252
    new-instance v4, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;

    const-string v6, "MarketplaceID"

    invoke-direct {v4, v6, v3}, Lcom/amazon/kcp/service/det/klf/KLFKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->addValue(Ljava/lang/Object;)Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    .line 257
    :cond_9
    new-instance v3, Lcom/amazon/kcp/service/det/klf/KLFFile$Builder;

    invoke-direct {v3}, Lcom/amazon/kcp/service/det/klf/KLFFile$Builder;-><init>()V

    .line 258
    invoke-virtual {v0}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->build()Lcom/amazon/kcp/service/det/klf/KLFSection;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amazon/kcp/service/det/klf/KLFFile$Builder;->addSection(Lcom/amazon/kcp/service/det/klf/KLFSection;)Lcom/amazon/kcp/service/det/klf/KLFFile$Builder;

    new-instance v0, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    const-string v4, "Events"

    invoke-direct {v0, v4}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0, v5}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->addValue(Ljava/lang/Object;)Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;

    .line 261
    invoke-virtual {v0}, Lcom/amazon/kcp/service/det/klf/KLFSection$Builder;->build()Lcom/amazon/kcp/service/det/klf/KLFSection;

    move-result-object v0

    .line 259
    invoke-virtual {v3, v0}, Lcom/amazon/kcp/service/det/klf/KLFFile$Builder;->addSection(Lcom/amazon/kcp/service/det/klf/KLFSection;)Lcom/amazon/kcp/service/det/klf/KLFFile$Builder;

    .line 262
    invoke-virtual {v3}, Lcom/amazon/kcp/service/det/klf/KLFFile$Builder;->build()Lcom/amazon/kcp/service/det/klf/KLFFile;

    move-result-object v0

    .line 264
    new-instance v3, Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;

    invoke-direct {v3, v0}, Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;-><init>(Lcom/amazon/kcp/service/det/klf/KLFFile;)V

    .line 265
    invoke-virtual {v3, v12}, Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;->withDsn(Ljava/lang/String;)Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;

    sget-object v0, Lcom/amazon/kcp/service/det/client/DETClient$ContentType;->CRASH_REPORT:Lcom/amazon/kcp/service/det/client/DETClient$ContentType;

    .line 266
    invoke-virtual {v3, v0}, Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;->withContentType(Lcom/amazon/kcp/service/det/client/DETClient$ContentType;)Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;

    .line 267
    invoke-virtual {v3}, Lcom/amazon/kcp/service/det/client/DETClient$UploaderBuilder;->upload()V

    move-object/from16 v0, v18

    .line 275
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_a

    .line 276
    sget-object v0, Lcom/amazon/kcp/application/CrashReportUploadTask;->TAG:Ljava/lang/String;

    const-string v3, "Something unexpectedly deleted our file."

    invoke-static {v0, v3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, v16

    .line 280
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, v1, Lcom/amazon/kcp/application/CrashReportUploadTask;->renameFileAfterUpload:Z

    if-eqz v0, :cond_b

    .line 281
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".bak"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v17

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 282
    sget-object v2, Lcom/amazon/kcp/application/CrashReportUploadTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Renamed anr file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", succeed? "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 285
    sget-object v2, Lcom/amazon/kcp/application/CrashReportUploadTask;->TAG:Ljava/lang/String;

    const-string v3, "Unable to read file."

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_2
    return-void

    :cond_c
    :goto_3
    move-object v3, v0

    .line 176
    sget-object v0, Lcom/amazon/kcp/application/CrashReportUploadTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANR/crash file not found. This error simply ignores the file. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/amazon/kcp/application/CrashReportUploadTask;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/amazon/kcp/application/CrashReportUploadTask;->crashType:Ljava/lang/String;

    const-string v1, "data_app_anr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/amazon/kcp/application/CrashReportUploadTask;->filePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/CrashReportUploadTask;->getAnrTraceFilePaths(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 120
    iget-object v2, p0, Lcom/amazon/kcp/application/CrashReportUploadTask;->crashType:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/amazon/kcp/application/CrashReportUploadTask;->uploadFileToDET(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/CrashReportUploadTask;->filePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/kcp/application/CrashReportUploadTask;->crashType:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/application/CrashReportUploadTask;->uploadFileToDET(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 126
    :cond_1
    sget-object v0, Lcom/amazon/kcp/application/CrashReportUploadTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "run() - missing file path!"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
