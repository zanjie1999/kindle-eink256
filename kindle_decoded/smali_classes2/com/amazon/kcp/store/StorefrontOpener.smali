.class final Lcom/amazon/kcp/store/StorefrontOpener;
.super Lcom/amazon/kcp/store/BaseStoreOpener;
.source "StorefrontOpener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/store/BaseStoreOpener<",
        "Lcom/amazon/kcp/store/StorefrontOpener;",
        ">;"
    }
.end annotation


# instance fields
.field private final storeType:Lcom/amazon/kindle/store/StoreType;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/store/StoreType;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/BaseStoreOpener;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 20
    iput-object p2, p0, Lcom/amazon/kcp/store/StorefrontOpener;->storeType:Lcom/amazon/kindle/store/StoreType;

    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "storeType is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public execute()V
    .locals 1

    .line 31
    const-class v0, Lcom/amazon/kcp/store/StoreOpenerExecutor;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/store/StoreOpenerExecutor;

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0, p0}, Lcom/amazon/kcp/store/StoreOpenerExecutor;->execute(Lcom/amazon/kcp/store/StorefrontOpener;)V

    :cond_0
    return-void
.end method

.method getStoreType()Lcom/amazon/kindle/store/StoreType;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/store/StorefrontOpener;->storeType:Lcom/amazon/kindle/store/StoreType;

    return-object v0
.end method

.method bridge synthetic getThis()Lcom/amazon/kcp/store/BaseStoreOpener;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StorefrontOpener;->getThis()Lcom/amazon/kcp/store/StorefrontOpener;

    return-object p0
.end method

.method getThis()Lcom/amazon/kcp/store/StorefrontOpener;
    .locals 0

    return-object p0
.end method
