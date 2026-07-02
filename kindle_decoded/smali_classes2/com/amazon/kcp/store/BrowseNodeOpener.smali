.class public final Lcom/amazon/kcp/store/BrowseNodeOpener;
.super Lcom/amazon/kcp/store/BaseStoreOpener;
.source "BrowseNodeOpener.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/store/BaseStoreOpener<",
        "Lcom/amazon/kcp/store/BrowseNodeOpener;",
        ">;"
    }
.end annotation


# instance fields
.field private final browseNodeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "browseNodeId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/BaseStoreOpener;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amazon/kcp/store/BrowseNodeOpener;->browseNodeId:Ljava/lang/String;

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
    invoke-interface {v0, p0}, Lcom/amazon/kcp/store/StoreOpenerExecutor;->execute(Lcom/amazon/kcp/store/BrowseNodeOpener;)V

    return-void
.end method

.method public final getBrowseNodeId()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amazon/kcp/store/BrowseNodeOpener;->browseNodeId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getThis()Lcom/amazon/kcp/store/BaseStoreOpener;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/amazon/kcp/store/BrowseNodeOpener;->getThis()Lcom/amazon/kcp/store/BrowseNodeOpener;

    return-object p0
.end method

.method protected getThis()Lcom/amazon/kcp/store/BrowseNodeOpener;
    .locals 0

    return-object p0
.end method
