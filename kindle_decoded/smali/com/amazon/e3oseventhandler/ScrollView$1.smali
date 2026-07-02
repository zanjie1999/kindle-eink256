.class Lcom/amazon/e3oseventhandler/ScrollView$1;
.super Ljava/lang/Object;
.source "ScrollView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/e3oseventhandler/ScrollView;->setFilter(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/e3oseventhandler/ScrollView;


# direct methods
.method constructor <init>(Lcom/amazon/e3oseventhandler/ScrollView;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollView$1;->this$0:Lcom/amazon/e3oseventhandler/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 73
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollView$1;->this$0:Lcom/amazon/e3oseventhandler/ScrollView;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/ScrollView;->access$000(Lcom/amazon/e3oseventhandler/ScrollView;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 78
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ScrollView;->onCancelPendingInputEvents()V

    .line 87
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollView$1;->this$0:Lcom/amazon/e3oseventhandler/ScrollView;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/ScrollView;->access$200(Lcom/amazon/e3oseventhandler/ScrollView;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    .line 91
    :cond_2
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollView$1;->this$0:Lcom/amazon/e3oseventhandler/ScrollView;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/ScrollView;->access$300(Lcom/amazon/e3oseventhandler/ScrollView;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v2

    .line 94
    :cond_3
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollView$1;->this$0:Lcom/amazon/e3oseventhandler/ScrollView;

    invoke-static {p1, v0}, Lcom/amazon/e3oseventhandler/ScrollView;->access$102(Lcom/amazon/e3oseventhandler/ScrollView;Z)Z

    goto :goto_0

    .line 81
    :cond_4
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollView$1;->this$0:Lcom/amazon/e3oseventhandler/ScrollView;

    invoke-static {p1, v0}, Lcom/amazon/e3oseventhandler/ScrollView;->access$102(Lcom/amazon/e3oseventhandler/ScrollView;Z)Z

    .line 82
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollView$1;->this$0:Lcom/amazon/e3oseventhandler/ScrollView;

    invoke-static {p1, v0}, Lcom/amazon/e3oseventhandler/ScrollView;->access$202(Lcom/amazon/e3oseventhandler/ScrollView;Z)Z

    .line 83
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollView$1;->this$0:Lcom/amazon/e3oseventhandler/ScrollView;

    iput-object p2, p1, Lcom/amazon/e3oseventhandler/ScrollView;->mLastOnDownEvent:Landroid/view/MotionEvent;

    .line 98
    :goto_0
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollView$1;->this$0:Lcom/amazon/e3oseventhandler/ScrollView;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/ScrollView;->access$300(Lcom/amazon/e3oseventhandler/ScrollView;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
