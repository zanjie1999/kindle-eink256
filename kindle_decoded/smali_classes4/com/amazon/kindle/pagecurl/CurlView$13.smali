.class Lcom/amazon/kindle/pagecurl/CurlView$13;
.super Ljava/lang/Object;
.source "CurlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/pagecurl/CurlView;->invalidatePage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/pagecurl/CurlView;

.field final synthetic val$pageID:I


# direct methods
.method constructor <init>(Lcom/amazon/kindle/pagecurl/CurlView;I)V
    .locals 0

    .line 1819
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    iput p2, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->val$pageID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1822
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Curl View - invalidatePage - processing invalidate pageID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->val$pageID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1825
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1200(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/IMesh;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1200(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/IMesh;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/IMesh;->getFrontImageIndex()I

    move-result v0

    iget v1, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->val$pageID:I

    if-ne v0, v1, :cond_1

    .line 1826
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1200(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/IMesh;

    move-result-object v1

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1200(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/IMesh;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/IMesh;->getFrontImageIndex()I

    move-result v2

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    .line 1827
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$300(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    move-result-object v3

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1400(Lcom/amazon/kindle/pagecurl/CurlView;)I

    move-result v4

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1500(Lcom/amazon/kindle/pagecurl/CurlView;)I

    move-result v5

    iget-object v6, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    const/4 v7, 0x1

    .line 1826
    invoke-interface/range {v1 .. v7}, Lcom/amazon/kindle/pagecurl/IMesh;->setBitmap(ILcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;IILcom/amazon/kindle/pagecurl/CurlView;Z)V

    .line 1829
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1200(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/IMesh;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1200(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/IMesh;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/IMesh;->getBackImageIndex()I

    move-result v0

    iget v1, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->val$pageID:I

    if-ne v0, v1, :cond_2

    .line 1830
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1200(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/IMesh;

    move-result-object v1

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1200(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/IMesh;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/IMesh;->getBackImageIndex()I

    move-result v2

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    .line 1831
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$300(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    move-result-object v3

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1400(Lcom/amazon/kindle/pagecurl/CurlView;)I

    move-result v4

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1500(Lcom/amazon/kindle/pagecurl/CurlView;)I

    move-result v5

    iget-object v6, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    const/4 v7, 0x1

    .line 1830
    invoke-interface/range {v1 .. v7}, Lcom/amazon/kindle/pagecurl/IMesh;->setBackBitmap(ILcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;IILcom/amazon/kindle/pagecurl/CurlView;Z)V

    .line 1834
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1300(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/IMesh;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1300(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/IMesh;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/IMesh;->getFrontImageIndex()I

    move-result v0

    iget v1, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->val$pageID:I

    if-ne v0, v1, :cond_3

    .line 1835
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1300(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/IMesh;

    move-result-object v1

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1300(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/IMesh;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/IMesh;->getFrontImageIndex()I

    move-result v2

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    .line 1836
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$300(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    move-result-object v3

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1400(Lcom/amazon/kindle/pagecurl/CurlView;)I

    move-result v4

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1500(Lcom/amazon/kindle/pagecurl/CurlView;)I

    move-result v5

    iget-object v6, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    const/4 v7, 0x1

    .line 1835
    invoke-interface/range {v1 .. v7}, Lcom/amazon/kindle/pagecurl/IMesh;->setBitmap(ILcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;IILcom/amazon/kindle/pagecurl/CurlView;Z)V

    .line 1838
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1300(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/IMesh;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1300(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/IMesh;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/IMesh;->getBackImageIndex()I

    move-result v0

    iget v1, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->val$pageID:I

    if-ne v0, v1, :cond_4

    .line 1839
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1300(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/IMesh;

    move-result-object v1

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1300(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/IMesh;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/IMesh;->getBackImageIndex()I

    move-result v2

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    .line 1840
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$300(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    move-result-object v3

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1400(Lcom/amazon/kindle/pagecurl/CurlView;)I

    move-result v4

    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1500(Lcom/amazon/kindle/pagecurl/CurlView;)I

    move-result v5

    iget-object v6, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    const/4 v7, 0x1

    .line 1839
    invoke-interface/range {v1 .. v7}, Lcom/amazon/kindle/pagecurl/IMesh;->setBackBitmap(ILcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;IILcom/amazon/kindle/pagecurl/CurlView;Z)V

    .line 1843
    :cond_4
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$200(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1844
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1845
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/pagecurl/CurledPageState;

    .line 1846
    iget-object v1, v1, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/pagecurl/IMesh;

    if-eqz v2, :cond_7

    .line 1847
    invoke-interface {v2}, Lcom/amazon/kindle/pagecurl/IMesh;->getFrontImageIndex()I

    move-result v3

    iget v4, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->val$pageID:I

    if-ne v3, v4, :cond_7

    invoke-interface {v2}, Lcom/amazon/kindle/pagecurl/IMesh;->isFrontVisible()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1848
    invoke-interface {v2}, Lcom/amazon/kindle/pagecurl/IMesh;->getFrontImageIndex()I

    move-result v4

    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    .line 1849
    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/CurlView;->access$300(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    move-result-object v5

    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1400(Lcom/amazon/kindle/pagecurl/CurlView;)I

    move-result v6

    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1500(Lcom/amazon/kindle/pagecurl/CurlView;)I

    move-result v7

    iget-object v8, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    const/4 v9, 0x1

    move-object v3, v2

    .line 1848
    invoke-interface/range {v3 .. v9}, Lcom/amazon/kindle/pagecurl/IMesh;->setBitmap(ILcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;IILcom/amazon/kindle/pagecurl/CurlView;Z)V

    :cond_7
    if-eqz v2, :cond_6

    .line 1852
    invoke-interface {v2}, Lcom/amazon/kindle/pagecurl/IMesh;->getBackImageIndex()I

    move-result v3

    iget v4, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->val$pageID:I

    if-ne v3, v4, :cond_6

    invoke-interface {v2}, Lcom/amazon/kindle/pagecurl/IMesh;->isBackVisible()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1853
    invoke-interface {v2}, Lcom/amazon/kindle/pagecurl/IMesh;->getBackImageIndex()I

    move-result v4

    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    .line 1854
    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/CurlView;->access$300(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;

    move-result-object v5

    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1400(Lcom/amazon/kindle/pagecurl/CurlView;)I

    move-result v6

    iget-object v3, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v3}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1500(Lcom/amazon/kindle/pagecurl/CurlView;)I

    move-result v7

    iget-object v8, p0, Lcom/amazon/kindle/pagecurl/CurlView$13;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    const/4 v9, 0x1

    move-object v3, v2

    .line 1853
    invoke-interface/range {v3 .. v9}, Lcom/amazon/kindle/pagecurl/IMesh;->setBackBitmap(ILcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;IILcom/amazon/kindle/pagecurl/CurlView;Z)V

    goto :goto_0

    :cond_8
    return-void
.end method
