.class public Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithIdentification;
.super Lcom/amazon/messaging/odot/webservices/ChainedConnectionEstablisher;
.source "ConnectionEstablisherWithIdentification.java"


# instance fields
.field private final mIdentifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ChainedConnectionEstablisher;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithIdentification;->mIdentifier:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithIdentification;)Ljava/lang/String;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithIdentification;->mIdentifier:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected doEstablish(Lcom/amazon/messaging/odot/webservices/ConnectionFactory;)Ljava/net/URLConnection;
    .locals 1

    .line 15
    new-instance v0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithIdentification$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithIdentification$1;-><init>(Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithIdentification;Lcom/amazon/messaging/odot/webservices/ConnectionFactory;)V

    invoke-super {p0, v0}, Lcom/amazon/messaging/odot/webservices/ChainedConnectionEstablisher;->doEstablish(Lcom/amazon/messaging/odot/webservices/ConnectionFactory;)Ljava/net/URLConnection;

    move-result-object p1

    return-object p1
.end method
