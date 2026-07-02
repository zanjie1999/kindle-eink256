.class public Lcom/amazon/kcp/util/LibraryActivityUtils;
.super Ljava/lang/Object;
.source "LibraryActivityUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kcp/util/LibraryActivityUtils;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/util/LibraryActivityUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final showLoadingScreenIfNeeded(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 27
    invoke-static {p0, v0, v1}, Lcom/amazon/kcp/util/LibraryActivityUtils;->showLoadingScreenIfNeeded(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method public static final showLoadingScreenIfNeeded(Landroid/app/Activity;ZZ)V
    .locals 5

    .line 36
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->getLibraryMode()Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    move-result-object v0

    .line 37
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v1

    .line 38
    invoke-interface {v1}, Lcom/amazon/kcp/application/IAppSettingsController;->getDisableFTUELoadingScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 44
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 49
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    .line 50
    sget-object v2, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;->NEWSSTAND:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    if-eq v0, v2, :cond_2

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getFTUELoadingScreenShown()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    sget-object v2, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;->NEWSSTAND:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    if-ne v0, v2, :cond_4

    .line 51
    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getFTUENewsstandLoadingScreenShown()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    return-void

    :cond_4
    const/4 v2, 0x1

    if-nez p2, :cond_a

    .line 58
    invoke-static {}, Lcom/amazon/kcp/library/CounterManagerSingleton;->getInstance()Lcom/amazon/kcp/library/CounterManagerSingleton;

    move-result-object v3

    const-string v4, "ALL_ITEMS"

    invoke-virtual {v3, v4}, Lcom/amazon/kcp/library/CounterManagerSingleton;->getCounter(Ljava/lang/String;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 60
    invoke-virtual {v3}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->getUserItemsCount()I

    move-result v3

    goto :goto_0

    :cond_5
    const/4 v3, -0x1

    :goto_0
    if-lez v3, :cond_a

    .line 65
    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getFTUEEventTriggered()Z

    move-result p0

    if-nez p0, :cond_7

    sget-object p0, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;->NEWSSTAND:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    if-eq v0, p0, :cond_7

    .line 66
    sget-object p0, Lcom/amazon/kindle/krx/startup/StartupType;->FTUE_NON_EMPTY_LIBRARY:Lcom/amazon/kindle/krx/startup/StartupType;

    invoke-static {p0}, Lcom/amazon/kindle/krx/startup/StartupHelper;->onStartupEvent(Lcom/amazon/kindle/krx/startup/StartupType;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 67
    sget-object p0, Lcom/amazon/kcp/util/LibraryActivityUtils;->TAG:Ljava/lang/String;

    const-string p1, "Startup listener has been invoked for non empty library and has consumed FTUE event for books."

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_6
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/UserSettingsController;->setFTUEEventTriggered(Z)V

    .line 73
    :cond_7
    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getFTUENewsstandEventTriggered()Z

    move-result p0

    if-nez p0, :cond_9

    sget-object p0, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;->NEWSSTAND:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    if-ne v0, p0, :cond_9

    .line 74
    sget-object p0, Lcom/amazon/kindle/krx/startup/StartupType;->FTUE_NON_EMPTY_LIBRARY:Lcom/amazon/kindle/krx/startup/StartupType;

    invoke-static {p0}, Lcom/amazon/kindle/krx/startup/StartupHelper;->onStartupEvent(Lcom/amazon/kindle/krx/startup/StartupType;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 75
    sget-object p0, Lcom/amazon/kcp/util/LibraryActivityUtils;->TAG:Ljava/lang/String;

    const-string p1, "Startup listener has been invoked for non empty library and has consumed FTUE event for newsstand."

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_8
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/UserSettingsController;->setFTUENewsstandEventTriggered(Z)V

    :cond_9
    return-void

    .line 85
    :cond_a
    sget-object v3, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;->NEWSSTAND:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    if-eq v0, v3, :cond_b

    .line 86
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/UserSettingsController;->setFTUELoadingScreenShown(Z)V

    goto :goto_1

    .line 88
    :cond_b
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/UserSettingsController;->setFTUENewsstandLoadingScreenShown(Z)V

    .line 90
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kindle/FTUELoadingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "goto_home"

    .line 91
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p1, "wait_close_signal"

    .line 92
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
