.class Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener$FloatingBtnTapDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SearchLayoutFloatingBtnItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatingBtnTapDetector"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener$FloatingBtnTapDetector;->this$1:Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$1;)V
    .locals 0

    .line 254
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener$FloatingBtnTapDetector;-><init>(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener$FloatingBtnTapDetector;->this$1:Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;->access$900(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;FF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 260
    iget-object p1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener$FloatingBtnTapDetector;->this$1:Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;

    iget-object p1, p1, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;->this$0:Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;

    invoke-static {p1}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->access$300(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->performClick()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
