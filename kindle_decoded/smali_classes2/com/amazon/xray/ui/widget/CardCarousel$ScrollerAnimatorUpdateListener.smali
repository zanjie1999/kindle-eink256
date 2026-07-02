.class Lcom/amazon/xray/ui/widget/CardCarousel$ScrollerAnimatorUpdateListener;
.super Ljava/lang/Object;
.source "CardCarousel.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/widget/CardCarousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollerAnimatorUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/widget/CardCarousel;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/widget/CardCarousel;)V
    .locals 0

    .line 798
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel$ScrollerAnimatorUpdateListener;->this$0:Lcom/amazon/xray/ui/widget/CardCarousel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/widget/CardCarousel;Lcom/amazon/xray/ui/widget/CardCarousel$1;)V
    .locals 0

    .line 798
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/CardCarousel$ScrollerAnimatorUpdateListener;-><init>(Lcom/amazon/xray/ui/widget/CardCarousel;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 801
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel$ScrollerAnimatorUpdateListener;->this$0:Lcom/amazon/xray/ui/widget/CardCarousel;

    invoke-static {p1}, Lcom/amazon/xray/ui/widget/CardCarousel;->access$200(Lcom/amazon/xray/ui/widget/CardCarousel;)Landroid/widget/Scroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel$ScrollerAnimatorUpdateListener;->this$0:Lcom/amazon/xray/ui/widget/CardCarousel;

    invoke-static {p1}, Lcom/amazon/xray/ui/widget/CardCarousel;->access$200(Lcom/amazon/xray/ui/widget/CardCarousel;)Landroid/widget/Scroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel$ScrollerAnimatorUpdateListener;->this$0:Lcom/amazon/xray/ui/widget/CardCarousel;

    invoke-static {p1}, Lcom/amazon/xray/ui/widget/CardCarousel;->access$200(Lcom/amazon/xray/ui/widget/CardCarousel;)Landroid/widget/Scroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrX()I

    move-result p1

    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel$ScrollerAnimatorUpdateListener;->this$0:Lcom/amazon/xray/ui/widget/CardCarousel;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/CardCarousel;->access$300(Lcom/amazon/xray/ui/widget/CardCarousel;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 802
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel$ScrollerAnimatorUpdateListener;->this$0:Lcom/amazon/xray/ui/widget/CardCarousel;

    invoke-static {p1}, Lcom/amazon/xray/ui/widget/CardCarousel;->access$200(Lcom/amazon/xray/ui/widget/CardCarousel;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    invoke-static {p1, v0}, Lcom/amazon/xray/ui/widget/CardCarousel;->access$400(Lcom/amazon/xray/ui/widget/CardCarousel;I)V

    :cond_0
    return-void
.end method
