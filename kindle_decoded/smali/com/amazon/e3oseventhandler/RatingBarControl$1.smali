.class Lcom/amazon/e3oseventhandler/RatingBarControl$1;
.super Ljava/lang/Object;
.source "RatingBarControl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/e3oseventhandler/RatingBarControl;->setFilter(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/e3oseventhandler/RatingBarControl;


# direct methods
.method constructor <init>(Lcom/amazon/e3oseventhandler/RatingBarControl;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/RatingBarControl$1;->this$0:Lcom/amazon/e3oseventhandler/RatingBarControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/RatingBarControl$1;->this$0:Lcom/amazon/e3oseventhandler/RatingBarControl;

    move-object v1, p1

    check-cast v1, Landroid/widget/RatingBar;

    invoke-static {v0, v1}, Lcom/amazon/e3oseventhandler/RatingBarControl;->access$002(Lcom/amazon/e3oseventhandler/RatingBarControl;Landroid/widget/RatingBar;)Landroid/widget/RatingBar;

    .line 45
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    return v1

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/RatingBarControl$1;->this$0:Lcom/amazon/e3oseventhandler/RatingBarControl;

    iget p2, p1, Lcom/amazon/e3oseventhandler/RatingBarControl;->mCounter:I

    add-int/2addr p2, v1

    iput p2, p1, Lcom/amazon/e3oseventhandler/RatingBarControl;->mCounter:I

    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/RatingBarControl$1;->this$0:Lcom/amazon/e3oseventhandler/RatingBarControl;

    iget v2, v0, Lcom/amazon/e3oseventhandler/RatingBarControl;->mCounter:I

    const/4 v3, 0x0

    if-le v2, v1, :cond_2

    .line 50
    iput v3, v0, Lcom/amazon/e3oseventhandler/RatingBarControl;->mCounter:I

    return v3

    .line 53
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    .line 54
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/RatingBarControl$1;->this$0:Lcom/amazon/e3oseventhandler/RatingBarControl;

    invoke-static {v0}, Lcom/amazon/e3oseventhandler/RatingBarControl;->access$000(Lcom/amazon/e3oseventhandler/RatingBarControl;)Landroid/widget/RatingBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 55
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/RatingBarControl$1;->this$0:Lcom/amazon/e3oseventhandler/RatingBarControl;

    invoke-static {v0}, Lcom/amazon/e3oseventhandler/RatingBarControl;->access$000(Lcom/amazon/e3oseventhandler/RatingBarControl;)Landroid/widget/RatingBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v0

    int-to-float v0, v0

    mul-float p2, p2, v0

    float-to-int p2, p2

    add-int/2addr p2, v1

    .line 57
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/RatingBarControl$1;->this$0:Lcom/amazon/e3oseventhandler/RatingBarControl;

    invoke-static {v0}, Lcom/amazon/e3oseventhandler/RatingBarControl;->access$000(Lcom/amazon/e3oseventhandler/RatingBarControl;)Landroid/widget/RatingBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    float-to-int v0, v0

    if-ne v0, v1, :cond_3

    if-ne p2, v1, :cond_3

    const/4 p2, 0x0

    .line 61
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 62
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/RatingBarControl$1;->this$0:Lcom/amazon/e3oseventhandler/RatingBarControl;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/RatingBarControl;->access$000(Lcom/amazon/e3oseventhandler/RatingBarControl;)Landroid/widget/RatingBar;

    move-result-object p1

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 63
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/RatingBarControl$1;->this$0:Lcom/amazon/e3oseventhandler/RatingBarControl;

    iput v3, p1, Lcom/amazon/e3oseventhandler/RatingBarControl;->mCounter:I

    :goto_0
    return v1
.end method
