.class final Lcom/amazon/kcp/store/SearchResultsOpener;
.super Lcom/amazon/kcp/store/BaseStoreOpener;
.source "SearchResultsOpener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/store/BaseStoreOpener<",
        "Lcom/amazon/kcp/store/SearchResultsOpener;",
        ">;"
    }
.end annotation


# instance fields
.field private final query:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/BaseStoreOpener;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 19
    iput-object p2, p0, Lcom/amazon/kcp/store/SearchResultsOpener;->query:Ljava/lang/String;

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "search results query is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public execute()V
    .locals 1

    .line 30
    invoke-static {}, Lcom/amazon/kcp/store/StoreDiscoveryEntryPoints;->getInstance()Lcom/amazon/kcp/store/StoreDiscoveryEntryPointsInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/store/StoreDiscoveryEntryPointsInterface;->getStoreOpenerExecutor()Lcom/amazon/kcp/store/StoreOpenerExecutor;

    move-result-object v0

    .line 31
    invoke-interface {v0, p0}, Lcom/amazon/kcp/store/StoreOpenerExecutor;->execute(Lcom/amazon/kcp/store/SearchResultsOpener;)V

    return-void
.end method

.method getQuery()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/store/SearchResultsOpener;->query:Ljava/lang/String;

    return-object v0
.end method

.method bridge synthetic getThis()Lcom/amazon/kcp/store/BaseStoreOpener;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/amazon/kcp/store/SearchResultsOpener;->getThis()Lcom/amazon/kcp/store/SearchResultsOpener;

    return-object p0
.end method

.method getThis()Lcom/amazon/kcp/store/SearchResultsOpener;
    .locals 0

    return-object p0
.end method
