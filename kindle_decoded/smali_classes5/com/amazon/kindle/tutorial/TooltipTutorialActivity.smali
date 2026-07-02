.class public Lcom/amazon/kindle/tutorial/TooltipTutorialActivity;
.super Lcom/amazon/kindle/tutorial/TutorialFragmentActivity;
.source "TooltipTutorialActivity.java"


# static fields
.field private static final ID_KEY:Ljava/lang/String; = "id"

.field private static final METRIC_TAG:Ljava/lang/String; = "TooltipMetrics"

.field private static dismissOnRestart:Z = false

.field private static uiProcessor:Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/TutorialFragmentActivity;-><init>()V

    return-void
.end method

.method private getThemeResourceId(ZZ)I
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 122
    sget p1, Lcom/amazon/kindle/krl/R$style;->Theme_Transparent_Fullscreen_Light:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/kindle/krl/R$style;->Theme_Transparent_NotFullscreen_Light:I

    :goto_0
    return p1

    :cond_1
    if-eqz p1, :cond_2

    .line 124
    sget p1, Lcom/amazon/kindle/krl/R$style;->Theme_Transparent_Fullscreen_Dark:I

    goto :goto_1

    :cond_2
    sget p1, Lcom/amazon/kindle/krl/R$style;->Theme_Transparent_NotFullscreen_Dark:I

    :goto_1
    return p1
.end method

.method public static newTooltipIntent(Landroid/app/Activity;Lcom/amazon/kindle/tutorial/model/TooltipUI;)Landroid/content/Intent;
    .locals 8

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/TooltipUI;->getPages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->getAnchorID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 56
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 58
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {v3}, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->getAnchorLocationID()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 65
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->getAnchorLocationID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 68
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object v5

    .line 72
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 73
    :goto_2
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/TooltipUI;->getSettings()Lcom/amazon/kindle/tutorial/model/TooltipSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/tutorial/model/TooltipSettings;->getDismissOnRestart()Z

    move-result v3

    sput-boolean v3, Lcom/amazon/kindle/tutorial/TooltipTutorialActivity;->dismissOnRestart:Z

    .line 74
    new-instance v3, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;

    invoke-direct {v3, p1, v0, v1}, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;-><init>(Lcom/amazon/kindle/tutorial/model/TooltipUI;Ljava/util/List;Ljava/util/List;)V

    sput-object v3, Lcom/amazon/kindle/tutorial/TooltipTutorialActivity;->uiProcessor:Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;

    .line 75
    const-class v0, Lcom/amazon/kindle/tutorial/TooltipTutorialActivity;

    invoke-static {v0, p0, p1, v2}, Lcom/amazon/kindle/tutorial/TutorialFragmentActivity;->newBaseIntent(Ljava/lang/Class;Landroid/app/Activity;Lcom/amazon/kindle/tutorial/UserInterface;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 139
    sget v0, Lcom/amazon/kindle/krl/R$id;->tool_tip_tutorial_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 141
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->setIcons(F)V

    .line 142
    invoke-super {p0}, Lcom/amazon/kindle/tutorial/TutorialFragmentActivity;->finish()V

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->enable_tutorial_animation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 147
    sget v0, Lcom/amazon/kindle/krl/R$anim;->fade_out:I

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    const/4 v0, 0x0

    .line 152
    sput-object v0, Lcom/amazon/kindle/tutorial/TooltipTutorialActivity;->uiProcessor:Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 80
    invoke-super {p0, p1}, Lcom/amazon/kindle/tutorial/TutorialFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "isFullScreen"

    .line 87
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 88
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 89
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseTwoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/ThemeArea;->IN_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 90
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/tutorial/TooltipTutorialActivity;->getThemeResourceId(ZZ)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 91
    sget p1, Lcom/amazon/kindle/krl/R$layout;->tutorial_tool_tip:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 98
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const/4 p1, 0x6

    .line 99
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x7

    .line 101
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 104
    :catch_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "TooltipMetrics"

    const-string v1, "Orientation_Lock_Failed"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_1
    sget-object p1, Lcom/amazon/kindle/tutorial/TooltipTutorialActivity;->uiProcessor:Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;

    if-eqz p1, :cond_3

    .line 109
    sget v0, Lcom/amazon/kindle/krl/R$id;->tool_tip_tutorial_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/tutorial/tooltip/TooltipUIProcessor;->showUserInterface(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)V

    :cond_3
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 132
    sget-boolean v0, Lcom/amazon/kindle/tutorial/TooltipTutorialActivity;->dismissOnRestart:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/amazon/kindle/tutorial/TooltipTutorialActivity;->finish()V

    :cond_0
    return-void
.end method
