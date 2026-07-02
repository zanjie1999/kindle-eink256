.class Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedConnection;
.super Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;
.source "InstrumentedConnection.java"


# instance fields
.field private final mConnectionEstablisher:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisher;

.field private final mLogger:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisher;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;-><init>(Ljava/net/URL;)V

    .line 30
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedConnection;->mConnectionEstablisher:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisher;

    .line 31
    iput-object p3, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedConnection;->mLogger:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

    .line 32
    new-instance p2, Lcom/amazon/whispersync/dcp/framework/iuc/PrototypeBuilder;

    invoke-direct {p2, p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/PrototypeBuilder;-><init>(Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedConnection;Ljava/net/URL;)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->putInnerConnection(Ljava/net/URLConnection;)V

    return-void
.end method


# virtual methods
.method public establishConnection(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionPrototype;)V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getInnerConnection()Ljava/net/URLConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    .line 41
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 42
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedConnection;->mLogger:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;->logConnectionAttempt(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedConnection;->mConnectionEstablisher:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisher;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisher;->establish(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;)Ljava/net/URLConnection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->putInnerConnection(Ljava/net/URLConnection;)V

    return-void
.end method
