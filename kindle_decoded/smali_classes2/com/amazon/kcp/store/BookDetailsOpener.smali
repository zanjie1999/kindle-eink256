.class final Lcom/amazon/kcp/store/BookDetailsOpener;
.super Lcom/amazon/kcp/store/BaseStoreOpener;
.source "BookDetailsOpener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/store/BaseStoreOpener<",
        "Lcom/amazon/kcp/store/BookDetailsOpener;",
        ">;"
    }
.end annotation


# instance fields
.field private final asin:Ljava/lang/String;

.field private final contentType:Lcom/amazon/kindle/krx/content/ContentType;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/BaseStoreOpener;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 24
    iput-object p2, p0, Lcom/amazon/kcp/store/BookDetailsOpener;->asin:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/amazon/kcp/store/BookDetailsOpener;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "contentType is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "asin is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public execute()V
    .locals 1

    .line 36
    invoke-static {}, Lcom/amazon/kcp/store/StoreDiscoveryEntryPoints;->getInstance()Lcom/amazon/kcp/store/StoreDiscoveryEntryPointsInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/store/StoreDiscoveryEntryPointsInterface;->getStoreOpenerExecutor()Lcom/amazon/kcp/store/StoreOpenerExecutor;

    move-result-object v0

    .line 37
    invoke-interface {v0, p0}, Lcom/amazon/kcp/store/StoreOpenerExecutor;->execute(Lcom/amazon/kcp/store/BookDetailsOpener;)V

    return-void
.end method

.method getAsin()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/store/BookDetailsOpener;->asin:Ljava/lang/String;

    return-object v0
.end method

.method bridge synthetic getThis()Lcom/amazon/kcp/store/BaseStoreOpener;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/amazon/kcp/store/BookDetailsOpener;->getThis()Lcom/amazon/kcp/store/BookDetailsOpener;

    return-object p0
.end method

.method getThis()Lcom/amazon/kcp/store/BookDetailsOpener;
    .locals 0

    return-object p0
.end method
