.class Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$CoverOnClickListener;
.super Ljava/lang/Object;
.source "BookGridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;


# direct methods
.method private constructor <init>(Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$CoverOnClickListener;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$1;)V
    .locals 0

    .line 586
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$CoverOnClickListener;-><init>(Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 589
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$CoverOnClickListener;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 592
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$CoverOnClickListener;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 594
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$CoverOnClickListener;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->access$600(Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;)Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$BookGridAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$BookGridAdapter;->onAccessibilityCoverAction(I)V

    return-void

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$CoverOnClickListener;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->access$700(Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 601
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$CoverOnClickListener;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->access$800(Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object p1

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/BookGridActions;->CLICK_CLOSE_BOOK_DETAIL:Lcom/amazon/ea/metrics/BookGridActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    const/4 p1, -0x1

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$CoverOnClickListener;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    invoke-virtual {v0, p1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->setSelectedCover(I)V

    .line 608
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$CoverOnClickListener;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->access$902(Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;Z)Z

    .line 609
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$CoverOnClickListener;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$CoverOnClickListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$CoverOnClickListener$1;-><init>(Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$CoverOnClickListener;)V

    .line 614
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v1, v1

    .line 609
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
