.class public Lcom/amazon/whisperjoin/provisionerSDK/devices/security/UnauthenticatedEcdheTrustNegotiator;
.super Lcom/amazon/whisperjoin/provisionerSDK/devices/security/BaseEcdheTrustNegotiator;
.source "UnauthenticatedEcdheTrustNegotiator.java"

# interfaces
.implements Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiator;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/BaseEcdheTrustNegotiator;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;)V

    return-void
.end method


# virtual methods
.method public start(Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;)Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/EncryptionProvider;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/amazon/whispercloak/SecureChannelImpl;

    invoke-direct {v0}, Lcom/amazon/whispercloak/SecureChannelImpl;-><init>()V

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->EXCHANGE_ECDHE_KEY:Lcom/amazon/whisperbridge/constants/Command;

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/BaseEcdheTrustNegotiator;->start(Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;Lcom/amazon/whispercloak/SecureChannel;Lcom/amazon/whisperbridge/constants/Command;)Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/EncryptionProvider;

    move-result-object p1

    return-object p1
.end method
