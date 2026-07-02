.class final Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;
.super Ljava/lang/Object;
.source "OldWebViewWidget.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/widget/OldWebViewWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WebViewWidgetJavascriptInterface"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;,
        Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOldWebViewWidget.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OldWebViewWidget.kt\ncom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface\n*L\n1#1,683:1\n475#1,8:684\n475#1,8:692\n*E\n*S KotlinDebug\n*F\n+ 1 OldWebViewWidget.kt\ncom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface\n*L\n559#1,8:684\n602#1,8:692\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

.field private final handler:Landroid/os/Handler;

.field private homeWidgetListener:Lcom/amazon/kindle/home/card/HomeWidgetListener;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final webViewWidget:Lcom/amazon/kcp/home/widget/OldWebViewWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kcp/home/widget/OldWebViewWidget;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fm"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "webViewWidget"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iput-object p4, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->webViewWidget:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    const-string p1, "com.amazon.kcp.home.widget.WebViewWidget.OldWebViewWidgetJavascriptInterface"

    .line 457
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->TAG:Ljava/lang/String;

    .line 458
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;)Landroid/content/Context;
    .locals 0

    .line 450
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final getFontScale()F
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 649
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "context.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    return v0
.end method

.method public final getHomeWidgetListener()Lcom/amazon/kindle/home/card/HomeWidgetListener;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->homeWidgetListener:Lcom/amazon/kindle/home/card/HomeWidgetListener;

    return-object v0
.end method

.method public final getLocale()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 640
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Locale.getDefault().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getThemeName()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 630
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    :goto_0
    const-string/jumbo v1, "sdk?.themeManager?.getTh\u2026T_OF_BOOK) ?: Theme.LIGHT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 631
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/theme/Theme;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "theme.displayName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final openBook(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 622
    invoke-virtual {p0, p1, v0, v0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->openBook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final openBook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bookType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 614
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->openBook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final openBook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opening book with asin: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', type: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' and refTag: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 596
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->homeWidgetListener:Lcom/amazon/kindle/home/card/HomeWidgetListener;

    if-nez v0, :cond_1

    .line 597
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->TAG:Ljava/lang/String;

    const-string p2, "HomeWidgetListener needed for opening book was \'null\'"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->TAG:Ljava/lang/String;

    sget-object p3, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v0, "WebViewJSListenerError"

    invoke-interface {p1, p2, v0, p3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_0
    return-void

    .line 602
    :cond_1
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    if-eqz p2, :cond_3

    .line 692
    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_5

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    :try_start_0
    const-string p2, ""

    .line 694
    :goto_2
    invoke-static {p2}, Lcom/amazon/kcp/library/models/BookType;->valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :catch_0
    :cond_5
    iget-object p2, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$openBook$1;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$openBook$1;-><init>(Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 606
    sget-object p1, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;->TAP:Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;

    sget-object p2, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;->BOOK:Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->reportActionMetric(Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;)V

    return-void
.end method

.method public final openBookDetailsPage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 580
    invoke-virtual {p0, p1, v0, v0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->openBookDetailsPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final openBookDetailsPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 572
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->openBookDetailsPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final openBookDetailsPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opening book details page with asin: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', contentType: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' and refTag: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->homeWidgetListener:Lcom/amazon/kindle/home/card/HomeWidgetListener;

    if-nez v0, :cond_1

    .line 554
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->TAG:Ljava/lang/String;

    const-string p2, "HomeWidgetListener needed for opening store detail page was \'null\'"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->TAG:Ljava/lang/String;

    sget-object p3, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v0, "WebViewJSListenerError"

    invoke-interface {p1, p2, v0, p3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_0
    return-void

    .line 559
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    if-eqz p2, :cond_3

    .line 684
    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_5

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    :try_start_0
    const-string p2, ""

    .line 686
    :goto_2
    invoke-static {p2}, Lcom/amazon/kindle/krx/content/ContentType;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :catch_0
    :cond_5
    iget-object p2, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$openBookDetailsPage$1;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$openBookDetailsPage$1;-><init>(Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 564
    sget-object p1, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;->TAP:Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;

    sget-object p2, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;->STORE:Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->reportActionMetric(Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;)V

    return-void
.end method

.method public final openWebPage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 540
    invoke-virtual {p0, p1, v0, v0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->openWebPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final openWebPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewTitle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 532
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->openWebPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final openWebPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 524
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->openWebUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final openWebUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opening web page with url: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', title: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' and refTag: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 497
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->handler:Landroid/os/Handler;

    new-instance v7, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$openWebUrl$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$openWebUrl$1;-><init>(Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 516
    sget-object p1, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;->TAP:Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;

    sget-object p2, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;->WEB:Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->reportActionMetric(Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;)V

    return-void
.end method

.method public final reportActionMetric(Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 680
    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->reportActionMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final reportActionMetric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "actionType"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x5

    new-array v2, v2, [Lkotlin/Pair;

    .line 661
    iget-object v3, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->webViewWidget:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    invoke-virtual {v3}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "refTag"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 662
    iget-object v3, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->webViewWidget:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    invoke-virtual {v3}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/home/model/CardData;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "widgetPosition"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 663
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 664
    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v2, v1

    .line 665
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->webViewWidget:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$getWebView$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "actionSource"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v2, v1

    .line 660
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting Sidekick click action metric with metadata: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 669
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "HomeSKWidget"

    const-string v3, "Click"

    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 671
    :cond_0
    new-instance v6, Lcom/amazon/kindle/home/model/HomeAction;

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v6, p2, p1, v0}, Lcom/amazon/kindle/home/model/HomeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 672
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->webViewWidget:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    invoke-static {p1}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$getWebView$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-nez p2, :cond_1

    const/4 p1, 0x0

    :cond_1
    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    .line 673
    iget-object v4, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->webViewWidget:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x38

    const/4 v12, 0x0

    invoke-static/range {v4 .. v12}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordAction$default(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/model/HomeAction;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final setHomeWidgetListener(Lcom/amazon/kindle/home/card/HomeWidgetListener;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->homeWidgetListener:Lcom/amazon/kindle/home/card/HomeWidgetListener;

    return-void
.end method
