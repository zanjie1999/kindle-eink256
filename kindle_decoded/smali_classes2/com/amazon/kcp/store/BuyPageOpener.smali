.class public final Lcom/amazon/kcp/store/BuyPageOpener;
.super Lcom/amazon/kcp/store/BaseStoreOpener;
.source "BuyPageOpener.kt"

# interfaces
.implements Lcom/amazon/kindle/store/BuyPageStoreOpener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/store/BaseStoreOpener<",
        "Lcom/amazon/kcp/store/BuyPageOpener;",
        ">;",
        "Lcom/amazon/kindle/store/BuyPageStoreOpener;"
    }
.end annotation


# instance fields
.field private amount:Ljava/lang/String;

.field private final asin:Ljava/lang/String;

.field private currency:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/BaseStoreOpener;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amazon/kcp/store/BuyPageOpener;->asin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 32
    invoke-static {}, Lcom/amazon/kcp/store/StoreDiscoveryEntryPoints;->getInstance()Lcom/amazon/kcp/store/StoreDiscoveryEntryPointsInterface;

    move-result-object v0

    const-string v1, "StoreDiscoveryEntryPoints.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/store/StoreDiscoveryEntryPointsInterface;->getStoreOpenerExecutor()Lcom/amazon/kcp/store/StoreOpenerExecutor;

    move-result-object v0

    const-string v1, "StoreDiscoveryEntryPoint\u2026nce().storeOpenerExecutor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-interface {v0, p0}, Lcom/amazon/kcp/store/StoreOpenerExecutor;->execute(Lcom/amazon/kcp/store/BuyPageOpener;)V

    return-void
.end method

.method public final getAmount()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/kcp/store/BuyPageOpener;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public final getAsin()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amazon/kcp/store/BuyPageOpener;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/kcp/store/BuyPageOpener;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getThis()Lcom/amazon/kcp/store/BaseStoreOpener;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/amazon/kcp/store/BuyPageOpener;->getThis()Lcom/amazon/kcp/store/BuyPageOpener;

    return-object p0
.end method

.method protected getThis()Lcom/amazon/kcp/store/BuyPageOpener;
    .locals 0

    return-object p0
.end method

.method public setPrice(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kcp/store/BuyPageOpener;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/amazon/kcp/store/BuyPageOpener;->amount:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/amazon/kcp/store/BuyPageOpener;->currency:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setPrice(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/store/BuyPageStoreOpener;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/store/BuyPageOpener;->setPrice(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kcp/store/BuyPageOpener;

    return-object p0
.end method
