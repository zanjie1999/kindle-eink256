.class Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TimelineSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/widget/TimelineSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimelineDrawable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/widget/TimelineSeekBar;Lcom/amazon/xray/ui/widget/TimelineSeekBar$1;)V
    .locals 0

    .line 594
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;-><init>(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)V

    return-void
.end method

.method private drawIndicators(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;[I)V
    .locals 7

    .line 684
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 685
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 687
    array-length v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, p3, v4

    .line 688
    iget-object v6, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v6}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$700(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)I

    move-result v6

    if-le v5, v6, :cond_0

    goto :goto_1

    .line 692
    :cond_0
    iget-object v6, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v6, v5}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$900(Lcom/amazon/xray/ui/widget/TimelineSeekBar;I)I

    move-result v5

    div-int/lit8 v6, v0, 0x2

    sub-int/2addr v5, v6

    add-int v6, v5, v0

    .line 693
    invoke-virtual {p2, v5, v3, v6, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 694
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 612
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 614
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v2}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$500(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v2}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$600(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 615
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v3}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$500(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v3}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$600(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    .line 618
    iget-object v3, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v3}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$700(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)I

    move-result v3

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v3}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$700(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)I

    move-result v3

    iget-object v4, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v4}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$800(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)I

    move-result v4

    if-ge v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 620
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v5}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$500(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v5}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$700(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$900(Lcom/amazon/xray/ui/widget/TimelineSeekBar;I)I

    move-result v5

    add-int/2addr v4, v5

    .line 621
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 622
    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v5, v6, v4, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 626
    :cond_1
    iget-object v4, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v4}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$1000(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v1, v5, v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 627
    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$1000(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 630
    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$1100(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)[I

    move-result-object v1

    if-eqz v1, :cond_2

    .line 631
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 632
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v4}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$500(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    .line 633
    invoke-static {v5}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$1200(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 632
    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 634
    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$1200(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v4, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v4}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$1100(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)[I

    move-result-object v4

    invoke-direct {p0, p1, v1, v4}, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->drawIndicators(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;[I)V

    .line 635
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 639
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 640
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v4}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$500(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 641
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v5}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$1300(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 640
    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 642
    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$1300(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v4, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v4}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$400(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)[I

    move-result-object v4

    invoke-direct {p0, p1, v1, v4}, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->drawIndicators(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;[I)V

    .line 643
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v3, :cond_4

    .line 647
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 649
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v3}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$500(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v3}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$700(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$900(Lcom/amazon/xray/ui/widget/TimelineSeekBar;I)I

    move-result v3

    add-int/2addr v1, v3

    .line 650
    iget-object v3, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v3}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$1400(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 651
    iget-object v4, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v4}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$1500(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 652
    iget-object v5, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v5}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$1600(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 655
    iget-object v6, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v6}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$1400(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    sub-int v3, v2, v3

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v3, v7, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 656
    iget-object v2, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v2}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$1400(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 659
    iget-object v2, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v2}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$1600(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v1, v6, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 660
    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$1600(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 663
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 664
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v5, v1, v2, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :goto_1
    sub-int/2addr v3, v4

    sub-int v1, v5, v4

    if-le v3, v1, :cond_3

    .line 666
    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$1500(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int v6, v3, v4

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3, v2, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 667
    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TimelineSeekBar$TimelineDrawable;->this$0:Lcom/amazon/xray/ui/widget/TimelineSeekBar;

    invoke-static {v1}, Lcom/amazon/xray/ui/widget/TimelineSeekBar;->access$1500(Lcom/amazon/xray/ui/widget/TimelineSeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 669
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
