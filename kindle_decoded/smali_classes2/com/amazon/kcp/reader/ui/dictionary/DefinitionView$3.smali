.class Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$3;
.super Ljava/lang/Object;
.source "DefinitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->updateDefinitionView(Landroid/util/Size;ZZLandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

.field final synthetic val$definitionFits:Z

.field final synthetic val$isFinalStep:Z

.field final synthetic val$newBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$newSize:Landroid/util/Size;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;Landroid/util/Size;ZZLandroid/graphics/Bitmap;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$3;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$3;->val$newSize:Landroid/util/Size;

    iput-boolean p3, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$3;->val$definitionFits:Z

    iput-boolean p4, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$3;->val$isFinalStep:Z

    iput-object p5, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$3;->val$newBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 461
    invoke-static {}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDefinitionView newSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$3;->val$newSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " definitionFits: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$3;->val$definitionFits:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$3;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$3;->val$newSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->access$202(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;I)I

    .line 464
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$3;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$3;->val$newSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->access$302(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;I)I

    .line 466
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$3;->val$definitionFits:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$3;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->access$400(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;Z)V

    .line 468
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$3;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->access$500(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;Z)V

    goto :goto_0

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$3;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    iget-boolean v2, v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->isTwoStepLoadingSupported:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$3;->val$isFinalStep:Z

    if-nez v2, :cond_1

    .line 471
    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->access$500(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;Z)V

    .line 472
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$3;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    invoke-static {v0, v3}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->access$400(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;Z)V

    goto :goto_0

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$3;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->access$400(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;Z)V

    .line 475
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$3;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    invoke-static {v0, v3}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->access$500(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;Z)V

    .line 479
    :goto_0
    monitor-enter p0

    .line 480
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$3;->val$newBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 481
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$3;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->access$600(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 482
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$3;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->access$600(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 484
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$3;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$3;->val$newBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->access$602(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 486
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$3;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    invoke-static {v2}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->access$300(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 489
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$3;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :catchall_0
    move-exception v0

    .line 486
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
