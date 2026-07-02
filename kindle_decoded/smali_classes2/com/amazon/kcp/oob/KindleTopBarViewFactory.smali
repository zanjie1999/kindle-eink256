.class public final Lcom/amazon/kcp/oob/KindleTopBarViewFactory;
.super Ljava/lang/Object;
.source "KindleTopBarViewFactory.kt"

# interfaces
.implements Lcom/amazon/kcp/oob/TopBarViewFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTopBarView(Lcom/amazon/kcp/oob/MainActivity;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const-string v0, "mainActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kcp/search/R$layout;->top_bar_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 18
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->search_box:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 19
    new-instance v2, Lcom/amazon/kcp/oob/KindleTopBarViewFactory$createTopBarView$1;

    invoke-direct {v2, p2, p1}, Lcom/amazon/kcp/oob/KindleTopBarViewFactory$createTopBarView$1;-><init>(Landroid/view/ViewGroup;Lcom/amazon/kcp/oob/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo p1, "topBarView"

    .line 30
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
