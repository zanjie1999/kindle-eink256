.class public Lorg/spongycastle/crypto/params/RC2Parameters;
.super Ljava/lang/Object;
.source "RC2Parameters.java"

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private bits:I

.field private key:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/params/RC2Parameters;->key:[B

    .line 22
    iput p2, p0, Lorg/spongycastle/crypto/params/RC2Parameters;->bits:I

    .line 24
    array-length p2, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
