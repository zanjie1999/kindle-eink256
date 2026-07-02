.class public final Lamazon/whispersync/communication/connection/Policy;
.super Ljava/lang/Object;
.source "Policy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamazon/whispersync/communication/connection/Policy$Builder;
    }
.end annotation


# static fields
.field public static final ONE_SHOT:Lamazon/whispersync/communication/connection/Policy;


# instance fields
.field private final mCompressionOption:Lamazon/whispersync/communication/connection/CompressionOption;

.field private final mIsAnonymousCredentialsAllowed:Z

.field private final mIsClearText:Z

.field private final mIsDedicated:Z

.field private final mIsLowLatencyNecessary:Z

.field private final mIsRequestResponseOnly:Z

.field private final mIsWiFiNecessary:Z

.field private final mKeepAlive:Lamazon/whispersync/communication/connection/KeepAlive;

.field private final mPriority:Lamazon/whispersync/communication/connection/Priority;

.field private final mPurpose:Lamazon/whispersync/communication/connection/Purpose;

.field private final mReconnectOnFailure:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-direct {v0}, Lamazon/whispersync/communication/connection/Policy$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lamazon/whispersync/communication/connection/Policy$Builder;->setIsRequestResponseOnly(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v0, v1}, Lamazon/whispersync/communication/connection/Policy$Builder;->setIsClearText(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v0}, Lamazon/whispersync/communication/connection/Policy$Builder;->build()Lamazon/whispersync/communication/connection/Policy;

    move-result-object v0

    sput-object v0, Lamazon/whispersync/communication/connection/Policy;->ONE_SHOT:Lamazon/whispersync/communication/connection/Policy;

    .line 30
    new-instance v0, Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-direct {v0}, Lamazon/whispersync/communication/connection/Policy$Builder;-><init>()V

    invoke-virtual {v0, v1}, Lamazon/whispersync/communication/connection/Policy$Builder;->setIsLowLatencyNecessary(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v0}, Lamazon/whispersync/communication/connection/Policy$Builder;->build()Lamazon/whispersync/communication/connection/Policy;

    .line 35
    new-instance v0, Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-direct {v0}, Lamazon/whispersync/communication/connection/Policy$Builder;-><init>()V

    invoke-virtual {v0, v1}, Lamazon/whispersync/communication/connection/Policy$Builder;->setIsLowLatencyNecessary(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v0}, Lamazon/whispersync/communication/connection/Policy$Builder;->build()Lamazon/whispersync/communication/connection/Policy;

    return-void
.end method

