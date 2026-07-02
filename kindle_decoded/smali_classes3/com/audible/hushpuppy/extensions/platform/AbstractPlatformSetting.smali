.class public abstract Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;
.super Ljava/lang/Object;
.source "AbstractPlatformSetting.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isBadgeEnabled()Z
.end method

.method public abstract isPersistentPlayerEnabled()Z
.end method

.method public abstract onAirPlatform()Z
.end method

.method public abstract setAiRMetricsManager()V
.end method

.method public abstract showJit()Z
.end method
