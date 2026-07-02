.class public Lcom/amazon/ea/debug/AnyActionsDebugSettings;
.super Ljava/lang/Object;
.source "AnyActionsDebugSettings.java"


# static fields
.field private static final DELAY_ALL_AUTO_SHELF_UPDATE_REQUESTS:Ljava/lang/String; = "com.amazon.ea.debug.AnyActionsDebugSettings.DELAY_ALL_AUTO_SHELF_UPDATE_REQUESTS"

.field private static final DELAY_ALL_AUTO_SHELF_UPDATE_REQUESTS_DURATION:Ljava/lang/String; = "com.amazon.ea.AnyActionsDebugSettings.DELAY_ALL_AUTO_SHELF_UPDATE_REQUESTS_DURATION"

.field private static final DELAY_ALL_UPDATE_REQUESTS_DEFAULT_VALUE:I = 0x2

.field private static final FAIL_ALL_AUTO_SHELF_UPDATE_REQUESTS:Ljava/lang/String; = "com.amazon.ea.debug.AnyActionsDebugSettings.FAIL_ALL_AUTO_SHELF_UPDATE_REQUESTS"

.field private static final FAIL_ALL_AUTO_SHELF_UPDATE_REQUESTS_WITH_LINKING_ERROR:Ljava/lang/String; = "com.amazon.ea.debug.AnyActionsDebugSettings.FAIL_ALL_AUTO_SHELF_UPDATE_REQUESTS_WITH_LINKING_ERROR"

.field private static final ONE_TAP_FAKE_PURCHASES_ENABLED:Ljava/lang/String; = "com.amazon.ea.debug.AnyActionsDebugSettings.ONE_TAP_FAKE_PURCHASES_ENABLED"

.field private static delayAllAutoShelfUpdateRequests:Z = false

.field private static delayAllAutoShelfUpdateRequestsDuration:I = 0x0

.field private static failAllAutoShelfUpdateRequests:Z = false

.field private static failAllAutoShelfUpdateRequestsWithLinkingError:Z = false

.field private static oneTapFakePurchasesEnabled:Z = false

.field private static useDebugSettings:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getAutoShelfUpdateRequestsDelayDuration()I
    .locals 1

    .line 95
    sget v0, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->delayAllAutoShelfUpdateRequestsDuration:I

    return v0
.end method

.method public static getDelayAllAutoShelfUpdateRequests()Z
    .locals 1

    .line 86
    sget-boolean v0, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->delayAllAutoShelfUpdateRequests:Z

    return v0
.end method

.method public static getFailAllAutoShelfUpdateRequests()Z
    .locals 1

    .line 68
    sget-boolean v0, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->failAllAutoShelfUpdateRequests:Z

    return v0
.end method

.method public static getFailAllAutoShelfUpdateRequestsWithLinkingError()Z
    .locals 1

    .line 77
    sget-boolean v0, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->failAllAutoShelfUpdateRequestsWithLinkingError:Z

    return v0
.end method

.method public static getOneTapExpandoEnabled()Z
    .locals 5

    .line 119
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    sget-object v3, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 121
    :goto_0
    sget-object v3, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/krx/application/ApplicationFeature;->ONE_TAP_END_ACTIONS_EXPANDO:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v3, v4}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static getOneTapFakePurchasesEnabled()Z
    .locals 1

    .line 102
    sget-boolean v0, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->oneTapFakePurchasesEnabled:Z

    return v0
.end method

