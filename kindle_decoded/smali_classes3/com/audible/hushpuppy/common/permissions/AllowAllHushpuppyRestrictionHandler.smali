.class public final Lcom/audible/hushpuppy/common/permissions/AllowAllHushpuppyRestrictionHandler;
.super Ljava/lang/Object;
.source "AllowAllHushpuppyRestrictionHandler.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/common/permissions/AllowAllHushpuppyRestrictionHandler;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/common/permissions/AllowAllHushpuppyRestrictionHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAudiobookPlaybackEnabled()Z
    .locals 2

    .line 20
    sget-object v0, Lcom/audible/hushpuppy/common/permissions/AllowAllHushpuppyRestrictionHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "There is no restriction. Audiobook Playback enable = true"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public isAudiobookStoreEnabled()Z
    .locals 2

    .line 27
    sget-object v0, Lcom/audible/hushpuppy/common/permissions/AllowAllHushpuppyRestrictionHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "There is no restriction. Audiobook Store enable = true"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public isInAppPurchaseAllowed()Z
    .locals 2

    .line 41
    sget-object v0, Lcom/audible/hushpuppy/common/permissions/AllowAllHushpuppyRestrictionHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "There is no restriction. In-App Purchase allowed = true"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
