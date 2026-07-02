.class abstract Lcom/amazon/whispersync/dcp/framework/iuc/ChainedConnectionEstablisher;
.super Ljava/lang/Object;
.source "ChainedConnectionEstablisher.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisher;


# instance fields
.field private mNextEstablisher:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisher;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ChainedConnectionEstablisher;->mNextEstablisher:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisher;

    return-void
.end method


# virtual methods
.method protected doEstablish(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;)Ljava/net/URLConnection;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ChainedConnectionEstablisher;->mNextEstablisher:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisher;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisher;->establish(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;)Ljava/net/URLConnection;

    move-result-object p1

    return-object p1
.end method

.method public final establish(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;)Ljava/net/URLConnection;
    .locals 1

    if-eqz p1, :cond_1

    .line 28
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ChainedConnectionEstablisher;->mNextEstablisher:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisher;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ChainedConnectionEstablisher;->doEstablish(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;)Ljava/net/URLConnection;

    move-result-object p1

    return-object p1

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Connection establisher was not provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setEstablisher(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisher;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 17
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ChainedConnectionEstablisher;->mNextEstablisher:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisher;

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
