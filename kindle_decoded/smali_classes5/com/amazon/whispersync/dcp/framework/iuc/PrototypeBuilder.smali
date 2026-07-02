.class Lcom/amazon/whispersync/dcp/framework/iuc/PrototypeBuilder;
.super Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;
.source "PrototypeBuilder.java"


# instance fields
.field private mInstrumentedConnection:Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedConnection;

.field private final mPrototype:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionPrototype;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedConnection;Ljava/net/URL;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-direct {p0, p2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;-><init>(Ljava/net/URL;)V

    .line 15
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/PrototypeBuilder;->mInstrumentedConnection:Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedConnection;

    .line 16
    new-instance p1, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionPrototype;

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionPrototype;-><init>(Ljava/net/URL;)V

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/PrototypeBuilder;->mPrototype:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionPrototype;

    .line 17
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->putInnerConnection(Ljava/net/URLConnection;)V

    return-void
.end method


# virtual methods
.method protected onExecutionRequested()V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/PrototypeBuilder;->mInstrumentedConnection:Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedConnection;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/PrototypeBuilder;->mPrototype:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionPrototype;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedConnection;->establishConnection(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionPrototype;)V

    .line 30
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/PrototypeBuilder;->mInstrumentedConnection:Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedConnection;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->putInnerConnection(Ljava/net/URLConnection;)V

    return-void
.end method
