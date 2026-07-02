.class public Lcom/amazon/whispersync/communication/ir/IrMasterImpl;
.super Ljava/lang/Object;
.source "IrMasterImpl.java"

# interfaces
.implements Lcom/amazon/whispersync/communication/ir/IrMaster;


# instance fields
.field private final mDomain:Ljava/lang/String;

.field private final mRealm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iput-object p1, p0, Lcom/amazon/whispersync/communication/ir/IrMasterImpl;->mDomain:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/amazon/whispersync/communication/ir/IrMasterImpl;->mRealm:Ljava/lang/String;

    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "realm is NULL or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "domain is NULL or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ir/IrMasterImpl;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ir/IrMasterImpl;->mRealm:Ljava/lang/String;

    return-object v0
.end method
