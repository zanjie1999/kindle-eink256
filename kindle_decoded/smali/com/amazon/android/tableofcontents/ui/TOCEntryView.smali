.class public final Lcom/amazon/android/tableofcontents/ui/TOCEntryView;
.super Landroid/widget/RelativeLayout;
.source "TOCEntryView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTOCEntryView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TOCEntryView.kt\ncom/amazon/android/tableofcontents/ui/TOCEntryView\n*L\n1#1,155:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private customViewContainer:Landroid/widget/LinearLayout;

.field private descriptionView:Landroid/widget/TextView;

.field private divider:Landroid/view/View;

.field private entryViewContainer:Landroid/widget/RelativeLayout;

.field private iconView:Landroid/widget/ImageView;

.field private indentationView:Landroid/view/View;

.field private pageImageView:Landroid/widget/ImageView;

.field private positionView:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/android/tableofcontents/TOCAttrs;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/toc/R$layout;->toc_entry_view:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 35
    sget v0, Lcom/amazon/kindle/toc/R$id;->toc_entry_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "content.findViewById(R.id.toc_entry_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->titleView:Landroid/widget/TextView;

    .line 36
    sget v0, Lcom/amazon/kindle/toc/R$id;->toc_entry_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "content.findViewById(R.id.toc_entry_description)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->descriptionView:Landroid/widget/TextView;

    .line 37
    sget v0, Lcom/amazon/kindle/toc/R$id;->toc_entry_position:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "content.findViewById(R.id.toc_entry_position)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->positionView:Landroid/widget/TextView;

    .line 38
    sget v0, Lcom/amazon/kindle/toc/R$id;->toc_entry_page_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "content.findViewById(R.id.toc_entry_page_image)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->pageImageView:Landroid/widget/ImageView;

    .line 39
    sget v0, Lcom/amazon/kindle/toc/R$id;->toc_entry_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "content.findViewById(R.id.toc_entry_icon)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->iconView:Landroid/widget/ImageView;

    .line 40
    sget v0, Lcom/amazon/kindle/toc/R$id;->toc_indentation:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "content.findViewById(R.id.toc_indentation)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->indentationView:Landroid/view/View;

    .line 42
    sget v0, Lcom/amazon/kindle/toc/R$id;->toc_entry_view_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "content.findViewById(R.i\u2026toc_entry_view_container)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->entryViewContainer:Landroid/widget/RelativeLayout;

    .line 43
    sget v0, Lcom/amazon/kindle/toc/R$id;->toc_entry_custom_view_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "content.findViewById(R.i\u2026ry_custom_view_container)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->customViewContainer:Landroid/widget/LinearLayout;

    .line 44
    sget v0, Lcom/amazon/kindle/toc/R$id;->toc_entry_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "content.findViewById(R.id.toc_entry_divider)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->divider:Landroid/view/View;

    .line 45
    invoke-direct {p0, p2}, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->setupAttrs(Lcom/amazon/android/tableofcontents/TOCAttrs;)V

    return-void
.end method

