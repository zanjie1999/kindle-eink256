.class Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders$1;
.super Ljava/lang/Object;
.source "ConnectionEstablisherWithStandardHeaders.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->doEstablish(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;)Ljava/net/URLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;

.field final synthetic val$factory:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders$1;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders$1;->val$factory:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createConnection()Ljava/net/URLConnection;
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders$1;->val$factory:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;

    invoke-interface {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;->createConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders$1;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;

    invoke-static {v1, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->access$000(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;Ljava/net/URLConnection;)V

    return-object v0
.end method

.method public getTargetURL()Ljava/net/URL;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders$1;->val$factory:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;

    invoke-interface {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;->getTargetURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public populateConnectionParameters(Ljava/net/URLConnection;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders$1;->val$factory:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;->populateConnectionParameters(Ljava/net/URLConnection;)V

    .line 95
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders$1;->this$0:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;

    invoke-static {v0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;->access$000(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;Ljava/net/URLConnection;)V

    return-void
.end method
