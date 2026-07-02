.class Lcom/amazon/kcp/application/AndroidApplicationController$2;
.super Ljava/lang/Object;
.source "AndroidApplicationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/AndroidApplicationController;->performForegroundedAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/AndroidApplicationController;)V
    .locals 0

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 427
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canPerformSync()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->FOREGROUND_1P:Lcom/amazon/kcp/application/sync/internal/SyncType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->FOREGROUND_3P:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 429
    :goto_0
    new-instance v1, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2, v2}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    .line 431
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/sync/SynchronizationManager;->hasRequestFor(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 432
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    :cond_1
    return-void
.end method
