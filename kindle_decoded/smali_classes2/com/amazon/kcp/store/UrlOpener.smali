.class final Lcom/amazon/kcp/store/UrlOpener;
.super Lcom/amazon/kcp/store/BaseStoreOpener;
.source "UrlOpener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/store/BaseStoreOpener<",
        "Lcom/amazon/kcp/store/UrlOpener;",
        ">;"
    }
.end annotation


# instance fields
.field private final forceNewTask:Z

.field private final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/BaseStoreOpener;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 21
    iput-object p2, p0, Lcom/amazon/kcp/store/UrlOpener;->url:Ljava/lang/String;

    .line 22
    iput-boolean p3, p0, Lcom/amazon/kcp/store/UrlOpener;->forceNewTask:Z

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "url is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public execute()V
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/kcp/store/StoreOpenerExecutor;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/store/StoreOpenerExecutor;

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {v0, p0}, Lcom/amazon/kcp/store/StoreOpenerExecutor;->execute(Lcom/amazon/kcp/store/UrlOpener;)V

    :cond_0
    return-void
.end method

.method getForceNewTask()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/amazon/kcp/store/UrlOpener;->forceNewTask:Z

    return v0
.end method

.method bridge synthetic getThis()Lcom/amazon/kcp/store/BaseStoreOpener;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/amazon/kcp/store/UrlOpener;->getThis()Lcom/amazon/kcp/store/UrlOpener;

    return-object p0
.end method

.method getThis()Lcom/amazon/kcp/store/UrlOpener;
    .locals 0

    return-object p0
.end method

.method getUrl()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/store/UrlOpener;->url:Ljava/lang/String;

    return-object v0
.end method
