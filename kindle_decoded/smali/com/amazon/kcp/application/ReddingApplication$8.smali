.class Lcom/amazon/kcp/application/ReddingApplication$8;
.super Ljava/lang/Object;
.source "ReddingApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/ReddingApplication;->initializeAppState(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/ReddingApplication;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/ReddingApplication;)V
    .locals 0

    .line 756
    iput-object p1, p0, Lcom/amazon/kcp/application/ReddingApplication$8;->this$0:Lcom/amazon/kcp/application/ReddingApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 759
    sget-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->APP_STARTUP_SYNC:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 760
    iget-object v1, p0, Lcom/amazon/kcp/application/ReddingApplication$8;->this$0:Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/ReddingApplication;->isFTUESyncComplete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 763
    sget-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->LOGIN:Lcom/amazon/kcp/application/sync/internal/SyncType;

    :cond_0
    move-object v2, v0

    .line 766
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v0

    new-instance v7, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IBooleanCallback;)V

    invoke-virtual {v0, v7}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    return-void
.end method
