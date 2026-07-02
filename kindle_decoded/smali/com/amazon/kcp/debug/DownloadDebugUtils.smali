.class public final Lcom/amazon/kcp/debug/DownloadDebugUtils;
.super Ljava/lang/Object;
.source "DownloadDebugUtils.kt"


# static fields
.field private static final DOWNLOAD_DEBUG_SETTINGS:Ljava/lang/String; = "ReaderDownloadDebugSettings"

.field private static final UNSET_INT_SENTINEL:I = -0x1

.field private static areCoroutinesEnabled:Z = false

.field private static areDebugToastsEnabled:Z = false

.field private static assetRequestDownloadManagerThreadCount:I = -0x1

.field private static final coroutineWeblabTreatment$delegate:Lkotlin/Lazy;

.field private static isHttp2Enabled:Z = true

.field private static isOkHttpWebRequestExecutorEnabled:Z

.field private static isSupportedVoucherVersionsManifestEnabled:Z

.field private static final okHttpWeblabTreatment$delegate:Lkotlin/Lazy;

.field private static shouldSimulateAdpFailures:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 145
    sget-object v0, Lcom/amazon/kcp/debug/DownloadDebugUtils$okHttpWeblabTreatment$2;->INSTANCE:Lcom/amazon/kcp/debug/DownloadDebugUtils$okHttpWeblabTreatment$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/debug/DownloadDebugUtils;->okHttpWeblabTreatment$delegate:Lkotlin/Lazy;

    .line 149
    sget-object v0, Lcom/amazon/kcp/debug/DownloadDebugUtils$coroutineWeblabTreatment$2;->INSTANCE:Lcom/amazon/kcp/debug/DownloadDebugUtils$coroutineWeblabTreatment$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/debug/DownloadDebugUtils;->coroutineWeblabTreatment$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final areCoroutinesDebugEnabled()Z
    .locals 1

    .line 166
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/amazon/kcp/debug/DownloadDebugUtils;->areCoroutinesEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final areCoroutinesEnabled()Z
    .locals 4

    .line 133
    invoke-static {}, Lcom/amazon/kindle/config/AppConfigManagerSingleton;->getInstance()Lcom/amazon/kindle/config/IAppConfigManager;

    move-result-object v0

    .line 134
    sget-object v1, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;->SUPPORTS_COROUTINE_DOWNLOAD_WORKFLOW:Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/config/IAppConfigManager;->getBool(Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_1

    .line 138
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->getCoroutineWeblabTreatment()Ljava/lang/String;

    move-result-object v0

    const-string v3, "T1"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 139
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->areCoroutinesDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 140
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public static final getAssetRequestDownloadManagerThreadCount(I)I
    .locals 2

    .line 101
    sget v0, Lcom/amazon/kcp/debug/DownloadDebugUtils;->assetRequestDownloadManagerThreadCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    return p0
.end method

.method public static final getBooleanFlag(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-static {p0}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final getCoroutineWeblabTreatment()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/debug/DownloadDebugUtils;->coroutineWeblabTreatment$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final getIntFlag(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {p0}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static final getOkHttpWeblabTreatment()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/debug/DownloadDebugUtils;->okHttpWeblabTreatment$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static final getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "ReaderDownloadDebugSettings"

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "context.getSharedPrefere\u2026GS, Context.MODE_PRIVATE)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getShouldSimulateAdpFailures()Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/amazon/kcp/debug/DownloadDebugUtils;->shouldSimulateAdpFailures:Z

    return v0
.end method

.method public static final initDebugValues(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-boolean v0, Lcom/amazon/kcp/debug/DownloadDebugUtils;->areCoroutinesEnabled:Z

    const-string v1, "EnableDownloadCoroutines"

    invoke-static {p0, v1, v0}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->getBooleanFlag(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/amazon/kcp/debug/DownloadDebugUtils;->areCoroutinesEnabled:Z

    .line 33
    sget-boolean v0, Lcom/amazon/kcp/debug/DownloadDebugUtils;->isSupportedVoucherVersionsManifestEnabled:Z

    const-string v1, "EnableSupportedVoucherVersionsManifest"

    invoke-static {p0, v1, v0}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->getBooleanFlag(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/amazon/kcp/debug/DownloadDebugUtils;->isSupportedVoucherVersionsManifestEnabled:Z

    const-string v0, "AssetRequestDownloadManagerThreadCount"

    const/4 v1, -0x1

    .line 34
    invoke-static {p0, v0, v1}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->getIntFlag(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/amazon/kcp/debug/DownloadDebugUtils;->assetRequestDownloadManagerThreadCount:I

    .line 35
    sget-boolean v0, Lcom/amazon/kcp/debug/DownloadDebugUtils;->isOkHttpWebRequestExecutorEnabled:Z

    const-string v1, "EnableOkHttpWebRequestExecutor"

    invoke-static {p0, v1, v0}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->getBooleanFlag(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/amazon/kcp/debug/DownloadDebugUtils;->isOkHttpWebRequestExecutorEnabled:Z

    .line 36
    sget-boolean v0, Lcom/amazon/kcp/debug/DownloadDebugUtils;->areDebugToastsEnabled:Z

    const-string v1, "EnableDebugToasts"

    invoke-static {p0, v1, v0}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->getBooleanFlag(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/amazon/kcp/debug/DownloadDebugUtils;->areDebugToastsEnabled:Z

    .line 37
    sget-boolean v0, Lcom/amazon/kcp/debug/DownloadDebugUtils;->isHttp2Enabled:Z

    const-string v1, "EnableHttp2"

    invoke-static {p0, v1, v0}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->getBooleanFlag(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/amazon/kcp/debug/DownloadDebugUtils;->isHttp2Enabled:Z

    return-void
.end method

.method public static final isHttp2DebugEnabled()Z
    .locals 1

    .line 162
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/amazon/kcp/debug/DownloadDebugUtils;->isHttp2Enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isHttp2Enabled()Z
    .locals 2

    .line 126
    invoke-static {}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->getOkHttpWeblabTreatment()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T2"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->isHttp2DebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static final isOkHttpWebRequestExecutorDebugEnabled()Z
    .locals 1

    .line 154
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/amazon/kcp/debug/DownloadDebugUtils;->isOkHttpWebRequestExecutorEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isOkHttpWebRequestExecutorEnabled()Z
    .locals 2

    const-string v0, "T1"

    const-string v1, "T2"

    .line 117
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->getOkHttpWeblabTreatment()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->isOkHttpWebRequestExecutorDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static final isSupportedVoucherVersionsManifestEnabled()Z
    .locals 4

    .line 105
    invoke-static {}, Lcom/amazon/kindle/config/AppConfigManagerSingleton;->getInstance()Lcom/amazon/kindle/config/IAppConfigManager;

    move-result-object v0

    .line 106
    sget-object v1, Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;->SUPPORTED_VOUCHER_VERSIONS_MANIFEST_ALLOWED:Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/config/IAppConfigManager;->getBool(Lcom/amazon/kindle/config/IAppConfigManager$AppBooleanProperty;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 109
    :cond_1
    sget-boolean v0, Lcom/amazon/kcp/debug/DownloadDebugUtils;->isSupportedVoucherVersionsManifestEnabled:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 110
    :cond_2
    sget-object v0, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->SUPPORTED_VOUCHER_VERSIONS_MANIFEST:Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;

    invoke-virtual {v0}, Lcom/amazon/kindle/mobileweblab/ReaderWeblabs$Weblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object v0

    const-string v3, "T1"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v1
.end method

.method private static final persistBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 53
    invoke-static {p0}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static final persistInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 57
    invoke-static {p0}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static final setAssetRequestDownloadManagerThreadCount(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p1, :cond_0

    .line 73
    sput p1, Lcom/amazon/kcp/debug/DownloadDebugUtils;->assetRequestDownloadManagerThreadCount:I

    const-string v0, "AssetRequestDownloadManagerThreadCount"

    .line 74
    invoke-static {p0, v0, p1}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->persistInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    .line 71
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot set a thread count to be a non-positive number. Received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final setCoroutinesEnabled(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    sput-boolean p1, Lcom/amazon/kcp/debug/DownloadDebugUtils;->areCoroutinesEnabled:Z

    const-string v0, "EnableDownloadCoroutines"

    .line 94
    invoke-static {p0, v0, p1}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->persistBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final setHttp2Enabled(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    sput-boolean p1, Lcom/amazon/kcp/debug/DownloadDebugUtils;->isHttp2Enabled:Z

    const-string v0, "EnableHttp2"

    .line 89
    invoke-static {p0, v0, p1}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->persistBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final setShouldShowDebugToasts(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sput-boolean p1, Lcom/amazon/kcp/debug/DownloadDebugUtils;->areDebugToastsEnabled:Z

    const-string v0, "EnableDebugToasts"

    .line 84
    invoke-static {p0, v0, p1}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->persistBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final setShouldSimulateAdpFailures(Z)V
    .locals 0

    .line 27
    sput-boolean p0, Lcom/amazon/kcp/debug/DownloadDebugUtils;->shouldSimulateAdpFailures:Z

    return-void
.end method

.method public static final setShouldUseOkHttpWebRequestExecutor(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sput-boolean p1, Lcom/amazon/kcp/debug/DownloadDebugUtils;->isOkHttpWebRequestExecutorEnabled:Z

    const-string v0, "EnableOkHttpWebRequestExecutor"

    .line 79
    invoke-static {p0, v0, p1}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->persistBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final setSupportedVoucherVersionsManifestEnabled(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sput-boolean p1, Lcom/amazon/kcp/debug/DownloadDebugUtils;->isSupportedVoucherVersionsManifestEnabled:Z

    const-string v0, "EnableSupportedVoucherVersionsManifest"

    .line 63
    invoke-static {p0, v0, p1}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->persistBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final shouldShowDownloadDebugToasts()Z
    .locals 1

    .line 158
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/amazon/kcp/debug/DownloadDebugUtils;->areDebugToastsEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
