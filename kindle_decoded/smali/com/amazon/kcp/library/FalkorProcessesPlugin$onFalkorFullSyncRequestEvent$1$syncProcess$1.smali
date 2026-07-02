.class final Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1$syncProcess$1;
.super Ljava/lang/Object;
.source "FalkorProcessesPlugin.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1$syncProcess$1;->this$0:Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 64
    new-instance v5, Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1$syncProcess$1$callback$1;

    invoke-direct {v5, p0}, Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1$syncProcess$1$callback$1;-><init>(Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1$syncProcess$1;)V

    .line 65
    new-instance v6, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->FALKOR_FULL_SYNC:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IBooleanCallback;)V

    .line 67
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    const-string v2, "Utils.getFactory().authenticationManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v0

    const-string v2, "last_syncmetadata_server_date"

    invoke-interface {v0, v2}, Lcom/amazon/kindle/persistence/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    .line 69
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v0

    const-string v2, "Utils.getFactory().synchronizationManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/sync/SynchronizationManager;->getSyncMetadataModel()Lcom/amazon/kcp/library/models/internal/ISyncMetadata;

    move-result-object v0

    const-string v2, "Utils.getFactory().synch\u2026Manager.syncMetadataModel"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/amazon/kcp/library/models/internal/ISyncMetadata;->setSyncTime(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    return-void
.end method
