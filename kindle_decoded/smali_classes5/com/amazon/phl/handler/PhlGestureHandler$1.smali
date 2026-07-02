.class Lcom/amazon/phl/handler/PhlGestureHandler$1;
.super Ljava/lang/Object;
.source "PhlGestureHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/phl/handler/PhlGestureHandler;->onContentDecorationEvent(Lcom/amazon/kindle/krx/events/ContentDecorationEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/phl/handler/PhlGestureHandler;

.field final synthetic val$event:Lcom/amazon/kindle/krx/events/ContentDecorationEvent;

.field final synthetic val$phl:Lcom/amazon/phl/model/PopularHighlight;


# direct methods
.method constructor <init>(Lcom/amazon/phl/handler/PhlGestureHandler;Lcom/amazon/kindle/krx/events/ContentDecorationEvent;Lcom/amazon/phl/model/PopularHighlight;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amazon/phl/handler/PhlGestureHandler$1;->this$0:Lcom/amazon/phl/handler/PhlGestureHandler;

    iput-object p2, p0, Lcom/amazon/phl/handler/PhlGestureHandler$1;->val$event:Lcom/amazon/kindle/krx/events/ContentDecorationEvent;

    iput-object p3, p0, Lcom/amazon/phl/handler/PhlGestureHandler$1;->val$phl:Lcom/amazon/phl/model/PopularHighlight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/amazon/phl/handler/PhlGestureHandler$1;->this$0:Lcom/amazon/phl/handler/PhlGestureHandler;

    invoke-static {v0}, Lcom/amazon/phl/handler/PhlGestureHandler;->access$000(Lcom/amazon/phl/handler/PhlGestureHandler;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->setOverlaysVisible(ZZ)V

    .line 45
    iget-object v0, p0, Lcom/amazon/phl/handler/PhlGestureHandler$1;->this$0:Lcom/amazon/phl/handler/PhlGestureHandler;

    invoke-static {v0}, Lcom/amazon/phl/handler/PhlGestureHandler;->access$100(Lcom/amazon/phl/handler/PhlGestureHandler;)Lcom/amazon/phl/PopularHighlightsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/phl/handler/PhlGestureHandler$1;->val$event:Lcom/amazon/kindle/krx/events/ContentDecorationEvent;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/events/ContentDecorationEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/amazon/phl/handler/PhlGestureHandler$1;->val$event:Lcom/amazon/kindle/krx/events/ContentDecorationEvent;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/events/ContentDecorationEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/amazon/phl/handler/PhlGestureHandler$1;->val$phl:Lcom/amazon/phl/model/PopularHighlight;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/phl/PopularHighlightsManager;->showInfoBubble(IILcom/amazon/phl/model/PopularHighlight;)V

    return-void
.end method
