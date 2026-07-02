.class Lcom/amazon/kcp/oob/LandingActivityHelper$5;
.super Ljava/lang/Object;
.source "LandingActivityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/oob/LandingActivityHelper;->asyncShowFtueSyncScreenIfNecessary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/oob/LandingActivityHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/oob/LandingActivityHelper;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/amazon/kcp/oob/LandingActivityHelper$5;->this$0:Lcom/amazon/kcp/oob/LandingActivityHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingActivityHelper$5;->this$0:Lcom/amazon/kcp/oob/LandingActivityHelper;

    invoke-static {v0}, Lcom/amazon/kcp/oob/LandingActivityHelper;->access$000(Lcom/amazon/kcp/oob/LandingActivityHelper;)Lcom/amazon/kcp/redding/ReddingActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/LibraryActivityUtils;->showLoadingScreenIfNeeded(Landroid/app/Activity;)V

    .line 232
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingActivityHelper$5;->this$0:Lcom/amazon/kcp/oob/LandingActivityHelper;

    invoke-static {v0}, Lcom/amazon/kcp/oob/LandingActivityHelper;->access$100(Lcom/amazon/kcp/oob/LandingActivityHelper;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/event/FTUELoadingCompleteEvent;

    invoke-direct {v1}, Lcom/amazon/kindle/event/FTUELoadingCompleteEvent;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
