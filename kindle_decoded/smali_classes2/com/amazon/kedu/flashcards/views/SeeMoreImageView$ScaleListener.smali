.class Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$ScaleListener;
.super Ljava/lang/Object;
.source "SeeMoreImageView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;


# direct methods
.method private constructor <init>(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$ScaleListener;->this$0:Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$1;)V
    .locals 0

    .line 403
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$ScaleListener;-><init>(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 414
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$ScaleListener;->this$0:Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->access$500(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;FFF)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .line 421
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$ScaleListener;->this$0:Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->access$600(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;)V

    return-void
.end method
