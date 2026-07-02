.class public interface abstract Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiator;
.super Ljava/lang/Object;
.source "TrustNegotiator.java"


# virtual methods
.method public abstract start(Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;)Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/EncryptionProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;
        }
    .end annotation
.end method
