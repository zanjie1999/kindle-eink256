.class Lcom/amazon/kindle/pagecurl/CurlView$3;
.super Ljava/lang/Object;
.source "CurlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/pagecurl/CurlView;->setCurrentIndex(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/pagecurl/CurlView;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/amazon/kindle/pagecurl/CurlView;I)V
    .locals 0

    .line 1010
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView$3;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    iput p2, p0, Lcom/amazon/kindle/pagecurl/CurlView$3;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1013
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curl View - setCurrentIndex Bis - Processing the set current index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/pagecurl/CurlView$3;->val$index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1015
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$3;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$300(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$3;->val$index:I

    if-gtz v0, :cond_1

    goto :goto_0

    .line 1020
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$3;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$500(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/ViewMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/pagecurl/ViewMode;->SHOW_TWO_PAGES:Lcom/amazon/kindle/pagecurl/ViewMode;

    if-ne v0, v1, :cond_3

    .line 1022
    iget v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$3;->val$index:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_2

    .line 1023
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView$3;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/CurlView;->access$300(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;->getBitmapCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$402(Lcom/amazon/kindle/pagecurl/CurlView;I)I

    goto :goto_1

    .line 1027
    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView$3;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/CurlView;->access$300(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;->getBitmapCount()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$402(Lcom/amazon/kindle/pagecurl/CurlView;I)I

    goto :goto_1

    .line 1034
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$3;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    iget v1, p0, Lcom/amazon/kindle/pagecurl/CurlView$3;->val$index:I

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$300(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;->getBitmapCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/pagecurl/CurlView;->access$402(Lcom/amazon/kindle/pagecurl/CurlView;I)I

    goto :goto_1

    .line 1016
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$3;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kindle/pagecurl/CurlView;->access$402(Lcom/amazon/kindle/pagecurl/CurlView;I)I

    .line 1038
    :goto_1
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$3;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$600(Lcom/amazon/kindle/pagecurl/CurlView;)V

    .line 1039
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$3;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->requestRender()V

    return-void
.end method
