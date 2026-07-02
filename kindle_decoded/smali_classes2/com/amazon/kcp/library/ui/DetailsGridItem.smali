.class public final Lcom/amazon/kcp/library/ui/DetailsGridItem;
.super Lcom/amazon/kcp/widget/CheckableLinearLayout;
.source "DetailsGridItem.kt"


# instance fields
.field private cover:Lcom/amazon/kcp/cover/BadgeableCover;

.field private seriesIcon:Landroid/view/View;

.field private subtitleView:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/widget/CheckableLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final bindToCover()V
    .locals 10

    .line 30
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/DetailsGridItem;->cover:Lcom/amazon/kcp/cover/BadgeableCover;

    const-string v1, "cover"

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/amazon/kcp/cover/BadgeableCover;->getLibraryItem()Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object v0

    .line 33
    iget-object v3, p0, Lcom/amazon/kcp/library/ui/DetailsGridItem;->cover:Lcom/amazon/kcp/cover/BadgeableCover;

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Lcom/amazon/kcp/cover/BadgeableCover;->getTitleDetailsTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    const-string v6, "libraryItem"

    if-nez v3, :cond_3

    .line 34
    iget-object v3, p0, Lcom/amazon/kcp/library/ui/DetailsGridItem;->cover:Lcom/amazon/kcp/cover/BadgeableCover;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/amazon/kcp/cover/BadgeableCover;->getTitleDetailsTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 36
    :cond_3
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 38
    :goto_2
    iget-object v7, p0, Lcom/amazon/kcp/library/ui/DetailsGridItem;->titleView:Landroid/widget/TextView;

    const-string v8, "titleView"

    if-eqz v7, :cond_18

    if-eqz v3, :cond_5

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v9, 0x1

    :goto_4
    if-eqz v9, :cond_6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v9, "context"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v9, Lcom/amazon/kindle/librarymodule/R$string;->no_title:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_6
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v3, p0, Lcom/amazon/kcp/library/ui/DetailsGridItem;->cover:Lcom/amazon/kcp/cover/BadgeableCover;

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Lcom/amazon/kcp/cover/BadgeableCover;->getTitleDetailsSubtitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v3, 0x1

    :goto_6
    if-nez v3, :cond_a

    .line 41
    iget-object v3, p0, Lcom/amazon/kcp/library/ui/DetailsGridItem;->cover:Lcom/amazon/kcp/cover/BadgeableCover;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/amazon/kcp/cover/BadgeableCover;->getTitleDetailsSubtitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_a
    move-object v1, v2

    :goto_7
    if-eqz v1, :cond_c

    .line 46
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_8

    :cond_b
    const/4 v4, 0x0

    :cond_c
    :goto_8
    const-string v3, "subtitleView"

    if-eqz v4, :cond_f

    .line 47
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/DetailsGridItem;->subtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_e

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/DetailsGridItem;->titleView:Landroid/widget/TextView;

    if-eqz v1, :cond_d

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLines(I)V

    goto :goto_9

    :cond_d
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 47
    :cond_e
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_f
    iget-object v4, p0, Lcom/amazon/kcp/library/ui/DetailsGridItem;->subtitleView:Landroid/widget/TextView;

    if-eqz v4, :cond_16

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    iget-object v4, p0, Lcom/amazon/kcp/library/ui/DetailsGridItem;->subtitleView:Landroid/widget/TextView;

    if-eqz v4, :cond_15

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/DetailsGridItem;->titleView:Landroid/widget/TextView;

    if-eqz v1, :cond_14

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 54
    :goto_9
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_SERIES_GROUP:Lcom/amazon/kcp/library/models/BookType;

    const-string v4, "seriesIcon"

    if-eq v1, v3, :cond_12

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_NARRATIVE_GROUP:Lcom/amazon/kcp/library/models/BookType;

    if-ne v0, v1, :cond_10

    goto :goto_a

    .line 57
    :cond_10
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/DetailsGridItem;->seriesIcon:Landroid/view/View;

    if-eqz v0, :cond_11

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    :cond_11
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_12
    :goto_a
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/DetailsGridItem;->seriesIcon:Landroid/view/View;

    if-eqz v0, :cond_13

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_b
    return-void

    :cond_13
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_14
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_15
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_16
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 40
    :cond_17
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 38
    :cond_18
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 33
    :cond_19
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 30
    :cond_1a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 22
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 23
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->badgeable_cover:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.badgeable_cover)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/amazon/kcp/cover/BadgeableCover;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/DetailsGridItem;->cover:Lcom/amazon/kcp/cover/BadgeableCover;

    .line 24
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->details_grid_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.details_grid_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/DetailsGridItem;->titleView:Landroid/widget/TextView;

    .line 25
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->details_grid_subtitle:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.details_grid_subtitle)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/DetailsGridItem;->subtitleView:Landroid/widget/TextView;

    .line 26
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->details_grid_deep_stack:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.details_grid_deep_stack)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/DetailsGridItem;->seriesIcon:Landroid/view/View;

    return-void
.end method

.method public final reset(Z)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/DetailsGridItem;->cover:Lcom/amazon/kcp/cover/BadgeableCover;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/cover/BadgeableCover;->reset(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "cover"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/DetailsGridItem;->titleView:Landroid/widget/TextView;

    const-string v0, ""

    if-eqz p1, :cond_3

    if-eqz p1, :cond_2

    .line 66
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const-string p1, "titleView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/DetailsGridItem;->subtitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    if-eqz p1, :cond_4

    .line 69
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    const-string p1, "subtitleView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/DetailsGridItem;->seriesIcon:Landroid/view/View;

    if-eqz p1, :cond_7

    if-eqz p1, :cond_6

    const/4 v0, 0x4

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    const-string p1, "seriesIcon"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_3
    return-void
.end method
