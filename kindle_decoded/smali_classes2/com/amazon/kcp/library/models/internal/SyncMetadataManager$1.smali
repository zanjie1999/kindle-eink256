.class Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$1;
.super Lcom/amazon/kindle/webservices/XmlResponseHandler;
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


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$1;->this$0:Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;

    invoke-direct {p0}, Lcom/amazon/kindle/webservices/XmlResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onHttpStatusCodeReceived(I)V
    .locals 1

    .line 129
    invoke-super {p0, p1}, Lcom/amazon/kindle/webservices/BaseResponseHandler;->onHttpStatusCodeReceived(I)V

    const/16 v0, 0x190

    if-ge p1, v0, :cond_0

    if-lez p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$1;->this$0:Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->access$102(Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;Z)Z

    :cond_0
    return-void
.end method
