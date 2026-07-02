.class Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement$2;
.super Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;
.source "ConnectionEstablisherWithConnectivityEnforcement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;->createWrapperToReleaseLock(Ljava/net/URLConnection;Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;)Ljava/net/URLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;

.field final synthetic val$lock:Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;Ljava/net/URL;Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement$2;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;

    iput-object p3, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement$2;->val$lock:Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;

    invoke-direct {p0, p2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;-><init>(Ljava/net/URL;)V

    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 2

    .line 132
    :try_start_0
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement$2;->val$lock:Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement$2;->val$lock:Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;->release()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 136
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement$2;->val$lock:Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement$2;->val$lock:Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;->release()V

    :cond_1
    throw v0
.end method
