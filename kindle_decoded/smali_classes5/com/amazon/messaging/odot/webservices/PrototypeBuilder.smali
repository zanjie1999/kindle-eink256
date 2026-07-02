.class public Lcom/amazon/messaging/odot/webservices/PrototypeBuilder;
.super Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;
.source "PrototypeBuilder.java"


# instance fields
.field private final connectionPrototype:Lcom/amazon/messaging/odot/webservices/ConnectionPrototype;

.field private instrumentedConnection:Lcom/amazon/messaging/odot/webservices/InstrumentedConnection;


# direct methods
.method public constructor <init>(Lcom/amazon/messaging/odot/webservices/InstrumentedConnection;Ljava/net/URL;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-direct {p0, p2}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;-><init>(Ljava/net/URL;)V

    .line 15
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/PrototypeBuilder;->instrumentedConnection:Lcom/amazon/messaging/odot/webservices/InstrumentedConnection;

    .line 16
    new-instance p1, Lcom/amazon/messaging/odot/webservices/ConnectionPrototype;

    invoke-direct {p1, p2}, Lcom/amazon/messaging/odot/webservices/ConnectionPrototype;-><init>(Ljava/net/URL;)V

    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/PrototypeBuilder;->connectionPrototype:Lcom/amazon/messaging/odot/webservices/ConnectionPrototype;

    .line 17
    invoke-virtual {p0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->putInnerConnection(Ljava/net/URLConnection;)V

    return-void
.end method


# virtual methods
.method protected onExecutionRequested()V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/PrototypeBuilder;->instrumentedConnection:Lcom/amazon/messaging/odot/webservices/InstrumentedConnection;

    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/PrototypeBuilder;->connectionPrototype:Lcom/amazon/messaging/odot/webservices/ConnectionPrototype;

    invoke-virtual {v0, v1}, Lcom/amazon/messaging/odot/webservices/InstrumentedConnection;->establishConnection(Lcom/amazon/messaging/odot/webservices/ConnectionPrototype;)V

    .line 29
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/PrototypeBuilder;->instrumentedConnection:Lcom/amazon/messaging/odot/webservices/InstrumentedConnection;

    invoke-virtual {p0, v0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->putInnerConnection(Ljava/net/URLConnection;)V

    return-void
.end method
