.class Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ExcerptCardCarouselScrollListener;
.super Ljava/lang/Object;
.source "ExcerptsFragment.java"

# interfaces
.implements Lcom/amazon/xray/ui/widget/CardCarousel$CarouselScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/ExcerptsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExcerptCardCarouselScrollListener"
.end annotation


# instance fields
.field private priorFocusedCardIndex:I

.field final synthetic this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ExcerptCardCarouselScrollListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 589
    iput p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ExcerptCardCarouselScrollListener;->priorFocusedCardIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;Lcom/amazon/xray/ui/fragment/ExcerptsFragment$1;)V
    .locals 0

    .line 588
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ExcerptCardCarouselScrollListener;-><init>(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/amazon/xray/ui/widget/CardCarousel;ID)V
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ExcerptCardCarouselScrollListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    invoke-virtual {p1}, Lcom/amazon/xray/ui/widget/CardCarousel;->getFocusedCardIndex()I

    move-result p1

    invoke-static {v0, p1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->access$602(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;I)I

    .line 597
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ExcerptCardCarouselScrollListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->seekBar:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-virtual {p1, p2, p3, p4}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->setNeedlePositionByEventIndexAndPercent(ID)V

    .line 598
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ExcerptCardCarouselScrollListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    iget-object p2, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p2, p2, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->seekBar:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->access$600(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->setPositionByEventIndex(I)V

    .line 601
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ExcerptCardCarouselScrollListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->access$600(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)I

    move-result p1

    iget p2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ExcerptCardCarouselScrollListener;->priorFocusedCardIndex:I

    if-eq p1, p2, :cond_0

    .line 602
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ExcerptCardCarouselScrollListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->access$600(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)I

    move-result p1

    iput p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ExcerptCardCarouselScrollListener;->priorFocusedCardIndex:I

    .line 603
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ExcerptCardCarouselScrollListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->access$700(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 604
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ExcerptCardCarouselScrollListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->access$700(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ExcerptCardCarouselScrollListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    invoke-static {p2}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->access$600(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)I

    move-result p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->setVisibleRange(II)V

    .line 605
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ExcerptCardCarouselScrollListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->access$600(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->access$800(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;I)V

    .line 606
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ExcerptCardCarouselScrollListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->access$600(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->access$900(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;I)V

    :cond_0
    return-void
.end method
