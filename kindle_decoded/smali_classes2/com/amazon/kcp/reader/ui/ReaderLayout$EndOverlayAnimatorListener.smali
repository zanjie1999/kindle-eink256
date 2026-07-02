.class public Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ReaderLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ReaderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EndOverlayAnimatorListener"
.end annotation


# instance fields
.field private final metric:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;Z)V
    .locals 0

    .line 2823
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    if-eqz p2, :cond_0

    .line 2824
    sget-object p2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->MENU_CHROME_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->MENU_CHROME_CLOSE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    :goto_0
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener;->metric:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const/4 p2, 0x1

    .line 2825
    iput-boolean p2, p1, Lcom/amazon/kcp/reader/ui/ReaderLayout;->createdEndAnimationCallback:Z

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener;)Lcom/amazon/kindle/performance/KindlePerformanceConstants;
    .locals 0

    .line 2820
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener;->metric:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    return-object p0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2830
    new-instance p1, Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener$1;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener;)V

    .line 2839
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    .line 2841
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->access$500(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    return-void
.end method
