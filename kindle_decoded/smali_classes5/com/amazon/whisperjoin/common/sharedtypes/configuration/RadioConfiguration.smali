.class public Lcom/amazon/whisperjoin/common/sharedtypes/configuration/RadioConfiguration;
.super Ljava/lang/Object;
.source "RadioConfiguration.java"


# instance fields
.field private final mConnectionFactory:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ConnectionFactory;

.field private final mDiscoveryService:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService;

.field private final mSupportedRadio:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService;Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/radios/ConnectionFactory;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 18
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 24
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/RadioConfiguration;->mDiscoveryService:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService;

    .line 25
    iput-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/RadioConfiguration;->mSupportedRadio:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/RadioConfiguration;->mConnectionFactory:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ConnectionFactory;

    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "connectionFactory can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "supportedRadio can not be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "discoveryService can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getConnectionFactory()Lcom/amazon/whisperjoin/common/sharedtypes/radios/ConnectionFactory;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/RadioConfiguration;->mConnectionFactory:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ConnectionFactory;

    return-object v0
.end method

.method public getDiscoveryService()Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/RadioConfiguration;->mDiscoveryService:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService;

    return-object v0
.end method

.method public getRadioType()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/RadioConfiguration;->mSupportedRadio:Ljava/lang/String;

    return-object v0
.end method
