.class public Lcom/amazon/kcp/redding/ThemeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ThemeActivity.java"


# static fields
.field public static final EXTRA_IS_RECREATED_FOR_THEME_CHANGE:Ljava/lang/String; = "isRecreatedForThemeChange"

.field private static final INVALID_THEME_RESID:I = 0x0

.field private static final IN_BOOK_ACTIVITY_KEY:Ljava/lang/String; = "in-book"

.field private static final METRIC_ACTIVITY_ALREADY_FINISHED:Ljava/lang/String; = "ActivityAlreadyFinished"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected activityStateManager:Lcom/amazon/kcp/redding/ActivityStateManager;

.field protected isThemeChangeSupported:Z

.field protected recreateActivityOnResume:Z

.field protected recreationStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final themeResourceIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/krx/theme/Theme;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/amazon/kcp/redding/ThemeActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/redding/ThemeActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/redding/ThemeActivity;->themeResourceIdMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/amazon/kcp/redding/ThemeActivity;->isThemeChangeSupported:Z

    .line 87
    iput-boolean v0, p0, Lcom/amazon/kcp/redding/ThemeActivity;->recreateActivityOnResume:Z

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/redding/ThemeActivity;->recreationStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 97
    new-instance v0, Lcom/amazon/kcp/redding/ActivityStateManager;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/redding/ActivityStateManager;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/redding/ThemeActivity;->activityStateManager:Lcom/amazon/kcp/redding/ActivityStateManager;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/amazon/kcp/redding/ThemeActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/redding/ThemeActivity;)Z
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ThemeActivity;->checkRecreationAvailabilityForStartState()Z

    move-result p0

    return p0
.end method

.method private checkRecreationAvailabilityForStartState()Z
    .locals 2

    .line 310
    iget-boolean v0, p0, Lcom/amazon/kcp/redding/ThemeActivity;->isThemeChangeSupported:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 312
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseThreeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/amazon/kcp/redding/ThemeActivity;->activityStateManager:Lcom/amazon/kcp/redding/ActivityStateManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/ActivityStateManager;->isActivityOnStartState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iput-boolean v1, p0, Lcom/amazon/kcp/redding/ThemeActivity;->recreateActivityOnResume:Z

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method private static getThemeLabel(Lcom/amazon/kindle/krx/theme/Theme;)Ljava/lang/String;
    .locals 2

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "theme_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initializeThemeConfig()V
    .locals 8

    .line 182
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 183
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->areMultipleThemesSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 185
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 188
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseTwoEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "in-book"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 191
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/krx/theme/Theme;->values()[Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 192
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-static {v5}, Lcom/amazon/kcp/redding/ThemeActivity;->getThemeLabel(Lcom/amazon/kindle/krx/theme/Theme;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v7, 0x1

    .line 194
    iput-boolean v7, p0, Lcom/amazon/kcp/redding/ThemeActivity;->isThemeChangeSupported:Z

    .line 195
    iget-object v7, p0, Lcom/amazon/kcp/redding/ThemeActivity;->themeResourceIdMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 189
    :cond_2
    :goto_1
    iput-boolean v0, p0, Lcom/amazon/kcp/redding/ThemeActivity;->isThemeChangeSupported:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 200
    :catch_0
    iput-boolean v0, p0, Lcom/amazon/kcp/redding/ThemeActivity;->isThemeChangeSupported:Z

    :cond_3
    :goto_2
    return-void
.end method

.method private updateSystemUI(Lcom/amazon/kindle/krx/theme/Theme;Landroid/view/View;)V
    .locals 3

    .line 240
    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 241
    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 243
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    if-eqz p1, :cond_0

    or-int/lit16 v0, v0, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 v0, v0, -0x2001

    .line 251
    :cond_1
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_3

    if-eqz p1, :cond_2

    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_2
    and-int/lit8 v0, v0, -0x11

    .line 259
    :cond_3
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private updateTheme()V
    .locals 4

    .line 218
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 219
    iget-boolean v1, p0, Lcom/amazon/kcp/redding/ThemeActivity;->isThemeChangeSupported:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 220
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    .line 221
    instance-of v1, p0, Lcom/amazon/kcp/redding/ReddingActivity;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/redding/ReddingActivity;->isOutOfBookActivity()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/amazon/kindle/krx/theme/ThemeArea;->IN_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    .line 222
    :goto_0
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/redding/ThemeActivity;->getThemeResourceId(Lcom/amazon/kindle/krx/theme/Theme;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 225
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 226
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/kcp/util/DeviceUtils;->setMIUIStatusBarMode(Landroid/view/Window;Lcom/amazon/kindle/krx/theme/Theme;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected getThemeResourceId(Lcom/amazon/kindle/krx/theme/Theme;)I
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/amazon/kcp/redding/ThemeActivity;->themeResourceIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 272
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected handleThemeChange()V
    .locals 1

    .line 292
    iget-boolean v0, p0, Lcom/amazon/kcp/redding/ThemeActivity;->isThemeChangeSupported:Z

    if-eqz v0, :cond_1

    .line 294
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseThreeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ThemeActivity;->recreateActivity()V

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 277
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 278
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->switchIfNecessary(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 102
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 105
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ThemeActivity;->initializeThemeConfig()V

    .line 106
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ThemeActivity;->updateTheme()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 145
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 147
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 111
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "isRecreatedForThemeChange"

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostResume()V
    .locals 3

    .line 130
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPostResume()V

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->newMetrics(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    const-string v2, "ActivityAlreadyFinished"

    .line 136
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 137
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 120
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 123
    iget-boolean v0, p0, Lcom/amazon/kcp/redding/ThemeActivity;->recreateActivityOnResume:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ThemeActivity;->recreateActivity()V

    :cond_0
    return-void
.end method

.method public onThemeChangedEvent(Lcom/amazon/kindle/krx/events/ThemeChangedEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 330
    new-instance p1, Lcom/amazon/kcp/redding/ThemeActivity$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/redding/ThemeActivity$1;-><init>(Lcom/amazon/kcp/redding/ThemeActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 152
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 153
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 154
    iget-boolean v1, p0, Lcom/amazon/kcp/redding/ThemeActivity;->isThemeChangeSupported:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 155
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p1

    .line 156
    instance-of v0, p0, Lcom/amazon/kcp/redding/ReddingActivity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/ReddingActivity;->isOutOfBookActivity()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/krx/theme/ThemeArea;->IN_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    .line 157
    :goto_0
    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/redding/ThemeActivity;->getThemeResourceId(Lcom/amazon/kindle/krx/theme/Theme;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 160
    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/redding/ThemeActivity;->updateSystemUI(Lcom/amazon/kindle/krx/theme/Theme;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected recreateActivity()V
    .locals 2

    .line 349
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/redding/ThemeActivity;->recreationStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 354
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected wasRecreatedForThemeChange()Z
    .locals 3

    .line 175
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isRecreatedForThemeChange"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
