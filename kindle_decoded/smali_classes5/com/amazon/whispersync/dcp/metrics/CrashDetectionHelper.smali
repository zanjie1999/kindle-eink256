.class public final Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;
.super Ljava/lang/Object;
.source "CrashDetectionHelper.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final ANDROID_BUILD_VERSION:Ljava/lang/String; = "androidBuildVersion"

.field private static final CRASH_ID:Ljava/lang/String; = "crashId"

.field private static final CRASH_LOG_FILENAME:Ljava/lang/String; = "crashlog.amzcl"

.field private static final CRASH_TIME:Ljava/lang/String; = "crashTime"

.field public static final INTENT_ACTION_INCREMENT_ACTIVITY_COUNTER:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.action.ACTIVITY_COUNTER"

.field public static final INTENT_EXTRA_ACTIVITY_COUNTER_PACKAGE:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.ACTIVITY_COUNTER_PACKAGE"

.field private static final LOG_CONTENTS:Z = false

.field private static final PACKAGE_FILE_PATH:Ljava/lang/String; = "packageFilePath"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final PACKAGE_VERSION_CODE:Ljava/lang/String; = "packageVersionCode"

.field private static final PACKAGE_VERSION_NAME:Ljava/lang/String; = "packageVersionName"

.field private static final REGEX_STACK_TRACE_DATA:Ljava/lang/String; = "([a-zA-Z0-9_.]+(Exception|Error))|(at\\s.*\\(.*\\))"

.field private static final SINGLE_THREADED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final STACK_TRACE:Ljava/lang/String; = "stackTrace"

.field private static final STACK_TRACE_EXTENDED:Ljava/lang/String; = "stackTraceExtended"

.field private static final TAG:Ljava/lang/String;

.field private static final THREAD_DUMP:Ljava/lang/String; = "threadDump"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDomain:Ljava/lang/String;

.field private mPreviousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->TAG:Ljava/lang/String;

    .line 49
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->SINGLE_THREADED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->mDomain:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 85
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->mContext:Landroid/content/Context;

    :goto_0
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 38
    sget-object v0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->SINGLE_THREADED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->mDomain:Ljava/lang/String;

    return-object p0
.end method

