.class Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$PrivateOnTouchListener;
.super Ljava/lang/Object;
.source "SeeMoreImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivateOnTouchListener"
.end annotation


# instance fields
.field private lastDown:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;


# direct methods
.method private constructor <init>(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$PrivateOnTouchListener;->this$0:Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$1;)V
    .locals 0

    .line 386
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$PrivateOnTouchListener;-><init>(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 393
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$PrivateOnTouchListener;->this$0:Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->access$300(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;)Landroid/view/ScaleGestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 394
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$PrivateOnTouchListener;->this$0:Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->access$300(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;)Landroid/view/ScaleGestureDetector;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result p1

    if-nez p1, :cond_0

    .line 396
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView$PrivateOnTouchListener;->this$0:Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;->access$400(Lcom/amazon/kedu/flashcards/views/SeeMoreImageView;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
