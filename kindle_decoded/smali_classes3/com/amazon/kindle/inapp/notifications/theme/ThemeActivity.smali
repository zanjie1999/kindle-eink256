.class public Lcom/amazon/kindle/inapp/notifications/theme/ThemeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ThemeActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThemeActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThemeActivity.kt\ncom/amazon/kindle/inapp/notifications/theme/ThemeActivity\n*L\n1#1,98:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private final setCurrentTheme()V
    .locals 7

    .line 36
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;->Companion:Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryProvider;->getFactory()Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactory;->getThemeUtil()Lcom/amazon/kindle/inapp/notifications/theme/ThemeUtil;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Lcom/amazon/kindle/inapp/notifications/theme/ThemeUtil;->getCurrentTheme()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "window"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const-string v3, "getTheme()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/inapp/notifications/theme/ThemeUtil;->updateWindow(Landroid/view/Window;Landroid/content/res/Resources$Theme;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 42
    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->Companion:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;

    move-result-object v1

    .line 44
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/MConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->getERROR_OPERATION()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/MConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/util/MConstants;->getCLASS_FACTORY_FAILURE()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;->reportMetric$default(Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationMetricsManager;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 47
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    invoke-static {}, Lcom/amazon/kindle/inapp/notifications/theme/ThemeActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 79
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->switchIfNecessary(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 81
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    invoke-static {}, Lcom/amazon/kindle/inapp/notifications/theme/ThemeActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory;->Companion:Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory$Companion;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/view/LayoutInflaterCompat;->setFactory(Landroid/view/LayoutInflater;Landroidx/core/view/LayoutInflaterFactory;)V

    .line 56
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 58
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    invoke-static {}, Lcom/amazon/kindle/inapp/notifications/theme/ThemeActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/theme/ThemeActivity;->setCurrentTheme()V

    .line 64
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->isTablet$default(Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;Landroid/content/Context;ILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 68
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 70
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 72
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    invoke-static {}, Lcom/amazon/kindle/inapp/notifications/theme/ThemeActivityKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onThemeChangedEvent(Lcom/amazon/kindle/krx/events/ThemeChangedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    new-instance p1, Lcom/amazon/kindle/inapp/notifications/theme/ThemeActivity$onThemeChangedEvent$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/inapp/notifications/theme/ThemeActivity$onThemeChangedEvent$1;-><init>(Lcom/amazon/kindle/inapp/notifications/theme/ThemeActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
