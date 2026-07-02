.class public Lcom/amazon/krf/internal/MemoryUtils;
.super Ljava/lang/Object;
.source "MemoryUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static nativeWarningLevelFromAndroidWarningLevel(I)I
    .locals 2

    .line 32
    sget-object v0, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;->kForegroundLow:Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    const/16 v1, 0x50

    if-lt p0, v1, :cond_0

    .line 35
    sget-object v0, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;->kBackgroundCritical:Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    goto :goto_0

    :cond_0
    const/16 v1, 0x3c

    if-lt p0, v1, :cond_1

    .line 37
    sget-object v0, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;->kBackgroundModerate:Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    goto :goto_0

    :cond_1
    const/16 v1, 0x28

    if-lt p0, v1, :cond_2

    .line 39
    sget-object v0, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;->kBackgroundLow:Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    goto :goto_0

    :cond_2
    const/16 v1, 0x14

    if-lt p0, v1, :cond_3

    .line 41
    sget-object v0, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;->kForegroundToBackground:Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    goto :goto_0

    :cond_3
    const/16 v1, 0xf

    if-lt p0, v1, :cond_4

    .line 43
    sget-object v0, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;->kForegroundCritical:Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    goto :goto_0

    :cond_4
    const/16 v1, 0xa

    if-lt p0, v1, :cond_5

    .line 45
    sget-object v0, Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;->kForegroundModerate:Lcom/amazon/krf/internal/MemoryUtils$MemoryWarningLevel;

    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    .line 49
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method
