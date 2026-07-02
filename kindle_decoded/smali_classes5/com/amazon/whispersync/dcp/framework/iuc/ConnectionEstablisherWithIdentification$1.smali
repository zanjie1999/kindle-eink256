.class Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification$1;
.super Ljava/lang/Object;
.source "ConnectionEstablisherWithIdentification.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification;->doEstablish(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;)Ljava/net/URLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification;

.field final synthetic val$factory:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification$1;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification$1;->val$factory:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createConnection()Ljava/net/URLConnection;
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification$1;->val$factory:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;

    invoke-interface {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;->createConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification$1;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification;

    invoke-static {v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification;->access$100(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Amzn-RequestId"

    invoke-virtual {v0, v2, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTargetURL()Ljava/net/URL;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification$1;->val$factory:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;

    invoke-interface {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;->getTargetURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public populateConnectionParameters(Ljava/net/URLConnection;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification$1;->val$factory:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;->populateConnectionParameters(Ljava/net/URLConnection;)V

    .line 64
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification$1;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification;->access$100(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-Amzn-RequestId"

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
