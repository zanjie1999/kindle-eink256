.class Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement$1;
.super Ljava/lang/Object;
.source "ConnectionEstablisherWithConnectivityEnforcement.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;->tryEnforceConnectivity()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement$1;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement$1;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;->access$100(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;)Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->waitForConnectivity()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
