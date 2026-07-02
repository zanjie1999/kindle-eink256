.class public abstract Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ExpandableAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpandableAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpandableAdapter.kt\ncom/amazon/kcp/search/views/expandable/ExpandableAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,178:1\n1#2:179\n1819#3,2:180\n*E\n*S KotlinDebug\n*F\n+ 1 ExpandableAdapter.kt\ncom/amazon/kcp/search/views/expandable/ExpandableAdapter\n*L\n153#1,2:180\n*E\n"
.end annotation


# instance fields
.field private collapsedSize:I

.field private final context:Landroid/content/Context;

.field private expandCompletedCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final expandIterationHandler:Landroid/os/Handler;

.field private expandIteratively:Z

.field private expandRunnable:Ljava/lang/Runnable;

.field private expanded:Z

.field private final itemCountChangeCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private iterativeExpandCount:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->context:Landroid/content/Context;

    .line 24
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->expandIterationHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 28
    iput p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->collapsedSize:I

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->itemCountChangeCallbacks:Ljava/util/List;

    .line 34
    sget-object p1, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter$expandCompletedCallback$1;->INSTANCE:Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter$expandCompletedCallback$1;

    iput-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->expandCompletedCallback:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final synthetic access$expandIteratively(Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->expandIteratively()V

    return-void
.end method

.method private final expandIteratively()V
    .locals 4

    .line 158
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->expandRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter$expandIteratively$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter$expandIteratively$1;-><init>(Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;)V

    :goto_0
    iput-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->expandRunnable:Ljava/lang/Runnable;

    .line 160
    iget v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->collapsedSize:I

    mul-int/lit8 v0, v0, 0x1

    .line 161
    invoke-virtual {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->getTotalItemCount()I

    move-result v1

    .line 162
    iget-object v2, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->iterativeExpandCount:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->collapsedSize:I

    :goto_1
    add-int/2addr v0, v2

    .line 163
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v3, v0, v2

    .line 165
    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    if-ge v0, v1, :cond_2

    .line 169
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->iterativeExpandCount:Ljava/lang/Integer;

    .line 170
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->expandIterationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->expandRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/16 v2, 0x55

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->iterativeExpandCount:Ljava/lang/Integer;

    .line 174
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->expandCompletedCallback:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_2
    return-void
.end method


# virtual methods
.method public final enableIterativeExpansion(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->expandIteratively:Z

    return-void
.end method

.method public final getCollapsedSize()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->collapsedSize:I

    return v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getExpanded()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->expanded:Z

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .line 142
    iget-boolean v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->expanded:Z

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->iterativeExpandCount:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->getTotalItemCount()I

    move-result v0

    goto :goto_0

    .line 145
    :cond_1
    iget v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->collapsedSize:I

    invoke-virtual {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->getTotalItemCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public abstract getTotalItemCount()I
.end method

.method protected final notifyTotalItemCountChange(I)V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->itemCountChangeCallbacks:Ljava/util/List;

    .line 180
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 153
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onTotalItemCountChange(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->itemCountChangeCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setCollapsedSize(I)V
    .locals 2

    .line 101
    iget v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->collapsedSize:I

    if-eq p1, v0, :cond_1

    .line 103
    iput p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->collapsedSize:I

    .line 104
    iget-boolean v1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->expanded:Z

    if-nez v1, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->getTotalItemCount()I

    move-result v1

    .line 106
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 107
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-le p1, v1, :cond_0

    sub-int/2addr p1, v1

    .line 109
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    :cond_0
    if-le v1, p1, :cond_1

    sub-int/2addr v1, p1

    .line 111
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setExpandCompletedCallback(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->expandCompletedCallback:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setExpanded(Z)V
    .locals 2

    .line 60
    iget-boolean v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->expanded:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 64
    :cond_0
    iput-boolean p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->expanded:Z

    .line 65
    invoke-virtual {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->getTotalItemCount()I

    move-result v0

    if-eqz p1, :cond_2

    .line 68
    iget p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->collapsedSize:I

    if-le v0, p1, :cond_5

    .line 69
    iget-boolean v1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->expandIteratively:Z

    if-eqz v1, :cond_1

    .line 70
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->expandIteratively()V

    goto :goto_0

    :cond_1
    sub-int/2addr v0, p1

    .line 72
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 74
    iget-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->expandCompletedCallback:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 78
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->iterativeExpandCount:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 82
    :cond_3
    iget-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->expandRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->expandIterationHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    const/4 p1, 0x0

    .line 83
    iput-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->iterativeExpandCount:Ljava/lang/Integer;

    .line 85
    iget p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->collapsedSize:I

    if-ge p1, v0, :cond_5

    sub-int/2addr v0, p1

    .line 86
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    :cond_5
    :goto_0
    return-void
.end method
