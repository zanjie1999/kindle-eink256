.class public final Lcom/amazon/kcp/widget/FilterToggleItem;
.super Lcom/amazon/kcp/widget/LibraryFilterItemView;
.source "FilterToggleItem.kt"


# instance fields
.field private switch:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/widget/LibraryFilterItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/widget/FilterToggleItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/widget/LibraryFilterItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 32
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 33
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->filter_switch:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.filter_switch)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/amazon/kcp/widget/FilterToggleItem;->switch:Landroidx/appcompat/widget/SwitchCompat;

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kcp/widget/FilterToggleItem;->switch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 23
    invoke-super {p0, p1}, Lcom/amazon/kcp/cover/CheckableFrameLayout;->setChecked(Z)V

    return-void

    :cond_0
    const-string p1, "switch"

    .line 22
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setItemCount(J)V
    .locals 0

    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kcp/widget/FilterToggleItem;->switch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p1, "switch"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setTitleImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public toggle()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/amazon/kcp/widget/FilterToggleItem;->switch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/cover/CheckableFrameLayout;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 28
    invoke-super {p0}, Lcom/amazon/kcp/cover/CheckableFrameLayout;->toggle()V

    return-void

    :cond_0
    const-string v0, "switch"

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
