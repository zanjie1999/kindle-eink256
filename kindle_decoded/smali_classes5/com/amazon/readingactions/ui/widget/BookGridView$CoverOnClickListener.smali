.class Lcom/amazon/readingactions/ui/widget/BookGridView$CoverOnClickListener;
.super Ljava/lang/Object;
.source "BookGridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/BookGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/BookGridView;


# direct methods
.method private constructor <init>(Lcom/amazon/readingactions/ui/widget/BookGridView;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView$CoverOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/readingactions/ui/widget/BookGridView;Lcom/amazon/readingactions/ui/widget/BookGridView$1;)V
    .locals 0

    .line 616
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/BookGridView$CoverOnClickListener;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 619
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView$CoverOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 622
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView$CoverOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 624
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView$CoverOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridView;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/BookGridView;->access$600(Lcom/amazon/readingactions/ui/widget/BookGridView;)Lcom/amazon/readingactions/ui/widget/BookGridView$BookGridAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/readingactions/ui/widget/BookGridView$BookGridAdapter;->onAccessibilityCoverAction(I)V

    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView$CoverOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridView;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/BookGridView;->access$700(Lcom/amazon/readingactions/ui/widget/BookGridView;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 631
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView$CoverOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridView;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/BookGridView;->access$800(Lcom/amazon/readingactions/ui/widget/BookGridView;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object p1

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/BookGridActions;->CLICK_CLOSE_BOOK_DETAIL:Lcom/amazon/ea/metrics/BookGridActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    const/4 p1, -0x1

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView$CoverOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridView;

    invoke-virtual {v0, p1}, Lcom/amazon/readingactions/ui/widget/BookGridView;->setSelectedCover(I)V

    .line 638
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView$CoverOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/readingactions/ui/widget/BookGridView;->access$902(Lcom/amazon/readingactions/ui/widget/BookGridView;Z)Z

    .line 639
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView$CoverOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/amazon/readingactions/ui/widget/BookGridView$CoverOnClickListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/ui/widget/BookGridView$CoverOnClickListener$1;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridView$CoverOnClickListener;)V

    .line 644
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v1, v1

    .line 639
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
