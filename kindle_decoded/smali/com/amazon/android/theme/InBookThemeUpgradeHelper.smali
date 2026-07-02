.class public final Lcom/amazon/android/theme/InBookThemeUpgradeHelper;
.super Ljava/lang/Object;
.source "InBookThemeUpgradeHelper.kt"


# annotations
.annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
    violations = {
        .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/android/theme/InBookThemeUpgradeHelper;

.field private static final prefs$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/amazon/android/theme/InBookThemeUpgradeHelper;

    invoke-direct {v0}, Lcom/amazon/android/theme/InBookThemeUpgradeHelper;-><init>()V

    sput-object v0, Lcom/amazon/android/theme/InBookThemeUpgradeHelper;->INSTANCE:Lcom/amazon/android/theme/InBookThemeUpgradeHelper;

    .line 38
    sget-object v0, Lcom/amazon/android/theme/InBookThemeUpgradeHelper$prefs$2;->INSTANCE:Lcom/amazon/android/theme/InBookThemeUpgradeHelper$prefs$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/theme/InBookThemeUpgradeHelper;->prefs$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getPrefs()Landroid/content/SharedPreferences;
    .locals 1

    sget-object v0, Lcom/amazon/android/theme/InBookThemeUpgradeHelper;->prefs$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private final markUpgradeComplete()Z
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskWriteViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lcom/amazon/android/theme/InBookThemeUpgradeHelper;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "WasAppUpgraded"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static final declared-synchronized upgradeIfNecessary$KindleReaderLibrary_release()V
    .locals 4

    const-class v0, Lcom/amazon/android/theme/InBookThemeUpgradeHelper;

    monitor-enter v0

    .line 48
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getAppTheme()Lcom/amazon/kindle/krx/theme/AppTheme;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/amazon/kindle/krx/theme/AppTheme;->FOLLOW_SYSTEM:Lcom/amazon/kindle/krx/theme/AppTheme;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/amazon/android/theme/InBookThemeUpgradeHelper;->INSTANCE:Lcom/amazon/android/theme/InBookThemeUpgradeHelper;

    invoke-virtual {v1}, Lcom/amazon/android/theme/InBookThemeUpgradeHelper;->isUpgradeComplete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    invoke-static {}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->instance()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v1

    const/4 v2, 0x1

    sget-object v3, Lcom/amazon/ksdk/presets/AaSettingType;->SYSTEM_THEME_FOR_PAGE_COLOR:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v1, v2, v3}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    .line 50
    sget-object v1, Lcom/amazon/android/theme/InBookThemeUpgradeHelper;->INSTANCE:Lcom/amazon/android/theme/InBookThemeUpgradeHelper;

    invoke-direct {v1}, Lcom/amazon/android/theme/InBookThemeUpgradeHelper;->markUpgradeComplete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final isUpgradeComplete()Z
    .locals 3

    .line 59
    invoke-direct {p0}, Lcom/amazon/android/theme/InBookThemeUpgradeHelper;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "WasAppUpgraded"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
