.class public final Lcom/amazon/kindle/viewoptions/font/FontFamilyListItem;
.super Landroid/widget/LinearLayout;
.source "FontFamilyListItem.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private fontGuidanceView:Landroid/widget/TextView;

.field private fontNameView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final setGuidanceLetter()V
    .locals 3

    .line 29
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getCurrentBookLanguage()Ljava/lang/String;

    move-result-object v0

    .line 30
    sget-object v1, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->INSTANCE:Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;

    const-string v2, "language"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->getGuidanceLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyListItem;->fontGuidanceView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v0, "fontGuidanceView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 22
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 23
    sget v0, Lcom/amazon/kindle/krl/R$id;->font_guidance:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.font_guidance)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyListItem;->fontGuidanceView:Landroid/widget/TextView;

    .line 24
    sget v0, Lcom/amazon/kindle/krl/R$id;->font_name:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.font_name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyListItem;->fontNameView:Landroid/widget/TextView;

    .line 25
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/font/FontFamilyListItem;->setGuidanceLetter()V

    return-void
.end method

.method public final onSelected(Z)V
    .locals 6

    const-string v0, "fontNameView.context"

    const/4 v1, 0x1

    const-string v2, "fontNameView"

    const-string v3, "fontGuidanceView"

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    .line 39
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyListItem;->fontGuidanceView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 40
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 41
    iget-object v5, p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyListItem;->fontNameView:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 42
    sget v5, Lcom/amazon/kindle/krl/R$attr;->aaMenuV2SelectedBlueColor:I

    invoke-virtual {v0, v5, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyListItem;->fontGuidanceView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget v1, p1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyListItem;->fontNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget p1, p1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 43
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 41
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 39
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 46
    :cond_4
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyListItem;->fontGuidanceView:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 47
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 48
    iget-object v5, p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyListItem;->fontNameView:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 49
    sget v5, Lcom/amazon/kindle/krl/R$attr;->aaMenuV2TextTitleColor:I

    invoke-virtual {v0, v5, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyListItem;->fontGuidanceView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget v1, p1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyListItem;->fontNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget p1, p1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 50
    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 48
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 46
    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method
