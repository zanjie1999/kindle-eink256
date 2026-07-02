.class Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;
.super Ljava/lang/Object;
.source "SearchLayoutFloatingBtnItemDecoration.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FloatingBtnTouchListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener$FloatingBtnTapDetector;
    }
.end annotation


# instance fields
.field private final floatingBtnGestureDetector:Landroid/view/GestureDetector;

.field final synthetic this$0:Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 219
    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;->this$0:Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener$FloatingBtnTapDetector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener$FloatingBtnTapDetector;-><init>(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$1;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;->floatingBtnGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$900(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;FF)Z
    .locals 0

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;->isTapOnFloatingBtn(FF)Z

    move-result p0

    return p0
.end method

.method private isTapOnFloatingBtn(FF)Z
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;->this$0:Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;

    invoke-static {v0}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->access$300(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;->this$0:Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;

    invoke-static {v0}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->access$400(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;->this$0:Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;

    invoke-static {v0}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->access$500(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;->this$0:Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;

    invoke-static {v0}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->access$500(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)I

    move-result v0

    iget-object v2, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;->this$0:Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;

    invoke-static {v2}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->access$600(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;->this$0:Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;

    invoke-static {p1}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->access$700(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;->this$0:Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;

    invoke-static {p1}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->access$700(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)I

    move-result p1

    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;->this$0:Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;

    invoke-static {v0}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->access$800(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)I

    move-result v0

    add-int/2addr p1, v0

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 225
    iget-object p1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;->floatingBtnGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 231
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;->isTapOnFloatingBtn(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
