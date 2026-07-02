.class Lcom/amazon/kindle/pagecurl/CurlView$4;
.super Ljava/lang/Object;
.source "CurlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/pagecurl/CurlView;->setViewMode(Lcom/amazon/kindle/pagecurl/ViewMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/pagecurl/CurlView;

.field final synthetic val$viewMode:Lcom/amazon/kindle/pagecurl/ViewMode;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/pagecurl/CurlView;Lcom/amazon/kindle/pagecurl/ViewMode;)V
    .locals 0

    .line 1059
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView$4;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    iput-object p2, p0, Lcom/amazon/kindle/pagecurl/CurlView$4;->val$viewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1062
    sget-object v0, Lcom/amazon/kindle/pagecurl/CurlView$18;->$SwitchMap$com$amazon$kindle$pagecurl$ViewMode:[I

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView$4;->val$viewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$4;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView$4;->val$viewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    invoke-static {v0, v1}, Lcom/amazon/kindle/pagecurl/CurlView;->access$502(Lcom/amazon/kindle/pagecurl/CurlView;Lcom/amazon/kindle/pagecurl/ViewMode;)Lcom/amazon/kindle/pagecurl/ViewMode;

    .line 1069
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$4;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$700(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView$4;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/CurlView;->access$500(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/ViewMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->setViewMode(Lcom/amazon/kindle/pagecurl/ViewMode;)V

    goto :goto_0

    .line 1064
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$4;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView$4;->val$viewMode:Lcom/amazon/kindle/pagecurl/ViewMode;

    invoke-static {v0, v1}, Lcom/amazon/kindle/pagecurl/CurlView;->access$502(Lcom/amazon/kindle/pagecurl/CurlView;Lcom/amazon/kindle/pagecurl/ViewMode;)Lcom/amazon/kindle/pagecurl/ViewMode;

    .line 1065
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$4;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$700(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurlView$4;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/CurlView;->access$500(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/ViewMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->setViewMode(Lcom/amazon/kindle/pagecurl/ViewMode;)V

    .line 1072
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$4;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$800(Lcom/amazon/kindle/pagecurl/CurlView;)V

    return-void
.end method
