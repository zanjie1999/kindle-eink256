.class Lcom/amazon/kcp/store/StoreFragment$5;
.super Ljava/lang/Object;
.source "StoreFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/store/StoreFragment;->loadStoreInternal(Ljava/lang/String;Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/StoreFragment;

.field final synthetic val$action:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

.field final synthetic val$actionParameters:Ljava/util/Map;

.field final synthetic val$refTag:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$urlParameters:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/StoreFragment;Ljava/lang/String;Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 1425
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$5;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    iput-object p2, p0, Lcom/amazon/kcp/store/StoreFragment$5;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/store/StoreFragment$5;->val$action:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    iput-object p4, p0, Lcom/amazon/kcp/store/StoreFragment$5;->val$actionParameters:Ljava/util/Map;

    iput-object p5, p0, Lcom/amazon/kcp/store/StoreFragment$5;->val$urlParameters:Ljava/util/Map;

    iput-object p6, p0, Lcom/amazon/kcp/store/StoreFragment$5;->val$refTag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1429
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getStorePathProvider()Lcom/amazon/kcp/store/StorePathProvider;

    move-result-object v0

    .line 1430
    iget-object v1, p0, Lcom/amazon/kcp/store/StoreFragment$5;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kcp/store/StoreFragment;->access$2202(Lcom/amazon/kcp/store/StoreFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1431
    iget-object v1, p0, Lcom/amazon/kcp/store/StoreFragment$5;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kcp/store/StoreFragment;->access$2302(Lcom/amazon/kcp/store/StoreFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1435
    iget-object v1, p0, Lcom/amazon/kcp/store/StoreFragment$5;->val$url:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1436
    new-instance v7, Lcom/amazon/kcp/store/StoreUrlBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/store/StoreFragment$5;->val$action:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    iget-object v4, p0, Lcom/amazon/kcp/store/StoreFragment$5;->val$actionParameters:Ljava/util/Map;

    iget-object v5, p0, Lcom/amazon/kcp/store/StoreFragment$5;->val$urlParameters:Ljava/util/Map;

    iget-object v6, p0, Lcom/amazon/kcp/store/StoreFragment$5;->val$refTag:Ljava/lang/String;

    move-object v1, v7

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/store/StoreUrlBuilder;-><init>(Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Lcom/amazon/kcp/store/StorePathProvider;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 1441
    invoke-virtual {v7}, Lcom/amazon/kcp/store/StoreUrlBuilder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1443
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/store/StoreFragment$5;->val$url:Ljava/lang/String;

    .line 1447
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/store/StoreFragment$5;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v2, v1}, Lcom/amazon/kcp/store/StoreFragment;->access$2500(Lcom/amazon/kcp/store/StoreFragment;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kcp/store/StoreFragment;->access$2402(Lcom/amazon/kcp/store/StoreFragment;[Ljava/lang/String;)[Ljava/lang/String;

    .line 1450
    iget-object v2, p0, Lcom/amazon/kcp/store/StoreFragment$5;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v2}, Lcom/amazon/kcp/store/StoreFragment;->access$2400(Lcom/amazon/kcp/store/StoreFragment;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1451
    iget-object v2, p0, Lcom/amazon/kcp/store/StoreFragment$5;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v2}, Lcom/amazon/kcp/store/StoreFragment;->access$2400(Lcom/amazon/kcp/store/StoreFragment;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/store/StoreFragment$5;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v4}, Lcom/amazon/kcp/store/StoreFragment;->access$2400(Lcom/amazon/kcp/store/StoreFragment;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/kcp/store/StoreFragment;->access$2402(Lcom/amazon/kcp/store/StoreFragment;[Ljava/lang/String;)[Ljava/lang/String;

    .line 1452
    iget-object v2, p0, Lcom/amazon/kcp/store/StoreFragment$5;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v2, v1}, Lcom/amazon/kcp/store/StoreFragment;->access$2700(Lcom/amazon/kcp/store/StoreFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kcp/store/StoreFragment;->access$2602(Lcom/amazon/kcp/store/StoreFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1453
    iget-object v2, p0, Lcom/amazon/kcp/store/StoreFragment$5;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v2}, Lcom/amazon/kcp/store/StoreFragment;->access$2400(Lcom/amazon/kcp/store/StoreFragment;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/store/StoreFragment$5;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v3}, Lcom/amazon/kcp/store/StoreFragment;->access$2400(Lcom/amazon/kcp/store/StoreFragment;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/amazon/kcp/store/StoreFragment$5;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v4}, Lcom/amazon/kcp/store/StoreFragment;->access$2600(Lcom/amazon/kcp/store/StoreFragment;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1461
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$2800()Ljava/util/Timer;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1462
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    invoke-static {v2}, Lcom/amazon/kcp/store/StoreFragment;->access$2802(Ljava/util/Timer;)Ljava/util/Timer;

    .line 1463
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$2800()Ljava/util/Timer;

    move-result-object v3

    new-instance v4, Lcom/amazon/kcp/store/StoreFragment$5$1;

    invoke-direct {v4, p0, v1}, Lcom/amazon/kcp/store/StoreFragment$5$1;-><init>(Lcom/amazon/kcp/store/StoreFragment$5;Ljava/lang/String;)V

    const-wide/32 v5, 0x2dc6c0

    const-wide/32 v7, 0x2dc6c0

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 1471
    :cond_2
    iget-object v2, p0, Lcom/amazon/kcp/store/StoreFragment$5;->val$refTag:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/amazon/kcp/store/StorePathProvider;->getDefaultCookies(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1473
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v2

    new-instance v3, Lcom/amazon/kcp/store/StoreFragment$5$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/amazon/kcp/store/StoreFragment$5$2;-><init>(Lcom/amazon/kcp/store/StoreFragment$5;Ljava/util/Map;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