.method public static getOneTapNextInSeriesEnabled()Z
    .locals 5

    .line 109
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    sget-object v3, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 111
    :goto_0
    sget-object v3, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/krx/application/ApplicationFeature;->ONE_TAP_END_ACTIONS_NIS:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v3, v4}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static initDebugValues()V
    .locals 10

    const-string v0, "anyactions.debugsettings"

    const-string v1, "com.amazon.ea.debug.AnyActionsDebugSettings.FAIL_ALL_AUTO_SHELF_UPDATE_REQUESTS"

    .line 34
    invoke-static {v0, v1}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getBooleanPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "com.amazon.ea.debug.AnyActionsDebugSettings.FAIL_ALL_AUTO_SHELF_UPDATE_REQUESTS_WITH_LINKING_ERROR"

    .line 35
    invoke-static {v0, v2}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getBooleanPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "com.amazon.ea.debug.AnyActionsDebugSettings.DELAY_ALL_AUTO_SHELF_UPDATE_REQUESTS"

    .line 36
    invoke-static {v0, v3}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getBooleanPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "com.amazon.ea.AnyActionsDebugSettings.DELAY_ALL_AUTO_SHELF_UPDATE_REQUESTS_DURATION"

    .line 37
    invoke-static {v0, v4}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getIntegerPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "purchase.client.glidev2.dontbuy"

    .line 38
    invoke-static {v0, v5}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getBooleanPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "com.amazon.ea.debug.AnyActionsDebugSettings.ONE_TAP_FAKE_PURCHASES_ENABLED"

    .line 39
    invoke-static {v0, v7}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getBooleanPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->setFailAllAutoShelfUpdateRequests(Z)V

    if-eqz v2, :cond_1

    .line 42
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->setFailAllAutoShelfUpdateRequestsWithLinkingError(Z)V

    if-eqz v3, :cond_2

    .line 43
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    invoke-static {v8}, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->setDelayAllAutoShelfUpdateRequests(Z)V

    if-eqz v4, :cond_3

    .line 44
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x2

    :goto_3
    invoke-static {v1}, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->setDelayAllAutoShelfUpdateRequestsDuration(I)V

    if-nez v6, :cond_4

    .line 46
    invoke-static {v0, v5, v9}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    if-eqz v7, :cond_5

    .line 49
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->oneTapFakePurchasesEnabled:Z

    :cond_5
    return-void
.end method

.method static setDelayAllAutoShelfUpdateRequests(Z)V
    .locals 2

    .line 160
    sput-boolean p0, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->delayAllAutoShelfUpdateRequests:Z

    const-string v0, "anyactions.debugsettings"

    const-string v1, "com.amazon.ea.debug.AnyActionsDebugSettings.DELAY_ALL_AUTO_SHELF_UPDATE_REQUESTS"

    .line 161
    invoke-static {v0, v1, p0}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static setDelayAllAutoShelfUpdateRequestsDuration(I)V
    .locals 2

    .line 170
    sput p0, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->delayAllAutoShelfUpdateRequestsDuration:I

    const-string v0, "anyactions.debugsettings"

    const-string v1, "com.amazon.ea.AnyActionsDebugSettings.DELAY_ALL_AUTO_SHELF_UPDATE_REQUESTS_DURATION"

    .line 171
    invoke-static {v0, v1, p0}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setIntPreference(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static setFailAllAutoShelfUpdateRequests(Z)V
    .locals 2

    .line 140
    sput-boolean p0, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->failAllAutoShelfUpdateRequests:Z

    const-string v0, "anyactions.debugsettings"

    const-string v1, "com.amazon.ea.debug.AnyActionsDebugSettings.FAIL_ALL_AUTO_SHELF_UPDATE_REQUESTS"

    .line 141
    invoke-static {v0, v1, p0}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static setFailAllAutoShelfUpdateRequestsWithLinkingError(Z)V
    .locals 2

    .line 150
    sput-boolean p0, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->failAllAutoShelfUpdateRequestsWithLinkingError:Z

    const-string v0, "anyactions.debugsettings"

    const-string v1, "com.amazon.ea.debug.AnyActionsDebugSettings.FAIL_ALL_AUTO_SHELF_UPDATE_REQUESTS_WITH_LINKING_ERROR"

    .line 151
    invoke-static {v0, v1, p0}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static setUseDebugSettings(Z)V
    .locals 0

    .line 131
    sput-boolean p0, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->useDebugSettings:Z

    return-void
.end method

.method static toggleOneTapFakePurchasesEnabled()V
    .locals 3

    .line 179
    sget-boolean v0, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->oneTapFakePurchasesEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->oneTapFakePurchasesEnabled:Z

    const-string v1, "anyactions.debugsettings"

    const-string v2, "com.amazon.ea.debug.AnyActionsDebugSettings.ONE_TAP_FAKE_PURCHASES_ENABLED"

    .line 180
    invoke-static {v1, v2, v0}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
