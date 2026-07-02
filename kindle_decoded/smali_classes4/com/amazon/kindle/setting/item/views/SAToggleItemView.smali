.class public final Lcom/amazon/kindle/setting/item/views/SAToggleItemView;
.super Landroid/widget/LinearLayout;
.source "SAToggleItemView.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/UpdatableView;


# instance fields
.field private checkedBox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 33
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 34
    sget v0, Lcom/amazon/kcp/more/R$id;->item_checkbox:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.item_checkbox)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/amazon/kindle/setting/item/views/SAToggleItemView;->checkedBox:Landroid/widget/CheckBox;

    return-void
.end method

.method public onItemUpdate(Lcom/amazon/kindle/setting/item/Item;)V
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    check-cast p1, Lcom/amazon/kindle/setting/item/template/ToggleItem;

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/views/SAToggleItemView;->checkedBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    const-string v2, "checkedBox"

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/setting/item/template/ToggleItem;->isOn()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/views/SAToggleItemView;->checkedBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->jumpDrawablesToCurrentState()V

    .line 47
    invoke-virtual {p1}, Lcom/amazon/kindle/setting/item/template/ToggleItem;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setting_item_"

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p1}, Lcom/amazon/kindle/setting/item/template/ToggleItem;->isOn()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/amazon/kcp/util/fastmetrics/MoreSettingsPageFastMetrics;->reportToggleItem(Ljava/lang/String;Z)V

    return-void

    .line 45
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
