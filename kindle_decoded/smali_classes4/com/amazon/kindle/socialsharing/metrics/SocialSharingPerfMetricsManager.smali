.class public Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;
.super Ljava/lang/Object;
.source "SocialSharingPerfMetricsManager.java"

# interfaces
.implements Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;
.implements Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;


# static fields
.field private static final APP_LAUNCH:Ljava/lang/String; = "APP_LAUNCHED"

.field private static final CONCAT_KEYWORD_FROM:Ljava/lang/String; = "_FROM_"

.field private static final DIALOG_DISMISS:Ljava/lang/String; = "DIALOG_DISMISSED"

.field private static final DIALOG_LAUNCH:Ljava/lang/String; = "DIALOG_LAUNCHED"

.field private static final ISSUED_SHARE_FROM:Ljava/lang/String; = "IssuedShareFrom"

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.kindle.socialsharing.metrics.SocialSharingPerfMetricsManager"

.field private static final METRICS_PREFIX:Ljava/lang/String; = "SocialSharing:"

.field private static final OVERFLOW_SHARE_CANCEL:Ljava/lang/String; = "Failure"

.field private static final OVERFLOW_SHARE_SUCCESS:Ljava/lang/String; = "Success"

.field private static final SHARE_DIALOG:Ljava/lang/String; = "ShareDialog"

.field private static final SHARE_FROM:Ljava/lang/String; = "ShareFrom"

.field private static final SHARE_INVOKED_IN_SESSION:Ljava/lang/String; = "SHARE_INVOKED_IN_READING_SESSION"

.field private static final SHARE_NOT_INVOKED_IN_SESSION:Ljava/lang/String; = "SHARE_NOT_INVOKED_IN_READING_SESSION"


# instance fields
.field private final metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private sessionShareMetrics:Lcom/amazon/kindle/socialsharing/metrics/SessionShareMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 66
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    .line 67
    invoke-direct {p0}, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->registerListener()V

    return-void
.end method

.method private static checkLayout(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 0

    .line 90
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->isFixedLayout()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "FixedLayout"

    goto :goto_0

    :cond_0
    const-string p0, "Reflowable"

    :goto_0
    return-object p0
.end method

.method private registerListener()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    return-void
.end method

.method private reportMetrics(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 77
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    const-string v1, "SocialSharing:"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_0
    sget-object v0, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "Could not report metrics, MetricsKey and/or MetricsValue was blank, MetricsKey was: %s, MetricsValue was: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private sessionEnd()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->sessionShareMetrics:Lcom/amazon/kindle/socialsharing/metrics/SessionShareMetrics;

    if-eqz v0, :cond_1

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sessionEnd(): shared:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->sessionShareMetrics:Lcom/amazon/kindle/socialsharing/metrics/SessionShareMetrics;

    invoke-virtual {v1}, Lcom/amazon/kindle/socialsharing/metrics/SessionShareMetrics;->hasSharedInSession()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->sessionShareMetrics:Lcom/amazon/kindle/socialsharing/metrics/SessionShareMetrics;

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/metrics/SessionShareMetrics;->hasSharedInSession()Z

    move-result v0

    const-string v1, "ShareDialog"

    if-eqz v0, :cond_0

    const-string v0, "SHARE_INVOKED_IN_READING_SESSION"

    .line 116
    invoke-direct {p0, v1, v0}, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "SHARE_NOT_INVOKED_IN_READING_SESSION"

    .line 118
    invoke-direct {p0, v1, v0}, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->sessionShareMetrics:Lcom/amazon/kindle/socialsharing/metrics/SessionShareMetrics;

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/metrics/SessionShareMetrics;->endSession()V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->sessionShareMetrics:Lcom/amazon/kindle/socialsharing/metrics/SessionShareMetrics;

    :cond_1
    return-void
.end method

.method private sessionStart()V
    .locals 1

    .line 105
    new-instance v0, Lcom/amazon/kindle/socialsharing/metrics/SessionShareMetrics;

    invoke-direct {v0}, Lcom/amazon/kindle/socialsharing/metrics/SessionShareMetrics;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->sessionShareMetrics:Lcom/amazon/kindle/socialsharing/metrics/SessionShareMetrics;

    .line 106
    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/metrics/SessionShareMetrics;->startSession()V

    return-void
.end method


# virtual methods
.method public abortTimer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 229
    sget-object p1, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abortTimer: errorName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    const-string v0, "SocialSharing:"

    invoke-interface {p1, v0, p2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 243
    invoke-direct {p0}, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->sessionEnd()V

    return-void
.end method

.method public onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 236
    invoke-direct {p0}, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->sessionStart()V

    return-void
.end method

.method public onAfterNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    return-void
.end method

.method public onBeforeNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    return-void
.end method

.method public onNavigationFailed(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    return-void
.end method

.method public onPageFlowChanged(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    return-void
.end method

.method public reportConnectivityType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ConnectivityType"

    .line 205
    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reportNoConnectivity()V
    .locals 2

    const-string v0, "ShareDialog"

    const-string v1, "ShareErrorSharingWhileNoConnection"

    .line 200
    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reportOverflowShareSuccess(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "Success"

    goto :goto_0

    :cond_0
    const-string p1, "Failure"

    :goto_0
    const-string v0, "OverflowShareSuccess"

    .line 181
    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reportShareApp(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    .line 130
    sget-object p1, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Share object is null. Cannot report share"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->sessionShareMetrics:Lcom/amazon/kindle/socialsharing/metrics/SessionShareMetrics;

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/metrics/SessionShareMetrics;->incrementShare()V

    :cond_1
    const-string v0, "ShareDialog"

    const-string v1, "APP_LAUNCHED"

    .line 137
    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/service/Share;->getAsin()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v0}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->getBookFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 142
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    .line 143
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v2

    .line 144
    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 146
    sget-object v2, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Unable to get marketplace for the active user on the application"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v3, "MarketPlace"

    .line 148
    invoke-direct {p0, v3, v2}, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 150
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "%s:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceVer"

    invoke-direct {p0, v3, v2}, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceType"

    .line 151
    invoke-direct {p0, v3, v2}, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "OsVer"

    invoke-direct {p0, v3, v2}, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 156
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const-string v2, "AppVer"

    .line 157
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 159
    :catch_0
    sget-object v1, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Cannot find the package name to extract app version"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v1, "ShareApp"

    .line 162
    invoke-direct {p0, v1, p2}, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/service/Share;->getShareType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_FROM_"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IssuedShareFrom"

    invoke-direct {p0, p2, p1}, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    .line 169
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContentType"

    invoke-direct {p0, p2, p1}, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BookFormat"

    invoke-direct {p0, p2, p1}, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {v0}, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->checkLayout(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Layout"

    invoke-direct {p0, p2, p1}, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "NONE"

    goto :goto_2

    .line 174
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    :goto_2
    const-string p2, "BookContentClass"

    .line 173
    invoke-direct {p0, p2, p1}, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getContentLanguage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BookLanguage"

    invoke-direct {p0, p2, p1}, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public reportShareContextType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "_FROM_"

    .line 188
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShareFrom"

    invoke-direct {p0, p2, p1}, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reportShareDialogDismissed()V
    .locals 2

    const-string v0, "ShareDialog"

    const-string v1, "DIALOG_DISMISSED"

    .line 212
    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startTimer(Ljava/lang/String;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    return-void
.end method

.method public stopTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SocialSharing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Latency"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/metrics/SocialSharingPerfMetricsManager;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Count"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
