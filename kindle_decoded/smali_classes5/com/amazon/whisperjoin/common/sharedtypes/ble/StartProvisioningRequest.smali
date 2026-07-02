.class public Lcom/amazon/whisperjoin/common/sharedtypes/ble/StartProvisioningRequest;
.super Ljava/lang/Object;
.source "StartProvisioningRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StartProvisioningRequest"


# instance fields
.field private mRequestID:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/StartProvisioningRequest;->mRequestID:I

    return-void
.end method

.method public static createRequest()Lcom/amazon/whisperjoin/common/sharedtypes/ble/StartProvisioningRequest;
    .locals 2

    .line 9
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/StartProvisioningRequest;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/StartProvisioningRequest;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getRequestID()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/StartProvisioningRequest;->mRequestID:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartProvisioningRequest [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/StartProvisioningRequest;->mRequestID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
