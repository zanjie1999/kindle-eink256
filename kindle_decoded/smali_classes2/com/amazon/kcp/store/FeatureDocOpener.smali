.class public final Lcom/amazon/kcp/store/FeatureDocOpener;
.super Lcom/amazon/kcp/store/BaseStoreOpener;
.source "FeatureDocOpener.kt"

# interfaces
.implements Lcom/amazon/kindle/store/FeatureDocStoreOpener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/store/BaseStoreOpener<",
        "Lcom/amazon/kcp/store/FeatureDocOpener;",
        ">;",
        "Lcom/amazon/kindle/store/FeatureDocStoreOpener;"
    }
.end annotation


# instance fields
.field private actionData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final pageId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/BaseStoreOpener;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amazon/kcp/store/FeatureDocOpener;->pageId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 27
    invoke-static {}, Lcom/amazon/kcp/store/StoreDiscoveryEntryPoints;->getInstance()Lcom/amazon/kcp/store/StoreDiscoveryEntryPointsInterface;

    move-result-object v0

    const-string v1, "StoreDiscoveryEntryPoints.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/store/StoreDiscoveryEntryPointsInterface;->getStoreOpenerExecutor()Lcom/amazon/kcp/store/StoreOpenerExecutor;

    move-result-object v0

    const-string v1, "StoreDiscoveryEntryPoint\u2026nce().storeOpenerExecutor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-interface {v0, p0}, Lcom/amazon/kcp/store/StoreOpenerExecutor;->execute(Lcom/amazon/kcp/store/FeatureDocOpener;)V

    return-void
.end method

.method public final getActionData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/amazon/kcp/store/FeatureDocOpener;->actionData:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "actionData"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getPageId()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amazon/kcp/store/FeatureDocOpener;->pageId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getThis()Lcom/amazon/kcp/store/BaseStoreOpener;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/amazon/kcp/store/FeatureDocOpener;->getThis()Lcom/amazon/kcp/store/FeatureDocOpener;

    return-object p0
.end method

.method protected getThis()Lcom/amazon/kcp/store/FeatureDocOpener;
    .locals 0

    return-object p0
.end method

.method public setActionData(Ljava/util/Map;)Lcom/amazon/kcp/store/FeatureDocOpener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/kcp/store/FeatureDocOpener;"
        }
    .end annotation

    const-string v0, "actionData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/amazon/kcp/store/FeatureDocOpener;->actionData:Ljava/util/Map;

    return-object p0
.end method

.method public bridge synthetic setActionData(Ljava/util/Map;)Lcom/amazon/kindle/store/FeatureDocStoreOpener;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/FeatureDocOpener;->setActionData(Ljava/util/Map;)Lcom/amazon/kcp/store/FeatureDocOpener;

    return-object p0
.end method
