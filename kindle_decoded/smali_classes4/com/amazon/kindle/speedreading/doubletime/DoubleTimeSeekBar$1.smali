.class Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar$1;
.super Ljava/lang/Object;
.source "DoubleTimeSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->updateTextView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;

.field final synthetic val$wpm:I


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;I)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;

    iput p2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar$1;->val$wpm:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;

    invoke-static {v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->access$100(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;

    invoke-static {v2}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->access$000(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;)F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setX(F)V

    .line 173
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->access$100(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;

    invoke-static {v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->access$200(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    const/high16 v2, 0x41100000    # 9.0f

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setY(F)V

    .line 175
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;->access$100(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar;)Landroid/widget/LinearLayout;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/speedreading/R$id;->doubletime_seekbar_text:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 176
    iget v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSeekBar$1;->val$wpm:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
