.class Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$1;
.super Ljava/lang/Object;
.source "ConnectivityEnforcer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->blockForConnectionTask()Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->access$100(Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;)Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;

    invoke-static {v1}, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->access$200(Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/amazon/whispersync/dcp/framework/ConnectivityUtils;->isConnected(Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    .line 113
    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;

    invoke-static {v3}, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->access$200(Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Network with type %d is already connected"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->access$400(Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->access$500(Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 123
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
