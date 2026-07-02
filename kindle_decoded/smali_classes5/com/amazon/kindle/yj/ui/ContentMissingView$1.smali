.class Lcom/amazon/kindle/yj/ui/ContentMissingView$1;
.super Ljava/lang/Object;
.source "ContentMissingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/yj/ui/ContentMissingView;->setVisibility(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

.field final synthetic val$errorIconVisibility:I

.field final synthetic val$progressBarHorizontalVisibility:I

.field final synthetic val$progressBarSpinnerVisibility:I

.field final synthetic val$progressMessage:I

.field final synthetic val$progressPercent:I


# direct methods
.method constructor <init>(Lcom/amazon/kindle/yj/ui/ContentMissingView;IIIII)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    iput p2, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;->val$progressBarSpinnerVisibility:I

    iput p3, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;->val$progressBarHorizontalVisibility:I

    iput p4, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;->val$errorIconVisibility:I

    iput p5, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;->val$progressMessage:I

    iput p6, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;->val$progressPercent:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 78
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->access$000()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In setVisibility progressBarSpinnerVisibility "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;->val$progressBarSpinnerVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " progressBarHorizontalVisibility "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;->val$progressBarHorizontalVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorIconVisibility "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;->val$errorIconVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " progressMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;->val$progressMessage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " progressPercent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;->val$progressPercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->access$102(Lcom/amazon/kindle/yj/ui/ContentMissingView;Z)Z

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    invoke-static {v0}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->access$200(Lcom/amazon/kindle/yj/ui/ContentMissingView;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;->val$progressBarSpinnerVisibility:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    invoke-static {v0}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->access$300(Lcom/amazon/kindle/yj/ui/ContentMissingView;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;->val$progressBarHorizontalVisibility:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 85
    iget v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;->val$progressPercent:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;->val$progressBarHorizontalVisibility:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    .line 86
    invoke-static {v0}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->access$300(Lcom/amazon/kindle/yj/ui/ContentMissingView;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    invoke-static {v0}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->access$300(Lcom/amazon/kindle/yj/ui/ContentMissingView;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;->val$progressPercent:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    invoke-static {v0}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->access$500(Lcom/amazon/kindle/yj/ui/ContentMissingView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    invoke-static {v1}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->access$400(Lcom/amazon/kindle/yj/ui/ContentMissingView;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;->val$progressMessage:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    invoke-static {v0}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->access$600(Lcom/amazon/kindle/yj/ui/ContentMissingView;)Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;->val$errorIconVisibility:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    invoke-static {v0}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->access$700(Lcom/amazon/kindle/yj/ui/ContentMissingView;)Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$1;->val$errorIconVisibility:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
