.class public Lcom/amazon/ea/ui/ThemeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ThemeActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/amazon/ea/ui/ThemeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/ui/ThemeActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/amazon/ea/ui/ThemeActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private setTheme(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 75
    sget p1, Lcom/amazon/kindle/ea/R$style;->anyactions_theme_dark:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    goto :goto_0

    .line 77
    :cond_0
    sget p1, Lcom/amazon/kindle/ea/R$style;->anyactions_theme_light:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    :goto_0
    return-void
.end method

.method private updateSystemUI(ZLandroid/view/View;)V
    .locals 3

    .line 91
    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 93
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    if-eqz p1, :cond_0

    and-int/lit16 v0, v0, -0x2001

    goto :goto_0

    :cond_0
    or-int/lit16 v0, v0, 0x2000

    .line 101
    :cond_1
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_3

    if-eqz p1, :cond_2

    and-int/lit8 v0, v0, -0x11

    goto :goto_1

    :cond_2
    or-int/lit8 v0, v0, 0x10

    .line 109
    :cond_3
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 53
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->switchIfNecessary(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 34
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const-class p1, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    invoke-static {p1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 36
    invoke-interface {p1, v1}, Lcom/amazon/kindle/krx/ui/DarkModeHelper;->isDarkModePhaseEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 38
    invoke-static {}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getColorModeFromAppTheme()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/ColorMode;->isDark()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 39
    :cond_2
    invoke-direct {p0, v0}, Lcom/amazon/ea/ui/ThemeActivity;->setTheme(Z)V

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/ea/ui/ThemeActivity;->updateSystemUI(ZLandroid/view/View;)V

    .line 41
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 46
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 47
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onThemeChangedEvent(Lcom/amazon/kindle/krx/events/ThemeChangedEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 58
    new-instance p1, Lcom/amazon/ea/ui/ThemeActivity$1;

    invoke-direct {p1, p0}, Lcom/amazon/ea/ui/ThemeActivity$1;-><init>(Lcom/amazon/ea/ui/ThemeActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
