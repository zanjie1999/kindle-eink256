.class public final Lcom/amazon/kindle/setting/item/sync/SyncItemProvider;
.super Ljava/lang/Object;
.source "SyncItemProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/ItemsProvider;


# instance fields
.field private final context:Landroid/content/Context;

.field private syncStatus:Lcom/amazon/kindle/setting/item/sync/SyncStatus;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 39
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Utils.getFactory().context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemProvider;->context:Landroid/content/Context;

    .line 40
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v0

    const-string v1, "Utils.getFactory().synchronizationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/sync/SynchronizationManager;->isSyncing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lcom/amazon/kindle/setting/item/sync/InProgressSyncStatus;

    sget-object v1, Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;->SYNCING:Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/setting/item/sync/InProgressSyncStatus;-><init>(Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;)V

    iput-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemProvider;->syncStatus:Lcom/amazon/kindle/setting/item/sync/SyncStatus;

    :cond_0
    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/setting/item/Item;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/amazon/kindle/setting/item/sync/SyncItem;

    iget-object v1, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemProvider;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemProvider;->syncStatus:Lcom/amazon/kindle/setting/item/sync/SyncStatus;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/setting/item/sync/SyncItem;-><init>(Landroid/content/Context;Lcom/amazon/kindle/setting/item/sync/SyncStatus;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final onSynchronizationManagerEvent(Lcom/amazon/kindle/sync/SynchronizationManagerEvent;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    if-eqz p1, :cond_7

    .line 52
    invoke-virtual {p1}, Lcom/amazon/kindle/sync/SynchronizationManagerEvent;->getSyncParameters()Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemProvider;->syncStatus:Lcom/amazon/kindle/setting/item/sync/SyncStatus;

    .line 58
    invoke-virtual {p1}, Lcom/amazon/kindle/sync/SynchronizationManagerEvent;->getType()Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/amazon/kindle/setting/item/sync/SyncItemProvider$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    goto :goto_0

    .line 61
    :cond_2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 62
    invoke-virtual {p1}, Lcom/amazon/kindle/sync/SynchronizationManagerEvent;->getSyncParameters()Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getResult()Lcom/amazon/kcp/application/sync/internal/SyncResult;

    move-result-object p1

    .line 64
    sget-object v3, Lcom/amazon/kcp/application/sync/internal/SyncResult;->SUCCESS:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-ne p1, v3, :cond_3

    .line 65
    new-instance p1, Lcom/amazon/kindle/setting/item/sync/EndSyncStatus;

    sget-object v3, Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;->SYNC_SUCCESS:Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    invoke-direct {p1, v3, v1}, Lcom/amazon/kindle/setting/item/sync/EndSyncStatus;-><init>(Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;Ljava/util/Date;)V

    iput-object p1, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemProvider;->syncStatus:Lcom/amazon/kindle/setting/item/sync/SyncStatus;

    goto :goto_0

    .line 66
    :cond_3
    sget-object v3, Lcom/amazon/kcp/application/sync/internal/SyncResult;->ERROR:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-ne p1, v3, :cond_4

    .line 67
    new-instance p1, Lcom/amazon/kindle/setting/item/sync/EndSyncStatus;

    sget-object v3, Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;->SYNC_FINISHED_WITH_ERROR:Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    invoke-direct {p1, v3, v1}, Lcom/amazon/kindle/setting/item/sync/EndSyncStatus;-><init>(Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;Ljava/util/Date;)V

    iput-object p1, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemProvider;->syncStatus:Lcom/amazon/kindle/setting/item/sync/SyncStatus;

    goto :goto_0

    .line 68
    :cond_4
    sget-object v3, Lcom/amazon/kcp/application/sync/internal/SyncResult;->CANCELED:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-ne p1, v3, :cond_6

    .line 69
    new-instance p1, Lcom/amazon/kindle/setting/item/sync/EndSyncStatus;

    sget-object v3, Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;->SYNC_CANCELLED:Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    invoke-direct {p1, v3, v1}, Lcom/amazon/kindle/setting/item/sync/EndSyncStatus;-><init>(Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;Ljava/util/Date;)V

    iput-object p1, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemProvider;->syncStatus:Lcom/amazon/kindle/setting/item/sync/SyncStatus;

    goto :goto_0

    .line 59
    :cond_5
    new-instance p1, Lcom/amazon/kindle/setting/item/sync/InProgressSyncStatus;

    sget-object v1, Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;->SYNCING:Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    invoke-direct {p1, v1}, Lcom/amazon/kindle/setting/item/sync/InProgressSyncStatus;-><init>(Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;)V

    iput-object p1, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemProvider;->syncStatus:Lcom/amazon/kindle/setting/item/sync/SyncStatus;

    .line 74
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemProvider;->syncStatus:Lcom/amazon/kindle/setting/item/sync/SyncStatus;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_7

    .line 75
    invoke-static {}, Lcom/amazon/kindle/setting/item/ItemsUpdateServiceSingleton;->getInstance()Lcom/amazon/kindle/setting/item/ItemsUpdateService;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/setting/item/sync/SyncItem;

    iget-object v1, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemProvider;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemProvider;->syncStatus:Lcom/amazon/kindle/setting/item/sync/SyncStatus;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/setting/item/sync/SyncItem;-><init>(Landroid/content/Context;Lcom/amazon/kindle/setting/item/sync/SyncStatus;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/setting/item/ItemsUpdateService;->notifyItemUpdate(Lcom/amazon/kindle/setting/item/Item;)V

    :cond_7
    :goto_1
    return-void
.end method
