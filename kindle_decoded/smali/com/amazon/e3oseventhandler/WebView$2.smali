.class Lcom/amazon/e3oseventhandler/WebView$2;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/e3oseventhandler/WebView;->setFilter(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/e3oseventhandler/WebView;


# direct methods
.method constructor <init>(Lcom/amazon/e3oseventhandler/WebView;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/WebView$2;->this$0:Lcom/amazon/e3oseventhandler/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 188
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/WebView$2;->this$0:Lcom/amazon/e3oseventhandler/WebView;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/WebView;->access$100(Lcom/amazon/e3oseventhandler/WebView;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    .line 189
    invoke-static {}, Lcom/amazon/e3oseventhandler/WebView;->access$200()Landroid/view/VelocityTracker;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 194
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->onCancelPendingInputEvents()V

    return v1

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/WebView$2;->this$0:Lcom/amazon/e3oseventhandler/WebView;

    invoke-static {v0, p2, p1}, Lcom/amazon/e3oseventhandler/WebView;->access$300(Lcom/amazon/e3oseventhandler/WebView;Landroid/view/MotionEvent;Landroid/webkit/WebView;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/WebView$2;->this$0:Lcom/amazon/e3oseventhandler/WebView;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/e3oseventhandler/WebView;->mLastOnDownEvent:Landroid/view/MotionEvent;

    .line 209
    :cond_4
    :goto_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
