.class public Lcom/amazon/whispercloak/random/SecureRandomProvider;
.super Ljava/lang/Object;
.source "SecureRandomProvider.java"


# static fields
.field private static mInstance:Lcom/amazon/whispercloak/random/SecureRandomProvider;


# instance fields
.field private final mSecureRandom:Ljava/security/SecureRandom;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispercloak/random/SecureRandomProvider;->mSecureRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method public static getInstance()Ljava/security/SecureRandom;
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/whispercloak/random/SecureRandomProvider;->mInstance:Lcom/amazon/whispercloak/random/SecureRandomProvider;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/amazon/whispercloak/random/SecureRandomProvider;

    invoke-direct {v0}, Lcom/amazon/whispercloak/random/SecureRandomProvider;-><init>()V

    sput-object v0, Lcom/amazon/whispercloak/random/SecureRandomProvider;->mInstance:Lcom/amazon/whispercloak/random/SecureRandomProvider;

    .line 21
    :cond_0
    sget-object v0, Lcom/amazon/whispercloak/random/SecureRandomProvider;->mInstance:Lcom/amazon/whispercloak/random/SecureRandomProvider;

    iget-object v0, v0, Lcom/amazon/whispercloak/random/SecureRandomProvider;->mSecureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method
