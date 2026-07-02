.class public final Lcom/amazon/kindle/recaps/fragments/TocFragment;
.super Landroidx/fragment/app/Fragment;
.source "TocFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/recaps/fragments/TocFragment$TOCArrayAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTocFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TocFragment.kt\ncom/amazon/kindle/recaps/fragments/TocFragment\n*L\n1#1,151:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final positionToTextViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/recaps/fragments/TocFragment;->positionToTextViewMap:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getPositionToTextViewMap$p(Lcom/amazon/kindle/recaps/fragments/TocFragment;)Ljava/util/Map;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/kindle/recaps/fragments/TocFragment;->positionToTextViewMap:Ljava/util/Map;

    return-object p0
.end method

.method private final setListViewListener(Lcom/amazon/kindle/krx/reader/ITableOfContents;Landroid/widget/ListView;Lcom/amazon/kindle/recaps/fragments/TocFragment$TOCArrayAdapter;)V
    .locals 0

    .line 125
    new-instance p1, Lcom/amazon/kindle/recaps/fragments/TocFragment$setListViewListener$1;

    invoke-direct {p1, p0, p3}, Lcom/amazon/kindle/recaps/fragments/TocFragment$setListViewListener$1;-><init>(Lcom/amazon/kindle/recaps/fragments/TocFragment;Lcom/amazon/kindle/recaps/fragments/TocFragment$TOCArrayAdapter;)V

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/recaps/fragments/TocFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object p3, Lcom/amazon/kindle/recaps/util/DarkModeUtil;->INSTANCE:Lcom/amazon/kindle/recaps/util/DarkModeUtil;

    invoke-virtual {p3}, Lcom/amazon/kindle/recaps/util/DarkModeUtil;->isDarkThemed()Z

    move-result p3

    .line 41
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz p3, :cond_0

    .line 42
    sget v2, Lcom/amazon/kindle/recaps/R$style;->RecapsTocDarkTheme:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/amazon/kindle/recaps/R$style;->RecapsTocLightTheme:I

    .line 41
    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 43
    sget v1, Lcom/amazon/kindle/recaps/R$layout;->toc_fragment:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 46
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const-string v3, "view"

    if-lt v1, v2, :cond_1

    .line 48
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 49
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 51
    new-instance v4, Lcom/amazon/kindle/recaps/fragments/TocFragment$onCreateView$1;

    invoke-direct {v4, v1, v2}, Lcom/amazon/kindle/recaps/fragments/TocFragment$onCreateView$1;-><init>(II)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 60
    :cond_1
    sget v1, Lcom/amazon/kindle/recaps/R$id;->toc_list:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 63
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    if-eqz p3, :cond_2

    .line 64
    sget p3, Lcom/amazon/kindle/recaps/R$style;->TocHeaderDarkTheme:I

    goto :goto_1

    :cond_2
    sget p3, Lcom/amazon/kindle/recaps/R$style;->TocHeaderLightTheme:I

    .line 63
    :goto_1
    invoke-direct {v2, v4, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v2}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 66
    sget p3, Lcom/amazon/kindle/recaps/R$layout;->recaps_toc_header:I

    const/4 v2, 0x0

    invoke-virtual {p1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type android.view.View"

    if-eqz p1, :cond_e

    .line 67
    sget v4, Lcom/amazon/kindle/recaps/R$id;->toc_header:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_d

    check-cast v4, Landroid/widget/LinearLayout;

    .line 69
    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_3

    sget v5, Lcom/amazon/kindle/recaps/R$id;->recaps_toc_button:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    goto :goto_2

    :cond_3
    move-object v4, v2

    :goto_2
    if-eqz v4, :cond_c

    .line 72
    sget v5, Lcom/amazon/kindle/recaps/R$id;->toc_clickable_close_text:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 73
    new-instance p3, Lcom/amazon/kindle/recaps/fragments/TocFragment$onCreateView$2;

    invoke-direct {p3, v4}, Lcom/amazon/kindle/recaps/fragments/TocFragment$onCreateView$2;-><init>(Landroid/widget/ToggleButton;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    new-instance p1, Lcom/amazon/kindle/recaps/fragments/TocFragment$TOCArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-string v4, "requireActivity()"

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lcom/amazon/kindle/recaps/R$layout;->toc_row:I

    invoke-direct {p1, p0, p3, v4}, Lcom/amazon/kindle/recaps/fragments/TocFragment$TOCArrayAdapter;-><init>(Lcom/amazon/kindle/recaps/fragments/TocFragment;Landroid/content/Context;I)V

    const-string p3, "tocListView"

    .line 79
    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    const-class p3, Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;

    invoke-static {p3}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;

    if-eqz p3, :cond_4

    .line 82
    invoke-interface {p3}, Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;->getTocForReadingMode()Lcom/amazon/kindle/krx/reader/ITableOfContents;

    move-result-object v4

    goto :goto_3

    :cond_4
    move-object v4, v2

    .line 83
    :goto_3
    sget-object v5, Lcom/amazon/kindle/recaps/util/TocUtil;->INSTANCE:Lcom/amazon/kindle/recaps/util/TocUtil;

    invoke-virtual {v5, v4}, Lcom/amazon/kindle/recaps/util/TocUtil;->getTopLevelTocItems(Lcom/amazon/kindle/krx/reader/ITableOfContents;)Ljava/util/List;

    move-result-object v5

    .line 85
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    .line 86
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v7

    .line 87
    sget v8, Lcom/amazon/kindle/recaps/R$layout;->toc_row:I

    invoke-virtual {v0, v8, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_5

    check-cast v8, Landroid/widget/TextView;

    .line 88
    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string v10, "Amazon-Ember-Medium.ttf"

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    .line 90
    invoke-virtual {v8}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v10

    const-string v11, "tocItemView.typeface"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/graphics/Typeface;->getStyle()I

    move-result v10

    .line 91
    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 92
    iget-object v9, p0, Lcom/amazon/kindle/recaps/fragments/TocFragment;->positionToTextViewMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    const-string v7, "tocEntry.position"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_4

    .line 87
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    if-eqz v4, :cond_a

    .line 98
    invoke-interface {p3}, Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;->getCurrentPageStartPosition()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long p3, v5, v7

    if-nez p3, :cond_8

    .line 101
    sget-object p3, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->Companion:Lcom/amazon/kindle/recaps/activity/RecapsActivity$Companion;

    invoke-virtual {p3}, Lcom/amazon/kindle/recaps/activity/RecapsActivity$Companion;->getRecapsLastReadPositionModel()Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;->getRecapsLastReadPageStartPosition()Ljava/lang/Long;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_5

    :cond_7
    move-wide v5, v7

    .line 103
    :cond_8
    :goto_5
    sget-object p3, Lcom/amazon/kindle/recaps/util/TocUtil;->INSTANCE:Lcom/amazon/kindle/recaps/util/TocUtil;

    invoke-virtual {p3, v5, v6, v4}, Lcom/amazon/kindle/recaps/util/TocUtil;->getTocIndexForPosition(JLcom/amazon/kindle/krx/reader/ITableOfContents;)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_a

    .line 105
    iget-object v0, p0, Lcom/amazon/kindle/recaps/fragments/TocFragment;->positionToTextViewMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_9

    .line 106
    sget v0, Lcom/amazon/kindle/recaps/R$drawable;->toc_chapter_highlight:I

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 107
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "Amazon-Ember-Regular.ttf"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz p3, :cond_a

    const/4 v2, 0x1

    .line 108
    invoke-virtual {p3, v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 113
    :cond_a
    invoke-direct {p0, v4, v1, p1}, Lcom/amazon/kindle/recaps/fragments/TocFragment;->setListViewListener(Lcom/amazon/kindle/krx/reader/ITableOfContents;Landroid/widget/ListView;Lcom/amazon/kindle/recaps/fragments/TocFragment$TOCArrayAdapter;)V

    .line 114
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2

    .line 72
    :cond_b
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_c
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ToggleButton"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_d
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_e
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/amazon/kindle/recaps/fragments/TocFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method
