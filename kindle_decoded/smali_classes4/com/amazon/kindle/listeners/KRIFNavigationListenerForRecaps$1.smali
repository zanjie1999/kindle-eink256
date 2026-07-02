.class Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps$1;
.super Ljava/lang/Object;
.source "KRIFNavigationListenerForRecaps.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;->onPostNavigation(Lcom/amazon/krf/platform/event/NavigationEndEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;

.field final synthetic val$event:Lcom/amazon/krf/platform/event/NavigationEndEvent;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;Lcom/amazon/krf/platform/event/NavigationEndEvent;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps$1;->this$0:Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;

    iput-object p2, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps$1;->val$event:Lcom/amazon/krf/platform/event/NavigationEndEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 63
    iget-object v0, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps$1;->val$event:Lcom/amazon/krf/platform/event/NavigationEndEvent;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/event/NavigationEvent;->isPagingTransition()Z

    move-result v0

    .line 64
    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->UNKNOWN:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    if-eqz v0, :cond_0

    .line 65
    iget-object v2, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps$1;->val$event:Lcom/amazon/krf/platform/event/NavigationEndEvent;

    invoke-virtual {v2}, Lcom/amazon/krf/platform/event/NavigationEndEvent;->getNavigationDirection()Lcom/amazon/krf/platform/event/NavigationDirection;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 66
    iget-object v1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps$1;->this$0:Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;

    iget-object v2, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps$1;->val$event:Lcom/amazon/krf/platform/event/NavigationEndEvent;

    invoke-static {v1, v2}, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;->access$000(Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;Lcom/amazon/krf/platform/event/NavigationEndEvent;)Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    move-result-object v1

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps$1;->this$0:Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;

    sget-object v3, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POST_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    iget-object v4, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps$1;->val$event:Lcom/amazon/krf/platform/event/NavigationEndEvent;

    invoke-virtual {v4}, Lcom/amazon/krf/platform/event/NavigationEvent;->getCurrentRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v4

    invoke-static {v2, v3, v0, v1, v4}, Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;->access$100(Lcom/amazon/kindle/listeners/KRIFNavigationListenerForRecaps;Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;ZLcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;Lcom/amazon/krf/platform/PositionRange;)V

    return-void
.end method
