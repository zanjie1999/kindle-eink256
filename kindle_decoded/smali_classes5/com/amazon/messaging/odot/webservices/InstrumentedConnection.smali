.class public Lcom/amazon/messaging/odot/webservices/InstrumentedConnection;
.super Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;
.source "InstrumentedConnection.java"


# instance fields
.field private connectionEstablisher:Lcom/amazon/messaging/odot/webservices/ConnectionEstablisher;

.field private mLogger:Lcom/amazon/messaging/odot/webservices/ConnectionLogger;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lcom/amazon/messaging/odot/webservices/ConnectionEstablisher;Lcom/amazon/messaging/odot/webservices/ConnectionLogger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;-><init>(Ljava/net/URL;)V

    .line 28
    iput-object p2, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedConnection;->connectionEstablisher:Lcom/amazon/messaging/odot/webservices/ConnectionEstablisher;

    .line 29
    iput-object p3, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedConnection;->mLogger:Lcom/amazon/messaging/odot/webservices/ConnectionLogger;

    .line 30
    new-instance p2, Lcom/amazon/messaging/odot/webservices/PrototypeBuilder;

    invoke-direct {p2, p0, p1}, Lcom/amazon/messaging/odot/webservices/PrototypeBuilder;-><init>(Lcom/amazon/messaging/odot/webservices/InstrumentedConnection;Ljava/net/URL;)V

    .line 31
    invoke-virtual {p0, p2}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->putInnerConnection(Ljava/net/URLConnection;)V

    return-void
.end method


# virtual methods
.method public establishConnection(Lcom/amazon/messaging/odot/webservices/ConnectionPrototype;)V
    .locals 2

    .line 35
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->getInnerConnection()Ljava/net/URLConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    .line 37
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 38
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedConnection;->mLogger:Lcom/amazon/messaging/odot/webservices/ConnectionLogger;

    invoke-virtual {p1}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/messaging/odot/webservices/ConnectionLogger;->logConnectionAttempt(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedConnection;->connectionEstablisher:Lcom/amazon/messaging/odot/webservices/ConnectionEstablisher;

    invoke-interface {v0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisher;->establish(Lcom/amazon/messaging/odot/webservices/ConnectionFactory;)Ljava/net/URLConnection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->putInnerConnection(Ljava/net/URLConnection;)V

    return-void
.end method
