.class Lcom/amazon/kindle/yj/ui/ContentMissingView$2;
.super Ljava/lang/Object;
.source "ContentMissingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/yj/ui/ContentMissingView;->updateDownloadProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

.field final synthetic val$progressPercent:I


# direct methods
.method constructor <init>(Lcom/amazon/kindle/yj/ui/ContentMissingView;I)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$2;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    iput p2, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$2;->val$progressPercent:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 110
    iget v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$2;->val$progressPercent:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$2;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    invoke-static {v0}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->access$300(Lcom/amazon/kindle/yj/ui/ContentMissingView;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$2;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    invoke-static {v0}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->access$300(Lcom/amazon/kindle/yj/ui/ContentMissingView;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$2;->val$progressPercent:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method
