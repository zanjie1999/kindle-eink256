.class Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction$1;
.super Ljava/lang/Object;
.source "OpenSlideshowAction.java"

# interfaces
.implements Lcom/amazon/kcp/info/brochure/IBrochureAssetDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->isTapActionValid(Lcom/amazon/reader/notifications/message/NotificationAction;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction$1;->this$0:Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;

    iput-object p2, p0, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const-class p1, Lcom/amazon/kcp/info/brochure/IBrochureAssetDownloadListener;

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction$1;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onDownloadComplete(Ljava/lang/String;Lcom/amazon/kcp/info/brochure/SerializableBrochureAsset;)V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction$1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got Feature Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", BrochureAsset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction$1;->this$0:Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;

    iget-object v1, p0, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, p1, p2}, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->access$100(Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kcp/info/brochure/SerializableBrochureAsset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 183
    iget-object v0, p0, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction$1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save brochure asset to file - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    invoke-static {}, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BrochureAssetPreparationFailure"

    invoke-static {p1, p2}, Lcom/amazon/kcp/info/brochure/BrochureAssetMetricsManager;->recordCount(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
