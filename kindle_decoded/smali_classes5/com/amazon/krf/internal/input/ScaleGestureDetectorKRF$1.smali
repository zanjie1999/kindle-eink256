.class Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScaleGestureDetectorKRF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->setQuickScaleEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;


# direct methods
.method constructor <init>(Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF$1;->this$0:Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF$1;->this$0:Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;

    invoke-static {v0, p1}, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->access$002(Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 501
    iget-object p1, p0, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF$1;->this$0:Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;->access$102(Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;I)I

    return v0
.end method
