.class public final Lcom/amazon/kcp/debug/DarkModeUtils;
.super Ljava/lang/Object;
.source "DarkModeUtils.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/amazon/kcp/debug/DarkModeUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/DarkModeUtils;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final alwaysFollowSystemTheme()Z
    .locals 1

    .line 53
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseThreeEnabled()Z

    move-result v0

    return v0
.end method

.method public static final isPhaseOneEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isPhaseThreeEnabled()Z
    .locals 2

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isKFABuild()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isPhaseTwoEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final supportsThemeChangeForFixedFormat()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
