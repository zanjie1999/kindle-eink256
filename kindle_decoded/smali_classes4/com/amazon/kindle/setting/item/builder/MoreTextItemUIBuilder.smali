.class public Lcom/amazon/kindle/setting/item/builder/MoreTextItemUIBuilder;
.super Lcom/amazon/kindle/setting/item/template/TextItemUIBuilder;
.source "MoreTextItemUIBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/setting/item/template/TextItemUIBuilder<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/amazon/kindle/setting/item/template/TextItemUIBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/amazon/kindle/setting/item/Item;)Landroid/view/View;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layout_inflater"

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/LayoutInflater;

    .line 27
    sget v0, Lcom/amazon/kcp/more/R$layout;->text_item:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 28
    sget v0, Lcom/amazon/kcp/more/R$id;->item_subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 30
    check-cast p2, Lcom/amazon/kindle/setting/item/template/TextItem;

    const-string v1, "subTitle"

    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/template/TextItem;->getSubTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p2, "view"

    .line 33
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic build(Landroid/content/Context;Lcom/amazon/kindle/setting/item/Item;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/setting/item/builder/MoreTextItemUIBuilder;->build(Landroid/content/Context;Lcom/amazon/kindle/setting/item/Item;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
