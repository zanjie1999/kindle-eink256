.class public Lcom/amazon/phl/settings/PHLSettingUtil;
.super Ljava/lang/Object;
.source "PHLSettingUtil.java"


# static fields
.field private static THEMES_SHARED_PREFS_SUFFIX:Ljava/lang/String; = "THEMES"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static deletePopularHighlightsStatusForAaTheme(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 1

    .line 61
    invoke-static {p0}, Lcom/amazon/phl/settings/PHLSettingUtil;->getAaThemesSharedPreferencesName(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 62
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 63
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static getAaThemesSharedPreferencesName(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Ljava/lang/String;
    .locals 1

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/amazon/phl/settings/PHLSettingUtil;->getBaseSharedPreferencesName(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/amazon/phl/settings/PHLSettingUtil;->THEMES_SHARED_PREFS_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getBaseSharedPreferencesName(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Ljava/lang/String;
    .locals 2

    .line 110
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getUserId()Ljava/lang/String;

    move-result-object p0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "phl-PopularHighlights-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPopularHighlightsStatus(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1

    .line 19
    invoke-static {p0}, Lcom/amazon/phl/settings/PHLSettingUtil;->getBaseSharedPreferencesName(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "popularHighlightsControls"

    invoke-static {p1, p0, v0}, Lcom/amazon/phl/settings/PHLSettingUtil;->getPopularHighlightsStatusHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static getPopularHighlightsStatusForAaTheme(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 0

    .line 40
    invoke-static {p0}, Lcom/amazon/phl/settings/PHLSettingUtil;->getAaThemesSharedPreferencesName(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/amazon/phl/settings/PHLSettingUtil;->getPopularHighlightsStatusHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static getPopularHighlightsStatusHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 p1, 0x1

    .line 77
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static savePopularHighlightsStatus(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 1

    .line 29
    invoke-static {p0}, Lcom/amazon/phl/settings/PHLSettingUtil;->getBaseSharedPreferencesName(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "popularHighlightsControls"

    invoke-static {p1, p0, v0, p2}, Lcom/amazon/phl/settings/PHLSettingUtil;->savePopularHighlightsStatusHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static savePopularHighlightsStatusForAaTheme(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/amazon/phl/settings/PHLSettingUtil;->getAaThemesSharedPreferencesName(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2, p3}, Lcom/amazon/phl/settings/PHLSettingUtil;->savePopularHighlightsStatusHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static savePopularHighlightsStatusHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 90
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 91
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
