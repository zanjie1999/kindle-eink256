.class public Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer$HeaderSigningResult;
.super Ljava/lang/Object;
.source "AWS4Signer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HeaderSigningResult"
.end annotation


# instance fields
.field private final dateTime:Ljava/lang/String;

.field private final kSigning:[B

.field private final scope:Ljava/lang/String;

.field private final signature:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 0

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer$HeaderSigningResult;->dateTime:Ljava/lang/String;

    .line 385
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer$HeaderSigningResult;->scope:Ljava/lang/String;

    .line 386
    iput-object p3, p0, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer$HeaderSigningResult;->kSigning:[B

    .line 387
    iput-object p4, p0, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer$HeaderSigningResult;->signature:[B

    return-void
.end method


# virtual methods
.method public getDateTime()Ljava/lang/String;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer$HeaderSigningResult;->dateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getKSigning()[B
    .locals 4

    .line 399
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer$HeaderSigningResult;->kSigning:[B

    array-length v1, v0

    new-array v1, v1, [B

    .line 400
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer$HeaderSigningResult;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()[B
    .locals 4

    .line 405
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/auth/AWS4Signer$HeaderSigningResult;->signature:[B

    array-length v1, v0

    new-array v1, v1, [B

    .line 406
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
