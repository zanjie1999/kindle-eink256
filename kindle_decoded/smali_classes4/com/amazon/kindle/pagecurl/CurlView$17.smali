.class Lcom/amazon/kindle/pagecurl/CurlView$17;
.super Ljava/lang/Object;
.source "CurlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/pagecurl/CurlView;->setBackgroundColor(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/pagecurl/CurlView;

.field final synthetic val$color:I


# direct methods
.method constructor <init>(Lcom/amazon/kindle/pagecurl/CurlView;I)V
    .locals 0

    .line 2204
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView$17;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    iput p2, p0, Lcom/amazon/kindle/pagecurl/CurlView$17;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2207
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$17;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$700(Lcom/amazon/kindle/pagecurl/CurlView;)Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kindle/pagecurl/CurlView$17;->val$color:I

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;->setBackgroundColor(I)V

    .line 2208
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$17;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->requestRender()V

    return-void
.end method
