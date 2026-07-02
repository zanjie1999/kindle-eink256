.class public Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;
.super Ljava/io/IOException;
.source "BLETransportOperationError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;
    }
.end annotation


# instance fields
.field private final mFailureCause:Ljava/lang/Throwable;

.field private final mGattStatus:Ljava/lang/Integer;

.field private final mOperation:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0, v0, v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Integer;Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Integer;Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Integer;Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Integer;Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Integer;Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 79
    iput-object p3, p0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;->mGattStatus:Ljava/lang/Integer;

    .line 80
    iput-object p4, p0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;->mOperation:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    .line 84
    iput-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;->mFailureCause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, v0, p1, v0, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Integer;Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 108
    const-class v2, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 109
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;

    .line 110
    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;->mGattStatus:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;->mGattStatus:Ljava/lang/Integer;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;->mOperation:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    iget-object p1, p1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;->mOperation:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getGattStatus()Ljava/lang/Integer;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;->mGattStatus:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOperation()Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;->mOperation:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 116
    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;->mGattStatus:Ljava/lang/Integer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;->mOperation:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 121
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;->mGattStatus:Ljava/lang/Integer;

    const-string v2, "mGattStatus"

    .line 122
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;->mOperation:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    const-string v2, "mOperation"

    .line 123
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;->mFailureCause:Ljava/lang/Throwable;

    const-string v2, "mFailureCause"

    .line 124
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 125
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
