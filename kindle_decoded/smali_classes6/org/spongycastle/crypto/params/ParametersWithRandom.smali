.class public Lorg/spongycastle/crypto/params/ParametersWithRandom;
.super Ljava/lang/Object;
.source "ParametersWithRandom.java"

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private parameters:Lorg/spongycastle/crypto/CipherParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p2, p0, Lorg/spongycastle/crypto/params/ParametersWithRandom;->random:Ljava/security/SecureRandom;

    .line 18
    iput-object p1, p0, Lorg/spongycastle/crypto/params/ParametersWithRandom;->parameters:Lorg/spongycastle/crypto/CipherParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/spongycastle/crypto/CipherParameters;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ParametersWithRandom;->parameters:Lorg/spongycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public getRandom()Ljava/security/SecureRandom;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ParametersWithRandom;->random:Ljava/security/SecureRandom;

    return-object v0
.end method
