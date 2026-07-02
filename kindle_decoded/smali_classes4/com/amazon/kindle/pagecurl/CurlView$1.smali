.class Lcom/amazon/kindle/pagecurl/CurlView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CurlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/pagecurl/CurlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/pagecurl/CurlView;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/pagecurl/CurlView;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView$1;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 158
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$1;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v4

    .line 158
    invoke-static {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/pagecurl/CurlView;->access$000(Lcom/amazon/kindle/pagecurl/CurlView;IFFF)V

    .line 163
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$1;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result p1

    .line 163
    invoke-static {v0, v1, v2, v3, p1}, Lcom/amazon/kindle/pagecurl/CurlView;->access$100(Lcom/amazon/kindle/pagecurl/CurlView;IFFF)V

    const/4 p1, 0x1

    return p1
.end method
