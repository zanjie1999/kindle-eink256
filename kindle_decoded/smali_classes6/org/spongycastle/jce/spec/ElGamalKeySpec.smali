.class public Lorg/spongycastle/jce/spec/ElGamalKeySpec;
.super Ljava/lang/Object;
.source "ElGamalKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private spec:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;


# virtual methods
.method public getParams()Lorg/spongycastle/jce/spec/ElGamalParameterSpec;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/spongycastle/jce/spec/ElGamalKeySpec;->spec:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    return-object v0
.end method
