.class public final Lcom/amazon/kcp/store/AuthorPageOpener;
.super Lcom/amazon/kcp/store/BaseStoreOpener;
.source "AuthorPageOpener.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/store/BaseStoreOpener<",
        "Lcom/amazon/kcp/store/AuthorPageOpener;",
        ">;"
    }
.end annotation


# instance fields
.field private final asin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/BaseStoreOpener;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amazon/kcp/store/AuthorPageOpener;->asin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 17
    invoke-static {}, Lcom/amazon/kcp/store/StoreDiscoveryEntryPoints;->getInstance()Lcom/amazon/kcp/store/StoreDiscoveryEntryPointsInterface;

    move-result-object v0

    const-string v1, "StoreDiscoveryEntryPoints.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/store/StoreDiscoveryEntryPointsInterface;->getStoreOpenerExecutor()Lcom/amazon/kcp/store/StoreOpenerExecutor;

    move-result-object v0

    const-string v1, "StoreDiscoveryEntryPoint\u2026nce().storeOpenerExecutor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {v0, p0}, Lcom/amazon/kcp/store/StoreOpenerExecutor;->execute(Lcom/amazon/kcp/store/AuthorPageOpener;)V

    return-void
.end method

.method protected getThis()Lcom/amazon/kcp/store/AuthorPageOpener;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getThis()Lcom/amazon/kcp/store/BaseStoreOpener;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/amazon/kcp/store/AuthorPageOpener;->getThis()Lcom/amazon/kcp/store/AuthorPageOpener;

    return-object p0
.end method
