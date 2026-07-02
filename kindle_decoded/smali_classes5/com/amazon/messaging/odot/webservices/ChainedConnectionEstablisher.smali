.class public abstract Lcom/amazon/messaging/odot/webservices/ChainedConnectionEstablisher;
.super Ljava/lang/Object;
.source "ChainedConnectionEstablisher.java"

# interfaces
.implements Lcom/amazon/messaging/odot/webservices/ConnectionEstablisher;


# instance fields
.field private nextEstablisher:Lcom/amazon/messaging/odot/webservices/ConnectionEstablisher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/ChainedConnectionEstablisher;->nextEstablisher:Lcom/amazon/messaging/odot/webservices/ConnectionEstablisher;

    return-void
.end method


# virtual methods
.method protected doEstablish(Lcom/amazon/messaging/odot/webservices/ConnectionFactory;)Ljava/net/URLConnection;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ChainedConnectionEstablisher;->nextEstablisher:Lcom/amazon/messaging/odot/webservices/ConnectionEstablisher;

    invoke-interface {v0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisher;->establish(Lcom/amazon/messaging/odot/webservices/ConnectionFactory;)Ljava/net/URLConnection;

    move-result-object p1

    return-object p1
.end method

.method public establish(Lcom/amazon/messaging/odot/webservices/ConnectionFactory;)Ljava/net/URLConnection;
    .locals 1

    if-eqz p1, :cond_1

    .line 25
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ChainedConnectionEstablisher;->nextEstablisher:Lcom/amazon/messaging/odot/webservices/ConnectionEstablisher;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0, p1}, Lcom/amazon/messaging/odot/webservices/ChainedConnectionEstablisher;->doEstablish(Lcom/amazon/messaging/odot/webservices/ConnectionFactory;)Ljava/net/URLConnection;

    move-result-object p1

    return-object p1

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Connection establisher was not provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEstablisher(Lcom/amazon/messaging/odot/webservices/ConnectionEstablisher;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 16
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ChainedConnectionEstablisher;->nextEstablisher:Lcom/amazon/messaging/odot/webservices/ConnectionEstablisher;

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
