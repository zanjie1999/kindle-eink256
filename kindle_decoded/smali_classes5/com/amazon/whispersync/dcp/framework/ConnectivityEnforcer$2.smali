.class Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$2;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityEnforcer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->getConnectivityStateReceiver(Ljava/util/concurrent/CountDownLatch;)Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$2;->this$0:Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 159
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$2;->this$0:Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;

    invoke-static {p1}, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->access$100(Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;)Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$2;->this$0:Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;

    invoke-static {p2}, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->access$200(Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/amazon/whispersync/dcp/framework/ConnectivityUtils;->isConnected(Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 161
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$2;->this$0:Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->access$200(Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p2

    const-string p2, "Connection with type %d is up."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->access$300()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method
