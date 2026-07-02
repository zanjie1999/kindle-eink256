.class public final Lamazon/whispersync/communication/connection/Policy$Builder;
.super Ljava/lang/Object;
.source "Policy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamazon/whispersync/communication/connection/Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBuilt:Z

.field private mCompressionOption:Lamazon/whispersync/communication/connection/CompressionOption;

.field private mIsAnonymousCredentialsAllowed:Z

.field private mIsClearText:Z

.field private mIsDedicated:Z

.field private mIsLowLatencyNecessary:Z

.field private mIsRequestResponseOnly:Z

.field private mIsWiFiNecessary:Z

.field private mKeepAlive:Lamazon/whispersync/communication/connection/KeepAlive;

.field private mPriority:Lamazon/whispersync/communication/connection/Priority;

.field private mPurpose:Lamazon/whispersync/communication/connection/Purpose;

.field private mReconnectOnFailure:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    sget-object v0, Lamazon/whispersync/communication/connection/CompressionOption;->ALLOWED:Lamazon/whispersync/communication/connection/CompressionOption;

    iput-object v0, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mCompressionOption:Lamazon/whispersync/communication/connection/CompressionOption;

    .line 279
    sget-object v0, Lamazon/whispersync/communication/connection/Priority;->PRIORITY_NORMAL:Lamazon/whispersync/communication/connection/Priority;

    iput-object v0, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mPriority:Lamazon/whispersync/communication/connection/Priority;

    const/4 v0, 0x0

    .line 280
    iput-boolean v0, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mIsLowLatencyNecessary:Z

    .line 281
    iput-boolean v0, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mIsRequestResponseOnly:Z

    .line 282
    iput-boolean v0, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mIsClearText:Z

    .line 283
    iput-boolean v0, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mIsWiFiNecessary:Z

    .line 284
    iput-boolean v0, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mIsAnonymousCredentialsAllowed:Z

    .line 285
    iput-boolean v0, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mIsDedicated:Z

    .line 286
    sget-object v1, Lamazon/whispersync/communication/connection/Purpose;->REGULAR:Lamazon/whispersync/communication/connection/Purpose;

    iput-object v1, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mPurpose:Lamazon/whispersync/communication/connection/Purpose;

    .line 287
    iput-boolean v0, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mReconnectOnFailure:Z

    .line 288
    sget-object v1, Lamazon/whispersync/communication/connection/KeepAlive;->NONE:Lamazon/whispersync/communication/connection/KeepAlive;

    iput-object v1, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mKeepAlive:Lamazon/whispersync/communication/connection/KeepAlive;

    .line 289
    iput-boolean v0, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mBuilt:Z

    return-void
.end method

.method private enforceSingleBuild()V
    .locals 2

    .line 505
    iget-boolean v0, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mBuilt:Z

    if-nez v0, :cond_0

    return-void

    .line 506
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Each builder can only be used once. Create a new builder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lamazon/whispersync/communication/connection/Policy;
    .locals 15

    .line 298
    invoke-direct {p0}, Lamazon/whispersync/communication/connection/Policy$Builder;->enforceSingleBuild()V

    const/4 v0, 0x1

    .line 299
    iput-boolean v0, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mBuilt:Z

    .line 301
    iget-boolean v0, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mIsDedicated:Z

    if-eqz v0, :cond_1

    sget-object v0, Lamazon/whispersync/communication/connection/Purpose;->REGULAR:Lamazon/whispersync/communication/connection/Purpose;

    iget-object v1, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mPurpose:Lamazon/whispersync/communication/connection/Purpose;

    invoke-virtual {v0, v1}, Lamazon/whispersync/communication/connection/Purpose;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "purpose must be set for dedicated connection"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_1
    :goto_0
    sget-object v0, Lamazon/whispersync/communication/connection/Purpose;->REGULAR:Lamazon/whispersync/communication/connection/Purpose;

    iget-object v1, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mPurpose:Lamazon/whispersync/communication/connection/Purpose;

    invoke-virtual {v0, v1}, Lamazon/whispersync/communication/connection/Purpose;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mIsDedicated:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 305
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "isDedicated must be set for purpose other than REGULAR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_3
    :goto_1
    new-instance v0, Lamazon/whispersync/communication/connection/Policy;

    iget-object v3, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mCompressionOption:Lamazon/whispersync/communication/connection/CompressionOption;

    iget-object v4, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mPriority:Lamazon/whispersync/communication/connection/Priority;

    iget-boolean v5, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mIsLowLatencyNecessary:Z

    iget-boolean v6, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mIsRequestResponseOnly:Z

    iget-boolean v7, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mIsClearText:Z

    iget-boolean v8, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mIsWiFiNecessary:Z

    iget-boolean v9, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mIsAnonymousCredentialsAllowed:Z

    iget-boolean v10, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mIsDedicated:Z

    iget-object v11, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mPurpose:Lamazon/whispersync/communication/connection/Purpose;

    iget-boolean v12, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mReconnectOnFailure:Z

    iget-object v13, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mKeepAlive:Lamazon/whispersync/communication/connection/KeepAlive;

    const/4 v14, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lamazon/whispersync/communication/connection/Policy;-><init>(Lamazon/whispersync/communication/connection/CompressionOption;Lamazon/whispersync/communication/connection/Priority;ZZZZZZLamazon/whispersync/communication/connection/Purpose;ZLamazon/whispersync/communication/connection/KeepAlive;Lamazon/whispersync/communication/connection/Policy$1;)V

    return-object v0
