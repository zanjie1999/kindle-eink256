.class Lcom/amazon/kcp/redding/ConnectivityAwareAlertActivity$1;
.super Ljava/lang/Object;
.source "ConnectivityAwareAlertActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/redding/ConnectivityAwareAlertActivity;->onConnectivityChanged(Lcom/amazon/kindle/krx/events/ConnectivityChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/redding/ConnectivityAwareAlertActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/redding/ConnectivityAwareAlertActivity;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/amazon/kcp/redding/ConnectivityAwareAlertActivity$1;->this$0:Lcom/amazon/kcp/redding/ConnectivityAwareAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/amazon/kcp/redding/ConnectivityAwareAlertActivity$1;->this$0:Lcom/amazon/kcp/redding/ConnectivityAwareAlertActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/redding/ConnectivityAwareAlertActivity$1;->this$0:Lcom/amazon/kcp/redding/ConnectivityAwareAlertActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/redding/ConnectivityAwareAlertActivity$1;->this$0:Lcom/amazon/kcp/redding/ConnectivityAwareAlertActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/redding/ConnectivityAwareAlertActivity$1;->this$0:Lcom/amazon/kcp/redding/ConnectivityAwareAlertActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