.method private collectCrashDetails(Ljava/lang/Throwable;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 201
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->collectCrashTime(Ljava/util/HashMap;)V

    .line 202
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->collectPackageDetails(Ljava/util/HashMap;)V

    .line 203
    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->collectStackTrace(Ljava/lang/Throwable;Ljava/util/HashMap;)V

    .line 204
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->collectThreadDump(Ljava/util/HashMap;)V

    .line 205
    invoke-static {v0}, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->collectCrashID(Ljava/util/HashMap;)V

    return-object v0
.end method

.method private static collectCrashID(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 326
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "packageName"

    .line 327
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stackTrace"

    .line 329
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "([a-zA-Z0-9_.]+(Exception|Error))|(at\\s.*\\(.*\\))"

    .line 332
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 333
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 335
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "SHA1"

    .line 341
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 343
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "crashId"

    .line 345
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 349
    sget-object v0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Error while capturing crashId"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private collectCrashTime(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "crashTime"

    .line 214
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 218
    sget-object v0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Error while capturing time details"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private collectPackageDetails(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string/jumbo v1, "packageFilePath"

    .line 230
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "packageName"

    .line 231
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "packageVersionCode"

    .line 232
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "packageVersionName"

    .line 233
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 237
    sget-object v0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Error while capturing package details"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private collectStackTrace(Ljava/lang/Throwable;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 245
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 248
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 249
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 251
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "stackTrace"

    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    .line 257
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 258
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 260
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 261
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v3, "\nFull stack trace of next cause...\n"

    .line 263
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 266
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 267
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 270
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    const-string/jumbo p1, "stackTraceExtended"

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 276
    sget-object p2, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v0, "Error while capturing stack trace"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private collectThreadDump(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "\n"

    .line 284
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v2

    .line 287
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 289
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 291
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 292
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    .line 293
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/StackTraceElement;

    .line 295
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n\tThread : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 298
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tisAlive : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tisInterrupted : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tisDaemon : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Thread;->isDaemon()Z

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    .line 305
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 307
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t\tat "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "threadDump"

    .line 310
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 314
    sget-object v0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Error while capturing thread dump"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private getFormattedReport(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=== Crash Report ===\n\n"

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crash ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "crashId"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crash Time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "crashTime"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "packageName"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package Version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "packageVersionName"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android Build Version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "androidBuildVersion"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack Trace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "stackTrace"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=== Complete details ===\n\n"

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 370
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 372
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 373
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    .line 376
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v4

    const-string v2, "%s : %s\n"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 379
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static incrementActivityCounter(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "com.amazon.whispersync.dcp.metrics.action.ACTIVITY_COUNTER"

    .line 136
    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/BroadcastIntentFactory;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.amazon.whispersync.dcp.metrics.ACTIVITY_COUNTER_PACKAGE"

    .line 137
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.amazon.whispersync.dcp.metrics.permission.METRICS_PERMISSION"

    .line 138
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static reportCrash(Ljava/lang/Throwable;)V
    .locals 2

    .line 144
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;

    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;

    .line 150
    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->saveCrash(Ljava/lang/Throwable;)V

    return-void

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Crash detection helper was not set up"

    invoke-direct {v0, v1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private saveCrash(Ljava/lang/Throwable;)V
    .locals 2

    .line 188
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->collectCrashDetails(Ljava/lang/Throwable;)Ljava/util/HashMap;

    move-result-object p1

    .line 189
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->saveToFile(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 193
    sget-object v0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Could not handle uncaught exception"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private saveToFile(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 384
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->getFormattedReport(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "crashId"

    .line 398
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 402
    :try_start_0
    sget-object v1, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v2, "Saving crash %s to file: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    iget-object v5, p0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->mContext:Landroid/content/Context;

    const-string v6, "crashlog.amzcl"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, p1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const-class p1, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;

    monitor-enter p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->mContext:Landroid/content/Context;

    const-string v2, "crashlog.amzcl"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 411
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 415
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 417
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 415
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v0

    :catchall_1
    move-exception v0

    .line 417
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 425
    sget-object v0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Could not save crash report to file"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 421
    sget-object v0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Could not save crash report to file"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private sendReportIfNeeded()Z
    .locals 9

    .line 444
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->mContext:Landroid/content/Context;

    const-string v1, "crashlog.amzcl"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 445
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 452
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/whispersync/dcp/metrics/MetricsServiceIntentFactory;->findMetricsService(Landroid/content/Context;)Lcom/amazon/whispersync/dcp/metrics/MetricsServiceIntentFactory;

    move-result-object v1

    if-nez v1, :cond_2

    .line 455
    sget-object v0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "No Amazon Central Service to send crash reports to. Aborting crash report."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->deleteCrashReport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 458
    sget-object v0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Couldn\'t delete old crash log crashlog.amzcl"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    :cond_2
    const/high16 v2, 0x10000000

    .line 463
    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 465
    new-instance v0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper$1;

    iget-object v5, p0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory;->buildIntent()Landroid/content/Intent;

    move-result-object v6

    const/4 v7, 0x1

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper$1;-><init>(Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;Landroid/content/Context;Landroid/content/Intent;ILandroid/os/ParcelFileDescriptor;)V

    .line 510
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->call()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 514
    sget-object v1, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v2, "Could not send crash report"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static setUpCrashDetection(Landroid/content/Context;)Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;
    .locals 1

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->setUpCrashDetection(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;

    move-result-object p0

    return-object p0
.end method

.method public static setUpCrashDetection(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;
    .locals 2

    if-nez p0, :cond_0

    .line 99
    sget-object p0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string p1, "Could not set up crash detection, context is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 105
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;

    if-nez v0, :cond_2

    .line 107
    sget-object v0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Setting up crash detector."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p0

    iput-object p0, v0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->mPreviousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 111
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 113
    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->sendReportIfNeeded()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 115
    sget-object p0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string p1, "Crash detected from previous execution, sending report..."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0

    .line 121
    :cond_2
    sget-object p0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string p1, "Crash detector already set up."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;

    return-object p0
.end method


# virtual methods
.method deleteCrashReport()Z
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->mContext:Landroid/content/Context;

    const-string v1, "crashlog.amzcl"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasCrashReport()Z
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->mContext:Landroid/content/Context;

    const-string v1, "crashlog.amzcl"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 433
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public tearDownCrashDetection()V
    .locals 2

    .line 156
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Tearing down crash detector."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->mPreviousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0

    .line 163
    :cond_0
    sget-object v0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "Crash detector already torn down."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 170
    invoke-direct {p0, p2}, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->saveCrash(Ljava/lang/Throwable;)V

    .line 173
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/metrics/CrashDetectionHelper;->mPreviousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 175
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
