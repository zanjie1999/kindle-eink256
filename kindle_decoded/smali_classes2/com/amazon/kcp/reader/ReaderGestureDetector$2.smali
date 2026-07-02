.class Lcom/amazon/kcp/reader/ReaderGestureDetector$2;
.super Ljava/lang/Object;
.source "ReaderGestureDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderGestureDetector;->reportPageTurnMetrics(Landroid/view/MotionEvent;Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderGestureDetector;

.field final synthetic val$event:Landroid/view/MotionEvent;

.field final synthetic val$type:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderGestureDetector;Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;Landroid/view/MotionEvent;)V
    .locals 0

    .line 1689
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector$2;->this$0:Lcom/amazon/kcp/reader/ReaderGestureDetector;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector$2;->val$type:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    iput-object p3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector$2;->val$event:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1692
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector$2;->this$0:Lcom/amazon/kcp/reader/ReaderGestureDetector;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector$2;->val$type:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector$2;->val$event:Landroid/view/MotionEvent;

    .line 1693
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector$2;->val$event:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector$2;->this$0:Lcom/amazon/kcp/reader/ReaderGestureDetector;

    iget-object v4, v4, Lcom/amazon/kcp/reader/ReaderGestureDetector;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/android/util/UIUtils;->getDeviceScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v4

    .line 1692
    invoke-static {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics;->reportPageTurnGesture(ILcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;FFLandroid/graphics/Point;)V

    return-void
.end method