.method private final loadOptionalImageView(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 111
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 113
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final loadOptionalImageView(Ljava/lang/Integer;Landroid/widget/ImageView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 120
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 122
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final loadOptionalTextView(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 100
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    .line 101
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    const/16 p1, 0x8

    .line 104
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private final setupAttrs(Lcom/amazon/android/tableofcontents/TOCAttrs;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amazon/android/tableofcontents/TOCAttrs;->getTextPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amazon/android/tableofcontents/TOCAttrs;->getTextPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->positionView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amazon/android/tableofcontents/TOCAttrs;->getTextSecondaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->divider:Landroid/view/View;

    invoke-virtual {p1}, Lcom/amazon/android/tableofcontents/TOCAttrs;->getDividerColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 152
    invoke-virtual {p1}, Lcom/amazon/android/tableofcontents/TOCAttrs;->getTocEntryBackgroundColor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method private final setupDividers(Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->divider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    sget-object v0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->divider:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 139
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 140
    iget-object p1, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->divider:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 138
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string/jumbo v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_2
    iget-object p1, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->divider:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 131
    :cond_3
    sget-object p1, Lcom/amazon/android/tableofcontents/columns/ColumnUtil;->Companion:Lcom/amazon/android/tableofcontents/columns/ColumnUtil$Companion;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "context.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->divider:Landroid/view/View;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/android/tableofcontents/columns/ColumnUtil$Companion;->addGutterOffsetUsingMargins(Landroid/content/res/Resources;Landroid/view/View;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final loadData(Lcom/amazon/android/tableofcontents/data/TOCEntry;ILcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;)V
    .locals 4

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/amazon/android/tableofcontents/columns/ColumnUtil;->Companion:Lcom/amazon/android/tableofcontents/columns/ColumnUtil$Companion;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "resources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->indentationView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/amazon/android/tableofcontents/columns/ColumnUtil$Companion;->setViewWidth(Landroid/content/res/Resources;Landroid/view/View;Ljava/lang/Integer;Z)V

    .line 59
    invoke-virtual {p1}, Lcom/amazon/android/tableofcontents/data/TOCEntry;->getCustomView()Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    if-nez p2, :cond_0

    .line 60
    iget-object p2, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amazon/android/tableofcontents/data/TOCEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p1}, Lcom/amazon/android/tableofcontents/data/TOCEntry;->getDescription()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->descriptionView:Landroid/widget/TextView;

    invoke-direct {p0, p2, v1}, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->loadOptionalTextView(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 62
    invoke-virtual {p1}, Lcom/amazon/android/tableofcontents/data/TOCEntry;->getPositionText()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->positionView:Landroid/widget/TextView;

    invoke-direct {p0, p2, v1}, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->loadOptionalTextView(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 63
    invoke-virtual {p1}, Lcom/amazon/android/tableofcontents/data/TOCEntry;->getPageImage()Landroid/graphics/Bitmap;

    move-result-object p2

    iget-object v1, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->pageImageView:Landroid/widget/ImageView;

    invoke-direct {p0, p2, v1}, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->loadOptionalImageView(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    .line 64
    invoke-virtual {p1}, Lcom/amazon/android/tableofcontents/data/TOCEntry;->getIcon()Ljava/lang/Integer;

    move-result-object p2

    iget-object v1, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->iconView:Landroid/widget/ImageView;

    invoke-direct {p0, p2, v1}, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->loadOptionalImageView(Ljava/lang/Integer;Landroid/widget/ImageView;)V

    .line 66
    iget-object p2, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->iconView:Landroid/widget/ImageView;

    new-instance v1, Lcom/amazon/android/tableofcontents/ui/TOCEntryView$loadData$1;

    invoke-direct {v1, p3, p1}, Lcom/amazon/android/tableofcontents/ui/TOCEntryView$loadData$1;-><init>(Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;Lcom/amazon/android/tableofcontents/data/TOCEntry;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object p2, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->entryViewContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/amazon/android/tableofcontents/ui/TOCEntryView$loadData$2;

    invoke-direct {v1, p3, p1}, Lcom/amazon/android/tableofcontents/ui/TOCEntryView$loadData$2;-><init>(Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;Lcom/amazon/android/tableofcontents/data/TOCEntry;)V

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object p2, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->customViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 76
    iget-object p2, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->entryViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 77
    iget-object p2, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->customViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/android/tableofcontents/data/TOCEntry;->getCustomView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 80
    instance-of p3, p2, Landroid/view/ViewGroup;

    if-eqz p3, :cond_1

    .line 81
    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/amazon/android/tableofcontents/data/TOCEntry;->getCustomView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 84
    :cond_1
    iget-object p2, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->customViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/amazon/android/tableofcontents/data/TOCEntry;->getCustomView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    invoke-virtual {p1}, Lcom/amazon/android/tableofcontents/data/TOCEntry;->getCustomView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/4 p3, -0x1

    .line 87
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 p3, -0x2

    .line 88
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 90
    iget-object p2, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->entryViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 91
    iget-object p2, p0, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->customViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/android/tableofcontents/data/TOCEntry;->getDividerOverride()Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->setupDividers(Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;)V

    return-void
.end method
