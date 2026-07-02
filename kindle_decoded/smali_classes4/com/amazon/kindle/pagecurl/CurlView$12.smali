.class Lcom/amazon/kindle/pagecurl/CurlView$12;
.super Ljava/lang/Object;
.source "CurlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/pagecurl/CurlView;->hideLeftRightPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/pagecurl/CurlView;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/pagecurl/CurlView;)V
    .locals 0

    .line 1783
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView$12;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1786
    invoke-static {}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Curl View - hideLeftRightPage - Processing the hide of the left/right page"

    .line 1787
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/utils/PageCurlLog;->log(Ljava/lang/String;)V

    .line 1788
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$12;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$700(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->notifyHideLeftRightPage()V

    .line 1789
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$12;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$700(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView$12;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1200(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/IMesh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->removeCurlMesh(Lcom/amazon/kindle/pagecurl/IMesh;)V

    .line 1790
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$12;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$700(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView$12;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1300(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/IMesh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->removeCurlMesh(Lcom/amazon/kindle/pagecurl/IMesh;)V

    .line 1791
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$12;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->requestRender()V

    return-void
.end method
