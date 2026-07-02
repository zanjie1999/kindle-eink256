.class Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$OnScrollListener;
.super Ljava/lang/Object;
.source "EntityOccurrencesFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnScrollListener"
.end annotation


# instance fields
.field private priorFirstVisibleItem:I

.field private priorVisibleItemCount:I

.field final synthetic this$0:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;

.field private touchScrolled:Z


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$OnScrollListener;->this$0:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 377
    iput p1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$OnScrollListener;->priorFirstVisibleItem:I

    .line 378
    iput p1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$OnScrollListener;->priorVisibleItemCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$1;)V
    .locals 0

    .line 373
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$OnScrollListener;-><init>(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 391
    iget-boolean p1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$OnScrollListener;->touchScrolled:Z

    if-eqz p1, :cond_0

    .line 392
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$OnScrollListener;->this$0:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;

    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->access$600(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;)Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    move-result-object p4

    iget-object p4, p4, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->listView:Landroid/widget/ListView;

    invoke-static {p4}, Lcom/amazon/xray/ui/util/ListViewUtil;->getFirstVisiblePositionOffset(Landroid/widget/ListView;)I

    move-result p4

    invoke-static {p1, p4}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->access$702(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;I)I

    .line 393
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$OnScrollListener;->this$0:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;

    invoke-static {p1, p2}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->access$802(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;I)I

    .line 397
    :cond_0
    iget p1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$OnScrollListener;->priorFirstVisibleItem:I

    if-ne p2, p1, :cond_1

    iget p1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$OnScrollListener;->priorVisibleItemCount:I

    if-eq p3, p1, :cond_2

    .line 398
    :cond_1
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$OnScrollListener;->this$0:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;

    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->access$500(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;)Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 399
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$OnScrollListener;->this$0:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;

    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->access$500(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;)Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;->setVisibleRange(II)V

    .line 402
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$OnScrollListener;->this$0:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;

    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->access$600(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;)Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->seekBar:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    iget-object p4, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$OnScrollListener;->this$0:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;

    invoke-static {p4}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->access$500(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;)Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;

    move-result-object p4

    .line 403
    invoke-virtual {p4, p2}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->getChildPositionExcludingGroups(I)I

    move-result p4

    .line 402
    invoke-virtual {p1, p4}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->setPositionByEventIndex(I)V

    .line 404
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$OnScrollListener;->this$0:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;

    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->access$600(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;)Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;->seekBar:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    iget-object p4, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$OnScrollListener;->this$0:Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;

    invoke-static {p4}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;->access$500(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;)Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Lcom/amazon/xray/ui/adapter/OccurrenceGroupListAdapter;->getRepresentedRange(II)Lcom/amazon/xray/model/object/PositionRange;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->setNeedleRange(Lcom/amazon/xray/model/object/PositionRange;)V

    .line 406
    iput p2, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$OnScrollListener;->priorFirstVisibleItem:I

    .line 407
    iput p3, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$OnScrollListener;->priorVisibleItemCount:I

    :cond_2
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 383
    iput-boolean p1, p0, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$OnScrollListener;->touchScrolled:Z

    :cond_0
    return-void
.end method
