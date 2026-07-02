.class public Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;
.super Ljava/lang/Object;
.source "KindleWebViewJavascriptInterface.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricAction;,
        Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKindleWebViewJavascriptInterface.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KindleWebViewJavascriptInterface.kt\ncom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface\n*L\n1#1,222:1\n39#1,8:223\n*E\n*S KotlinDebug\n*F\n+ 1 KindleWebViewJavascriptInterface.kt\ncom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface\n*L\n118#1,8:223\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final downloadTriggerSource:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

.field private final handler:Landroid/os/Handler;

.field private final logger:Lcom/amazon/kindle/krx/logging/ILogger;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadTriggerSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerTag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->downloadTriggerSource:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".KindleWebviewJavascriptInterface"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->TAG:Ljava/lang/String;

    .line 23
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->handler:Landroid/os/Handler;

    .line 24
    iget-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    const-string/jumbo p2, "sdk.logger"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    return-void
.end method

.method public static final synthetic access$getSdk$p(Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method


# virtual methods
.method public final getFontScale()F
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sdk.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "sdk.context.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    return v0
.end method

.method public final getLocale()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 198
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Locale.getDefault().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getThemeName()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    const-string/jumbo v1, "sdk.themeManager.getTheme(ThemeArea.OUT_OF_BOOK)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/theme/Theme;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sdk.themeManager.getThem\u2026.OUT_OF_BOOK).displayName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final openBook(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0, p1, v0, v0}, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->openBook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final openBook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bookType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->openBook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openBook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const-string/jumbo v1, "sdk.libraryManager.getContentFromAsin(asin, false)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->openBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;)Z

    .line 164
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening book with asin: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', type: \'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and refTag: \'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sget-object p1, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricAction;->TAP:Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricAction;

    sget-object p2, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;->BOOK:Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->reportActionMetric(Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricAction;Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;)V

    return-void
.end method

.method public final openBookDetailsPage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, p1, v0, v0}, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->openBookDetailsPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final openBookDetailsPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->openBookDetailsPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final openBookDetailsPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    .line 114
    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->TAG:Ljava/lang/String;

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening book details page with asin: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', contentType: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' and refTag: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    if-eqz p2, :cond_1

    .line 223
    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    :try_start_0
    const-string p2, ""

    .line 225
    :goto_2
    invoke-static {p2}, Lcom/amazon/kindle/krx/content/ContentType;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :catch_0
    :cond_3
    iget-object p2, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$openBookDetailsPage$1;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$openBookDetailsPage$1;-><init>(Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    sget-object p1, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricAction;->TAP:Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricAction;

    sget-object p2, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;->STORE:Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->reportActionMetric(Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricAction;Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;)V

    return-void
.end method

.method public final openWebPage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, p1, v0, v0}, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->openWebPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final openWebPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewTitle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->openWebPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final openWebPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->openWebUrlInContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ScreenletContext;)V

    return-void
.end method

.method protected final openWebUrlInContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ScreenletContext;)V
    .locals 8

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    .line 59
    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->TAG:Ljava/lang/String;

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening web page with url: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', title: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' and refTag: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->handler:Landroid/os/Handler;

    new-instance v7, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$openWebUrlInContext$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$openWebUrlInContext$1;-><init>(Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ScreenletContext;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    sget-object p1, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricAction;->TAP:Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricAction;

    sget-object p2, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;->WEB:Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->reportActionMetric(Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricAction;Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;)V

    return-void
.end method

.method public final reportActionMetric(Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricAction;Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricAction;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->reportActionMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reportActionMetric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "actionType"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
