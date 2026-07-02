.class public Lcom/amazon/kcp/application/UserSettingsController;
.super Lcom/amazon/kindle/persistence/AbstractSettingsController;
.source "UserSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/UserSettingsController$CallSource;,
        Lcom/amazon/kcp/application/UserSettingsController$Setting;
    }
.end annotation


# static fields
.field private static final CHANNEL_PREFIX:Ljava/lang/String; = "channel."

.field private static final COLOR_MODE_CHANGED_METRIC_PREFIX:Ljava/lang/String; = "ColorModeChangedTo_"

.field private static final COVER_IMAGE_FORMAT:Ljava/lang/String; = "%s_%s"

.field private static final KINDLE_DEALS_CHANNEL_ID:Ljava/lang/String; = "kindle_deals"

.field private static final TAG:Ljava/lang/String;

.field private static final USER_PREFS_BASE_NAME:Ljava/lang/String; = "UserSettings"

.field private static final defaultTransitionAnimationSpeed:I = 0x4

.field private static volatile instance:Lcom/amazon/kcp/application/UserSettingsController; = null

.field private static isLaunch:Z = true


# instance fields
.field private volatile colorModeChangedFromFAB:Z

.field private volatile isBookOpeningBadgeVisible:Z

.field private volatile isCSChangedForAccessibility:Z

.field private volatile isTtsSpeaking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    const-class v0, Lcom/amazon/kcp/application/UserSettingsController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/UserSettingsController;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "UserSettings"

    const/4 v1, 0x4

    .line 286
    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    const/4 p1, 0x0

    .line 272
    iput-boolean p1, p0, Lcom/amazon/kcp/application/UserSettingsController;->isTtsSpeaking:Z

    .line 274
    iput-boolean p1, p0, Lcom/amazon/kcp/application/UserSettingsController;->colorModeChangedFromFAB:Z

    .line 276
    iput-boolean p1, p0, Lcom/amazon/kcp/application/UserSettingsController;->isCSChangedForAccessibility:Z

    return-void
.end method

