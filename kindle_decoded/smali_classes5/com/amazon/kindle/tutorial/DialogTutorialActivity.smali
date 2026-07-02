.class public Lcom/amazon/kindle/tutorial/DialogTutorialActivity;
.super Lcom/amazon/kindle/tutorial/TutorialFragmentActivity;
.source "DialogTutorialActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/amazon/kindle/tutorial/DialogTutorialActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/tutorial/DialogTutorialActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/TutorialFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/amazon/kindle/tutorial/DialogTutorialActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static newIntent(Landroid/app/Activity;Lcom/amazon/kindle/tutorial/model/FullPageUI;)Landroid/content/Intent;
    .locals 1

    .line 34
    const-class v0, Lcom/amazon/kindle/tutorial/DialogTutorialActivity;

    invoke-static {v0, p0, p1}, Lcom/amazon/kindle/tutorial/TutorialFragmentActivity;->newBaseIntent(Ljava/lang/Class;Landroid/app/Activity;Lcom/amazon/kindle/tutorial/UserInterface;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private updateTheme(Lcom/amazon/kindle/tutorial/model/FullPageUI;)V
    .locals 1

    .line 65
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/FullPageUI;->hasImage()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/FullPageUI;->hasVideo()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_3

    .line 69
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    .line 70
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseTwoEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 71
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/theme/ThemeArea;->IN_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    .line 72
    sget p1, Lcom/amazon/kindle/krl/R$style;->Theme_Transparent_Fullscreen_DialogTutorial_Light:I

    goto :goto_2

    :cond_3
    sget p1, Lcom/amazon/kindle/krl/R$style;->Theme_Transparent_Fullscreen_DialogTutorial_Dark:I

    .line 74
    :goto_2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 52
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->switchIfNecessary(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 39
    invoke-super {p0, p1}, Lcom/amazon/kindle/tutorial/TutorialFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "userInterface"

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/tutorial/model/FullPageUI;

    .line 42
    invoke-direct {p0, p1}, Lcom/amazon/kindle/tutorial/DialogTutorialActivity;->updateTheme(Lcom/amazon/kindle/tutorial/model/FullPageUI;)V

    .line 43
    sget v0, Lcom/amazon/kindle/krl/R$layout;->full_page_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 44
    invoke-static {p1}, Lcom/amazon/kindle/tutorial/DialogPageFragment;->newInstance(Lcom/amazon/kindle/tutorial/model/FullPageUI;)Lcom/amazon/kindle/tutorial/DialogPageFragment;

    move-result-object p1

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 46
    sget v1, Lcom/amazon/kindle/krl/R$id;->tutorial_page_fragment:I

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onThemeChangedEvent(Lcom/amazon/kindle/krx/events/ThemeChangedEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 79
    new-instance p1, Lcom/amazon/kindle/tutorial/DialogTutorialActivity$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/tutorial/DialogTutorialActivity$1;-><init>(Lcom/amazon/kindle/tutorial/DialogTutorialActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
