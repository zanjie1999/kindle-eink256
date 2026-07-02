.class public Lcom/amazon/whispercloak/keygen/provider/EcdhKeyPairProvider;
.super Ljava/lang/Object;
.source "EcdhKeyPairProvider.java"

# interfaces
.implements Lcom/amazon/whispercloak/keygen/provider/KeyPairProvider;


# instance fields
.field private mKeyPairGenerator:Ljava/security/KeyPairGenerator;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispercloak/error/CryptoDependencyException;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "ECDH"

    const-string v1, "SC"

    .line 21
    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispercloak/keygen/provider/EcdhKeyPairProvider;->mKeyPairGenerator:Ljava/security/KeyPairGenerator;

    .line 22
    invoke-direct {p0}, Lcom/amazon/whispercloak/keygen/provider/EcdhKeyPairProvider;->getCurveSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 29
    new-instance v1, Lcom/amazon/whispercloak/error/CryptoDependencyException;

    invoke-direct {v1, v0}, Lcom/amazon/whispercloak/error/CryptoDependencyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 27
    new-instance v1, Lcom/amazon/whispercloak/error/CryptoDependencyException;

    invoke-direct {v1, v0}, Lcom/amazon/whispercloak/error/CryptoDependencyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 25
    new-instance v1, Lcom/amazon/whispercloak/error/CryptoDependencyException;

    invoke-direct {v1, v0}, Lcom/amazon/whispercloak/error/CryptoDependencyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getCurveSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2

    .line 34
    new-instance v0, Ljava/security/spec/ECGenParameterSpec;

    const-string v1, "P-256"

    invoke-direct {v0, v1}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public createNewKeyPair()Ljava/security/KeyPair;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/whispercloak/keygen/provider/EcdhKeyPairProvider;->mKeyPairGenerator:Ljava/security/KeyPairGenerator;

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method
