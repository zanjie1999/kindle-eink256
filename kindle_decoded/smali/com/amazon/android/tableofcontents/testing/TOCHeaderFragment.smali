.class public final Lcom/amazon/android/tableofcontents/testing/TOCHeaderFragment;
.super Landroidx/fragment/app/Fragment;
.source "TOCHeaderFragment.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private final addSupportedViewVariants(Landroid/view/View;)V
    .locals 8

    .line 34
    sget v0, Lcom/amazon/kindle/toc/R$id;->toc_header_fragment_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.toc_header_fragment_layout)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 36
    new-instance v1, Lcom/amazon/android/tableofcontents/testing/TOCHeaderFragment$addSupportedViewVariants$tocHeaderOnClickListener$1;

    invoke-direct {v1, p0}, Lcom/amazon/android/tableofcontents/testing/TOCHeaderFragment$addSupportedViewVariants$tocHeaderOnClickListener$1;-><init>(Lcom/amazon/android/tableofcontents/testing/TOCHeaderFragment;)V

    .line 45
    new-instance v2, Lcom/amazon/android/tableofcontents/TOCAttrs;

    const-string v3, "context"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/amazon/kindle/toc/R$style;->TOCAttrsExampleDark:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, p1, v5, v4, v3}, Lcom/amazon/android/tableofcontents/TOCAttrs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    new-instance v3, Lcom/amazon/android/tableofcontents/data/TOCHeader;

    const-string v6, "First Author"

    const-string v7, "Second Really Long Name Author Many Syllables"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v7, "Really Long Book Title To See How Max Lines Truncation Works If I Go Really Far Past the word count"

    invoke-direct {v3, v7, v6}, Lcom/amazon/android/tableofcontents/data/TOCHeader;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 47
    new-instance v6, Lcom/amazon/android/tableofcontents/ui/TOCHeaderView;

    invoke-direct {v6, p1, v3, v1, v2}, Lcom/amazon/android/tableofcontents/ui/TOCHeaderView;-><init>(Landroid/content/Context;Lcom/amazon/android/tableofcontents/data/TOCHeader;Landroid/view/View$OnClickListener;Lcom/amazon/android/tableofcontents/TOCAttrs;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50
    new-instance v2, Lcom/amazon/android/tableofcontents/TOCAttrs;

    sget v3, Lcom/amazon/kindle/toc/R$style;->TOCAttrsExampleDifferentCloseButton:I

    invoke-direct {v2, p1, v5, v4, v3}, Lcom/amazon/android/tableofcontents/TOCAttrs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    new-instance v3, Lcom/amazon/android/tableofcontents/data/TOCHeader;

    const-string v4, "Author Name"

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "Book Title"

    invoke-direct {v3, v5, v4}, Lcom/amazon/android/tableofcontents/data/TOCHeader;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 52
    new-instance v4, Lcom/amazon/android/tableofcontents/ui/TOCHeaderView;

    invoke-direct {v4, p1, v3, v1, v2}, Lcom/amazon/android/tableofcontents/ui/TOCHeaderView;-><init>(Landroid/content/Context;Lcom/amazon/android/tableofcontents/data/TOCHeader;Landroid/view/View$OnClickListener;Lcom/amazon/android/tableofcontents/TOCAttrs;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/tableofcontents/testing/TOCHeaderFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget p3, Lcom/amazon/kindle/toc/R$layout;->test_toc_header_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/amazon/android/tableofcontents/testing/TOCHeaderFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/amazon/android/tableofcontents/testing/TOCHeaderFragment;->addSupportedViewVariants(Landroid/view/View;)V

    return-void
.end method
