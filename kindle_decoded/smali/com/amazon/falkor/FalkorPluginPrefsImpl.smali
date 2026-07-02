.class public final Lcom/amazon/falkor/FalkorPluginPrefsImpl;
.super Ljava/lang/Object;
.source "FalkorPluginPrefs.kt"

# interfaces
.implements Lcom/amazon/falkor/FalkorPluginPrefs;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFalkorPluginPrefs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FalkorPluginPrefs.kt\ncom/amazon/falkor/FalkorPluginPrefsImpl\n*L\n1#1,131:1\n*E\n"
.end annotation


# instance fields
.field private final appSettingsPrefs:Landroid/content/SharedPreferences;

.field private final debugSettingsPrefs:Landroid/content/SharedPreferences;

.field private final falkorPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V
    .locals 1

    const-string v0, "falkorPrefs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appSettingsPrefs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugSettingsPrefs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/FalkorPluginPrefsImpl;->falkorPrefs:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/amazon/falkor/FalkorPluginPrefsImpl;->appSettingsPrefs:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/amazon/falkor/FalkorPluginPrefsImpl;->debugSettingsPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 5

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "FalkorPluginPrefs"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "sdk.context.getSharedPre\u2026ME, Context.MODE_PRIVATE)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "AppSettings"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v4, "DebugSettings"

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, v0, v3, p1}, Lcom/amazon/falkor/FalkorPluginPrefsImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private final setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .locals 0

    .line 125
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 126
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 127
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public getHasFullSyncValidated()Z
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/amazon/falkor/FalkorPluginPrefsImpl;->falkorPrefs:Landroid/content/SharedPreferences;

    const-string v1, "HasFullSyncValidated"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsAppFreshInstall()Z
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/amazon/falkor/FalkorPluginPrefsImpl;->appSettingsPrefs:Landroid/content/SharedPreferences;

    const-string v1, "FRESH_APP_INSTALL"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsExistingFalkorCustomerStatusCached()Z
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/amazon/falkor/FalkorPluginPrefsImpl;->falkorPrefs:Landroid/content/SharedPreferences;

    const-string v1, "IsExistingFalkorCustomerStatusCached"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsPreProdEnabled()Z
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/amazon/falkor/FalkorPluginPrefsImpl;->debugSettingsPrefs:Landroid/content/SharedPreferences;

    const-string v1, "FALKOR_PRE_PROD_ENDPOINT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 116
    iget-object p1, p0, Lcom/amazon/falkor/FalkorPluginPrefsImpl;->falkorPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "IsExistingFalkorCustomerStatusCached"

    .line 117
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "HasFullSyncValidated"

    .line 118
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 119
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setHasFullSyncValidated()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/amazon/falkor/FalkorPluginPrefsImpl;->falkorPrefs:Landroid/content/SharedPreferences;

    const-string v1, "HasFullSyncValidated"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/falkor/FalkorPluginPrefsImpl;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public setIsExistingFalkorCustomerStatusCached()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/amazon/falkor/FalkorPluginPrefsImpl;->falkorPrefs:Landroid/content/SharedPreferences;

    const-string v1, "IsExistingFalkorCustomerStatusCached"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/falkor/FalkorPluginPrefsImpl;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public setIsPreProdEnabled(Z)V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/amazon/falkor/FalkorPluginPrefsImpl;->debugSettingsPrefs:Landroid/content/SharedPreferences;

    const-string v1, "FALKOR_PRE_PROD_ENDPOINT"

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/falkor/FalkorPluginPrefsImpl;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method
