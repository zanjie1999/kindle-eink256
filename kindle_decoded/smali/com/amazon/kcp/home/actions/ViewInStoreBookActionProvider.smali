.class public final Lcom/amazon/kcp/home/actions/ViewInStoreBookActionProvider;
.super Ljava/lang/Object;
.source "ViewInStoreBookAction.kt"

# interfaces
.implements Lcom/amazon/kindle/home/action/HomeBookActionProvider;


# instance fields
.field private final store:Lcom/amazon/discovery/RequiredUniqueDiscovery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/discovery/RequiredUniqueDiscovery<",
            "Lcom/amazon/kindle/store/StoreOpenerFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/discovery/RequiredUniqueDiscovery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/discovery/RequiredUniqueDiscovery<",
            "Lcom/amazon/kindle/store/StoreOpenerFactory;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/actions/ViewInStoreBookActionProvider;->store:Lcom/amazon/discovery/RequiredUniqueDiscovery;

    return-void
.end method


# virtual methods
.method public getAction(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/home/action/HomeBookAction;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "book"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance p1, Lcom/amazon/kcp/home/actions/ViewInStoreBookAction;

    iget-object p2, p0, Lcom/amazon/kcp/home/actions/ViewInStoreBookActionProvider;->store:Lcom/amazon/discovery/RequiredUniqueDiscovery;

    invoke-virtual {p2}, Lcom/amazon/discovery/RequiredUniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v0, "store.value()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/amazon/kindle/store/StoreOpenerFactory;

    invoke-direct {p1, p2}, Lcom/amazon/kcp/home/actions/ViewInStoreBookAction;-><init>(Lcom/amazon/kindle/store/StoreOpenerFactory;)V

    return-object p1
.end method
