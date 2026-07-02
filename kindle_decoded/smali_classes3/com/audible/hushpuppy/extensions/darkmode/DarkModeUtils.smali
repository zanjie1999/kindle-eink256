.class public final Lcom/audible/hushpuppy/extensions/darkmode/DarkModeUtils;
.super Ljava/lang/Object;
.source "DarkModeUtils.java"


# static fields
.field private static final DARK_MODE_HELPER:Lcom/amazon/kindle/krx/ui/DarkModeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    sput-object v0, Lcom/audible/hushpuppy/extensions/darkmode/DarkModeUtils;->DARK_MODE_HELPER:Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    return-void
.end method

.method public static getColorModeFromAppTheme(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/ui/ColorMode;
    .locals 1

    .line 60
    invoke-static {}, Lcom/audible/hushpuppy/extensions/darkmode/DarkModeUtils;->isDarkModePhaseTwoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p0

    if-ne v0, p0, :cond_0

    sget-object p0, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    :goto_0
    return-object p0

    .line 63
    :cond_1
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object p0

    return-object p0
.end method

.method public static isDarkModePhaseOneEnabled()Z
    .locals 2

    .line 33
    sget-object v0, Lcom/audible/hushpuppy/extensions/darkmode/DarkModeUtils;->DARK_MODE_HELPER:Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/DarkModeHelper;->isDarkModePhaseEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isDarkModePhaseTwoEnabled()Z
    .locals 2

    .line 45
    sget-object v0, Lcom/audible/hushpuppy/extensions/darkmode/DarkModeUtils;->DARK_MODE_HELPER:Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/DarkModeHelper;->isDarkModePhaseEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
