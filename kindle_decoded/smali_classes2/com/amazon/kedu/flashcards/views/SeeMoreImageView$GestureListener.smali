.class Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SeeMoreImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;


# direct methods
.method private constructor <init>(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$GestureListener;->this$0:Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$1;)V
    .locals 0

    .line 425
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$GestureListener;-><init>(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 436
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$GestureListener;->this$0:Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getMaxZoom()F

    move-result p1

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$GestureListener;->this$0:Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getMinZoom()F

    move-result v0

    sub-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$GestureListener;->this$0:Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getMinZoom()F

    move-result v0

    add-float/2addr p1, v0

    .line 437
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$GestureListener;->this$0:Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->getScale()F

    move-result v0

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    .line 439
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$GestureListener;->this$0:Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->access$700(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->access$800(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;F)V

    goto :goto_0

    .line 443
    :cond_0
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$GestureListener;->this$0:Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->access$900(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->access$800(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;F)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 452
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$GestureListener;->this$0:Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p3, p3, p2

    invoke-static {p1, p3}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->access$1000(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;F)V

    .line 453
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$GestureListener;->this$0:Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;

    mul-float p4, p4, p2

    invoke-static {p1, p4}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->access$1100(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;F)V

    const/4 p1, 0x1

    return p1
.end method
