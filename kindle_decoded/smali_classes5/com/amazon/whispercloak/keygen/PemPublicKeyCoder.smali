.class public Lcom/amazon/whispercloak/keygen/PemPublicKeyCoder;
.super Ljava/lang/Object;
.source "PemPublicKeyCoder.java"


# instance fields
.field private mKeyFactory:Ljava/security/KeyFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/amazon/whispercloak/keygen/provider/EcdhKeyFactoryProvider;

    invoke-direct {v0}, Lcom/amazon/whispercloak/keygen/provider/EcdhKeyFactoryProvider;-><init>()V

    invoke-virtual {v0}, Lcom/amazon/whispercloak/keygen/provider/EcdhKeyFactoryProvider;->getKeyFactory()Ljava/security/KeyFactory;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whispercloak/keygen/PemPublicKeyCoder;-><init>(Ljava/security/KeyFactory;)V

    return-void
.end method

.method constructor <init>(Ljava/security/KeyFactory;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/whispercloak/keygen/PemPublicKeyCoder;->mKeyFactory:Ljava/security/KeyFactory;

    return-void
.end method
