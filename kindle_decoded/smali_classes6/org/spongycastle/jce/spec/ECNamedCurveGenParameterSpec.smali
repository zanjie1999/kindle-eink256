.class public Lorg/spongycastle/jce/spec/ECNamedCurveGenParameterSpec;
.super Ljava/lang/Object;
.source "ECNamedCurveGenParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private name:Ljava/lang/String;


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/spongycastle/jce/spec/ECNamedCurveGenParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
