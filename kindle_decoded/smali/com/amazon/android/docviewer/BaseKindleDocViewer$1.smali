.class Lcom/amazon/android/docviewer/BaseKindleDocViewer$1;
.super Ljava/lang/Object;
.source "BaseKindleDocViewer.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/BaseKindleDocViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/BaseKindleDocViewer;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    .line 165
    invoke-static {}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "A task is rejected by the low priority executor!"

    invoke-static {p2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    instance-of p2, p1, Ljava/util/concurrent/Future;

    if-eqz p2, :cond_0

    .line 169
    check-cast p1, Ljava/util/concurrent/Future;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method
