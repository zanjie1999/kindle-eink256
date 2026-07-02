.class final Lcom/amazon/kcp/oob/KindleTopBarViewFactory$createTopBarView$1;
.super Ljava/lang/Object;
.source "KindleTopBarViewFactory.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/oob/KindleTopBarViewFactory;->createTopBarView(Lcom/amazon/kcp/oob/MainActivity;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $mainActivity:Lcom/amazon/kcp/oob/MainActivity;

.field final synthetic $rootView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lcom/amazon/kcp/oob/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/oob/KindleTopBarViewFactory$createTopBarView$1;->$rootView:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/amazon/kcp/oob/KindleTopBarViewFactory$createTopBarView$1;->$mainActivity:Lcom/amazon/kcp/oob/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 20
    iget-object p1, p0, Lcom/amazon/kcp/oob/KindleTopBarViewFactory$createTopBarView$1;->$rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 21
    invoke-static {}, Lcom/amazon/kcp/search/widget/TopSearchUtil;->isFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/search/SearchActivityWithWidget;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 23
    :cond_0
    const-class v0, Lcom/amazon/kcp/library/SearchActivityProvider;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/SearchActivityProvider;

    if-eqz v0, :cond_1

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/SearchActivityProvider;->searchActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 25
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/oob/KindleTopBarViewFactory$createTopBarView$1;->$mainActivity:Lcom/amazon/kcp/oob/MainActivity;

    iget-object v1, v1, Lcom/amazon/kcp/oob/MainActivity;->navigationController:Lcom/amazon/kcp/oob/NavigationController;

    const-string v2, "mainActivity.navigationController"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/kcp/oob/NavigationController;->getCurrentTabMetricsTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mainActivity.navigationC\u2026ller.currentTabMetricsTag"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "TAB_NAME"

    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No SearchActivityProvider found"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
