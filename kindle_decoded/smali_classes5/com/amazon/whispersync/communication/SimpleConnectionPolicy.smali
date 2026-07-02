.class public Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;
.super Ljava/lang/Object;
.source "SimpleConnectionPolicy.java"

# interfaces
.implements Lamazon/whispersync/communication/connection/ConnectionPolicy;


# instance fields
.field protected mCompressionOption:Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;

.field protected mIsAnonymousCredentialsAllowed:Z

.field protected mIsClearText:Z

.field protected mIsInstanceLocked:Z

.field protected mIsLowLatencyNecessary:Z

.field protected mIsRequestResponseOnly:Z

.field protected mIsRoamingAllowed:Z

.field protected mIsShortLived:Z

.field protected mIsWiFiNecessary:Z

.field protected mPriority:Lamazon/whispersync/communication/connection/Priority;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsRoamingAllowed:Z

    .line 49
    iput-boolean v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsShortLived:Z

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsLowLatencyNecessary:Z

    .line 51
    iput-boolean v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsRequestResponseOnly:Z

    .line 52
    sget-object v1, Lamazon/whispersync/communication/connection/Priority;->PRIORITY_NORMAL:Lamazon/whispersync/communication/connection/Priority;

    iput-object v1, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mPriority:Lamazon/whispersync/communication/connection/Priority;

    .line 53
    iput-boolean v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsInstanceLocked:Z

    .line 54
    iput-boolean v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsClearText:Z

    .line 55
    iput-boolean v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsWiFiNecessary:Z

    .line 56
    iput-boolean v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsAnonymousCredentialsAllowed:Z

    .line 57
    sget-object v0, Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;->ALLOWED:Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;

    iput-object v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mCompressionOption:Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;

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

    if-eqz p1, :cond_5

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 158
    :cond_1
    check-cast p1, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;

    .line 160
    iget-boolean v2, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsRoamingAllowed:Z

    iget-boolean v3, p1, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsRoamingAllowed:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsShortLived:Z

    iget-boolean v3, p1, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsShortLived:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsLowLatencyNecessary:Z

    iget-boolean v3, p1, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsLowLatencyNecessary:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsRequestResponseOnly:Z

    iget-boolean v3, p1, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsRequestResponseOnly:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsInstanceLocked:Z

    iget-boolean v3, p1, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsInstanceLocked:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsClearText:Z

    iget-boolean v3, p1, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsClearText:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsWiFiNecessary:Z

    iget-boolean v3, p1, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsWiFiNecessary:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsAnonymousCredentialsAllowed:Z

    iget-boolean v3, p1, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsAnonymousCredentialsAllowed:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mPriority:Lamazon/whispersync/communication/connection/Priority;

    iget-object v3, p1, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mPriority:Lamazon/whispersync/communication/connection/Priority;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mCompressionOption:Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mCompressionOption:Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mCompressionOption:Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;

    if-eqz v2, :cond_3

    iget-object p1, p1, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mCompressionOption:Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public getCompressionOption()Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mCompressionOption:Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;

    return-object v0
.end method

.method public getPriority()Lamazon/whispersync/communication/connection/Priority;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mPriority:Lamazon/whispersync/communication/connection/Priority;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 176
    iget-boolean v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsRoamingAllowed:Z

    const/16 v1, 0xd9

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 177
    iget-boolean v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsShortLived:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 178
    iget-boolean v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsLowLatencyNecessary:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 179
    iget-boolean v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsRequestResponseOnly:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 180
    iget-boolean v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsInstanceLocked:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 181
    iget-object v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mCompressionOption:Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 182
    iget-boolean v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsClearText:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 183
    iget-boolean v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsWiFiNecessary:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 184
    iget-boolean v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsAnonymousCredentialsAllowed:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 185
    iget-object v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mPriority:Lamazon/whispersync/communication/connection/Priority;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public isAnonymousCredentialsAllowed()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsAnonymousCredentialsAllowed:Z

    return v0
.end method

.method public isClearText()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsClearText:Z

    return v0
.end method

.method public isInstanceLocked()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsInstanceLocked:Z

    return v0
.end method

.method public isLowLatencyNecessary()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsLowLatencyNecessary:Z

    return v0
.end method

.method public isRequestResponseOnly()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsRequestResponseOnly:Z

    return v0
.end method

.method public isRoamingAllowed()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsRoamingAllowed:Z

    return v0
.end method

.method public isShortLived()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsShortLived:Z

    return v0
.end method

.method public isWiFiNecessary()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsWiFiNecessary:Z

    return v0
.end method

.method public setCompressionOption(Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mCompressionOption:Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;

    return-void
.end method

.method public setIsAnonymousCredentialsAllowed(Z)V
    .locals 0

    .line 146
    iput-boolean p1, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsAnonymousCredentialsAllowed:Z

    return-void
.end method

.method public setIsClearText(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsClearText:Z

    return-void
.end method

.method public setIsInstanceLocked(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsInstanceLocked:Z

    return-void
.end method

.method public setIsLowLatencyNecessary(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsLowLatencyNecessary:Z

    return-void
.end method

.method public setIsRequestResponseOnly(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsRequestResponseOnly:Z

    return-void
.end method

.method public setIsRoamingAllowed(Z)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsRoamingAllowed:Z

    return-void
.end method

.method public setIsShortLived(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsShortLived:Z

    return-void
.end method

.method public setIsWiFiNecessary(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsWiFiNecessary:Z

    return-void
.end method

.method public setPriority(Lamazon/whispersync/communication/connection/Priority;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mPriority:Lamazon/whispersync/communication/connection/Priority;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{ Roaming: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsRoamingAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ShortLived: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsShortLived:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", LowLatency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsLowLatencyNecessary:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", RequestResponseOnly: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsRequestResponseOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mPriority:Lamazon/whispersync/communication/connection/Priority;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", CompressionOption: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mCompressionOption:Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", IsClearText: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsClearText:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", IsWiFiNecessary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsWiFiNecessary:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", IsAnonymousCredentialsAllowed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicy;->mIsAnonymousCredentialsAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