.end method

.method public fromConnectionPolicy(Lamazon/whispersync/communication/connection/ConnectionPolicy;)Lamazon/whispersync/communication/connection/Policy;
    .locals 2

    if-eqz p1, :cond_0

    .line 333
    invoke-direct {p0}, Lamazon/whispersync/communication/connection/Policy$Builder;->enforceSingleBuild()V

    .line 334
    invoke-static {}, Lamazon/whispersync/communication/connection/CompressionOption;->values()[Lamazon/whispersync/communication/connection/CompressionOption;

    move-result-object v0

    invoke-interface {p1}, Lamazon/whispersync/communication/connection/ConnectionPolicy;->getCompressionOption()Lamazon/whispersync/communication/connection/ConnectionPolicy$CompressionOption;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lamazon/whispersync/communication/connection/Policy$Builder;->setCompressionOption(Lamazon/whispersync/communication/connection/CompressionOption;)Lamazon/whispersync/communication/connection/Policy$Builder;

    .line 336
    invoke-interface {p1}, Lamazon/whispersync/communication/connection/ConnectionPolicy;->getPriority()Lamazon/whispersync/communication/connection/Priority;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamazon/whispersync/communication/connection/Policy$Builder;->setPriority(Lamazon/whispersync/communication/connection/Priority;)Lamazon/whispersync/communication/connection/Policy$Builder;

    .line 337
    invoke-interface {p1}, Lamazon/whispersync/communication/connection/ConnectionPolicy;->isLowLatencyNecessary()Z

    move-result v0

    invoke-virtual {p0, v0}, Lamazon/whispersync/communication/connection/Policy$Builder;->setIsLowLatencyNecessary(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    .line 338
    invoke-interface {p1}, Lamazon/whispersync/communication/connection/ConnectionPolicy;->isRequestResponseOnly()Z

    move-result v0

    invoke-virtual {p0, v0}, Lamazon/whispersync/communication/connection/Policy$Builder;->setIsRequestResponseOnly(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    .line 339
    invoke-interface {p1}, Lamazon/whispersync/communication/connection/ConnectionPolicy;->isClearText()Z

    move-result v0

    invoke-virtual {p0, v0}, Lamazon/whispersync/communication/connection/Policy$Builder;->setIsClearText(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    .line 340
    invoke-interface {p1}, Lamazon/whispersync/communication/connection/ConnectionPolicy;->isWiFiNecessary()Z

    move-result v0

    invoke-virtual {p0, v0}, Lamazon/whispersync/communication/connection/Policy$Builder;->setIsWiFiNecessary(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    .line 341
    invoke-interface {p1}, Lamazon/whispersync/communication/connection/ConnectionPolicy;->isAnonymousCredentialsAllowed()Z

    move-result p1

    invoke-virtual {p0, p1}, Lamazon/whispersync/communication/connection/Policy$Builder;->setIsAnonymousCredentialsAllowed(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    .line 343
    invoke-virtual {p0}, Lamazon/whispersync/communication/connection/Policy$Builder;->build()Lamazon/whispersync/communication/connection/Policy;

    move-result-object p1

    return-object p1

    .line 330
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "compatibility must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompressionOption(Lamazon/whispersync/communication/connection/CompressionOption;)Lamazon/whispersync/communication/connection/Policy$Builder;
    .locals 0

    .line 353
    invoke-direct {p0}, Lamazon/whispersync/communication/connection/Policy$Builder;->enforceSingleBuild()V

    .line 354
    iput-object p1, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mCompressionOption:Lamazon/whispersync/communication/connection/CompressionOption;

    return-object p0
.end method

.method public setIsAnonymousCredentialsAllowed(Z)Lamazon/whispersync/communication/connection/Policy$Builder;
    .locals 0

    .line 434
    invoke-direct {p0}, Lamazon/whispersync/communication/connection/Policy$Builder;->enforceSingleBuild()V

    .line 435
    iput-boolean p1, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mIsAnonymousCredentialsAllowed:Z

    return-object p0
.end method

.method public setIsClearText(Z)Lamazon/whispersync/communication/connection/Policy$Builder;
    .locals 0

    .line 407
    invoke-direct {p0}, Lamazon/whispersync/communication/connection/Policy$Builder;->enforceSingleBuild()V

    .line 408
    iput-boolean p1, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mIsClearText:Z

    return-object p0
.end method

.method public setIsDedicated(Z)Lamazon/whispersync/communication/connection/Policy$Builder;
    .locals 0

    .line 448
    invoke-direct {p0}, Lamazon/whispersync/communication/connection/Policy$Builder;->enforceSingleBuild()V

    .line 449
    iput-boolean p1, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mIsDedicated:Z

    return-object p0
.end method

.method public setIsLowLatencyNecessary(Z)Lamazon/whispersync/communication/connection/Policy$Builder;
    .locals 0

    .line 380
    invoke-direct {p0}, Lamazon/whispersync/communication/connection/Policy$Builder;->enforceSingleBuild()V

    .line 381
    iput-boolean p1, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mIsLowLatencyNecessary:Z

    return-object p0
.end method

.method public setIsRequestResponseOnly(Z)Lamazon/whispersync/communication/connection/Policy$Builder;
    .locals 0

    .line 394
    invoke-direct {p0}, Lamazon/whispersync/communication/connection/Policy$Builder;->enforceSingleBuild()V

    .line 395
    iput-boolean p1, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mIsRequestResponseOnly:Z

    return-object p0
.end method

.method public setIsWiFiNecessary(Z)Lamazon/whispersync/communication/connection/Policy$Builder;
    .locals 0

    .line 420
    invoke-direct {p0}, Lamazon/whispersync/communication/connection/Policy$Builder;->enforceSingleBuild()V

    .line 421
    iput-boolean p1, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mIsWiFiNecessary:Z

    return-object p0
.end method

.method public setKeepAlive(Lamazon/whispersync/communication/connection/KeepAlive;)Lamazon/whispersync/communication/connection/Policy$Builder;
    .locals 0

    .line 498
    invoke-direct {p0}, Lamazon/whispersync/communication/connection/Policy$Builder;->enforceSingleBuild()V

    .line 499
    iput-object p1, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mKeepAlive:Lamazon/whispersync/communication/connection/KeepAlive;

    return-object p0
.end method

.method public setPriority(Lamazon/whispersync/communication/connection/Priority;)Lamazon/whispersync/communication/connection/Policy$Builder;
    .locals 0

    .line 366
    invoke-direct {p0}, Lamazon/whispersync/communication/connection/Policy$Builder;->enforceSingleBuild()V

    .line 367
    iput-object p1, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mPriority:Lamazon/whispersync/communication/connection/Priority;

    return-object p0
.end method

.method public setPurpose(Lamazon/whispersync/communication/connection/Purpose;)Lamazon/whispersync/communication/connection/Policy$Builder;
    .locals 0

    .line 461
    invoke-direct {p0}, Lamazon/whispersync/communication/connection/Policy$Builder;->enforceSingleBuild()V

    .line 462
    iput-object p1, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mPurpose:Lamazon/whispersync/communication/connection/Purpose;

    return-object p0
.end method

.method public setReconnectOnFailure(Z)Lamazon/whispersync/communication/connection/Policy$Builder;
    .locals 0

    .line 483
    invoke-direct {p0}, Lamazon/whispersync/communication/connection/Policy$Builder;->enforceSingleBuild()V

    .line 484
    iput-boolean p1, p0, Lamazon/whispersync/communication/connection/Policy$Builder;->mReconnectOnFailure:Z

    return-object p0
.end method
