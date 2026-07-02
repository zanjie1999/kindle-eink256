.class public Lcom/amazon/kindle/setting/item/builder/MoreClickableItemUIBuilder;
.super Lcom/amazon/kindle/setting/item/template/ClickableItemUIBuilder;
.source "MoreClickableItemUIBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/setting/item/template/ClickableItemUIBuilder<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/amazon/kindle/setting/item/template/ClickableItemUIBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/amazon/kindle/setting/item/Item;)Landroid/view/View;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layout_inflater"

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/view/LayoutInflater;

    .line 25
    sget v1, Lcom/amazon/kcp/more/R$layout;->clickable_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 27
    sget v1, Lcom/amazon/kcp/more/R$id;->item_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 28
    sget v2, Lcom/amazon/kcp/more/R$id;->item_subtitle:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 30
    check-cast p2, Lcom/amazon/kindle/setting/item/template/ClickableItem;

    const-string v3, "title"

    .line 31
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/template/ClickableItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/template/ClickableItem;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "subTitle"

    if-eqz v1, :cond_0

    .line 34
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/template/ClickableItem;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 35
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    :goto_0
    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/template/ClickableItem;->getOnClickHandler()Lcom/amazon/kindle/setting/item/template/OnClickHandler;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 42
    new-instance v1, Lcom/amazon/kindle/setting/item/builder/MoreClickableItemUIBuilder$build$1;

    invoke-direct {v1, p2, p1}, Lcom/amazon/kindle/setting/item/builder/MoreClickableItemUIBuilder$build$1;-><init>(Lcom/amazon/kindle/setting/item/template/OnClickHandler;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const-string p1, "view"

    .line 45
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 23
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic build(Landroid/content/Context;Lcom/amazon/kindle/setting/item/Item;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/setting/item/builder/MoreClickableItemUIBuilder;->build(Landroid/content/Context;Lcom/amazon/kindle/setting/item/Item;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
