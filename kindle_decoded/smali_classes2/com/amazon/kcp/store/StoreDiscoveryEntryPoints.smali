.class public Lcom/amazon/kcp/store/StoreDiscoveryEntryPoints;
.super Ljava/lang/Object;
.source "StoreDiscoveryEntryPoints.java"

# interfaces
.implements Lcom/amazon/kcp/store/StoreDiscoveryEntryPointsInterface;


# instance fields
.field private final storeBookHelper:Lcom/amazon/discovery/RequiredUniqueDiscovery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/discovery/RequiredUniqueDiscovery<",
            "Lcom/amazon/kindle/store/StoreBookHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final storeOpenerExecutor:Lcom/amazon/discovery/RequiredUniqueDiscovery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/discovery/RequiredUniqueDiscovery<",
            "Lcom/amazon/kcp/store/StoreOpenerExecutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/discovery/RequiredUniqueDiscovery;Lcom/amazon/discovery/RequiredUniqueDiscovery;Lcom/amazon/discovery/RequiredUniqueDiscovery;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/discovery/RequiredUniqueDiscovery<",
            "Lcom/amazon/kcp/store/StoreDiscoveryEntryPointsInterface;",
            ">;",
            "Lcom/amazon/discovery/RequiredUniqueDiscovery<",
            "Lcom/amazon/kcp/store/StoreOpenerExecutor;",
            ">;",
            "Lcom/amazon/discovery/RequiredUniqueDiscovery<",
            "Lcom/amazon/kindle/store/StoreBookHelper;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/amazon/kcp/store/StoreDiscoveryEntryPoints;->storeOpenerExecutor:Lcom/amazon/discovery/RequiredUniqueDiscovery;

    .line 42
    iput-object p3, p0, Lcom/amazon/kcp/store/StoreDiscoveryEntryPoints;->storeBookHelper:Lcom/amazon/discovery/RequiredUniqueDiscovery;

    return-void
.end method

.method public static getInstance()Lcom/amazon/kcp/store/StoreDiscoveryEntryPointsInterface;
    .locals 2

    .line 18
    const-class v0, Lcom/amazon/kcp/store/StoreDiscoveryEntryPointsInterface;

    .line 19
    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/store/StoreDiscoveryEntryPointsInterface;

    if-eqz v0, :cond_0

    return-object v0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entry points instance not found in Discovery."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getStoreBookHelper()Lcom/amazon/kindle/store/StoreBookHelper;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreDiscoveryEntryPoints;->storeBookHelper:Lcom/amazon/discovery/RequiredUniqueDiscovery;

    invoke-virtual {v0}, Lcom/amazon/discovery/RequiredUniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/store/StoreBookHelper;

    return-object v0
.end method

.method public getStoreOpenerExecutor()Lcom/amazon/kcp/store/StoreOpenerExecutor;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreDiscoveryEntryPoints;->storeOpenerExecutor:Lcom/amazon/discovery/RequiredUniqueDiscovery;

    invoke-virtual {v0}, Lcom/amazon/discovery/RequiredUniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/store/StoreOpenerExecutor;

    return-object v0
.end method
