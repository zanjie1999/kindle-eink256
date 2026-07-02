.class public final Lcom/audible/hushpuppy/common/debug/MobileWeblabHandler;
.super Ljava/lang/Object;
.source "MobileWeblabHandler.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final audibleWebviewOnFosWeblabId:Ljava/lang/String;

.field private final dbScalingWeblabId:Ljava/lang/String;

.field private final debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

.field private final kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final sharedPreferences:Lcom/audible/mobile/preferences/PreferenceStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;",
            ">;"
        }
    .end annotation
.end field

.field private final weblabManager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/common/debug/MobileWeblabHandler;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/common/debug/MobileWeblabHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/mobile/preferences/PreferenceStore;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;",
            ">;",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AUDIBLE_HP_COMPANION_MAPPING_165984"

    .line 30
    iput-object v0, p0, Lcom/audible/hushpuppy/common/debug/MobileWeblabHandler;->dbScalingWeblabId:Ljava/lang/String;

    const-string v0, "KINDLE_ANDROID_APPCORE_AUDIBLE_WEBVIEW_FOS_303479"

    .line 31
    iput-object v0, p0, Lcom/audible/hushpuppy/common/debug/MobileWeblabHandler;->audibleWebviewOnFosWeblabId:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/audible/hushpuppy/common/debug/MobileWeblabHandler;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v0, "kindleReaderSdk can\'t be null."

    .line 45
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/common/debug/MobileWeblabHandler;->weblabManager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    const-string v0, "weblabManager can\'t be null."

    .line 48
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    iput-object p2, p0, Lcom/audible/hushpuppy/common/debug/MobileWeblabHandler;->sharedPreferences:Lcom/audible/mobile/preferences/PreferenceStore;

    const-string p1, "sharedPreferences can\'t be null."

    .line 51
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    iput-object p3, p0, Lcom/audible/hushpuppy/common/debug/MobileWeblabHandler;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    const-string p1, "debugHelper can\'t be null."

    .line 54
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public checkAndUpdateDBScalingToggle()V
    .locals 4

    const-string v0, "AUDIBLE_HP_COMPANION_MAPPING_165984"

    .line 98
    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/common/debug/MobileWeblabHandler;->getTreatmentAndRecordTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/audible/hushpuppy/common/debug/MobileWeblabHandler;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isDBScalingEnabled()Z

    move-result v1

    const-string v2, "T1"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    const-string v1, "C"

    .line 102
    :goto_0
    iget-object v3, p0, Lcom/audible/hushpuppy/common/debug/MobileWeblabHandler;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {v3}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isDBScalingToggleMismatchExpected()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/audible/hushpuppy/common/debug/MobileWeblabHandler;->sharedPreferences:Lcom/audible/mobile/preferences/PreferenceStore;

    sget-object v3, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;->DB_SCALING_TOGGLE_KEY:Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v1, v3, v0}, Lcom/audible/mobile/preferences/PreferenceStore;->setBoolean(Ljava/lang/Object;Z)V

    .line 104
    iget-object v0, p0, Lcom/audible/hushpuppy/common/debug/MobileWeblabHandler;->sharedPreferences:Lcom/audible/mobile/preferences/PreferenceStore;

    sget-object v1, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;->DB_SCALING_TOGGLE_MISMATCH_EXPECTED_KEY:Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/audible/mobile/preferences/PreferenceStore;->setBoolean(Ljava/lang/Object;Z)V

    :cond_1
    return-void
.end method

.method public getTreatment(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 65
    iget-object v0, p0, Lcom/audible/hushpuppy/common/debug/MobileWeblabHandler;->weblabManager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Lcom/audible/hushpuppy/common/debug/MobileWeblabHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Weblab not found with name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 70
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAssignment()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTreatmentAndRecordTrigger(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 86
    iget-object v0, p0, Lcom/audible/hushpuppy/common/debug/MobileWeblabHandler;->weblabManager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    if-nez v0, :cond_0

    .line 88
    sget-object v0, Lcom/audible/hushpuppy/common/debug/MobileWeblabHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Weblab not found with name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 91
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public recordTrigger(Ljava/lang/String;)V
    .locals 5

    .line 76
    iget-object v0, p0, Lcom/audible/hushpuppy/common/debug/MobileWeblabHandler;->weblabManager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    if-nez v0, :cond_0

    .line 78
    sget-object v0, Lcom/audible/hushpuppy/common/debug/MobileWeblabHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Weblab not found with name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-void

    .line 81
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->recordTrigger()V

    return-void
.end method

.method public registerKnownWeblabs()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/audible/hushpuppy/common/debug/MobileWeblabHandler;->weblabManager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    const-string v1, "C"

    const-string v2, "AUDIBLE_HP_COMPANION_MAPPING_165984"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->addWeblab(Ljava/lang/String;Ljava/lang/String;)Z

    .line 60
    iget-object v0, p0, Lcom/audible/hushpuppy/common/debug/MobileWeblabHandler;->weblabManager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    const-string v2, "KINDLE_ANDROID_APPCORE_AUDIBLE_WEBVIEW_FOS_303479"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->addWeblab(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
