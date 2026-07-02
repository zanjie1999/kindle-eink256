.class Lcom/amazon/kcp/reader/ui/ReaderLayout$10;
.super Ljava/lang/Object;
.source "ReaderLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderLayout;->getStandardOverlayAnimator(Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

.field final synthetic val$animated:Z

.field final synthetic val$isStatusBarVisible:Z


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;ZZ)V
    .locals 0

    .line 2792
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$10;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$10;->val$isStatusBarVisible:Z

    iput-boolean p3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$10;->val$animated:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2795
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$10;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    if-eqz v0, :cond_1

    .line 2798
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$10;->val$isStatusBarVisible:Z

    if-eqz v0, :cond_0

    .line 2799
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->FULL_PAGE_VIEW:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_CHROME:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    goto :goto_0

    .line 2802
    :cond_0
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->NAVIGATION_VIEW:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->CLOSE_CHROME:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    .line 2805
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$10;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$10;->val$isStatusBarVisible:Z

    iget-boolean v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$10;->val$animated:Z

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->setOverlaysVisible(ZZ)V

    :cond_1
    return-void
.end method
