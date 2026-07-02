.class public Lcom/amazon/whispercloak/CryptoInitializer;
.super Ljava/lang/Object;
.source "CryptoInitializer.java"


# static fields
.field private static mInitialized:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static initialize()V
    .locals 1

    .line 17
    sget-boolean v0, Lcom/amazon/whispercloak/CryptoInitializer;->mInitialized:Z

    if-nez v0, :cond_0

    .line 18
    invoke-static {}, Lcom/amazon/whispercloak/random/PRNGFixes;->apply()V

    .line 19
    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const/4 v0, 0x1

    .line 20
    sput-boolean v0, Lcom/amazon/whispercloak/CryptoInitializer;->mInitialized:Z

    :cond_0
    return-void
.end method