.method private constructor <init>(Lamazon/whispersync/communication/connection/CompressionOption;Lamazon/whispersync/communication/connection/Priority;ZZZZZZLamazon/whispersync/communication/connection/Purpose;ZLamazon/whispersync/communication/connection/KeepAlive;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lamazon/whispersync/communication/connection/Policy;->mCompressionOption:Lamazon/whispersync/communication/connection/CompressionOption;

    .line 77
    iput-object p2, p0, Lamazon/whispersync/communication/connection/Policy;->mPriority:Lamazon/whispersync/communication/connection/Priority;

    .line 78
    iput-boolean p3, p0, Lamazon/whispersync/communication/connection/Policy;->mIsLowLatencyNecessary:Z

    .line 79
    iput-boolean p4, p0, Lamazon/whispersync/communication/connection/Policy;->mIsRequestResponseOnly:Z

    .line 80
    iput-boolean p5, p0, Lamazon/whispersync/communication/connection/Policy;->mIsClearText:Z

    .line 81
    iput-boolean p6, p0, Lamazon/whispersync/communication/connection/Policy;->mIsWiFiNecessary:Z

    .line 82
    iput-boolean p7, p0, Lamazon/whispersync/communication/connection/Policy;->mIsAnonymousCredentialsAllowed:Z

    .line 83
    iput-boolean p8, p0, Lamazon/whispersync/communication/connection/Policy;->mIsDedicated:Z

    .line 84
    iput-object p9, p0, Lamazon/whispersync/communication/connection/Policy;->mPurpose:Lamazon/whispersync/communication/connection/Purpose;

    .line 85
    iput-boolean p10, p0, Lamazon/whispersync/communication/connection/Policy;->mReconnectOnFailure:Z

    .line 86
    iput-object p11, p0, Lamazon/whispersync/communication/connection/Policy;->mKeepAlive:Lamazon/whispersync/communication/connection/KeepAlive;

    return-void
.end method

.method synthetic constructor <init>(Lamazon/whispersync/communication/connection/CompressionOption;Lamazon/whispersync/communication/connection/Priority;ZZZZZZLamazon/whispersync/communication/connection/Purpose;ZLamazon/whispersync/communication/connection/KeepAlive;Lamazon/whispersync/communication/connection/Policy$1;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p11}, Lamazon/whispersync/communication/connection/Policy;-><init>(Lamazon/whispersync/communication/connection/CompressionOption;Lamazon/whispersync/communication/connection/Priority;ZZZZZZLamazon/whispersync/communication/connection/Purpose;ZLamazon/whispersync/communication/connection/KeepAlive;)V

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

    if-eqz p1, :cond_4

    .line 185
    const-class v2, Lamazon/whispersync/communication/connection/Policy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 189
    :cond_1
    check-cast p1, Lamazon/whispersync/communication/connection/Policy;

    .line 192
    iget-object v2, p0, Lamazon/whispersync/communication/connection/Policy;->mCompressionOption:Lamazon/whispersync/communication/connection/CompressionOption;

    iget-object v3, p1, Lamazon/whispersync/communication/connection/Policy;->mCompressionOption:Lamazon/whispersync/communication/connection/CompressionOption;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lamazon/whispersync/communication/connection/Policy;->mPriority:Lamazon/whispersync/communication/connection/Priority;

    iget-object v3, p1, Lamazon/whispersync/communication/connection/Policy;->mPriority:Lamazon/whispersync/communication/connection/Priority;

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lamazon/whispersync/communication/connection/Policy;->mIsLowLatencyNecessary:Z

    iget-boolean v3, p1, Lamazon/whispersync/communication/connection/Policy;->mIsLowLatencyNecessary:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lamazon/whispersync/communication/connection/Policy;->mIsRequestResponseOnly:Z

    iget-boolean v3, p1, Lamazon/whispersync/communication/connection/Policy;->mIsRequestResponseOnly:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lamazon/whispersync/communication/connection/Policy;->mIsClearText:Z

    iget-boolean v3, p1, Lamazon/whispersync/communication/connection/Policy;->mIsClearText:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lamazon/whispersync/communication/connection/Policy;->mIsWiFiNecessary:Z

    iget-boolean v3, p1, Lamazon/whispersync/communication/connection/Policy;->mIsWiFiNecessary:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lamazon/whispersync/communication/connection/Policy;->mIsAnonymousCredentialsAllowed:Z

    iget-boolean v3, p1, Lamazon/whispersync/communication/connection/Policy;->mIsAnonymousCredentialsAllowed:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lamazon/whispersync/communication/connection/Policy;->mIsDedicated:Z

    iget-boolean v3, p1, Lamazon/whispersync/communication/connection/Policy;->mIsDedicated:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lamazon/whispersync/communication/connection/Policy;->mPurpose:Lamazon/whispersync/communication/connection/Purpose;

    iget-object v3, p1, Lamazon/whispersync/communication/connection/Policy;->mPurpose:Lamazon/whispersync/communication/connection/Purpose;

    if-eq v2, v3, :cond_2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Lamazon/whispersync/communication/connection/Purpose;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lamazon/whispersync/communication/connection/Policy;->mReconnectOnFailure:Z

    iget-boolean v3, p1, Lamazon/whispersync/communication/connection/Policy;->mReconnectOnFailure:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lamazon/whispersync/communication/connection/Policy;->mKeepAlive:Lamazon/whispersync/communication/connection/KeepAlive;

    iget-object p1, p1, Lamazon/whispersync/communication/connection/Policy;->mKeepAlive:Lamazon/whispersync/communication/connection/KeepAlive;

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getCompressionOption()Lamazon/whispersync/communication/connection/CompressionOption;
    .locals 1

    .line 95
    iget-object v0, p0, Lamazon/whispersync/communication/connection/Policy;->mCompressionOption:Lamazon/whispersync/communication/connection/CompressionOption;

    return-object v0
.end method

.method public getKeepAlive()Lamazon/whispersync/communication/connection/KeepAlive;
    .locals 1

    .line 177
    iget-object v0, p0, Lamazon/whispersync/communication/connection/Policy;->mKeepAlive:Lamazon/whispersync/communication/connection/KeepAlive;

    return-object v0
.end method

.method public getPriority()Lamazon/whispersync/communication/connection/Priority;
    .locals 1

    .line 105
    iget-object v0, p0, Lamazon/whispersync/communication/connection/Policy;->mPriority:Lamazon/whispersync/communication/connection/Priority;

    return-object v0
.end method

.method public getPurpose()Lamazon/whispersync/communication/connection/Purpose;
    .locals 1

    .line 163
    iget-object v0, p0, Lamazon/whispersync/communication/connection/Policy;->mPurpose:Lamazon/whispersync/communication/connection/Purpose;

    return-object v0
.end method

.method public getReconnectOnFailure()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lamazon/whispersync/communication/connection/Policy;->mReconnectOnFailure:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 208
    iget-object v0, p0, Lamazon/whispersync/communication/connection/Policy;->mCompressionOption:Lamazon/whispersync/communication/connection/CompressionOption;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    const/16 v1, 0xd9

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 209
    iget-object v0, p0, Lamazon/whispersync/communication/connection/Policy;->mPriority:Lamazon/whispersync/communication/connection/Priority;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 210
    iget-boolean v0, p0, Lamazon/whispersync/communication/connection/Policy;->mIsLowLatencyNecessary:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 211
    iget-boolean v0, p0, Lamazon/whispersync/communication/connection/Policy;->mIsRequestResponseOnly:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 212
    iget-boolean v0, p0, Lamazon/whispersync/communication/connection/Policy;->mIsClearText:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 213
    iget-boolean v0, p0, Lamazon/whispersync/communication/connection/Policy;->mIsWiFiNecessary:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 214
    iget-boolean v0, p0, Lamazon/whispersync/communication/connection/Policy;->mIsAnonymousCredentialsAllowed:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 215
    iget-boolean v0, p0, Lamazon/whispersync/communication/connection/Policy;->mIsDedicated:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 216
    iget-object v0, p0, Lamazon/whispersync/communication/connection/Policy;->mPurpose:Lamazon/whispersync/communication/connection/Purpose;

    invoke-virtual {v0}, Lamazon/whispersync/communication/connection/Purpose;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 217
    iget-boolean v0, p0, Lamazon/whispersync/communication/connection/Policy;->mReconnectOnFailure:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 218
    iget-object v0, p0, Lamazon/whispersync/communication/connection/Policy;->mKeepAlive:Lamazon/whispersync/communication/connection/KeepAlive;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public isAnonymousCredentialsAllowed()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lamazon/whispersync/communication/connection/Policy;->mIsAnonymousCredentialsAllowed:Z

    return v0
.end method

.method public isClearText()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lamazon/whispersync/communication/connection/Policy;->mIsClearText:Z

    return v0
.end method

.method public isDedicated()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lamazon/whispersync/communication/connection/Policy;->mIsDedicated:Z

    return v0
.end method

.method public isLowLatencyNecessary()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lamazon/whispersync/communication/connection/Policy;->mIsLowLatencyNecessary:Z

    return v0
.end method

.method public isRequestResponseOnly()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lamazon/whispersync/communication/connection/Policy;->mIsRequestResponseOnly:Z

    return v0
.end method

.method public isWiFiNecessary()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lamazon/whispersync/communication/connection/Policy;->mIsWiFiNecessary:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", CompressionOption: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lamazon/whispersync/communication/connection/Policy;->mCompressionOption:Lamazon/whispersync/communication/connection/CompressionOption;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lamazon/whispersync/communication/connection/Policy;->mPriority:Lamazon/whispersync/communication/connection/Priority;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", LowLatency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lamazon/whispersync/communication/connection/Policy;->mIsLowLatencyNecessary:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", RequestResponseOnly: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lamazon/whispersync/communication/connection/Policy;->mIsRequestResponseOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", IsClearText: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lamazon/whispersync/communication/connection/Policy;->mIsClearText:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", IsWiFiNecessary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lamazon/whispersync/communication/connection/Policy;->mIsWiFiNecessary:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", IsAnonymousCredentialsAllowed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lamazon/whispersync/communication/connection/Policy;->mIsAnonymousCredentialsAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsDedicated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lamazon/whispersync/communication/connection/Policy;->mIsDedicated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPurpose: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lamazon/whispersync/communication/connection/Policy;->mPurpose:Lamazon/whispersync/communication/connection/Purpose;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mReconnectOnFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lamazon/whispersync/communication/connection/Policy;->mReconnectOnFailure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mKeepAlive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lamazon/whispersync/communication/connection/Policy;->mKeepAlive:Lamazon/whispersync/communication/connection/KeepAlive;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
