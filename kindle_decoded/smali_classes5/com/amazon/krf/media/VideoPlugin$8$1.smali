.class Lcom/amazon/krf/media/VideoPlugin$8$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "VideoPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/media/VideoPlugin$8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/krf/media/VideoPlugin$8;


# direct methods
.method constructor <init>(Lcom/amazon/krf/media/VideoPlugin$8;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/amazon/krf/media/VideoPlugin$8$1;->this$1:Lcom/amazon/krf/media/VideoPlugin$8;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 372
    iget-object p1, p0, Lcom/amazon/krf/media/VideoPlugin$8$1;->this$1:Lcom/amazon/krf/media/VideoPlugin$8;

    iget-object p1, p1, Lcom/amazon/krf/media/VideoPlugin$8;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {p1}, Lcom/amazon/krf/media/VideoPlugin;->access$1500(Lcom/amazon/krf/media/VideoPlugin;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 364
    iget-object p1, p0, Lcom/amazon/krf/media/VideoPlugin$8$1;->this$1:Lcom/amazon/krf/media/VideoPlugin$8;

    iget-object p1, p1, Lcom/amazon/krf/media/VideoPlugin$8;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {p1}, Lcom/amazon/krf/media/VideoPlugin;->access$1000(Lcom/amazon/krf/media/VideoPlugin;)Landroid/widget/MediaController;

    move-result-object p1

    if-nez p1, :cond_0

    .line 365
    iget-object p1, p0, Lcom/amazon/krf/media/VideoPlugin$8$1;->this$1:Lcom/amazon/krf/media/VideoPlugin$8;

    iget-object p1, p1, Lcom/amazon/krf/media/VideoPlugin$8;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {p1}, Lcom/amazon/krf/media/VideoPlugin;->access$1400(Lcom/amazon/krf/media/VideoPlugin;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
