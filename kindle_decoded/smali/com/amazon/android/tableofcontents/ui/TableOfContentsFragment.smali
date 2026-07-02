.class public final Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;
.super Landroidx/fragment/app/Fragment;
.source "TableOfContentsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$TOCOpenListener;,
        Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTableOfContentsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TableOfContentsFragment.kt\ncom/amazon/android/tableofcontents/ui/TableOfContentsFragment\n*L\n1#1,184:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private attrs:Lcom/amazon/android/tableofcontents/TOCAttrs;

.field private headerClickListener:Landroid/view/View$OnClickListener;

.field private tocEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/tableofcontents/data/TOCEntry;",
            ">;"
        }
    .end annotation
.end field

.field private tocEntryClickListener:Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;

.field private tocListAdapter:Lcom/amazon/android/tableofcontents/ui/TOCListAdapter;

.field private tocOpenListener:Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$TOCOpenListener;

.field private tocRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;->Companion:Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTocRecyclerView$p(Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;->tocRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static final synthetic access$provideTOCEntries(Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;Ljava/util/List;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;->provideTOCEntries(Ljava/util/List;)V

    return-void
.end method

.method private final provideTOCEntries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/android/tableofcontents/data/TOCEntry;",
            ">;)V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;->tocEntries:Ljava/util/List;

    return-void
.end method

.method private final scrollToCurrentPosition()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;->tocOpenListener:Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$TOCOpenListener;

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0}, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$TOCOpenListener;->getCurrentReadPosition()I

    move-result v0

    .line 111
    iget-object v1, p0, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;->tocRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$scrollToCurrentPosition$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$scrollToCurrentPosition$1;-><init>(Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private final smoothSnapToPosition(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 118
    new-instance v0, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$smoothSnapToPosition$smoothScroller$1;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, p3, v1}, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$smoothSnapToPosition$smoothScroller$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;ILandroid/content/Context;)V

    .line 129
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 130
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    :cond_0
    return-void
.end method

.method static synthetic smoothSnapToPosition$default(Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;Landroidx/recyclerview/widget/RecyclerView;IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, -0x1

    .line 117
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;->smoothSnapToPosition(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget p3, Lcom/amazon/kindle/toc/R$layout;->toc_main_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 71
    iget-object p2, p0, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;->tocEntries:Ljava/util/List;

    const-string/jumbo p3, "tocContainer"

    if-eqz p2, :cond_5

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "layout_direction"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 75
    :cond_0
    sget v1, Lcom/amazon/kindle/toc/R$id;->toc_list_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const-string/jumbo v2, "recyclerView"

    .line 76
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 77
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 78
    new-instance v2, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter;

    iget-object v3, p0, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;->attrs:Lcom/amazon/android/tableofcontents/TOCAttrs;

    invoke-direct {v2, p2, v3, v0}, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter;-><init>(Ljava/util/List;Lcom/amazon/android/tableofcontents/TOCAttrs;I)V

    iput-object v2, p0, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;->tocListAdapter:Lcom/amazon/android/tableofcontents/ui/TOCListAdapter;

    .line 79
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 80
    iput-object v1, p0, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;->tocRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    sget p2, Lcom/amazon/kindle/toc/R$id;->toc_header_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "header"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/tableofcontents/data/TOCHeader;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lcom/amazon/android/tableofcontents/data/TOCHeader;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/amazon/android/tableofcontents/data/TOCHeader;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Lcom/amazon/android/tableofcontents/data/TOCHeader;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 85
    :goto_2
    new-instance v0, Lcom/amazon/android/tableofcontents/ui/TOCHeaderView;

    const-string v2, "headerContainer"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "headerContainer.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;->headerClickListener:Landroid/view/View$OnClickListener;

    iget-object v4, p0, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;->attrs:Lcom/amazon/android/tableofcontents/TOCAttrs;

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/amazon/android/tableofcontents/ui/TOCHeaderView;-><init>(Landroid/content/Context;Lcom/amazon/android/tableofcontents/data/TOCHeader;Landroid/view/View$OnClickListener;Lcom/amazon/android/tableofcontents/TOCAttrs;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    iget-object p2, p0, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;->attrs:Lcom/amazon/android/tableofcontents/TOCAttrs;

    if-eqz p2, :cond_4

    .line 89
    sget v0, Lcom/amazon/kindle/toc/R$id;->toc_header_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 90
    invoke-virtual {p2}, Lcom/amazon/android/tableofcontents/TOCAttrs;->getDividerColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 91
    sget v0, Lcom/amazon/kindle/toc/R$id;->toc_left_spacer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 92
    sget v1, Lcom/amazon/kindle/toc/R$id;->toc_right_spacer:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 93
    invoke-virtual {p2}, Lcom/amazon/android/tableofcontents/TOCAttrs;->getTocEntryBackgroundColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 94
    invoke-virtual {p2}, Lcom/amazon/android/tableofcontents/TOCAttrs;->getTocEntryBackgroundColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 95
    invoke-virtual {p2}, Lcom/amazon/android/tableofcontents/TOCAttrs;->getTocEntryBackgroundColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 99
    :cond_4
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 71
    :cond_5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 103
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 104
    invoke-direct {p0}, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;->scrollToCurrentPosition()V

    return-void
.end method

.method public final provideTOCClickListenersV3(Landroid/view/View$OnClickListener;Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$TOCOpenListener;)V
    .locals 1

    const-string v0, "headerListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tocOpenListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iput-object p1, p0, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;->headerClickListener:Landroid/view/View$OnClickListener;

    .line 178
    iput-object p2, p0, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;->tocOpenListener:Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$TOCOpenListener;

    return-void
.end method

.method public final setAttrs(Lcom/amazon/android/tableofcontents/TOCAttrs;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;->attrs:Lcom/amazon/android/tableofcontents/TOCAttrs;

    return-void
.end method
