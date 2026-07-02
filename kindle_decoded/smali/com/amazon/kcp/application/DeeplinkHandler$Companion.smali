.class public final Lcom/amazon/kcp/application/DeeplinkHandler$Companion;
.super Ljava/lang/Object;
.source "DeeplinkHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/DeeplinkHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/amazon/kcp/application/DeeplinkHandler$Companion;-><init>()V

    return-void
.end method

.method private final openApp(Landroid/content/Context;)V
    .locals 2

    .line 93
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->DEEPLINKING_APP_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v1, "KindlePerformanceConstants.DEEPLINKING_APP_OPEN"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private final openHome(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "asin"

    .line 75
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 78
    invoke-static {}, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;->reportBookOpenedFromExternalSource()V

    .line 79
    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-static {v1}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->createStartEvent(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    move-result-object v1

    .line 80
    invoke-virtual {v1, v0, p2}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    .line 81
    invoke-virtual {v1}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->buildAndSend()V

    .line 82
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->DEEPLINKING_BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v1, "KindlePerformanceConstants.DEEPLINKING_BOOK_OPEN"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 83
    invoke-static {p2}, Lcom/amazon/kcp/home/HomeScreenlet;->newOpenBookIntent(Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 87
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/home/Home;->getTabId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/amazon/kcp/oob/MainActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ScreenletIntent;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "MainActivity.newIntent(c\u2026TabId(), screenletIntent)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x20000000

    .line 88
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final openLibrary(Lcom/amazon/kcp/library/ILibraryController;Landroid/content/Context;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/ILibraryController;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "asin"

    .line 54
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 57
    invoke-static {}, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;->reportBookOpenedFromExternalSource()V

    .line 58
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "BookOpenAsinExtraKey"

    .line 59
    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-static {v2}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->createStartEvent(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    move-result-object v2

    .line 61
    invoke-virtual {v2, v0, p3}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    .line 62
    invoke-virtual {v2}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->buildAndSend()V

    .line 63
    sget-object p3, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->DEEPLINKING_BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v0, "KindlePerformanceConstants.DEEPLINKING_BOOK_OPEN"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 64
    invoke-interface {p1, v1}, Lcom/amazon/kcp/library/ILibraryController;->newLibraryScreenletIntent(Landroid/os/Bundle;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 69
    :goto_0
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryController;->getLibraryTabId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p3}, Lcom/amazon/kcp/oob/MainActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ScreenletIntent;)Landroid/content/Intent;

    move-result-object p1

    const-string p3, "MainActivity.newIntent(c\u2026ryTabId, screenletIntent)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p3, 0x20000000

    .line 70
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 71
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final openVellaStore(Landroid/content/Context;Lcom/amazon/kcp/store/IStoreIntentCreator;Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/kcp/store/IStoreIntentCreator;",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "asin"

    .line 102
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 103
    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 104
    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getEncryptedDSN()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    if-eqz v1, :cond_2

    .line 105
    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    if-eqz p3, :cond_3

    .line 106
    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p3

    if-eqz p3, :cond_3

    sget-object v0, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {p3, v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    :cond_3
    sget-object p3, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v0, p3, :cond_4

    const-string p3, "dark"

    goto :goto_3

    :cond_4
    const-string p3, "light"

    :goto_3
    if-eqz p4, :cond_6

    .line 107
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_7

    .line 108
    invoke-static {p1, v2, v1, p3}, Lcom/amazon/kcp/util/FalkorUtils;->createFalkorStorefrontUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_6

    .line 110
    :cond_7
    invoke-static {p1, p4, v2, v1, p3}, Lcom/amazon/kcp/util/FalkorUtils;->createFalkorProductPageUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 112
    :goto_6
    invoke-interface {p2, p1, p3}, Lcom/amazon/kcp/store/IStoreIntentCreator;->createLoadUrlIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_8

    const-string p3, "intent"

    .line 113
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p3, 0x10000000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo p3, "storeopen"

    .line 114
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public final handleDeeplink(Lcom/amazon/kcp/library/ILibraryController;Lcom/amazon/kcp/store/IStoreIntentCreator;Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 3

    const-string v0, "libraryController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "storeIntentCreator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uri"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {p5}, Lcom/amazon/kcp/application/DeeplinkParser;->parseUri(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p5

    const/4 v0, 0x1

    if-eqz p5, :cond_2

    const-string v1, "action"

    .line 40
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string p1, "kindle-vella"

    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p4, p2, p3, p5}, Lcom/amazon/kcp/application/DeeplinkHandler$Companion;->openVellaStore(Landroid/content/Context;Lcom/amazon/kcp/store/IStoreIntentCreator;Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/util/Map;)V

    goto :goto_0

    :sswitch_1
    const-string p2, "library"

    .line 42
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p4, p5}, Lcom/amazon/kcp/application/DeeplinkHandler$Companion;->openLibrary(Lcom/amazon/kcp/library/ILibraryController;Landroid/content/Context;Ljava/util/Map;)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo p1, "open"

    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p4}, Lcom/amazon/kcp/application/DeeplinkHandler$Companion;->openApp(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_3
    const-string p1, "home"

    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p4, p5}, Lcom/amazon/kcp/application/DeeplinkHandler$Companion;->openHome(Landroid/content/Context;Ljava/util/Map;)V

    :goto_0
    return v0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return p1

    :cond_2
    return v0

    :sswitch_data_0
    .sparse-switch
        0x30f4df -> :sswitch_3
        0x34264a -> :sswitch_2
        0x9e824bb -> :sswitch_1
        0x30a42c12 -> :sswitch_0
    .end sparse-switch
.end method
