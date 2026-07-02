.class public Lcom/amazon/whispercloak/SecureChannelImpl;
.super Ljava/lang/Object;
.source "SecureChannelImpl.java"

# interfaces
.implements Lcom/amazon/whispercloak/SecureChannel;


# instance fields
.field private final keyFactory:Ljava/security/KeyFactory;

.field private final mCipher:Lcom/amazon/whispercloak/cipher/AesGcmCipher;

.field private final mKeyPair:Ljava/security/KeyPair;

.field private final mNonceSet:Ljava/util/HashSet;

.field private final mPemPublicKeyCoder:Lcom/amazon/whispercloak/keygen/PemPublicKeyCoder;

.field private mSharedSecret:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 38
    invoke-static {}, Lcom/amazon/whispercloak/CryptoInitializer;->initialize()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/amazon/whispercloak/keygen/provider/EcdhKeyPairProvider;

    invoke-direct {v0}, Lcom/amazon/whispercloak/keygen/provider/EcdhKeyPairProvider;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/whispercloak/SecureChannelImpl;-><init>(Lcom/amazon/whispercloak/keygen/provider/KeyPairProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispercloak/keygen/provider/KeyPairProvider;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/amazon/whispercloak/keygen/provider/EcdhKeyFactoryProvider;

    invoke-direct {v0}, Lcom/amazon/whispercloak/keygen/provider/EcdhKeyFactoryProvider;-><init>()V

    invoke-virtual {v0}, Lcom/amazon/whispercloak/keygen/provider/EcdhKeyFactoryProvider;->getKeyFactory()Ljava/security/KeyFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispercloak/SecureChannelImpl;->keyFactory:Ljava/security/KeyFactory;

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/amazon/whispercloak/SecureChannelImpl;->mSharedSecret:Ljavax/crypto/SecretKey;

    .line 47
    invoke-interface {p1}, Lcom/amazon/whispercloak/keygen/provider/KeyPairProvider;->createNewKeyPair()Ljava/security/KeyPair;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispercloak/SecureChannelImpl;->mKeyPair:Ljava/security/KeyPair;

    .line 48
    new-instance p1, Lcom/amazon/whispercloak/keygen/PemPublicKeyCoder;

    invoke-direct {p1}, Lcom/amazon/whispercloak/keygen/PemPublicKeyCoder;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispercloak/SecureChannelImpl;->mPemPublicKeyCoder:Lcom/amazon/whispercloak/keygen/PemPublicKeyCoder;

    .line 49
    new-instance p1, Lcom/amazon/whispercloak/cipher/AesGcmCipher;

    invoke-direct {p1}, Lcom/amazon/whispercloak/cipher/AesGcmCipher;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispercloak/SecureChannelImpl;->mCipher:Lcom/amazon/whispercloak/cipher/AesGcmCipher;

    .line 50
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispercloak/SecureChannelImpl;->mNonceSet:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public getCipher()Lcom/amazon/whispercloak/cipher/AesGcmCipher;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/whispercloak/SecureChannelImpl;->mCipher:Lcom/amazon/whispercloak/cipher/AesGcmCipher;

    return-object v0
.end method
