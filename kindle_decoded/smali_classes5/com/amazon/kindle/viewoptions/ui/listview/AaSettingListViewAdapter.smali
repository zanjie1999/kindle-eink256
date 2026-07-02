.class public final Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AaSettingListViewAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter$ItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private currentSelectedPosition:I

.field private dataset:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter$ItemClickListener;

.field private performanceMeasureInProgress:Z

.field private viewHolderType:Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;",
            ")V"
        }
    .end annotation

    const-string v0, "dataset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewHolderType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    new-instance v0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter$onItemClickListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter$onItemClickListener$1;-><init>(Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;)V

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;->onItemClickListener:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter$ItemClickListener;

    .line 33
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;->dataset:Ljava/util/List;

    .line 34
    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;->viewHolderType:Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;

    return-void
.end method

.method public static final synthetic access$getCurrentSelectedPosition$p(Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;)I
    .locals 0

    .line 11
    iget p0, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;->currentSelectedPosition:I

    return p0
.end method

.method public static final synthetic access$setCurrentSelectedPosition$p(Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;I)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;->currentSelectedPosition:I

    return-void
.end method

.method public static final synthetic access$startPerformanceMeasure(Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;->startPerformanceMeasure()V

    return-void
.end method

.method private final startPerformanceMeasure()V
    .locals 1

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;->triggerPerformanceMetric(Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;->dataset:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 11
    check-cast p1, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;->onBindViewHolder(Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;->dataset:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 47
    iget v0, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;->currentSelectedPosition:I

    invoke-virtual {p1, p2, v0}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;->bind(Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;
    .locals 1

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;->viewHolderType:Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;->onItemClickListener:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter$ItemClickListener;

    invoke-static {p1, p2, v0}, Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager;->getViewHolder(Landroid/view/ViewGroup;Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter$ItemClickListener;)Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final setSelectedPosition(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;->dataset:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 55
    iput p1, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;->currentSelectedPosition:I

    :cond_0
    return-void
.end method

.method public final triggerPerformanceMetric(Z)V
    .locals 2

    .line 78
    sget-object v0, Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;->viewHolderType:Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager;->getPerformanceMetricName(Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {v0, p1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 80
    iput-boolean p1, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;->performanceMeasureInProgress:Z

    :cond_0
    return-void
.end method

.method public final updateDataSet(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "dataset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;->dataset:Ljava/util/List;

    .line 64
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final viewLayoutCompleted()V
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;->performanceMeasureInProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;->triggerPerformanceMetric(Z)V

    :cond_0
    return-void
.end method
