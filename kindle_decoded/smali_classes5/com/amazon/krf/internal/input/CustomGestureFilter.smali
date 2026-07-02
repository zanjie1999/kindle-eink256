.class Lcom/amazon/krf/internal/input/CustomGestureFilter;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CustomGestureFilter.java"


# instance fields
.field private mTarget:Lcom/amazon/krf/internal/input/OnInputEventListener;


# direct methods
.method public constructor <init>(Lcom/amazon/krf/internal/input/OnInputEventListener;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazon/krf/internal/input/CustomGestureFilter;->mTarget:Lcom/amazon/krf/internal/input/OnInputEventListener;

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/krf/internal/input/CustomGestureFilter;->mTarget:Lcom/amazon/krf/internal/input/OnInputEventListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/krf/internal/input/CustomGestureFilter;->mTarget:Lcom/amazon/krf/internal/input/OnInputEventListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/krf/internal/input/CustomGestureFilter;->mTarget:Lcom/amazon/krf/internal/input/OnInputEventListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
