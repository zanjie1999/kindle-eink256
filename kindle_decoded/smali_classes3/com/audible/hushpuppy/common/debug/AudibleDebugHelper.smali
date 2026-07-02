.class public Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;
.super Ljava/lang/Object;
.source "AudibleDebugHelper.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/debug/IAudibleDebugHelper;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final TREATMENT_T1:Ljava/lang/String; = "T1"


# instance fields
.field private final debugSharedPreferences:Lcom/audible/mobile/preferences/PreferenceStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;",
            ">;"
        }
    .end annotation
.end field

.field protected hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field private final releaseBuild:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/preferences/PreferenceStore;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;",
            ">;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "context can\'t be null."

    .line 67
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    invoke-static {p2}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/mobile/preferences/PreferenceStore;

    iput-object p2, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->debugSharedPreferences:Lcom/audible/mobile/preferences/PreferenceStore;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$bool;->is_release_build:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->releaseBuild:Z

    return-void
.end method


# virtual methods
.method public isAudibleWebviewOnFOSEnabled()Z
    .locals 4

    .line 162
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->mobileWeblabHandler()Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    move-result-object v0

    const-string v1, "KINDLE_ANDROID_APPCORE_AUDIBLE_WEBVIEW_FOS_303479"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;->getTreatmentAndRecordTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->debugSharedPreferences:Lcom/audible/mobile/preferences/PreferenceStore;

    sget-object v2, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;->AUDIBLE_WEBVIEW_ON_FOS_TOGGLE_KEY:Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/audible/mobile/preferences/PreferenceStore;->getBoolean(Ljava/lang/Object;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "T1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public isDBScalingEnabled()Z
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->debugSharedPreferences:Lcom/audible/mobile/preferences/PreferenceStore;

    sget-object v1, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;->DB_SCALING_TOGGLE_KEY:Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/audible/mobile/preferences/PreferenceStore;->getBoolean(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public isDBScalingToggleMismatchExpected()Z
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->debugSharedPreferences:Lcom/audible/mobile/preferences/PreferenceStore;

    sget-object v1, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;->DB_SCALING_TOGGLE_MISMATCH_EXPECTED_KEY:Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/audible/mobile/preferences/PreferenceStore;->getBoolean(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public isReleaseBuild()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->releaseBuild:Z

    return v0
.end method

.method public isToaEnabled(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z
    .locals 4

    .line 115
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v0

    .line 116
    sget-object v1, Lcom/amazon/kindle/krx/application/AppType;->KFC:Lcom/amazon/kindle/krx/application/AppType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    sget-object v1, Lcom/amazon/kindle/krx/application/AppType;->KFE:Lcom/amazon/kindle/krx/application/AppType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    sget-object v1, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 123
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 124
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object p1

    .line 125
    sget-object v0, Lcom/audible/mobile/identity/Marketplace;->AMAZON_US:Lcom/audible/mobile/identity/Marketplace;

    invoke-virtual {v0}, Lcom/audible/mobile/identity/Marketplace;->getProductionObfuscatedMarketplaceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/audible/mobile/identity/Marketplace;->AMAZON_AU:Lcom/audible/mobile/identity/Marketplace;

    .line 126
    invoke-virtual {v0}, Lcom/audible/mobile/identity/Marketplace;->getProductionObfuscatedMarketplaceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    return v2

    :cond_2
    const/4 p1, 0x1

    return p1

    .line 118
    :cond_3
    :goto_0
    sget-object p1, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring TOA treatment for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return v2
.end method

.method public isUpsellCanceledEnabled()Z
    .locals 3

    .line 90
    invoke-virtual {p0}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isReleaseBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/audible/hushpuppy/common/debug/DebugFeature;->UPSELL_CANCEL_FLOW:Lcom/audible/hushpuppy/common/debug/DebugFeature;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/debug/DebugFeature;->isDefaultEnable()Z

    move-result v0

    return v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->debugSharedPreferences:Lcom/audible/mobile/preferences/PreferenceStore;

    sget-object v1, Lcom/audible/hushpuppy/common/debug/DebugFeature;->UPSELL_CANCEL_FLOW:Lcom/audible/hushpuppy/common/debug/DebugFeature;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/common/debug/DebugFeature;->getDebugTogglePreferenceKey()Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    move-result-object v1

    sget-object v2, Lcom/audible/hushpuppy/common/debug/DebugFeature;->UPSELL_CANCEL_FLOW:Lcom/audible/hushpuppy/common/debug/DebugFeature;

    invoke-virtual {v2}, Lcom/audible/hushpuppy/common/debug/DebugFeature;->isDefaultEnable()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/audible/mobile/preferences/PreferenceStore;->getBoolean(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method
