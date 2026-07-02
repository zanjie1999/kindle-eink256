.class public final Lcom/amazon/android/tableofcontents/ui/TOCHeaderView;
.super Landroid/widget/RelativeLayout;
.source "TOCHeaderView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTOCHeaderView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TOCHeaderView.kt\ncom/amazon/android/tableofcontents/ui/TOCHeaderView\n*L\n1#1,60:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private authorView:Landroid/widget/TextView;

.field private closeView:Landroid/widget/ImageView;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/android/tableofcontents/data/TOCHeader;Landroid/view/View$OnClickListener;Lcom/amazon/android/tableofcontents/TOCAttrs;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "header"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/amazon/android/tableofcontents/ui/TOCHeaderView;->init(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0, p4}, Lcom/amazon/android/tableofcontents/ui/TOCHeaderView;->setupAttrs(Lcom/amazon/android/tableofcontents/TOCAttrs;)V

    .line 27
    iget-object p1, p0, Lcom/amazon/android/tableofcontents/ui/TOCHeaderView;->titleView:Landroid/widget/TextView;

    const/4 p4, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/amazon/android/tableofcontents/data/TOCHeader;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object p1, p0, Lcom/amazon/android/tableofcontents/ui/TOCHeaderView;->authorView:Landroid/widget/TextView;

    const-string v0, "authorView"

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/amazon/android/tableofcontents/data/TOCHeader;->getAuthors()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3f

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object p1, p0, Lcom/amazon/android/tableofcontents/ui/TOCHeaderView;->authorView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    new-instance p2, Lcom/amazon/android/tableofcontents/ui/TOCHeaderView$1;

    invoke-direct {p2, p3}, Lcom/amazon/android/tableofcontents/ui/TOCHeaderView$1;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object p1, p0, Lcom/amazon/android/tableofcontents/ui/TOCHeaderView;->closeView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/amazon/android/tableofcontents/ui/TOCHeaderView$2;

    invoke-direct {p2, p3}, Lcom/amazon/android/tableofcontents/ui/TOCHeaderView$2;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string p1, "closeView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p4

    .line 30
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p4

    .line 28
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p4

    :cond_3
    const-string/jumbo p1, "titleView"

    .line 27
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p4
.end method

.method private final init(Landroid/content/Context;)V
    .locals 2

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/toc/R$layout;->toc_header_view:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 56
    sget v0, Lcom/amazon/kindle/toc/R$id;->toc_header_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "content.findViewById(R.id.toc_header_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TOCHeaderView;->titleView:Landroid/widget/TextView;

    .line 57
    sget v0, Lcom/amazon/kindle/toc/R$id;->toc_header_authors:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "content.findViewById(R.id.toc_header_authors)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TOCHeaderView;->authorView:Landroid/widget/TextView;

    .line 58
    sget v0, Lcom/amazon/kindle/toc/R$id;->toc_header_close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "content.findViewById(R.id.toc_header_close)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/amazon/android/tableofcontents/ui/TOCHeaderView;->closeView:Landroid/widget/ImageView;

    return-void
.end method

.method private final setupAttrs(Lcom/amazon/android/tableofcontents/TOCAttrs;)V
    .locals 6

    if-eqz p1, :cond_5

    .line 41
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TOCHeaderView;->titleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazon/android/tableofcontents/TOCAttrs;->getTextPrimaryColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TOCHeaderView;->authorView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazon/android/tableofcontents/TOCAttrs;->getTextSecondaryColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    invoke-virtual {p1}, Lcom/amazon/android/tableofcontents/TOCAttrs;->getTocHeaderBackgroundColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 46
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TOCHeaderView;->closeView:Landroid/widget/ImageView;

    const-string v2, "closeView"

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazon/android/tableofcontents/TOCAttrs;->getCloseButtonImage()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TOCHeaderView;->closeView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1}, Lcom/amazon/android/tableofcontents/TOCAttrs;->getCloseButtonColor()I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 48
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TOCHeaderView;->closeView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lcom/amazon/android/tableofcontents/TOCAttrs;->getCloseButtonWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 50
    invoke-virtual {p1}, Lcom/amazon/android/tableofcontents/TOCAttrs;->getCloseButtonHeight()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p1, "authorView"

    .line 42
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string/jumbo p1, "titleView"

    .line 41
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_0
    return-void
.end method
