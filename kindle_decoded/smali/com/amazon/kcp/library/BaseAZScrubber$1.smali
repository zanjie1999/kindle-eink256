.class Lcom/amazon/kcp/library/BaseAZScrubber$1;
.super Ljava/lang/Object;
.source "BaseAZScrubber.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/BaseAZScrubber;->setOnTouchListener(Lcom/amazon/kcp/library/BaseAZScrubber$ScrubberOnTouchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastUserAction:I

.field final synthetic this$0:Lcom/amazon/kcp/library/BaseAZScrubber;

.field final synthetic val$onTouchListener:Lcom/amazon/kcp/library/BaseAZScrubber$ScrubberOnTouchListener;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/BaseAZScrubber;Lcom/amazon/kcp/library/BaseAZScrubber$ScrubberOnTouchListener;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/amazon/kcp/library/BaseAZScrubber$1;->this$0:Lcom/amazon/kcp/library/BaseAZScrubber;

    iput-object p2, p0, Lcom/amazon/kcp/library/BaseAZScrubber$1;->val$onTouchListener:Lcom/amazon/kcp/library/BaseAZScrubber$ScrubberOnTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private reportTapOrSlideMetrics(I)V
    .locals 3

    .line 506
    iget v0, p0, Lcom/amazon/kcp/library/BaseAZScrubber$1;->lastUserAction:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p1, v1, :cond_2

    .line 512
    iget-object v1, p0, Lcom/amazon/kcp/library/BaseAZScrubber$1;->this$0:Lcom/amazon/kcp/library/BaseAZScrubber;

    iget-object v1, v1, Lcom/amazon/kcp/library/BaseAZScrubber;->layoutType:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string v0, "SlidesToIndex"

    goto :goto_1

    :cond_1
    const-string v0, "TappedOnIndex"

    :goto_1
    invoke-static {v1, v0}, Lcom/amazon/kcp/util/fastmetrics/RecordAZScrubberMetrics;->reportActionMetrics(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_2
    iput p1, p0, Lcom/amazon/kcp/library/BaseAZScrubber$1;->lastUserAction:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 481
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 482
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 484
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/BaseAZScrubber$1;->reportTapOrSlideMetrics(I)V

    .line 485
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 486
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/amazon/kcp/library/BaseAZScrubber$1;->this$0:Lcom/amazon/kcp/library/BaseAZScrubber;

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/library/BaseAZScrubber;->getIndexToScrollTo(F)I

    move-result p1

    if-ltz p1, :cond_2

    .line 488
    iget-object p2, p0, Lcom/amazon/kcp/library/BaseAZScrubber$1;->this$0:Lcom/amazon/kcp/library/BaseAZScrubber;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/BaseAZScrubber;->resetLastHighlightedLetter()V

    .line 489
    iget-object p2, p0, Lcom/amazon/kcp/library/BaseAZScrubber$1;->this$0:Lcom/amazon/kcp/library/BaseAZScrubber;

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/library/BaseAZScrubber;->setHighlightedLetter(I)V

    .line 490
    iget-object p2, p0, Lcom/amazon/kcp/library/BaseAZScrubber$1;->val$onTouchListener:Lcom/amazon/kcp/library/BaseAZScrubber$ScrubberOnTouchListener;

    invoke-interface {p2, p1}, Lcom/amazon/kcp/library/BaseAZScrubber$ScrubberOnTouchListener;->onTouch(I)Z

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
