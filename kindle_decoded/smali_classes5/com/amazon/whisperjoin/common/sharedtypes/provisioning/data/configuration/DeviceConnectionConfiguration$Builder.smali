.class public Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration$Builder;
.super Ljava/lang/Object;
.source "DeviceConnectionConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private pin:Ljava/lang/String;

.field private publicKey:Ljava/lang/String;

.field private trustState:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;
    .locals 5

    .line 90
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration$Builder;->trustState:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    if-eqz v0, :cond_0

    .line 94
    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration$Builder;->pin:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration$Builder;->publicKey:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration$1;)V

    return-object v1

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "trustState can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withPin(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration$Builder;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration$Builder;->pin:Ljava/lang/String;

    return-object p0
.end method

.method public withPublicKey(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration$Builder;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration$Builder;->publicKey:Ljava/lang/String;

    return-object p0
.end method

.method public withTrustState(Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration$Builder;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration$Builder;->trustState:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    return-object p0
.end method
