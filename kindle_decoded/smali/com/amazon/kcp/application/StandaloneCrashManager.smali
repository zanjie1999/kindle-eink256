.class public final Lcom/amazon/kcp/application/StandaloneCrashManager;
.super Ljava/lang/Object;
.source "StandaloneCrashManager.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/application/StandaloneCrashManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/amazon/kcp/application/StandaloneCrashManager;

    invoke-direct {v0}, Lcom/amazon/kcp/application/StandaloneCrashManager;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/StandaloneCrashManager;->INSTANCE:Lcom/amazon/kcp/application/StandaloneCrashManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final checkAnr(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/thirdparty/R$string;->anr_directory_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.resources.getStr\u2026tring.anr_directory_name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "data_app_anr"

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-static {}, Lcom/amazon/kcp/application/StandaloneCrashManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Detected a ANR trace file. Starting handler to upload it."

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v1, Lcom/amazon/kcp/application/CrashReportUploadTask;

    invoke-direct {v1, v0, v3, p2}, Lcom/amazon/kcp/application/CrashReportUploadTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_1

    .line 40
    invoke-static {}, Lcom/amazon/kcp/application/StandaloneCrashManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Skip customized anr report check, externalFilesDire is not available"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 43
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 45
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "anr"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 47
    invoke-static {}, Lcom/amazon/kcp/application/StandaloneCrashManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Detected a customized ANR trace file folder. Starting handler to scan it."

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance p1, Lcom/amazon/kcp/application/CrashReportUploadTask;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v3, p2, v1}, Lcom/amazon/kcp/application/CrashReportUploadTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 50
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_2
    return-void
.end method

.method public static final initialize(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/amazon/kcp/application/CrashIdentifierUploadManager;->getInstance()Lcom/amazon/kcp/application/CrashIdentifierUploadHelper;

    move-result-object v0

    .line 22
    invoke-interface {v0, p0}, Lcom/amazon/kcp/application/CrashIdentifierUploadHelper;->initialize(Landroid/content/Context;)V

    .line 23
    sget-object v1, Lcom/amazon/kcp/application/StandaloneCrashManager;->INSTANCE:Lcom/amazon/kcp/application/StandaloneCrashManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/CrashIdentifierUploadHelper;->getPreviousCrashIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/application/StandaloneCrashManager;->checkAnr(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
