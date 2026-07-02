.class Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ReaderMenuContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 136
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->access$000(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 130
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->access$000(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;)Z

    move-result p1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 120
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->setViewOptionsVisible(Z)Z

    const/4 p1, 0x1

    return p1

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->access$000(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;)Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 99
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isWaypointsMenuVisible()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 103
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->parentActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 105
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$string;->speak_overlays_hidden:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {p1, v1, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    :cond_0
    return v0

    .line 109
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 110
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {p1, v1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->setViewOptionsVisible(Z)Z

    return v0

    :cond_2
    return v1
.end method
