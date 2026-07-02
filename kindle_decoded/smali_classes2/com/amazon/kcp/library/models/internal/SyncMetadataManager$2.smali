.class Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$2;
.super Lcom/amazon/kcp/internal/webservices/SyncMetadataWebRequest;
.source "SyncMetadataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->syncMetadataIfNeeded(Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;

.field final synthetic val$reason:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

.field final synthetic val$task:Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;

.field final synthetic val$tracker:Lcom/amazon/kindle/services/download/IStatusTracker;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;Lcom/amazon/kcp/library/models/internal/ISyncMetadata;Lcom/amazon/kindle/webservices/XmlResponseHandler;Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$2;->this$0:Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;

    iput-object p5, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$2;->val$tracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    iput-object p6, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$2;->val$task:Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;

    iput-object p7, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$2;->val$reason:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/kcp/internal/webservices/SyncMetadataWebRequest;-><init>(Lcom/amazon/kcp/library/models/internal/ISyncMetadata;Lcom/amazon/kindle/webservices/XmlResponseHandler;Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;)V

    return-void
.end method


# virtual methods
.method public onRequestComplete()Z
    .locals 5

    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$2;->this$0:Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;

    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->access$200(Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 141
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$2;->this$0:Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$2;->val$tracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$2;->val$task:Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;

    iget-object v4, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$2;->val$reason:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    invoke-static {v0, v1, v3, v4}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->access$300(Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$MetadataSyncTask;Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;)V

    return v2
.end method
