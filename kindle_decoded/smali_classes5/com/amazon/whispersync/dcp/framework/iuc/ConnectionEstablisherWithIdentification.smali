.class final Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification;
.super Lcom/amazon/whispersync/dcp/framework/iuc/ChainedConnectionEstablisher;
.source "ConnectionEstablisherWithIdentification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification$Factory;
    }
.end annotation


# instance fields
.field private final mIdentifier:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ChainedConnectionEstablisher;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification;->mIdentifier:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification;)Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification;->mIdentifier:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected doEstablish(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;)Ljava/net/URLConnection;
    .locals 1

    .line 44
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification$1;-><init>(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;)V

    invoke-super {p0, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ChainedConnectionEstablisher;->doEstablish(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;)Ljava/net/URLConnection;

    move-result-object p1

    return-object p1
.end method
