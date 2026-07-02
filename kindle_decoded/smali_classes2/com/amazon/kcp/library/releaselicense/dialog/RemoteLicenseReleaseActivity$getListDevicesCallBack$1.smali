.class public final Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;
.super Ljava/lang/Object;
.source "RemoteLicenseReleaseActivity.kt"

# interfaces
.implements Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->getListDevicesCallBack$LibraryModule_release(Ljava/lang/String;JLandroid/widget/LinearLayout;Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;II)Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsCompletionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $activity:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

.field final synthetic $bookId:Ljava/lang/String;

.field final synthetic $ineligibleItemLayout:I

.field final synthetic $itemLayout:I

.field final synthetic $progressBar:Landroid/widget/LinearLayout;

.field final synthetic $requestStartTime:J

.field final synthetic this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;JLandroid/widget/LinearLayout;Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/widget/LinearLayout;",
            "Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;",
            "I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 298
    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    iput-wide p2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->$requestStartTime:J

    iput-object p4, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->$progressBar:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->$activity:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    iput p6, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->$itemLayout:I

    iput-object p7, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->$bookId:Ljava/lang/String;

    iput p8, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->$ineligibleItemLayout:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;)V
    .locals 11

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->$requestStartTime:J

    sub-long v9, v0, v2

    .line 301
    invoke-virtual {p1}, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->getSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;

    invoke-direct {v1, p0, p1, v9, v10}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1$onResponse$1;-><init>(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;J)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 339
    :cond_0
    sget-object v4, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseOperationType;->LIST_CONSUMPTIONS:Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseOperationType;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->getResponseCode()I

    move-result v6

    .line 340
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getAsin$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getContentType$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v8

    .line 339
    invoke-static/range {v4 .. v10}, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics;->reportServiceResponseMetrics(Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseOperationType;ZILjava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;J)V

    .line 341
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getTAG$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "List Devices failure response for book "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->$bookId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->getFailureReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$isRLRActivityForegrounded$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getListDevicesCallBack$1;->$bookId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;->getFailureReason()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->checkFailureAndBuildDialog$LibraryModule_release(Ljava/lang/String;ZLjava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method
