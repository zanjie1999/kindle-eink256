.class final Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$configureRecycler$4;
.super Ljava/lang/Object;
.source "AbstractRecyclerFragment.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->configureRecycler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $pinchToZoomDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method constructor <init>(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$configureRecycler$4;->$pinchToZoomDetector:Landroid/view/ScaleGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 182
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$configureRecycler$4;->$pinchToZoomDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const-string p1, "event"

    .line 183
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method
