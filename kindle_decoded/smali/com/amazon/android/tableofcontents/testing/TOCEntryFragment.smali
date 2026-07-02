.class public final Lcom/amazon/android/tableofcontents/testing/TOCEntryFragment;
.super Landroidx/fragment/app/Fragment;
.source "TOCEntryFragment.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private final addSupportedViewVariants(Landroid/view/View;)V
    .locals 27

    .line 41
    sget v0, Lcom/amazon/kindle/toc/R$id;->toc_entry_fragment_layout:I

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v2, "view.findViewById(R.id.toc_entry_fragment_layout)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 43
    new-instance v2, Lcom/amazon/android/tableofcontents/TOCAttrs;

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4, v4}, Lcom/amazon/android/tableofcontents/TOCAttrs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/amazon/kindle/toc/R$drawable;->toc_sample_icon_foreground:I

    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const-string/jumbo v3, "resources.getDrawable(R.\u2026le_icon_foreground, null)"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x7

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 45
    new-instance v5, Lcom/amazon/android/tableofcontents/testing/TOCEntryFragment$addSupportedViewVariants$tocEntryOnClickListener$1;

    invoke-direct {v5}, Lcom/amazon/android/tableofcontents/testing/TOCEntryFragment$addSupportedViewVariants$tocEntryOnClickListener$1;-><init>()V

    .line 52
    new-instance v15, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    const-string v7, "1. Title only"

    const-string v8, ""

    const/4 v9, 0x1

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x780

    const/16 v20, 0x0

    move-object v6, v15

    move-object v4, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    invoke-direct/range {v6 .. v19}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 54
    new-instance v6, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;

    invoke-direct {v6, v1, v2}, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;-><init>(Landroid/content/Context;Lcom/amazon/android/tableofcontents/TOCAttrs;)V

    const/4 v7, 0x0

    .line 55
    invoke-virtual {v6, v4, v7, v5}, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->loadData(Lcom/amazon/android/tableofcontents/data/TOCEntry;ILcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;)V

    .line 56
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 59
    new-instance v4, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    const-string v9, "2. Title + position"

    const-string v10, ""

    const/4 v11, 0x2

    const-string v12, "Page 2"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x780

    const/16 v21, 0x0

    move-object v8, v4

    invoke-direct/range {v8 .. v21}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 61
    new-instance v6, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;

    invoke-direct {v6, v1, v2}, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;-><init>(Landroid/content/Context;Lcom/amazon/android/tableofcontents/TOCAttrs;)V

    const/4 v7, 0x0

    .line 62
    invoke-virtual {v6, v4, v7, v5}, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->loadData(Lcom/amazon/android/tableofcontents/data/TOCEntry;ILcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;)V

    .line 63
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 66
    new-instance v4, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    const-string v9, "3. Title + desc + position"

    const-string v10, "Description 3"

    const/4 v11, 0x3

    const-string v12, "Page 3"

    move-object v8, v4

    invoke-direct/range {v8 .. v21}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    new-instance v6, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;

    invoke-direct {v6, v1, v2}, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;-><init>(Landroid/content/Context;Lcom/amazon/android/tableofcontents/TOCAttrs;)V

    const/4 v7, 0x0

    .line 70
    invoke-virtual {v6, v4, v7, v5}, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->loadData(Lcom/amazon/android/tableofcontents/data/TOCEntry;ILcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;)V

    .line 71
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    new-instance v4, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    const-string v14, "4. Title + desc + position + page image"

    const-string v15, "Description 4"

    const/16 v16, 0x4

    const-string v17, "Page 4"

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x780

    const/16 v26, 0x0

    move-object v13, v4

    move-object/from16 v19, v3

    invoke-direct/range {v13 .. v26}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 77
    new-instance v6, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;

    invoke-direct {v6, v1, v2}, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;-><init>(Landroid/content/Context;Lcom/amazon/android/tableofcontents/TOCAttrs;)V

    const/4 v7, 0x0

    .line 78
    invoke-virtual {v6, v4, v7, v5}, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->loadData(Lcom/amazon/android/tableofcontents/data/TOCEntry;ILcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;)V

    .line 79
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    new-instance v4, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    .line 83
    sget v6, Lcom/amazon/kindle/toc/R$drawable;->toc_sample_icon_background:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v9, "5. Title + icon"

    const-string v10, ""

    const/4 v11, 0x5

    const-string v12, ""

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x780

    move-object v8, v4

    .line 82
    invoke-direct/range {v8 .. v21}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 84
    new-instance v6, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;

    invoke-direct {v6, v1, v2}, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;-><init>(Landroid/content/Context;Lcom/amazon/android/tableofcontents/TOCAttrs;)V

    const/4 v7, 0x0

    .line 85
    invoke-virtual {v6, v4, v7, v5}, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->loadData(Lcom/amazon/android/tableofcontents/data/TOCEntry;ILcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;)V

    .line 86
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    new-instance v4, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    .line 90
    sget v6, Lcom/amazon/kindle/toc/R$drawable;->toc_sample_icon_background:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-string v14, "6. Everything"

    const-string v15, "Description 6"

    const/16 v16, 0x6

    const-string v17, "Page 6"

    move-object v13, v4

    move-object/from16 v19, v3

    .line 89
    invoke-direct/range {v13 .. v26}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 91
    new-instance v3, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;

    invoke-direct {v3, v1, v2}, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;-><init>(Landroid/content/Context;Lcom/amazon/android/tableofcontents/TOCAttrs;)V

    const/4 v6, 0x0

    .line 92
    invoke-virtual {v3, v4, v6, v5}, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->loadData(Lcom/amazon/android/tableofcontents/data/TOCEntry;ILcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;)V

    .line 93
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    new-instance v3, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    invoke-direct/range {p0 .. p0}, Lcom/amazon/android/tableofcontents/testing/TOCEntryFragment;->createDummyTextView()Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Landroid/view/View;)V

    .line 97
    new-instance v4, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;

    invoke-direct {v4, v1, v2}, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;-><init>(Landroid/content/Context;Lcom/amazon/android/tableofcontents/TOCAttrs;)V

    .line 98
    invoke-virtual {v4, v3, v6, v5}, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->loadData(Lcom/amazon/android/tableofcontents/data/TOCEntry;ILcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;)V

    .line 99
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final createDummyTextView()Landroid/view/View;
    .locals 2

    .line 103
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "This is the text for a custom text view"

    .line 104
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x4

    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/tableofcontents/testing/TOCEntryFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget p3, Lcom/amazon/kindle/toc/R$layout;->test_toc_entry_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/amazon/android/tableofcontents/testing/TOCEntryFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/android/tableofcontents/testing/TOCEntryFragment;->addSupportedViewVariants(Landroid/view/View;)V

    return-void
.end method
