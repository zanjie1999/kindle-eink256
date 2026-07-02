.class public final Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;
.super Ljava/lang/Object;
.source "RemoteLicenseReleaseActivity.kt"

# interfaces
.implements Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->getRemoveConsumptionsCallBack$LibraryModule_release(Ljava/lang/String;ZLjava/util/Timer;Landroid/widget/ProgressBar;JLcom/amazon/kcp/library/ILibraryController;Lcom/amazon/foundation/internal/IThreadPoolManager;Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionCompletionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $activity:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

.field final synthetic $bookId:Ljava/lang/String;

.field final synthetic $isOneTapEnabled:Z

.field final synthetic $libraryController:Lcom/amazon/kcp/library/ILibraryController;

.field final synthetic $manager:Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;

.field final synthetic $removeProgress:Landroid/widget/ProgressBar;

.field final synthetic $requestStartTime:J

.field final synthetic $threadPoolManager:Lcom/amazon/foundation/internal/IThreadPoolManager;

.field final synthetic $timer:Ljava/util/Timer;

.field final synthetic this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;JLcom/amazon/foundation/internal/IThreadPoolManager;Ljava/util/Timer;Landroid/widget/ProgressBar;Ljava/lang/String;Lcom/amazon/kcp/library/ILibraryController;ZLcom/amazon/kindle/krx/content/bookopen/BookOpenManager;Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/amazon/foundation/internal/IThreadPoolManager;",
            "Ljava/util/Timer;",
            "Landroid/widget/ProgressBar;",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/ILibraryController;",
            "Z",
            "Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;",
            "Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;",
            ")V"
        }
    .end annotation

    .line 544
    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    iput-wide p2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$requestStartTime:J

    iput-object p4, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$threadPoolManager:Lcom/amazon/foundation/internal/IThreadPoolManager;

    iput-object p5, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$timer:Ljava/util/Timer;

    iput-object p6, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$removeProgress:Landroid/widget/ProgressBar;

    iput-object p7, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$bookId:Ljava/lang/String;

    iput-object p8, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$libraryController:Lcom/amazon/kcp/library/ILibraryController;

    iput-boolean p9, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$isOneTapEnabled:Z

    iput-object p10, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$manager:Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;

    iput-object p11, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$activity:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/amazon/kcp/library/releaselicense/api/model/RemoveConsumptionsResponse;)V
    .locals 11

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$requestStartTime:J

    sub-long v9, v0, v2

    .line 547
    invoke-virtual {p1}, Lcom/amazon/kcp/library/releaselicense/api/model/RemoveConsumptionsResponse;->getSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$threadPoolManager:Lcom/amazon/foundation/internal/IThreadPoolManager;

    new-instance v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;

    invoke-direct {v0, p0, v9, v10}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;-><init>(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;J)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 578
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getTAG$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoveAndReadNow failure response for book "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$bookId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/releaselicense/api/model/RemoveConsumptionsResponse;->getFailureReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    sget-object v4, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseOperationType;->REMOVE_CONSUMPTIONS:Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseOperationType;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/amazon/kcp/library/releaselicense/api/model/RemoveConsumptionsResponse;->getResponseCode()I

    move-result v6

    .line 580
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getAsin$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getContentType$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v8

    .line 579
    invoke-static/range {v4 .. v10}, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics;->reportServiceResponseMetrics(Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseOperationType;ZILjava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;J)V

    .line 581
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$isRLRActivityForegrounded$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$bookId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$isOneTapEnabled:Z

    invoke-virtual {p1}, Lcom/amazon/kcp/library/releaselicense/api/model/RemoveConsumptionsResponse;->getFailureReason()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->checkFailureAndBuildDialog$LibraryModule_release(Ljava/lang/String;ZLjava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method