.method private channelSubscriptionKeys()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2004
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2005
    invoke-virtual {p0}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getAllKeys()Ljava/util/Set;

    move-result-object v1

    .line 2006
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "channel."

    .line 2007
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2008
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static createNotificationsChannelKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "kindle_deals"

    .line 1489
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1491
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->KINDLE_DEALS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1493
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "channel."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private customDictionaryKeys()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1977
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1978
    invoke-virtual {p0}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getAllKeys()Ljava/util/Set;

    move-result-object v1

    .line 1979
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1980
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/amazon/kcp/application/UserSettingsController$Setting;->DICTIONARY_ASIN:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/amazon/kcp/application/UserSettingsController$Setting;->DICTIONARY_LANGUAGE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1981
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1982
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getBookLanguage(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1100
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    .line 1103
    :cond_1
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/UserSettingsController;
    .locals 2

    .line 291
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController;->instance:Lcom/amazon/kcp/application/UserSettingsController;

    if-nez v0, :cond_1

    .line 292
    const-class v0, Lcom/amazon/kcp/application/UserSettingsController;

    monitor-enter v0

    .line 293
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController;->instance:Lcom/amazon/kcp/application/UserSettingsController;

    if-nez v1, :cond_0

    .line 294
    new-instance v1, Lcom/amazon/kcp/application/UserSettingsController;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/application/UserSettingsController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/kcp/application/UserSettingsController;->instance:Lcom/amazon/kcp/application/UserSettingsController;

    .line 296
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 298
    :cond_1
    :goto_0
    sget-object p0, Lcom/amazon/kcp/application/UserSettingsController;->instance:Lcom/amazon/kcp/application/UserSettingsController;

    return-object p0
.end method

.method private getPreferenceKeyForFontFace(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .line 2371
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FONT_FACE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 2373
    sget-object p2, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SECONDARY_FONT_FACE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 2375
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/krl/R$string;->underscore_string:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPreferenceKeysForFontFace(Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2363
    invoke-static {}, Lcom/mobipocket/android/drawing/LanguageSet;->values()[Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 2364
    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/amazon/kcp/application/UserSettingsController;->getPreferenceKeyForFontFace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 2365
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private isBooleanSettingEnabled(Ljava/lang/String;Z)Z
    .locals 0

    .line 902
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private reportAnnotationSyncMetrics(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "enabled"

    goto :goto_0

    :cond_0
    const-string p1, "disabled"

    .line 1388
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1389
    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p3, Lcom/amazon/kindle/krx/metrics/MetricType;->DEBUG:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "Book"

    invoke-virtual {p1, v1, p2, p3, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    return-void
.end method

.method private setContinuousScrollChangedForAccessibility(Z)V
    .locals 0

    .line 472
    iput-boolean p1, p0, Lcom/amazon/kcp/application/UserSettingsController;->isCSChangedForAccessibility:Z

    return-void
.end method

.method private shouldUseKSDKDataSource()Z
    .locals 1

    .line 2380
    invoke-virtual {p0}, Lcom/amazon/kcp/application/UserSettingsController;->areAaMenuDataMigrated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public applyScreenBrightness(Landroid/view/Window;)Z
    .locals 2

    .line 1578
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SCREEN_BRIGHTNESS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 1579
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1580
    invoke-virtual {p0}, Lcom/amazon/kcp/application/UserSettingsController;->getScreenBrightness()F

    move-result v0

    :cond_0
    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_2

    .line 1584
    invoke-virtual {p0}, Lcom/amazon/kcp/application/UserSettingsController;->isSystemUsingAutoBrightness()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1585
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDeviceContext()Lcom/amazon/kcp/application/IDeviceContext;

    move-result-object v0

    .line 1586
    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceContext;->supportsBrightnessChanges()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1590
    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1591
    invoke-virtual {p0}, Lcom/amazon/kcp/application/UserSettingsController;->getScreenBrightness()F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1592
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public areAaMenuDataMigrated()Z
    .locals 2

    .line 2340
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->AA_MENU_DATA_MIGRATION_2:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public areNotificationsEnabled()Z
    .locals 2

    .line 1450
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->NOTIFICATIONS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->isBooleanSettingEnabled(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public areSidecarsMigrated()Z
    .locals 2

    .line 2000
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SIDECAR_MIGRATION:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public areVolumeKeysPageControls()Z
    .locals 5

    .line 1682
    invoke-static {}, Lcom/amazon/kcp/debug/AIRInCSUtilManager;->getInstance()Lcom/amazon/kcp/debug/IAIRInCSUtil;

    move-result-object v0

    .line 1683
    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAIRInCSUtil;->isAccessibilityProviderPlaying()Z

    move-result v0

    .line 1685
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1686
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v1

    sget-object v4, Lcom/amazon/ksdk/presets/AaSettingType;->TURN_PAGES_WITH_VOLUME_CONTROLS:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v1, v4}, Lcom/amazon/ksdk/presets/ReadingPreset;->getBoolForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1688
    iget-boolean v1, p0, Lcom/amazon/kcp/application/UserSettingsController;->isTtsSpeaking:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 1690
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/amazon/kindle/krl/R$bool;->default_volume_keys_page_controls_enabled:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 1691
    sget-object v4, Lcom/amazon/kcp/application/UserSettingsController$Setting;->VOLUME_KEYS_PAGE_CONTROLS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/amazon/kcp/application/UserSettingsController;->isTtsSpeaking:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public areVolumePagesControlsIgnoreTTS()Z
    .locals 2

    .line 1698
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1699
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->TURN_PAGES_WITH_VOLUME_CONTROLS:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->getBoolForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result v0

    return v0

    .line 1702
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->default_volume_keys_page_controls_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1703
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->VOLUME_KEYS_PAGE_CONTROLS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public clearUserSensitiveData()V
    .locals 7

    .line 1892
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1893
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->customDictionaryKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1894
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->channelSubscriptionKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1895
    invoke-static {}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->values()[Lcom/amazon/kcp/application/UserSettingsController$Setting;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 1898
    sget-object v6, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FONT_FACE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    if-ne v5, v6, :cond_0

    .line 1899
    invoke-direct {p0, v3}, Lcom/amazon/kcp/application/UserSettingsController;->getPreferenceKeysForFontFace(Z)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1900
    :cond_0
    sget-object v6, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SECONDARY_FONT_FACE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    .line 1901
    invoke-direct {p0, v5}, Lcom/amazon/kcp/application/UserSettingsController;->getPreferenceKeysForFontFace(Z)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1903
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1906
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/model/content/ContentClass;->values()[Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v1

    array-length v2, v1

    :goto_2
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 1907
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/amazon/kcp/application/UserSettingsController$Setting;->LAST_TUTORIAL_VERSION_SHOWN:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1908
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1910
    :cond_3
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->removeAll(Ljava/util/Collection;)V

    .line 1911
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->clearUserData()V

    return-void
.end method

.method public deleteAllDictionaryCustomUserSetting()V
    .locals 1

    .line 1972
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->customDictionaryKeys()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->removeAll(Ljava/util/Collection;)V

    return-void
.end method

.method public deleteDictionaryAsinIfExistsInUserSettings(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1945
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1949
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getAllKeys()Ljava/util/Set;

    move-result-object v0

    .line 1951
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1952
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/amazon/kcp/application/UserSettingsController$Setting;->DICTIONARY_ASIN:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 1953
    invoke-virtual {p0, v1, v2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1955
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1957
    sget-object v3, Lcom/amazon/kcp/application/UserSettingsController$Setting;->DICTIONARY_ASIN:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/application/UserSettingsController$Setting;->DICTIONARY_LANGUAGE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1958
    invoke-virtual {p0, v1, v2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    invoke-virtual {p0, v3, v2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public getAppTheme(Lcom/amazon/kindle/krx/theme/AppTheme;)Lcom/amazon/kindle/krx/theme/AppTheme;
    .locals 1

    .line 2195
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->APP_THEME:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2196
    invoke-static {p1}, Lcom/amazon/kindle/krx/theme/AppTheme;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/theme/AppTheme;

    move-result-object p1

    return-object p1
.end method

.method public getAuthorizedAccount()Ljava/lang/String;
    .locals 2

    .line 1864
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->AUTHORIZED_ACCOUNT:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBrightnessMode()Lcom/amazon/kcp/reader/ui/BrightnessMode;
    .locals 2

    .line 1353
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1354
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->AUTO_BRIGHTNESS:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->getBoolForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1355
    sget-object v0, Lcom/amazon/kcp/reader/ui/BrightnessMode;->SYSTEM:Lcom/amazon/kcp/reader/ui/BrightnessMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kcp/reader/ui/BrightnessMode;->USER_DEFINED:Lcom/amazon/kcp/reader/ui/BrightnessMode;

    :goto_0
    return-object v0

    .line 1357
    :cond_1
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->BRIGHTNESS_MODE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/reader/ui/BrightnessMode;->getDefault()Lcom/amazon/kcp/reader/ui/BrightnessMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/BrightnessMode;->serializationValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1358
    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/BrightnessMode;->fromSerializationValue(I)Lcom/amazon/kcp/reader/ui/BrightnessMode;

    move-result-object v0

    return-object v0
.end method

.method public getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;
    .locals 2

    .line 1143
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1145
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isKindleIllustratedSupported()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1148
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/application/UserSettingsController;->isKindleIllustratedEnabled()Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1155
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    return-object v0

    .line 1158
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/application/UserSettingsController;->getUserSetColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    return-object v0
.end method

.method public getColorModeBeforeNightMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;
    .locals 2

    .line 1221
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COLOR_MODE_BEFORE_NIGHT_MODE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    .line 1222
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->serializationValue()I

    move-result v1

    .line 1221
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1223
    invoke-static {v0}, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->fromSerializationValue(I)Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    return-object v0
.end method

.method public getColorModeChangedFromFAB()Z
    .locals 1

    .line 1268
    iget-boolean v0, p0, Lcom/amazon/kcp/application/UserSettingsController;->colorModeChangedFromFAB:Z

    return v0
.end method

.method public getColumnCount()I
    .locals 2

    .line 892
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPreset;->columnCountModeBooks()Lcom/amazon/ksdk/presets/ColumnCountModeType;

    move-result-object v0

    .line 894
    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;->ksdkColumnCountModeTypeToReaderColumnCount(Lcom/amazon/ksdk/presets/ColumnCountModeType;)I

    move-result v0

    return v0

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$integer;->default_column_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 897
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COLUMN_COUNT:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getContinuousScrollReflowableEnabled()Z
    .locals 2

    .line 429
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->CONTINUOUS_SCROLLING:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->getBoolForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result v0

    return v0

    .line 433
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->CONTINUOUS_SCROLL_REFLOWABLE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getContrastLevel()I
    .locals 2

    .line 2168
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->CONTRAST_LEVEL:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getCoverImageDimension(Lcom/amazon/kindle/cover/ImageSizes$Type;)Lcom/amazon/kindle/util/drawing/Dimension;
    .locals 7

    .line 2145
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COVER_IMAGE_WIDTH:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "%s_%s"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2146
    invoke-virtual {p0, v0, v4}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2148
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v6, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COVER_IMAGE_HEIGHT:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2149
    invoke-virtual {p0, p1, v4}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 2150
    new-instance v1, Lcom/amazon/kindle/util/drawing/Dimension;

    invoke-direct {v1, v0, p1}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    return-object v1
.end method

.method public getDictionaryAsin()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1818
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->DICTIONARY_ASIN:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDictionaryAsin(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->DICTIONARY_ASIN:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 1830
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDictionaryLanguage()Ljava/lang/String;
    .locals 2

    .line 1780
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->DICTIONARY_LANGUAGE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDictionaryLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1787
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->underscore_string:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/amazon/kcp/application/UserSettingsController$Setting;->DICTIONARY_LANGUAGE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    .line 1789
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 1787
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 1791
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadBookNetworkMode()I
    .locals 2

    .line 1723
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1726
    :goto_0
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->USE_DATA_NETWORK_DOWNLOAD_BOOK:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFTUEEventTriggered()Z
    .locals 2

    .line 1414
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FTUE_EVENT_TRIGGERED:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->isBooleanSettingEnabled(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFTUELoadingScreenShown()Z
    .locals 2

    .line 1410
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FTUE_LOADING_SCREEN_SHOWN:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->isBooleanSettingEnabled(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFTUENewsstandEventTriggered()Z
    .locals 2

    .line 1418
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FTUE_NEWSSTAND_EVENT_TRIGGERED:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->isBooleanSettingEnabled(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFTUENewsstandLoadingScreenShown()Z
    .locals 2

    .line 1422
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FTUE_NEWSSTAND_LOADING_SCREEN_SHOWN:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->isBooleanSettingEnabled(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFontFamily(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;
    .locals 2

    .line 1041
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1042
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/ksdk/presets/ReadingPreset;->fontId()J

    move-result-wide v0

    .line 1043
    invoke-static {v0, v1}, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->getFontFamily(J)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p1

    return-object p1

    .line 1046
    :cond_0
    invoke-static {p1}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 1047
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->getPreferenceKeyForFontFace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 1049
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getDefaultFamilyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1050
    invoke-static {p1}, Lcom/mobipocket/android/drawing/FontFamily;->getValue(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 1054
    :catch_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getDefaultFamilyName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mobipocket/android/drawing/FontFamily;->getValue(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p1

    return-object p1
.end method

.method public getFontFamilyForBook(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Lcom/mobipocket/android/drawing/FontFamily;
    .locals 3

    .line 1086
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->getBookLanguage(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Ljava/lang/String;

    move-result-object v0

    .line 1088
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/UserSettingsController;->getFontFamily(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v1

    .line 1089
    sget-object v2, Lcom/mobipocket/android/drawing/FontFamily;->PUBLISHER_FONT:Lcom/mobipocket/android/drawing/FontFamily;

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->hasPublisherFonts()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1090
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/UserSettingsController;->getSecondaryFontFamily(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method public getFontFamilyKey(Lcom/amazon/kcp/application/UserSettingsController$Setting;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1128
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->underscore_string:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 1129
    invoke-static {p2}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    .line 1128
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFontSizeIndex()I
    .locals 2

    .line 791
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->FONT_SIZE:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->getLongForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)I

    move-result v0

    goto :goto_0

    .line 794
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FONT_SIZE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/mobipocket/android/drawing/AndroidFontFactory;->defaultFontIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 795
    invoke-static {}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getFontSizes()[I

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 796
    :cond_1
    sget v0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->defaultFontIndex:I

    :cond_2
    :goto_0
    return v0
.end method

.method public getFooterContentType()Ljava/lang/String;
    .locals 2

    .line 1844
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1845
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    .line 1846
    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPreset;->readingProgressCurDisplayedMode()Lcom/amazon/ksdk/presets/ReadingProgressModeType;

    move-result-object v0

    .line 1847
    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;->ksdkReadingProgressModeTypeToReaderFooterContentType(Lcom/amazon/ksdk/presets/ReadingProgressModeType;)Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1849
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FOOTER_CONTENT_TYPE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->TIME_TO_READ_CHAPTER:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForceDisableJustification()Z
    .locals 3

    .line 1340
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1341
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPreset;->justificationMode()Lcom/amazon/ksdk/presets/JustificationModeType;

    move-result-object v0

    .line 1342
    sget-object v2, Lcom/amazon/ksdk/presets/JustificationModeType;->JUSTIFIED:Lcom/amazon/ksdk/presets/JustificationModeType;

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1344
    :cond_1
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FORCE_DISABLE_JUSTIFICATION:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->isBooleanSettingEnabled(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getForceHFSExpired()Z
    .locals 2

    .line 2103
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FORCE_HFS_EXPIRED:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->isBooleanSettingEnabled(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getForceHFSResponseFailure()Z
    .locals 2

    .line 2095
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FORCE_HFS_RESPONSE_FAILURE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->isBooleanSettingEnabled(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getGuidedViewAnimationEnabled()Z
    .locals 3

    .line 622
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->ANIMATION:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->getBoolForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result v0

    return v0

    .line 627
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COMICS_TRANSITION_DURATION:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->context:Landroid/content/Context;

    .line 628
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$integer;->guided_view_transition_animation_duration_ms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 627
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getGuidedViewTransitionDuration()I
    .locals 3

    .line 651
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 652
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->ANIMATION:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->getBoolForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 654
    invoke-static {}, Lcom/amazon/kcp/debug/AaMenuUtils;->shouldShowAaMenuV2CmxSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->ANIMATION_SLIDER:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->getFloatForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$integer;->guided_view_transition_animation_duration_ms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    .line 661
    :cond_2
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COMICS_TRANSITION_DURATION:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->context:Landroid/content/Context;

    .line 662
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$integer;->guided_view_transition_animation_duration_ms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 661
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getGuidedViewTransitionIndex()I
    .locals 2

    .line 673
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/debug/AaMenuUtils;->shouldShowAaMenuV2CmxSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->ANIMATION_SLIDER:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->getFloatForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)F

    move-result v0

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;->ksdkAnimationSpeedToReaderAnimationSpeedIndex(F)I

    move-result v0

    goto :goto_0

    .line 676
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "getGuidedViewTransitionIndex called when enhanced comic settings disabled."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    :goto_0
    return v0
.end method

.method public getHFSLastestRequestTime(Ljava/lang/Long;)J
    .locals 3

    .line 2032
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->HFS_LATEST_REQUEST_TIME:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHasCenterNotch()Z
    .locals 2

    .line 2299
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->HAS_CENTER_NOTCH:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHasContinuousScrollEverEnabled()Z
    .locals 2

    .line 483
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->CONTINUOUS_SCROLL_REFLOWABLE_EVER_ENABLED:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHasCornerNotch()Z
    .locals 2

    .line 2320
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->HAS_CORNER_NOTCH:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHaveRequestedPersonalDocsPermission()Z
    .locals 2

    .line 1753
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->REQUESTED_PERSONAL_DOCS_SETTING:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHighlightColor()Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;
    .locals 7

    .line 1921
    sget-object v0, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->YELLOW:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    .line 1922
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->HIGHLIGHT_COLOR:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getColorTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1925
    invoke-static {}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->values()[Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 1926
    invoke-virtual {v5}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getColorTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-object v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getIsPageColorMatchingSystemTheme()Z
    .locals 2

    .line 1203
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseThreeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->SYSTEM_THEME_FOR_PAGE_COLOR:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->getBoolForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLastTutorialVersionShown(Ljava/lang/String;)I
    .locals 2

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->LAST_TUTORIAL_VERSION_SHOWN:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    .line 309
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLetterboxColor()Lcom/amazon/android/docviewer/LetterboxingColor;
    .locals 2

    .line 755
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/debug/AaMenuUtils;->shouldShowAaMenuV2CmxSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->LETTERBOXING:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->getLongForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)I

    move-result v0

    .line 757
    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;->ksdkLetterboxColorToReaderLetterboxColor(I)Lcom/amazon/android/docviewer/LetterboxingColor;

    move-result-object v0

    return-object v0

    .line 760
    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/LetterboxingColor;->PUBLISHER:Lcom/amazon/android/docviewer/LetterboxingColor;

    return-object v0
.end method

.method public getLineSpacingIndex()I
    .locals 2

    .line 821
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPreset;->lineSpacingMode()Lcom/amazon/ksdk/presets/LineSpacingModeType;

    move-result-object v0

    .line 823
    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;->ksdkLineSpacingModeTypeToReaderLineSpacingOption(Lcom/amazon/ksdk/presets/LineSpacingModeType;)Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->serializationValue()I

    move-result v0

    return v0

    .line 825
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->LINE_SPACING:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->context:Landroid/content/Context;

    .line 826
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getDefaultLineSpacing(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->serializationValue()I

    move-result v1

    .line 825
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;
    .locals 2

    .line 863
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPreset;->pageMarginMode()Lcom/amazon/ksdk/presets/PageMarginModeType;

    move-result-object v0

    .line 865
    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;->pageMarginModeTypeToReaderMargin(Lcom/amazon/ksdk/presets/PageMarginModeType;)Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object v0

    return-object v0

    .line 867
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->LINE_LENGTH:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->context:Landroid/content/Context;

    .line 868
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getDefaultMargin(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->serializationValue()I

    move-result v1

    .line 867
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 869
    invoke-static {v0}, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->fromSerializationValue(I)Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()I
    .locals 2

    .line 1601
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1602
    invoke-static {}, Lcom/amazon/ksdk/presets/ContextManager;->instance()Lcom/amazon/ksdk/presets/ContextManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1603
    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ContextManager;->bookContext()Lcom/amazon/ksdk/presets/BookContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1604
    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ContextManager;->bookContext()Lcom/amazon/ksdk/presets/BookContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/BookContext;->getBookFlags()Ljava/util/EnumSet;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1605
    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ContextManager;->bookContext()Lcom/amazon/ksdk/presets/BookContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/BookContext;->getBookFlags()Ljava/util/EnumSet;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/BookFlag;->HAS_PAGE_ORIENTATION_LOCK:Lcom/amazon/ksdk/presets/BookFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1611
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPreset;->orientationMode()Lcom/amazon/ksdk/presets/PageOrientationModeType;

    move-result-object v0

    .line 1612
    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;->ksdkPageOrientationModeTypeToReaderOrientationTo(Lcom/amazon/ksdk/presets/PageOrientationModeType;)I

    move-result v0

    return v0

    .line 1616
    :cond_1
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->READER_ORIENTATION_ACTIVITY_INFO:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    .line 1617
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, -0x80000000

    .line 1616
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_2

    return v0

    .line 1625
    :cond_2
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->READER_ORIENTATION:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    .line 1626
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1625
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1630
    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->convertConfigurationToScreenOrientation(I)I

    move-result v0

    return v0
.end method

.method public getPersonalDocsSetting()Z
    .locals 2

    .line 1740
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->PERSONAL_DOCS_SETTING:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPinYinLetterSpacing()Z
    .locals 2

    .line 843
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->PINYIN_LETTER_SPACING:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->isBooleanSettingEnabled(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getReadingRulerColor()Lcom/amazon/ksdk/presets/Color;
    .locals 1

    .line 564
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPreset;->readingRulerColorValue()Lcom/amazon/ksdk/presets/Color;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReadingRulerColorType()Lcom/amazon/ksdk/presets/ReadingRulerColorType;
    .locals 1

    .line 576
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPreset;->readingRulerColor()Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    move-result-object v0

    return-object v0

    .line 579
    :cond_0
    sget-object v0, Lcom/amazon/ksdk/presets/ReadingRulerColorType;->INVALID:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    return-object v0
.end method

.method public getReadingRulerEnabled()Z
    .locals 2

    .line 504
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->READING_RULER:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->getBoolForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getReadingRulerOpacity()F
    .locals 2

    .line 528
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->READING_RULER_OPACITY:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->getFloatForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getReadingRulerSize()Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;
    .locals 1

    .line 599
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPreset;->readingRulerNumberOfLines()Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;

    move-result-object v0

    return-object v0

    .line 602
    :cond_0
    sget-object v0, Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;->INVALID:Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;

    return-object v0
.end method

.method public getReadingRulerStyle()Lcom/amazon/ksdk/presets/ReadingRulerStyleType;
    .locals 1

    .line 552
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPreset;->readingRulerStyle()Lcom/amazon/ksdk/presets/ReadingRulerStyleType;

    move-result-object v0

    return-object v0

    .line 555
    :cond_0
    sget-object v0, Lcom/amazon/ksdk/presets/ReadingRulerStyleType;->INVALID:Lcom/amazon/ksdk/presets/ReadingRulerStyleType;

    return-object v0
.end method

.method public getResumeContentAddRequestCounter(I)I
    .locals 1

    .line 2049
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->RESUME_CONTENT_ADD_REQUEST_COUNTER:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getResumeContentUpdateRequestCounter(I)I
    .locals 1

    .line 2066
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->RESUME_CONTENT_UPDATE_REQUEST_COUNTER:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getResumeRequestCounterResetTime(J)J
    .locals 1

    .line 2085
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->RESUME_REQUEST_COUNTER_RESET_TIME:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getScreenBrightness()F
    .locals 4

    .line 1524
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1525
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPreset;->brightness()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0

    .line 1528
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SCREEN_BRIGHTNESS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->context:Landroid/content/Context;

    .line 1529
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/16 v2, 0xff

    const-string/jumbo v3, "screen_brightness"

    .line 1528
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getSecondaryFontFamily(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;
    .locals 1

    .line 1067
    invoke-static {p1}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 1068
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->getPreferenceKeyForFontFace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 1070
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getDefaultFamilyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1071
    invoke-static {p1}, Lcom/mobipocket/android/drawing/FontFamily;->getValue(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 1075
    :catch_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getDefaultFamilyName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mobipocket/android/drawing/FontFamily;->getValue(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p1

    return-object p1
.end method

.method public getSectionLayoutMode()Lcom/amazon/android/docviewer/SectionLayoutMode;
    .locals 3

    .line 346
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->VERTICAL_SCROLLING:Lcom/amazon/ksdk/presets/AaSettingType;

    .line 348
    invoke-virtual {v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->getBoolForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    sget-object v0, Lcom/amazon/android/docviewer/SectionLayoutMode;->SCALE_TO_WIDTH:Lcom/amazon/android/docviewer/SectionLayoutMode;

    return-object v0

    .line 352
    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/SectionLayoutMode;->NORMAL:Lcom/amazon/android/docviewer/SectionLayoutMode;

    return-object v0

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 357
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 359
    iget-object v1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->comics_two_page_up_layout_size_threshold:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 362
    sget-object v0, Lcom/amazon/android/docviewer/SectionLayoutMode;->NORMAL:Lcom/amazon/android/docviewer/SectionLayoutMode;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/amazon/android/docviewer/SectionLayoutMode;->SCALE_TO_WIDTH:Lcom/amazon/android/docviewer/SectionLayoutMode;

    .line 365
    :goto_0
    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COMICS_SECTION_LAYOUT_MODE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 366
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-virtual {p0, v1, v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/android/docviewer/SectionLayoutMode;->valueOf(Ljava/lang/String;)Lcom/amazon/android/docviewer/SectionLayoutMode;

    move-result-object v0

    return-object v0
.end method

.method public getShowCollectionsInformationDialog()Z
    .locals 2

    .line 2278
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SHOW_COLLECTIONS_INFORMATIONAL_DIALOG:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTextAlignment()Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;
    .locals 2

    .line 1026
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->TEXT_ALIGNMENT:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->context:Landroid/content/Context;

    .line 1027
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getDefaultTextAlignment(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;->serializationValue()I

    move-result v1

    .line 1026
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1028
    invoke-static {v0}, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;->fromSerializationValue(I)Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    move-result-object v0

    return-object v0
.end method

.method public getTheme(Lcom/amazon/kindle/krx/theme/Theme;)Lcom/amazon/kindle/krx/theme/Theme;
    .locals 1

    .line 2176
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->THEME:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2177
    invoke-static {p1}, Lcom/amazon/kindle/krx/theme/Theme;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p1

    return-object p1
.end method

.method public getUseDebugHFSFeed()Z
    .locals 2

    .line 2111
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->USE_DEBUG_HFS_FEED:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->isBooleanSettingEnabled(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUserSetColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;
    .locals 2

    .line 1166
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COLOR_MODE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->serializationValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1167
    invoke-static {v0}, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->fromSerializationValue(I)Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    .line 1171
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->isEasterEgg()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1172
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPreset;->pageColorMode()Lcom/amazon/ksdk/presets/PageColorModeType;

    move-result-object v0

    .line 1173
    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;->ksdkPageColorModeToReaderColorMode(Lcom/amazon/ksdk/presets/PageColorModeType;)Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUserSetColorMode(Z)Lcom/amazon/android/docviewer/KindleDocColorMode$Id;
    .locals 1

    if-eqz p1, :cond_0

    .line 1189
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1190
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object p1

    sget-object v0, Lcom/amazon/ksdk/presets/AaSettingType;->USER_SELECTED_PAGE_COLOR_MODE:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {p1, v0}, Lcom/amazon/ksdk/presets/ReadingPreset;->getLongForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)I

    move-result p1

    .line 1191
    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;->ksdkPageColorModeToReaderColorMode(I)Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object p1

    return-object p1

    .line 1193
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/application/UserSettingsController;->getUserSetColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object p1

    return-object p1
.end method

.method public isAaMenuReadingProgressInitialized()Z
    .locals 2

    .line 2358
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->AA_MENU_READING_PROGRESS_INITIALIZED:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isAnnotationsSyncEnabled()Z
    .locals 3

    .line 1376
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->ANNOTATIONS_SYNC:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->isBooleanSettingEnabled(Ljava/lang/String;Z)Z

    move-result v0

    .line 1377
    sget-boolean v1, Lcom/amazon/kcp/application/UserSettingsController;->isLaunch:Z

    if-eqz v1, :cond_0

    const-string v1, "GetUserSettingAnnotationSync"

    const-string v2, "User Setting Annotation Sync Initialization Value"

    .line 1378
    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kcp/application/UserSettingsController;->reportAnnotationSyncMetrics(ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1379
    sput-boolean v1, Lcom/amazon/kcp/application/UserSettingsController;->isLaunch:Z

    :cond_0
    return v0
.end method

.method public isContinuousScrollChangedForAccessibility()Z
    .locals 1

    .line 468
    iget-boolean v0, p0, Lcom/amazon/kcp/application/UserSettingsController;->isCSChangedForAccessibility:Z

    return v0
.end method

.method public isDownloadBooksToExternalSDCardEnabled()Z
    .locals 2

    .line 2237
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->DOWNLOAD_BOOKS_TO_EXTERNAL_SDCARD_KFA:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDownloadNotificationsEnabled()Z
    .locals 2

    .line 1502
    invoke-virtual {p0}, Lcom/amazon/kcp/application/UserSettingsController;->areNotificationsEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->DOWNLOAD_NOTIFICATIONS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->isBooleanSettingEnabled(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isKindleIllustratedAutoPlayEnabled()Z
    .locals 2

    .line 1329
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1330
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->AUTO_PLAY_MEDIA:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->getBoolForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result v0

    return v0

    .line 1332
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->KINDLE_ILLUSTRATED_AUTO_PLAY_ANIMATIONS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->isBooleanSettingEnabled(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isKindleIllustratedEnabled()Z
    .locals 2

    .line 1306
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1307
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->SHOW_MEDIA:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->getBoolForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result v0

    return v0

    .line 1309
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->KINDLE_ILLUSTRATED:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->isBooleanSettingEnabled(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isKrfAccessibilityPageTurnSupportDebugEnabled()Z
    .locals 2

    .line 920
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->KRF_ACCESSIBILITY_PAGE_TURN_SUPPORT:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->isBooleanSettingEnabled(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNotificationsChannelSubscribed(Ljava/lang/String;Z)Z
    .locals 1

    .line 1482
    invoke-virtual {p0}, Lcom/amazon/kcp/application/UserSettingsController;->areNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/amazon/kcp/application/UserSettingsController;->createNotificationsChannelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/application/UserSettingsController;->isBooleanSettingEnabled(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isOpenInGuidedViewEnabled()Z
    .locals 2

    .line 703
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/debug/AaMenuUtils;->shouldShowAaMenuV2CmxSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->OPEN_IN_GUIDED_VIEW:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->getBoolForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPageCurlDebugToggleEnabled()Z
    .locals 2

    .line 938
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->PAGE_CURL_DEBUG_TOGGLE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->isBooleanSettingEnabled(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPageCurlEnabled()Z
    .locals 3

    .line 965
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->PAGE_CURL:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 967
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->deviceSupportsDisplayMask()Z

    move-result v1

    .line 968
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 969
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->PAGE_TURN_ANIMATION:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->getBoolForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result v0

    return v0

    .line 971
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->isBooleanSettingEnabled(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPopularHighlightsSettingOn()Z
    .locals 2

    .line 1765
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->POPULAR_HIGHLIGHTS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSeriesContentGrouped()Z
    .locals 2

    .line 2204
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SERIES_CONTENT_GROUPED:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/application/UserSettingsController;->isSeriesGroupingStateInitialized()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/debug/LargeSeriesGroupingDebugUtils;->isLargeSeriesGroupingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSeriesGroupingStateInitialized()Z
    .locals 2

    .line 2220
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SERIES_GROUPING_STATE_INITIALIZED:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSeriesUpsellToggleEnabled()Z
    .locals 2

    .line 2254
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SERIES_UPSELL_TOGGLE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowPageOnEnterEnabled()Z
    .locals 2

    .line 720
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/debug/AaMenuUtils;->shouldShowAaMenuV2CmxSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->SHOW_PAGE_ON_ENTER:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->getBoolForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShowPageOnExitEnabled()Z
    .locals 2

    .line 737
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/debug/AaMenuUtils;->shouldShowAaMenuV2CmxSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->SHOW_PAGE_ON_EXIT:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->getBoolForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSystemUsingAutoBrightness()Z
    .locals 8

    const/4 v0, 0x0

    .line 1558
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1565
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    sget-object v5, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v3, "BookSettingsController"

    const-string v4, "BrightnessModeException"

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0
.end method

.method public isTimeDisplayVisible()Z
    .locals 3

    .line 1458
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1459
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->READING_CLOCK:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->getBoolForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result v0

    return v0

    .line 1461
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->TIME_DISPLAY:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->context:Landroid/content/Context;

    .line 1462
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$bool;->time_display_enabled_by_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 1461
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->isBooleanSettingEnabled(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public markSidecarsMigrated()V
    .locals 2

    .line 1992
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SIDECAR_MIGRATION:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected notifyListeners(Ljava/lang/String;)V
    .locals 2

    .line 2090
    new-instance v0, Landroid/app/backup/BackupManager;

    iget-object v1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 2091
    invoke-super {p0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->notifyListeners(Ljava/lang/String;)V

    return-void
.end method

.method public setAaMenuDataMigrated(Z)V
    .locals 1

    .line 2331
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->AA_MENU_DATA_MIGRATION_2:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAaMenuReadingProgressInitialized()V
    .locals 2

    .line 2349
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->AA_MENU_READING_PROGRESS_INITIALIZED:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAnnotationsSyncMode(Z)V
    .locals 2

    .line 1367
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->ANNOTATIONS_SYNC:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "SetUserSettingAnnotationSync"

    const-string v1, "User Setting Annotation Sync Set Value"

    .line 1368
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->reportAnnotationSyncMetrics(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppTheme(Lcom/amazon/kindle/krx/theme/AppTheme;)V
    .locals 1

    .line 2186
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->APP_THEME:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAuthorizedAccount(Ljava/lang/String;)V
    .locals 1

    .line 1868
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->AUTHORIZED_ACCOUNT:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBookOpeningBadgeVisibility(Z)V
    .locals 0

    .line 1669
    iput-boolean p1, p0, Lcom/amazon/kcp/application/UserSettingsController;->isBookOpeningBadgeVisible:Z

    return-void
.end method

.method public setBrightnessMode(Lcom/amazon/kcp/reader/ui/BrightnessMode;)V
    .locals 3

    .line 1280
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1282
    sget-object v1, Lcom/amazon/kcp/reader/ui/BrightnessMode;->SYSTEM:Lcom/amazon/kcp/reader/ui/BrightnessMode;

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 1285
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v1

    sget-object v2, Lcom/amazon/ksdk/presets/AaSettingType;->AUTO_BRIGHTNESS:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    .line 1287
    :cond_1
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->BRIGHTNESS_MODE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/BrightnessMode;->serializationValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V
    .locals 4

    .line 1232
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ColorModeChangedTo_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "BookSettingsController"

    .line 1232
    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 1234
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$CallSource;->VIEW_OPTIONS:Lcom/amazon/kcp/application/UserSettingsController$CallSource;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Lcom/amazon/kcp/application/UserSettingsController$CallSource;)V

    return-void
.end method

.method public setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Lcom/amazon/kcp/application/UserSettingsController$CallSource;)V
    .locals 5

    .line 1243
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ColorModeChangedTo_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "BookSettingsController"

    .line 1243
    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 1245
    invoke-virtual {p0}, Lcom/amazon/kcp/application/UserSettingsController;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 1249
    :cond_0
    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->NIGHT:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 1250
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COLOR_MODE_BEFORE_NIGHT_MODE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/application/UserSettingsController;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->serializationValue()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putInt(Ljava/lang/String;IZ)V

    .line 1253
    :cond_1
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$CallSource;->VIEW_OPTIONS:Lcom/amazon/kcp/application/UserSettingsController$CallSource;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1255
    :goto_0
    sget-object v3, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COLOR_MODE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->serializationValue()I

    move-result v4

    invoke-virtual {p0, v3, v4, v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putInt(Ljava/lang/String;IZ)V

    .line 1257
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1258
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$CallSource;->FAB:Lcom/amazon/kcp/application/UserSettingsController$CallSource;

    if-ne p2, v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/application/UserSettingsController;->setColorModeChangedFromFAB(Z)V

    .line 1259
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    .line 1260
    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;->readerColorModeToKSDKPageColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/ksdk/presets/PageColorModeType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/ksdk/presets/ReadingPreset;->setPageColorMode(Lcom/amazon/ksdk/presets/PageColorModeType;)Z

    .line 1262
    :cond_4
    sget-object p1, Lcom/amazon/kcp/application/UserSettingsController$CallSource;->FAB:Lcom/amazon/kcp/application/UserSettingsController$CallSource;

    if-ne p2, p1, :cond_5

    .line 1263
    sget-object p1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COLOR_MODE_CHANGED_FROM_FAB:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->notifyListeners(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public setColorModeChangedFromFAB(Z)V
    .locals 0

    .line 1272
    iput-boolean p1, p0, Lcom/amazon/kcp/application/UserSettingsController;->colorModeChangedFromFAB:Z

    return-void
.end method

.method public setColumnCount(I)V
    .locals 2

    .line 879
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    .line 881
    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;->readerColumnCountToKSDKColumnCountModeType(I)Lcom/amazon/ksdk/presets/ColumnCountModeType;

    move-result-object v1

    .line 880
    invoke-virtual {v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->setColumnCountModeBooks(Lcom/amazon/ksdk/presets/ColumnCountModeType;)Z

    .line 883
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COLUMN_COUNT:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setContinuousScrollReflowableEnabled(Z)V
    .locals 1

    .line 443
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$CallSource;->VIEW_OPTIONS:Lcom/amazon/kcp/application/UserSettingsController$CallSource;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->setContinuousScrollReflowableEnabled(ZLcom/amazon/kcp/application/UserSettingsController$CallSource;)V

    return-void
.end method

.method public setContinuousScrollReflowableEnabled(ZLcom/amazon/kcp/application/UserSettingsController$CallSource;)V
    .locals 2

    .line 453
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 454
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$CallSource;->ACCESSIBILITY:Lcom/amazon/kcp/application/UserSettingsController$CallSource;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p2}, Lcom/amazon/kcp/application/UserSettingsController;->setContinuousScrollChangedForAccessibility(Z)V

    .line 455
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object p2

    sget-object v0, Lcom/amazon/ksdk/presets/AaSettingType;->CONTINUOUS_SCROLLING:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    .line 458
    :cond_1
    sget-object p2, Lcom/amazon/kcp/application/UserSettingsController$Setting;->CONTINUOUS_SCROLL_REFLOWABLE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    .line 459
    sget-object p2, Lcom/amazon/kcp/application/UserSettingsController$Setting;->CONTINUOUS_SCROLL_REFLOWABLE_EVER_ENABLED:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    .line 460
    sget-object p2, Lcom/amazon/kcp/application/UserSettingsController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting CONTINUOUS_SCROLL_REFLOWABLE in preferences file to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method setCoverImageDimension(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/util/drawing/Dimension;)V
    .locals 6

    .line 2136
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COVER_IMAGE_WIDTH:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "%s_%s"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2137
    iget v2, p2, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    invoke-virtual {p0, v0, v2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putInt(Ljava/lang/String;I)V

    .line 2139
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COVER_IMAGE_HEIGHT:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2140
    iget p2, p2, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setDictionaryLanguage(Ljava/lang/String;)V
    .locals 1

    .line 1799
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->DICTIONARY_LANGUAGE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDictionaryLanguage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1806
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->underscore_string:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/amazon/kcp/application/UserSettingsController$Setting;->DICTIONARY_LANGUAGE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDisplaySelectionButtonsOnQH(Z)V
    .locals 2

    .line 998
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 999
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->HIGHLIGHT_MENU:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    .line 1001
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->QH_SELECTION_BUTTONS_DISPLAY_TOGGLE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDownloadBookNetworkMode(I)V
    .locals 3

    .line 1730
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->USE_DATA_NETWORK_DOWNLOAD_BOOK:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putInt(Ljava/lang/String;I)V

    .line 1731
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadBookNetworkMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BookSettingsController"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDownloadBooksToExternalSDCardEnabled(Z)V
    .locals 1

    .line 2245
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->DOWNLOAD_BOOKS_TO_EXTERNAL_SDCARD_KFA:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDownloadNotificationsSetting(Z)V
    .locals 1

    .line 1510
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->DOWNLOAD_NOTIFICATIONS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setFTUEEventTriggered(Z)V
    .locals 1

    .line 1398
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FTUE_EVENT_TRIGGERED:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setFTUELoadingScreenShown(Z)V
    .locals 1

    .line 1394
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FTUE_LOADING_SCREEN_SHOWN:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setFTUENewsstandEventTriggered(Z)V
    .locals 1

    .line 1402
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FTUE_NEWSSTAND_EVENT_TRIGGERED:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setFTUENewsstandLoadingScreenShown(Z)V
    .locals 1

    .line 1406
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FTUE_NEWSSTAND_LOADING_SCREEN_SHOWN:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setFontFamily(Lcom/mobipocket/android/drawing/FontFamily;Ljava/lang/String;)V
    .locals 4

    .line 1112
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->getFontId(Lcom/mobipocket/android/drawing/FontFamily;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1115
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amazon/ksdk/presets/ReadingPreset;->setFontId(J)Z

    .line 1118
    :cond_0
    invoke-static {p2}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 1119
    invoke-direct {p0, p2, v0}, Lcom/amazon/kcp/application/UserSettingsController;->getPreferenceKeyForFontFace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFontSizeIndex(I)V
    .locals 3

    .line 772
    invoke-static {}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getFontSizes()[I

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 774
    invoke-static {}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getFontSizes()[I

    move-result-object v0

    aget v0, v0, p1

    invoke-static {}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getFontSizes()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/application/UserSettingsController;->getFontSizeIndex()I

    move-result v2

    aget v1, v1, v2

    if-eq v0, v1, :cond_1

    .line 775
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->FONT_SIZE:Lcom/amazon/ksdk/presets/AaSettingType;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/ksdk/presets/ReadingPreset;->setLongForSetting(ILcom/amazon/ksdk/presets/AaSettingType;Z)Z

    .line 779
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FONT_SIZE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public setFooterContentType(Ljava/lang/String;)V
    .locals 2

    .line 1854
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1856
    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->valueOf(Ljava/lang/String;)Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;->readerFooterContentTypeToKSDKReadingProgressModeType(Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;)Lcom/amazon/ksdk/presets/ReadingProgressModeType;

    move-result-object v0

    .line 1857
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v1

    .line 1858
    invoke-virtual {v1, v0}, Lcom/amazon/ksdk/presets/ReadingPreset;->setReadingProgressCurDisplayedMode(Lcom/amazon/ksdk/presets/ReadingProgressModeType;)Z

    .line 1860
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FOOTER_CONTENT_TYPE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setForceDisableJustification(Z)V
    .locals 2

    .line 1010
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1011
    sget-object v0, Lcom/amazon/ksdk/presets/JustificationModeType;->JUSTIFIED:Lcom/amazon/ksdk/presets/JustificationModeType;

    if-eqz p1, :cond_0

    .line 1013
    sget-object v0, Lcom/amazon/ksdk/presets/JustificationModeType;->NOT_JUSTIFIED:Lcom/amazon/ksdk/presets/JustificationModeType;

    .line 1015
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/ksdk/presets/ReadingPreset;->setJustificationMode(Lcom/amazon/ksdk/presets/JustificationModeType;)Z

    .line 1017
    :cond_1
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FORCE_DISABLE_JUSTIFICATION:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setForceHFSExpired(Z)V
    .locals 1

    .line 2107
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FORCE_HFS_EXPIRED:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setForceHFSResponseFailure(Z)V
    .locals 1

    .line 2099
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->FORCE_HFS_RESPONSE_FAILURE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setGuidedViewAnimationEnabled(Z)V
    .locals 2

    .line 637
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->ANIMATION:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    .line 642
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COMICS_TRANSITION_DURATION:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/krl/R$integer;->guided_view_transition_animation_duration_ms:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setGuidedViewTransitionIndex(I)V
    .locals 2

    .line 687
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/debug/AaMenuUtils;->shouldShowAaMenuV2CmxSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;->readerAnimationSpeedIndexToKSDKAnimationSpeed(I)F

    move-result p1

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->ANIMATION_SLIDER:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->setFloatForSetting(FLcom/amazon/ksdk/presets/AaSettingType;)Z

    goto :goto_0

    .line 690
    :cond_0
    sget-object p1, Lcom/amazon/kcp/application/UserSettingsController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setGuidedViewTransitionIndex called when enhanced comic settings disabled."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setHasCenterNotch(Z)V
    .locals 1

    .line 2288
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->HAS_CENTER_NOTCH:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setHasCornerNotch(Z)V
    .locals 1

    .line 2309
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->HAS_CORNER_NOTCH:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setHaveRequestedPersonalDocsPermission(Z)V
    .locals 1

    .line 1757
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->REQUESTED_PERSONAL_DOCS_SETTING:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setHighlightColor(Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1936
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->HIGHLIGHT_COLOR:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getColorTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setIsPageColorMatchingSystemTheme(Z)V
    .locals 2

    .line 1215
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseThreeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->SYSTEM_THEME_FOR_PAGE_COLOR:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    :cond_0
    return-void
.end method

.method public setKindleIllustratedAutoPlayEnabled(Z)V
    .locals 2

    .line 1318
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1319
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->AUTO_PLAY_MEDIA:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    .line 1321
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->KINDLE_ILLUSTRATED_AUTO_PLAY_ANIMATIONS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setKindleIllustratedEnabled(Z)V
    .locals 2

    .line 1295
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1296
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->SHOW_MEDIA:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    .line 1298
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->KINDLE_ILLUSTRATED:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setKrfAccessibilityPageTurnSupportDebugEnabled(Z)V
    .locals 1

    .line 911
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->KRF_ACCESSIBILITY_PAGE_TURN_SUPPORT:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLastTutorialVersionShown(Ljava/lang/String;I)V
    .locals 2

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->LAST_TUTORIAL_VERSION_SHOWN:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 320
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setLetterboxColor(Lcom/amazon/android/docviewer/LetterboxingColor;)V
    .locals 3

    .line 746
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/debug/AaMenuUtils;->shouldShowAaMenuV2CmxSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;->readerLetterboxColorToKSDKLetterboxColor(Lcom/amazon/android/docviewer/LetterboxingColor;)I

    move-result p1

    .line 748
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->LETTERBOXING:Lcom/amazon/ksdk/presets/AaSettingType;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/ksdk/presets/ReadingPreset;->setLongForSetting(ILcom/amazon/ksdk/presets/AaSettingType;Z)Z

    goto :goto_0

    .line 750
    :cond_0
    sget-object p1, Lcom/amazon/kcp/application/UserSettingsController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setShowPageOnExitEnabled called when use KSDK data source disabled"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setLineSpacingIndex(I)V
    .locals 2

    .line 808
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    .line 811
    invoke-static {p1}, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->fromSerializationValue(I)Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    move-result-object v1

    .line 810
    invoke-static {v1}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;->readerLineSpacingOptionToKSDKLineSpacingModeType(Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;)Lcom/amazon/ksdk/presets/LineSpacingModeType;

    move-result-object v1

    .line 809
    invoke-virtual {v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->setLineSpacingMode(Lcom/amazon/ksdk/presets/LineSpacingModeType;)Z

    .line 813
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->LINE_SPACING:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setMargin(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)V
    .locals 2

    .line 851
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    .line 853
    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;->readerMarginToKSDKPageMarginModeType(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)Lcom/amazon/ksdk/presets/PageMarginModeType;

    move-result-object v1

    .line 852
    invoke-virtual {v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->setPageMarginMode(Lcom/amazon/ksdk/presets/PageMarginModeType;)Z

    .line 855
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->LINE_LENGTH:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->serializationValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setNotificationsChannelSubscribed(Ljava/lang/String;Z)V
    .locals 0

    .line 1472
    invoke-static {p1}, Lcom/amazon/kcp/application/UserSettingsController;->createNotificationsChannelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setNotificationsSetting(Z)V
    .locals 1

    .line 1430
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->NOTIFICATIONS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setOpenInGuidedViewEnabled(Z)V
    .locals 2

    .line 695
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/debug/AaMenuUtils;->shouldShowAaMenuV2CmxSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->OPEN_IN_GUIDED_VIEW:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    goto :goto_0

    .line 698
    :cond_0
    sget-object p1, Lcom/amazon/kcp/application/UserSettingsController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setOpenInGuidedViewEnabled called when use KSDK data source disabled"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 3

    .line 1640
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    .line 1647
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v1

    .line 1648
    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;->readerOrientationToKSDKPageOrientationModeType(I)Lcom/amazon/ksdk/presets/PageOrientationModeType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/ksdk/presets/ReadingPreset;->setOrientationMode(Lcom/amazon/ksdk/presets/PageOrientationModeType;)Z

    .line 1649
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v1

    sget-object v2, Lcom/amazon/ksdk/presets/AaSettingType;->PAGE_ORIENTATION_LOCK:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    .line 1651
    :cond_1
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->READER_ORIENTATION_ACTIVITY_INFO:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setPageCurlDebugToggleEnabled(Z)V
    .locals 1

    .line 929
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->PAGE_CURL_DEBUG_TOGGLE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setPageCurlEnabled(Z)V
    .locals 2

    .line 947
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->PAGE_TURN_ANIMATION:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    .line 952
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->PAGE_CURL:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    .line 953
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 955
    invoke-virtual {p0}, Lcom/amazon/kcp/application/UserSettingsController;->isPageCurlDebugToggleEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->enablePageCurl(Z)V

    :cond_2
    return-void
.end method

.method public setPersonalDocsSetting(Z)V
    .locals 1

    .line 1744
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->PERSONAL_DOCS_SETTING:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setPinYinLetterSpacing(Z)V
    .locals 1

    .line 835
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->PINYIN_LETTER_SPACING:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setPopularHighlightsControl(Z)V
    .locals 1

    .line 1773
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->POPULAR_HIGHLIGHTS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setPreferredDictionaryForLanguage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kcp/application/UserSettingsController$Setting;->DICTIONARY_ASIN:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReadingRulerColorType(Lcom/amazon/ksdk/presets/ReadingRulerColorType;)V
    .locals 1

    .line 588
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/ksdk/presets/ReadingPreset;->setReadingRulerColor(Lcom/amazon/ksdk/presets/ReadingRulerColorType;)Z

    :cond_0
    return-void
.end method

.method public setReadingRulerEnabled(Z)V
    .locals 2

    .line 492
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->READING_RULER:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    :cond_0
    return-void
.end method

.method public setReadingRulerOpacity(F)V
    .locals 2

    .line 517
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->READING_RULER_OPACITY:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->setFloatForSetting(FLcom/amazon/ksdk/presets/AaSettingType;)Z

    :cond_0
    return-void
.end method

.method public setReadingRulerSize(Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;)V
    .locals 1

    .line 611
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/ksdk/presets/ReadingPreset;->setReadingRulerNumberOfLines(Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;)Z

    :cond_0
    return-void
.end method

.method public setReadingRulerStyle(Lcom/amazon/ksdk/presets/ReadingRulerStyleType;)V
    .locals 1

    .line 541
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/ksdk/presets/ReadingPreset;->setReadingRulerStyle(Lcom/amazon/ksdk/presets/ReadingRulerStyleType;)Z

    :cond_0
    return-void
.end method

.method public setResumeContentAddRequestCounter(I)V
    .locals 1

    .line 2040
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->RESUME_CONTENT_ADD_REQUEST_COUNTER:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setResumeContentUpdateRequestCounter(I)V
    .locals 1

    .line 2057
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->RESUME_CONTENT_UPDATE_REQUEST_COUNTER:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setResumeRequestCounterResetTime(J)V
    .locals 1

    .line 2075
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->RESUME_REQUEST_COUNTER_RESET_TIME:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setSaveHFSFeed(Z)V
    .locals 1

    .line 2123
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SAVE_HFS_FEED:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setScreenBrightness(F)V
    .locals 4

    .line 1538
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1539
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v1, v1, p1

    float-to-int v1, v1

    sget-object v2, Lcom/amazon/ksdk/presets/AaSettingType;->BRIGHTNESS:Lcom/amazon/ksdk/presets/AaSettingType;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/ksdk/presets/ReadingPreset;->setLongForSetting(ILcom/amazon/ksdk/presets/AaSettingType;Z)Z

    .line 1544
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SCREEN_BRIGHTNESS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setSecondaryFontFamily(Lcom/mobipocket/android/drawing/FontFamily;Ljava/lang/String;)V
    .locals 1

    .line 1123
    invoke-static {p2}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    .line 1124
    invoke-direct {p0, p2, v0}, Lcom/amazon/kcp/application/UserSettingsController;->getPreferenceKeyForFontFace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSectionLayoutMode(Lcom/amazon/android/docviewer/SectionLayoutMode;)V
    .locals 3

    .line 376
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 378
    sget-object v1, Lcom/amazon/android/docviewer/SectionLayoutMode;->SCALE_TO_WIDTH:Lcom/amazon/android/docviewer/SectionLayoutMode;

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 381
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v1

    sget-object v2, Lcom/amazon/ksdk/presets/AaSettingType;->VERTICAL_SCROLLING:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    .line 383
    :cond_1
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->COMICS_SECTION_LAYOUT_MODE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSeriesContentGrouped(Z)V
    .locals 1

    .line 2212
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SERIES_CONTENT_GROUPED:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSeriesGroupingStateInitialized(Z)V
    .locals 1

    .line 2229
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SERIES_GROUPING_STATE_INITIALIZED:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setShouldSkipTutorials(Z)V
    .locals 1

    .line 2015
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->ALWAYS_SKIP_TUTORIALS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setShowCollectionsInformationDialog(Z)V
    .locals 1

    .line 2270
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SHOW_COLLECTIONS_INFORMATIONAL_DIALOG:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setShowPageOnEnterEnabled(Z)V
    .locals 2

    .line 712
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/debug/AaMenuUtils;->shouldShowAaMenuV2CmxSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->SHOW_PAGE_ON_ENTER:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    goto :goto_0

    .line 715
    :cond_0
    sget-object p1, Lcom/amazon/kcp/application/UserSettingsController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setShowPageOnEnterEnabled called when use KSDK data source disabled"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setShowPageOnExitEnabled(Z)V
    .locals 2

    .line 729
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/debug/AaMenuUtils;->shouldShowAaMenuV2CmxSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->SHOW_PAGE_ON_EXIT:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    goto :goto_0

    .line 732
    :cond_0
    sget-object p1, Lcom/amazon/kcp/application/UserSettingsController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setShowPageOnExitEnabled called when use KSDK data source disabled"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setTextAlignment(Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;)V
    .locals 1

    .line 981
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->TEXT_ALIGNMENT:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;->serializationValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setTheme(Lcom/amazon/kindle/krx/theme/Theme;)V
    .locals 1

    .line 2172
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->THEME:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTimeDisplayVisibility(Z)V
    .locals 3

    .line 1438
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1439
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->READING_CLOCK:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    .line 1441
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->TIME_DISPLAY:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    const-string p1, "SetTimeDisplayToEnabled"

    goto :goto_0

    :cond_1
    const-string p1, "SetTimeDisplayToDisabled"

    .line 1443
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "BookSettingsController"

    invoke-virtual {v0, v2, p1, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    return-void
.end method

.method public setUseDebugHFSFeed(Z)V
    .locals 1

    .line 2115
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->USE_DEBUG_HFS_FEED:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setVolumeKeysArePageControls(Z)V
    .locals 2

    .line 1713
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1714
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->TURN_PAGES_WITH_VOLUME_CONTROLS:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    .line 1717
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->VOLUME_KEYS_PAGE_CONTROLS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public shouldDisplaySelectionButtonsOnQH()Z
    .locals 2

    .line 990
    invoke-direct {p0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldUseKSDKDataSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->HIGHLIGHT_MENU:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->getBoolForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result v0

    return v0

    .line 993
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->QH_SELECTION_BUTTONS_DISPLAY_TOGGLE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->isBooleanSettingEnabled(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public shouldSkipLegacyTutorials()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
