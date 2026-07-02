.class public Lcom/amazon/kindle/ThirdPartyUpgradePage;
.super Lcom/amazon/kindle/BaseUpgradePage;
.source "ThirdPartyUpgradePage.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThirdPartyUpgradePage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThirdPartyUpgradePage.kt\ncom/amazon/kindle/ThirdPartyUpgradePage\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,158:1\n1819#2,2:159\n*E\n*S KotlinDebug\n*F\n+ 1 ThirdPartyUpgradePage.kt\ncom/amazon/kindle/ThirdPartyUpgradePage\n*L\n83#1,2:159\n*E\n"
.end annotation


# instance fields
.field private final androidDeviceClassFactory:Lcom/amazon/kcp/application/AndroidDeviceClassFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/amazon/kindle/BaseUpgradePage;-><init>()V

    .line 33
    invoke-static {}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getInstance()Lcom/amazon/kcp/application/AndroidDeviceClassFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/ThirdPartyUpgradePage;->androidDeviceClassFactory:Lcom/amazon/kcp/application/AndroidDeviceClassFactory;

    return-void
.end method

.method private final reportMetrics(Landroid/content/Intent;)V
    .locals 4

    .line 80
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 81
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "bundle.keySet()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "it"

    .line 83
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final saveReferralParams(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "referral_ordinal"

    const/4 v1, -0x1

    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "kp_market_referral_params"

    .line 61
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "asin"

    .line 62
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "location"

    .line 63
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "timestamp"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lcom/amazon/kindle/ThirdPartyUpgradePageKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stored Asin and Location to Shared Preferences"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/ThirdPartyUpgradePageKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error storing Asin and Location to Shared Preferences"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/ThirdPartyUpgradePage;->reportMetrics(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected checkAndHandleSignOutState(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/amazon/kindle/BaseUpgradePage;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccountProvider()Lcom/amazon/kindle/services/authentication/IAccountProvider;

    move-result-object v0

    const-string v1, "accountProvider"

    .line 39
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountProvider;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 44
    invoke-direct {p0, p1}, Lcom/amazon/kindle/ThirdPartyUpgradePage;->saveReferralParams(Landroid/content/Intent;)V

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/ThirdPartyUpgradePage;->androidDeviceClassFactory:Lcom/amazon/kcp/application/AndroidDeviceClassFactory;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getHomeLibraryActivity(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "androidDeviceClassFactor\u2026ity(this) ?: return false"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method protected handleContentScheme(Landroid/net/Uri;Lcom/amazon/kindle/content/BookContentType$ContentType;)V
    .locals 4

    const-string/jumbo p2, "uri"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 93
    invoke-static {}, Lcom/amazon/kindle/ThirdPartyUpgradePageKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to open URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 100
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getApplication()Lcom/amazon/kcp/application/ReddingApplication;

    move-result-object v0

    const-string v1, "ReddingApplication.getApplication()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/ReddingApplication;->getReddingProcessName()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "com.amazon.kindle"

    .line 102
    :goto_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v3, 0x0

    .line 101
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    const-string v1, "packageManager.queryCont\u2026dle\", Process.myUid(), 0)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProviderInfo;

    .line 104
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    invoke-static {}, Lcom/amazon/kindle/ThirdPartyUpgradePageKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to open internal URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 110
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kindle/BaseUpgradePage;->getMetricsManager()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p2

    const-string v0, "UpgradePage"

    const-string v1, "LaunchToPdfContent"

    invoke-virtual {p2, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/BaseUpgradePage;->openDocumentForContent(Landroid/net/Uri;)V

    return-void
.end method

.method protected handleFileScheme(Landroid/net/Uri;Lcom/amazon/kindle/content/BookContentType$ContentType;)V
    .locals 4

    const-string v0, "UpgradePage"

    const-string/jumbo v1, "uri"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 117
    sget-object v1, Lcom/amazon/kindle/content/BookContentType$ContentType;->PDF:Lcom/amazon/kindle/content/BookContentType$ContentType;

    if-eq p2, v1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    const/4 p2, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, ".pdf"

    invoke-static {p1, v3, p2, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 118
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/ThirdPartyUpgradePageKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got URI to open PDF located at "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    :try_start_0
    invoke-static {p0, p1}, Lcom/amazon/kcp/library/BookOpenHelper;->openPdf(Landroid/app/Activity;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/amazon/kindle/BaseUpgradePage;->getMetricsManager()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string p2, "LaunchToPdfFile"

    invoke-virtual {p1, v0, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    invoke-virtual {p0}, Lcom/amazon/kindle/BaseUpgradePage;->getMetricsManager()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "OpenPdfFailed"

    invoke-virtual {p1, v0, v1, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->error:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->error_message_cant_open_file:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 126
    invoke-static {p1, p2, p0}, Lcom/amazon/kcp/redding/AlertActivity;->createBaseAlertIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 128
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "window.decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Lcom/amazon/kcp/util/device/NotchDetectorManager;->getDetector()Lcom/amazon/kcp/util/device/NotchDetector;

    move-result-object v1

    invoke-static {p0}, Lcom/amazon/android/util/UIUtils;->getDeviceScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    const-string v3, "UIUtils.getDeviceScreenSize(this)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/amazon/kcp/util/device/NotchDetector;->detectNotches(Landroid/view/DisplayCutout;Landroid/graphics/Point;)V

    .line 148
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 155
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->switchIfNecessary(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method
