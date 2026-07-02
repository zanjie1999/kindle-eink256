.class Lcom/amazon/krf/media/VideoPlugin$8;
.super Ljava/lang/Object;
.source "VideoPlugin.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/media/VideoPlugin;->internalSetParentView(Lcom/amazon/krf/platform/KRFView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field final synthetic this$0:Lcom/amazon/krf/media/VideoPlugin;


# direct methods
.method constructor <init>(Lcom/amazon/krf/media/VideoPlugin;)V
    .locals 2

    .line 355
    iput-object p1, p0, Lcom/amazon/krf/media/VideoPlugin$8;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    new-instance p1, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$8;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$1300(Lcom/amazon/krf/media/VideoPlugin;)Lcom/amazon/krf/platform/KRFView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/amazon/krf/media/VideoPlugin$8$1;

    invoke-direct {v1, p0}, Lcom/amazon/krf/media/VideoPlugin$8$1;-><init>(Lcom/amazon/krf/media/VideoPlugin$8;)V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/amazon/krf/media/VideoPlugin$8;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 379
    iget-object p1, p0, Lcom/amazon/krf/media/VideoPlugin$8;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
