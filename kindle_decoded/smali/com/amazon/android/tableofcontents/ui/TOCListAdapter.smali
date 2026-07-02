.class public final Lcom/amazon/android/tableofcontents/ui/TOCListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TOCListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/tableofcontents/ui/TOCListAdapter$TOCEntryViewHolder;,
        Lcom/amazon/android/tableofcontents/ui/TOCListAdapter$TOCEntryWithDepth;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/amazon/android/tableofcontents/ui/TOCListAdapter$TOCEntryViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTOCListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TOCListAdapter.kt\ncom/amazon/android/tableofcontents/ui/TOCListAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,81:1\n1366#2:82\n1435#2,3:83\n1271#2,12:86\n*E\n*S KotlinDebug\n*F\n+ 1 TOCListAdapter.kt\ncom/amazon/android/tableofcontents/ui/TOCListAdapter\n*L\n65#1:82\n65#1,3:83\n74#1,12:86\n*E\n"
.end annotation


# instance fields
.field private final attrs:Lcom/amazon/android/tableofcontents/TOCAttrs;

.field private entriesWithDepth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/tableofcontents/ui/TOCListAdapter$TOCEntryWithDepth;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutDirection:I

.field private final tocEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/tableofcontents/data/TOCEntry;",
            ">;"
        }
    .end annotation
.end field

.field private visibleEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/tableofcontents/data/TOCEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/amazon/android/tableofcontents/TOCAttrs;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/android/tableofcontents/data/TOCEntry;",
            ">;",
            "Lcom/amazon/android/tableofcontents/TOCAttrs;",
            "I)V"
        }
    .end annotation

    const-string/jumbo v0, "tocEntries"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter;->tocEntries:Ljava/util/List;

    iput-object p2, p0, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter;->attrs:Lcom/amazon/android/tableofcontents/TOCAttrs;

    iput p3, p0, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter;->layoutDirection:I

    .line 28
    invoke-direct {p0, p1}, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter;->getVisibleEntries(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter;->visibleEntries:Ljava/util/List;

    const/4 p2, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter;->processVisibleEntries(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter;->entriesWithDepth:Ljava/util/List;

    return-void
.end method

.method private final getVisibleEntries(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/android/tableofcontents/data/TOCEntry;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/android/tableofcontents/data/TOCEntry;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 62
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 82
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 84
    check-cast v1, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    .line 67
    invoke-virtual {v1}, Lcom/amazon/android/tableofcontents/data/TOCEntry;->getCollapsibleState()Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;

    move-result-object v2

    sget-object v3, Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;->COLLAPSED:Lcom/amazon/android/tableofcontents/data/TOCEntry$CollapsableState;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    move-object v2, v4

    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/android/tableofcontents/data/TOCEntry;->getContents()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter;->getVisibleEntries(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_1
    const/4 v3, 0x1

    .line 67
    invoke-static {v1, v4, v2, v3, v4}, Lcom/amazon/android/tableofcontents/data/TOCEntry;->modify$default(Lcom/amazon/android/tableofcontents/data/TOCEntry;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Ljava/util/List;ILjava/lang/Object;)Lcom/amazon/android/tableofcontents/data/TOCEntry;

    .line 68
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private final processVisibleEntries(Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/android/tableofcontents/data/TOCEntry;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/amazon/android/tableofcontents/ui/TOCListAdapter$TOCEntryWithDepth;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 94
    check-cast v1, Lcom/amazon/android/tableofcontents/data/TOCEntry;

    .line 75
    invoke-virtual {v1}, Lcom/amazon/android/tableofcontents/data/TOCEntry;->getContents()Ljava/util/List;

    move-result-object v2

    .line 76
    new-instance v3, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter$TOCEntryWithDepth;

    invoke-direct {v3, v1, p2}, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter$TOCEntryWithDepth;-><init>(Lcom/amazon/android/tableofcontents/data/TOCEntry;I)V

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz v2, :cond_0

    add-int/lit8 v3, p2, 0x1

    .line 77
    invoke-direct {p0, v2, v3}, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter;->processVisibleEntries(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 78
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 76
    :goto_1
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter;->entriesWithDepth:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 16
    check-cast p1, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter$TOCEntryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter;->onBindViewHolder(Lcom/amazon/android/tableofcontents/ui/TOCListAdapter$TOCEntryViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/amazon/android/tableofcontents/ui/TOCListAdapter$TOCEntryViewHolder;I)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter;->entriesWithDepth:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter$TOCEntryWithDepth;

    .line 46
    iget-object v1, p0, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter;->entriesWithDepth:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 47
    sget-object p2, Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;->NO_DIVIDER:Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter$TOCEntryWithDepth;->getEntry()Lcom/amazon/android/tableofcontents/data/TOCEntry;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/android/tableofcontents/data/TOCEntry;->getDividerOverride()Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;

    move-result-object p2

    .line 48
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter$TOCEntryViewHolder;->getTocEntryView()Lcom/amazon/android/tableofcontents/ui/TOCEntryView;

    move-result-object p1

    invoke-virtual {v0}, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter$TOCEntryWithDepth;->getEntry()Lcom/amazon/android/tableofcontents/data/TOCEntry;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, p2, v3, v2, v3}, Lcom/amazon/android/tableofcontents/data/TOCEntry;->modify$default(Lcom/amazon/android/tableofcontents/data/TOCEntry;Lcom/amazon/android/tableofcontents/data/TOCEntry$DividerOverride;Ljava/util/List;ILjava/lang/Object;)Lcom/amazon/android/tableofcontents/data/TOCEntry;

    .line 49
    invoke-virtual {v0}, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter$TOCEntryWithDepth;->getDepth()I

    move-result p2

    invoke-virtual {v0}, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter$TOCEntryWithDepth;->getEntry()Lcom/amazon/android/tableofcontents/data/TOCEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/tableofcontents/data/TOCEntry;->getTocEntryClickListener()Lcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;

    move-result-object v0

    .line 48
    invoke-virtual {p1, v1, p2, v0}, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;->loadData(Lcom/amazon/android/tableofcontents/data/TOCEntry;ILcom/amazon/android/tableofcontents/ui/TOCEntryClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/android/tableofcontents/ui/TOCListAdapter$TOCEntryViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/android/tableofcontents/ui/TOCListAdapter$TOCEntryViewHolder;
    .locals 1

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance p2, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "parent.context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter;->attrs:Lcom/amazon/android/tableofcontents/TOCAttrs;

    invoke-direct {p2, p1, v0}, Lcom/amazon/android/tableofcontents/ui/TOCEntryView;-><init>(Landroid/content/Context;Lcom/amazon/android/tableofcontents/TOCAttrs;)V

    .line 39
    iget p1, p0, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter;->layoutDirection:I

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    .line 40
    new-instance p1, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter$TOCEntryViewHolder;

    invoke-direct {p1, p2}, Lcom/amazon/android/tableofcontents/ui/TOCListAdapter$TOCEntryViewHolder;-><init>(Lcom/amazon/android/tableofcontents/ui/TOCEntryView;)V

    return-object p1
.end method
