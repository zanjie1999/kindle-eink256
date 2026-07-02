.class public final Lcom/amazon/kindle/setting/item/builder/MoreToggleItemUIBuilder;
.super Lcom/amazon/kindle/setting/item/template/ToggleItemUIBuilder;
.source "MoreToggleItemUIBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/setting/item/template/ToggleItemUIBuilder<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/amazon/kindle/setting/item/template/ToggleItemUIBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/amazon/kindle/setting/item/Item;)Landroid/view/View;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layout_inflater"

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Landroid/view/LayoutInflater;

    .line 27
    sget v1, Lcom/amazon/kcp/more/R$layout;->toggle_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 29
    check-cast p2, Lcom/amazon/kindle/setting/item/template/ToggleItem;

    .line 31
    sget v1, Lcom/amazon/kcp/more/R$id;->item_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "title"

    .line 32
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/template/ToggleItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    sget v2, Lcom/amazon/kcp/more/R$id;->item_checkbox:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const-string v3, "checkBox"

    .line 35
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/template/ToggleItem;->isOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 37
    sget v3, Lcom/amazon/kcp/more/R$id;->item_subtitle:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 38
    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/template/ToggleItem;->getSubTitle()Ljava/lang/String;

    move-result-object v4

    const-string v5, "subTitle"

    if-nez v4, :cond_1

    .line 40
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_0

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    .line 41
    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 42
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/template/ToggleItem;->isSubtitleHtml()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/template/ToggleItem;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/util/StringUtils;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    .line 51
    :cond_2
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/template/ToggleItem;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :goto_0
    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/template/ToggleItem;->getOnToggleHandler()Lcom/amazon/kindle/setting/item/template/OnToggleHandler;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 57
    new-instance v1, Lcom/amazon/kindle/setting/item/builder/MoreToggleItemUIBuilder$build$1;

    invoke-direct {v1, v2, p2, p1}, Lcom/amazon/kindle/setting/item/builder/MoreToggleItemUIBuilder$build$1;-><init>(Landroid/widget/CheckBox;Lcom/amazon/kindle/setting/item/template/OnToggleHandler;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const-string p1, "view"

    .line 62
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 26
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic build(Landroid/content/Context;Lcom/amazon/kindle/setting/item/Item;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/setting/item/builder/MoreToggleItemUIBuilder;->build(Landroid/content/Context;Lcom/amazon/kindle/setting/item/Item;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
