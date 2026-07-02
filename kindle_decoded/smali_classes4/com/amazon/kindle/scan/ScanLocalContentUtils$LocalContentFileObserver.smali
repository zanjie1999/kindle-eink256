.class public final Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;
.super Landroid/os/FileObserver;
.source "ScanLocalContentUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/scan/ScanLocalContentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalContentFileObserver"
.end annotation


# instance fields
.field private final path:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/scan/ScanLocalContentUtils;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    iput-object p1, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;->this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    const/16 p1, 0x2c8

    .line 465
    invoke-direct {p0, p2, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;->path:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getPath$p(Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;)Ljava/lang/String;
    .locals 0

    .line 464
    iget-object p0, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;->path:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3

    .line 470
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver$onEvent$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver$onEvent$1;-><init>(Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;ILjava/lang/String;)V

    const/4 p1, 0x5

    int-to-long p1, p1

    .line 482
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 470
    invoke-interface {v0, v1, p1, p2, v2}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
