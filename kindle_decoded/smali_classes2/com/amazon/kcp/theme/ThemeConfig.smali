.class public Lcom/amazon/kcp/theme/ThemeConfig;
.super Ljava/lang/Object;
.source "ThemeConfig.java"


# instance fields
.field private final areMultipleThemesSupported:Z

.field private final defaultTheme:Lcom/amazon/kindle/krx/theme/Theme;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/theme/Theme;Z)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/kcp/theme/ThemeConfig;->defaultTheme:Lcom/amazon/kindle/krx/theme/Theme;

    .line 33
    iput-boolean p2, p0, Lcom/amazon/kcp/theme/ThemeConfig;->areMultipleThemesSupported:Z

    return-void
.end method


# virtual methods
.method public areMultipleThemesSupported()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/amazon/kcp/theme/ThemeConfig;->areMultipleThemesSupported:Z

    return v0
.end method

.method public getDefaultAppTheme()Lcom/amazon/kindle/krx/theme/AppTheme;
    .locals 2

    .line 53
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseThreeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/amazon/kindle/krx/theme/AppTheme;->FOLLOW_SYSTEM:Lcom/amazon/kindle/krx/theme/AppTheme;

    return-object v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/theme/ThemeConfig;->defaultTheme:Lcom/amazon/kindle/krx/theme/Theme;

    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/amazon/kindle/krx/theme/AppTheme;->LIGHT:Lcom/amazon/kindle/krx/theme/AppTheme;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/theme/AppTheme;->DARK:Lcom/amazon/kindle/krx/theme/AppTheme;

    :goto_0
    return-object v0
.end method

.method public getDefaultTheme()Lcom/amazon/kindle/krx/theme/Theme;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/theme/ThemeConfig;->defaultTheme:Lcom/amazon/kindle/krx/theme/Theme;

    return-object v0
.end method
