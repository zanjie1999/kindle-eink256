.class Lcom/amazon/phl/PopularHighlightsManager$1$1;
.super Ljava/lang/Object;
.source "PopularHighlightsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/phl/PopularHighlightsManager$1;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/phl/PopularHighlightsManager$1;


# direct methods
.method constructor <init>(Lcom/amazon/phl/PopularHighlightsManager$1;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/amazon/phl/PopularHighlightsManager$1$1;->this$1:Lcom/amazon/phl/PopularHighlightsManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/amazon/phl/PopularHighlightsManager$1$1;->this$1:Lcom/amazon/phl/PopularHighlightsManager$1;

    iget-object v0, v0, Lcom/amazon/phl/PopularHighlightsManager$1;->this$0:Lcom/amazon/phl/PopularHighlightsManager;

    invoke-static {v0}, Lcom/amazon/phl/PopularHighlightsManager;->access$500(Lcom/amazon/phl/PopularHighlightsManager;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/phl/PopularHighlightsManager$1$1;->this$1:Lcom/amazon/phl/PopularHighlightsManager$1;

    iget-object v1, v1, Lcom/amazon/phl/PopularHighlightsManager$1;->this$0:Lcom/amazon/phl/PopularHighlightsManager;

    invoke-static {v1}, Lcom/amazon/phl/PopularHighlightsManager;->access$400(Lcom/amazon/phl/PopularHighlightsManager;)Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V

    return-void
.end method
