.class public final Lcom/amazon/android/tableofcontents/testing/TOCListFragment;
.super Landroidx/fragment/app/Fragment;
.source "TOCListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTOCListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TOCListFragment.kt\ncom/amazon/android/tableofcontents/testing/TOCListFragment\n*L\n1#1,89:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private attrs:Lcom/amazon/android/tableofcontents/TOCAttrs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/tableofcontents/testing/TOCListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget p3, Lcom/amazon/kindle/toc/R$layout;->test_toc_list_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/amazon/android/tableofcontents/testing/TOCListFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "view"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-super/range {p0 .. p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 37
    new-instance v5, Lcom/amazon/android/tableofcontents/TOCAttrs;

    const-string v6, "it"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lcom/amazon/kindle/toc/R$style;->TOCAttrsExampleLight:I

    invoke-direct {v5, v2, v3, v4, v6}, Lcom/amazon/android/tableofcontents/TOCAttrs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v5, v0, Lcom/amazon/android/tableofcontents/testing/TOCListFragment;->attrs:Lcom/amazon/android/tableofcontents/TOCAttrs;

    .line 40
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/amazon/kindle/toc/R$drawable;->toc_sample_icon_foreground:I

    invoke-virtual {v2, v5, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const-string/jumbo v2, "resources.getDrawable(R.\u2026le_icon_foreground, null)"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x7

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 41
    new-instance v2, Lcom/amazon/android/tableofcontents/testing/TOCListFragment$onViewCreated$tocEntryOnClickListener$1;

    invoke-direct {v2}, Lcom/amazon/android/tableofcontents/testing/TOCListFragment$onViewCreated$tocEntryOnClickListener$1;-><init>()V

    .line 47
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 49
    new-instance v5, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    const/16 v6, 0xa

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/amazon/android/tableofcontents/data/TOCEntry;

    .line 51
    new-instance v8, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    const/16 v22, 0xf

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x380

    const/16 v32, 0x0

    const-string v20, "Harry Potter 1"

    const-string v21, ""

    const-string v23, "Page 4"

    move-object/from16 v19, v8

    move-object/from16 v30, v2

    invoke-direct/range {v19 .. v32}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v8, v7, v4

    const/4 v8, 0x1

    .line 53
    new-instance v9, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    const/16 v10, 0x14

    .line 55
    new-instance v11, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    const/16 v22, 0x19

    const-string v20, "Chamber of Secrets 1"

    const-string v21, ""

    const-string v23, "Page 10"

    move-object/from16 v19, v11

    invoke-direct/range {v19 .. v32}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 54
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    const-string v20, "Harry Potter 2"

    const-string v21, ""

    const-string v23, "Page 6"

    move-object/from16 v19, v9

    move/from16 v22, v10

    .line 53
    invoke-direct/range {v19 .. v32}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v9, v7, v8

    .line 50
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    const-string v20, "Chapter 1"

    const-string v21, ""

    const-string v23, "Page 2"

    move-object/from16 v19, v5

    move/from16 v22, v6

    .line 49
    invoke-direct/range {v19 .. v32}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 48
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v5, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    const/16 v22, 0x32

    const/16 v24, 0x0

    const-string v20, "Chapter 2"

    const-string v21, "Sly fox jumps over"

    const-string v23, "Page 5"

    move-object/from16 v19, v5

    invoke-direct/range {v19 .. v32}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v5, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    const/16 v15, 0x64

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x380

    const-string v13, "Chapter 3"

    const-string v14, "Sly fox jumps over the lazy dog and more lorem ipsum to truncate"

    const-string v16, "Page 10"

    move-object v12, v5

    move-object/from16 v23, v2

    invoke-direct/range {v12 .. v25}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v5, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    const/16 v22, 0x64

    const/16 v24, 0x0

    .line 65
    sget v6, Lcom/amazon/kindle/toc/R$drawable;->toc_sample_icon_background:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const-string v20, "Chapter 4"

    const-string v21, ""

    const-string v23, "Page 10"

    move-object/from16 v19, v5

    .line 64
    invoke-direct/range {v19 .. v32}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v5, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    const/16 v26, 0x0

    .line 67
    sget-object v28, Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;->NO_DIVIDER:Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;

    const/16 v31, 0x280

    const-string v20, "Chapter 5"

    const-string v21, "No Divider"

    const-string v23, ""

    move-object/from16 v19, v5

    .line 66
    invoke-direct/range {v19 .. v32}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v5, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    const/16 v28, 0x0

    const/16 v31, 0x380

    const-string v20, "Chapter 6"

    const-string v21, ""

    const-string v23, ""

    move-object/from16 v19, v5

    invoke-direct/range {v19 .. v32}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v5, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    .line 71
    sget-object v28, Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;->NO_DIVIDER:Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;

    const/16 v31, 0x280

    const-string v20, "Chapter 7"

    const-string v21, "No Divider"

    const-string v23, ""

    move-object/from16 v19, v5

    .line 70
    invoke-direct/range {v19 .. v32}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v5, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    const/16 v28, 0x0

    const/16 v31, 0x380

    const-string v20, "Chapter 8"

    const-string v21, ""

    const-string v23, ""

    move-object/from16 v19, v5

    invoke-direct/range {v19 .. v32}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v5, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    .line 75
    sget-object v28, Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;->ZERO_PADDING_DIVIDER:Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;

    const/16 v31, 0x280

    const-string v20, "Chapter 9"

    const-string v21, "Zero Padding Divider"

    const-string v23, ""

    move-object/from16 v19, v5

    .line 74
    invoke-direct/range {v19 .. v32}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v5, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    const/16 v28, 0x0

    const/16 v31, 0x380

    const-string v20, "Chapter 10"

    const-string v21, ""

    const-string v23, ""

    move-object/from16 v19, v5

    invoke-direct/range {v19 .. v32}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v5, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    .line 79
    sget-object v28, Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;->ZERO_PADDING_DIVIDER:Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;

    const/16 v31, 0x280

    const-string v20, "Chapter 11"

    const-string v21, "Zero Padding Divider"

    const-string v23, ""

    move-object/from16 v19, v5

    .line 78
    invoke-direct/range {v19 .. v32}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v5, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    const/16 v28, 0x0

    const/16 v31, 0x380

    const-string v20, "Chapter 12"

    const-string v21, ""

    const-string v23, ""

    move-object/from16 v19, v5

    invoke-direct/range {v19 .. v32}, Lcom/amazon/android/tableofcontents/data/TOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/graphics/Bitmap;Ljava/lang/Integer;Landroid/view/View;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget v2, Lcom/amazon/kindle/toc/R$id;->toc_list_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    const-string/jumbo v5, "recyclerView"

    .line 84
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v5, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 86
    new-instance v1, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter;

    iget-object v5, v0, Lcom/amazon/android/tableofcontents/testing/TOCListFragment;->attrs:Lcom/amazon/android/tableofcontents/TOCAttrs;

    invoke-direct {v1, v3, v5, v4}, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter;-><init>(Ljava/util/List;Lcom/amazon/android/tableofcontents/TOCAttrs;I)V

    .line 87
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
