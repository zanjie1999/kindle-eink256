.class Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$3;
.super Ljava/lang/Object;
.source "SyncMetadataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->postDelayedSyncTask()V
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

    .line 294
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$3;->this$0:Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 297
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$3;->this$0:Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;

    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->access$500(Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 299
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v1

    const-string v2, "phase_two_ftue_broadcast_received"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/persistence/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 300
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager$3;->this$0:Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;->access$602(Lcom/amazon/kcp/library/models/internal/SyncMetadataManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 301
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v1

    new-instance v8, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v3, Lcom/amazon/kcp/application/sync/internal/SyncType;->LOGIN:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IBooleanCallback;)V

    invoke-virtual {v1, v8}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    .line 302
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
