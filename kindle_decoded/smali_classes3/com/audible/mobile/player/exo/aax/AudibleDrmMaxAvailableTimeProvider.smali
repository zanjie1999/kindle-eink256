.class public Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;
.super Ljava/lang/Object;
.source "AudibleDrmMaxAvailableTimeProvider.java"

# interfaces
.implements Lcom/audible/mobile/player/exo/sources/MaxAvailableTimeProvider;


# instance fields
.field private volatile timeAvailableSdk:Lcom/audible/sdk/AudibleSDK;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxAvailableTimeMs()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;->timeAvailableSdk:Lcom/audible/sdk/AudibleSDK;

    if-eqz v0, :cond_0

    .line 37
    invoke-static {v0}, Lcom/audible/sdk/SdkUtils;->getMaxAvailableTimeMs(Lcom/audible/sdk/AudibleSDK;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;->timeAvailableSdk:Lcom/audible/sdk/AudibleSDK;

    return-void
.end method

.method public setTimeAvailableSdk(Lcom/audible/sdk/AudibleSDK;)V
    .locals 1

    const-string v0, "timeAvailableSdk can\'t be null"

    .line 24
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/audible/sdk/AudibleSDK;

    iput-object p1, p0, Lcom/audible/mobile/player/exo/aax/AudibleDrmMaxAvailableTimeProvider;->timeAvailableSdk:Lcom/audible/sdk/AudibleSDK;

    return-void
.end method
