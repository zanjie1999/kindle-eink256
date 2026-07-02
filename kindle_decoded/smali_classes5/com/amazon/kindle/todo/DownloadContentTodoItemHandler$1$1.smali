.class Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler$1$1;
.super Ljava/lang/Object;
.source "DownloadContentTodoItemHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler$1;->execute(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler$1;

.field final synthetic val$updatedMetadata:Lcom/amazon/kindle/content/ContentMetadata;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler$1;Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler$1$1;->this$1:Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler$1;

    iput-object p2, p0, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler$1$1;->val$updatedMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 142
    invoke-static {}, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;->access$000()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isArchievable info not available for ASIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler$1$1;->val$updatedMetadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v3, Lcom/amazon/kcp/application/sync/internal/SyncType;->SYNCMETADATA_ONLY:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IBooleanCallback;)V

    .line 145
    iget-object v1, p0, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler$1$1;->this$1:Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler$1;

    iget-object v1, v1, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler$1;->this$0:Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;

    invoke-static {v1}, Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;->access$200(Lcom/amazon/kindle/todo/DownloadContentTodoItemHandler;)Lcom/amazon/kcp/application/IKindleApplicationController;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 146
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    :cond_0
    return-void
.end method
