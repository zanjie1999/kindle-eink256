.class public abstract Lcom/amazon/versioning/reader/ui/activity/UpdateActivity;
.super Lcom/amazon/versioning/reader/ui/activity/ThemeActivity;
.source "UpdateActivity.java"


# static fields
.field private static final CLASS_TAG:Ljava/lang/String;

.field private static final LEARN_MORE_POPUP_STATE_KEY:Ljava/lang/String; = "UA_LearnMoreState"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/versioning/reader/ui/activity/UpdateActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/versioning/reader/ui/activity/UpdateActivity;->CLASS_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/ThemeActivity;-><init>()V

    return-void
.end method

.method private recordMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 126
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getUpdatePluginMetricsManager()Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;

    move-result-object v0

    .line 127
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->recordReadingStreamsMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportPMET(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 131
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getUpdatePluginMetricsManager()Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;

    move-result-object v0

    .line 132
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setUpToolbar()V
    .locals 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/reader/ui/activity/UpdateActivity;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setting up toolbar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KCUPA"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget v0, Lcom/amazon/versioning/R$id;->update_toolbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 79
    invoke-virtual {p0}, Lcom/amazon/versioning/reader/ui/activity/UpdateActivity;->getNavigationIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 80
    sget v1, Lcom/amazon/versioning/R$id;->update_toolbar_title:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 81
    invoke-virtual {p0}, Lcom/amazon/versioning/reader/ui/activity/UpdateActivity;->getToolbarTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 84
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 87
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const/4 v1, 0x1

    .line 90
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 91
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract getNavigationIcon()I
.end method

.method protected abstract getToolbarTitle()Ljava/lang/String;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/reader/ui/activity/UpdateActivity;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onCreate() of abstract class which is extended by AutoUpdatePanelActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    invoke-super {p0, p1}, Lcom/amazon/versioning/reader/ui/activity/ThemeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/versioning/reader/ui/helper/KCUHelper;->shouldLockOrientation(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 37
    :cond_0
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->areMultipleThemesSupported()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 41
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p1

    .line 42
    sget-object v1, Lcom/amazon/versioning/reader/ui/activity/UpdateActivity$1;->$SwitchMap$com$amazon$kindle$krx$theme$Theme:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v0, :cond_1

    .line 48
    sget p1, Lcom/amazon/versioning/R$style;->KCUTheme_RubyDark:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    goto :goto_0

    .line 44
    :cond_1
    sget p1, Lcom/amazon/versioning/R$style;->KCUTheme_RubyLight:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 52
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/versioning/reader/ui/helper/KCUHelper;->isAndroidTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 53
    sget p1, Lcom/amazon/versioning/R$layout;->activity_update_tablet_ruby:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    goto :goto_1

    .line 55
    :cond_2
    sget p1, Lcom/amazon/versioning/R$layout;->activity_update_ruby:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    goto :goto_1

    .line 59
    :cond_3
    sget p1, Lcom/amazon/versioning/R$style;->KCUTheme:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 61
    sget p1, Lcom/amazon/versioning/R$layout;->activity_update:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 64
    :goto_1
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/UpdateActivity;->setUpToolbar()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected reportAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 121
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getUpdatePluginMetricsManager()Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p1, p2}, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->performReadingStreamsAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected reportPMET(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 111
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getUpdatePluginMetricsManager()Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;

    move-result-object v0

    .line 112
    invoke-virtual {v0, p1, p2}, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected reportPMETAndAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/amazon/versioning/reader/ui/activity/UpdateActivity;->reportPMET(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/amazon/versioning/reader/ui/activity/UpdateActivity;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
