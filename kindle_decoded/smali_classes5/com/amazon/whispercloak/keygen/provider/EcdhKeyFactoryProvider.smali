.class public Lcom/amazon/whispercloak/keygen/provider/EcdhKeyFactoryProvider;
.super Ljava/lang/Object;
.source "EcdhKeyFactoryProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyFactory()Ljava/security/KeyFactory;
    .locals 2

    :try_start_0
    const-string v0, "ECDH"

    const-string v1, "SC"

    .line 13
    invoke-static {v0, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Lcom/amazon/whispercloak/error/CryptoDependencyException;

    invoke-direct {v1, v0}, Lcom/amazon/whispercloak/error/CryptoDependencyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 15
    new-instance v1, Lcom/amazon/whispercloak/error/CryptoDependencyException;

    invoke-direct {v1, v0}, Lcom/amazon/whispercloak/error/CryptoDependencyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
