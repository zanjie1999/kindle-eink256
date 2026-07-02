.class Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker$1;
.super Ljava/lang/Object;
.source "ContentAvailabilityController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker;->reportStatus(Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker;

.field final synthetic val$assetId:Ljava/lang/String;

.field final synthetic val$assetPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker$1;->this$1:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker;

    iput-object p2, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker$1;->val$assetId:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker$1;->val$assetPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3

    .line 107
    invoke-static {}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->access$400()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadStatusTracker:Attach to KRF, assetId - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker$1;->val$assetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Book - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker$1;->this$1:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker;

    iget-object v1, v1, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker;->this$0:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

    invoke-static {v1}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->access$100(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;)Lcom/amazon/kcp/library/models/internal/AmznBookID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker$1;->this$1:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker;

    iget-object v0, v0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker;->this$0:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

    invoke-static {v0}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->access$500(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;)Lcom/amazon/kindle/yj/controller/IResourceHost;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker$1;->val$assetId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker$1;->val$assetPath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/yj/controller/IResourceHost;->attachResourceContainer(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker$1;->this$1:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker;

    iget-object v0, v0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker;->this$0:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

    invoke-static {v0}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->access$600(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$DownloadStatusTracker$1;->val$assetId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return-object v0
.end method
