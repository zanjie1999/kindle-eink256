.class public abstract Lcom/amazon/klo/ThemeActivity;
.super Landroidx/appcompat/app/ActionBarActivity;
.source "ThemeActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected theme:Lcom/amazon/kindle/krx/theme/Theme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/klo/ThemeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/klo/ThemeActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/appcompat/app/ActionBarActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/klo/ThemeActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected abstract getThemeResourceId(Lcom/amazon/kindle/krx/theme/Theme;)I
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 41
    invoke-static {}, Lcom/amazon/klo/KindleLearningObjectPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->switchIfNecessary(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-static {}, Lcom/amazon/klo/KLOApp;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/klo/ThemeActivity;->theme:Lcom/amazon/kindle/krx/theme/Theme;

    .line 25
    invoke-static {}, Lcom/amazon/klo/KindleLearningObjectPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 31
    invoke-static {}, Lcom/amazon/klo/KindleLearningObjectPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->unBindActivityFromCurrentBook(Landroid/app/Activity;)V

    .line 33
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 34
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onThemeChangedEvent(Lcom/amazon/kindle/krx/events/ThemeChangedEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 47
    new-instance p1, Lcom/amazon/klo/ThemeActivity$1;

    invoke-direct {p1, p0}, Lcom/amazon/klo/ThemeActivity$1;-><init>(Lcom/amazon/klo/ThemeActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
