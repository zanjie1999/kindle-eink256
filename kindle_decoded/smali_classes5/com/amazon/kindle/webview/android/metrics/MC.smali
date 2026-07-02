.class public final enum Lcom/amazon/kindle/webview/android/metrics/MC;
.super Ljava/lang/Enum;
.source "MC.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/webview/android/metrics/MC;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/webview/android/metrics/MC;

.field public static final enum WEB_VIEW_CARD_LOAD_TIMER:Lcom/amazon/kindle/webview/android/metrics/MC;

.field public static final enum WEB_VIEW_CARD_REQUEST_TIMER:Lcom/amazon/kindle/webview/android/metrics/MC;

.field public static final enum WEB_VIEW_FATAL_LOADING_ERROR:Lcom/amazon/kindle/webview/android/metrics/MC;

.field public static final enum WEB_VIEW_FATAL_LOADING_ERROR_OFFLINE:Lcom/amazon/kindle/webview/android/metrics/MC;

.field public static final enum WEB_VIEW_JS_CONSOLE_ERROR_MESSAGE:Lcom/amazon/kindle/webview/android/metrics/MC;

.field public static final enum WEB_VIEW_JS_CONSOLE_MESSAGE:Lcom/amazon/kindle/webview/android/metrics/MC;

.field public static final enum WEB_VIEW_LOAD_TIMEOUT_ERROR:Lcom/amazon/kindle/webview/android/metrics/MC;

.field public static final enum WEB_VIEW_LOAD_URL_ERROR:Lcom/amazon/kindle/webview/android/metrics/MC;

.field public static final enum WEB_VIEW_LOAD_URL_ERROR_OFFLINE:Lcom/amazon/kindle/webview/android/metrics/MC;

.field public static final enum WEB_VIEW_LOAD_URL_HTTP_ERROR:Lcom/amazon/kindle/webview/android/metrics/MC;

.field public static final enum WEB_VIEW_LOAD_URL_HTTP_ERROR_OFFLINE:Lcom/amazon/kindle/webview/android/metrics/MC;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/amazon/kindle/webview/android/metrics/MC;

    new-instance v1, Lcom/amazon/kindle/webview/android/metrics/MC;

    const/4 v2, 0x0

    const-string v3, "WEB_VIEW_CARD_REQUEST_TIMER"

    const-string v4, "KindleWebView:request:"

    .line 7
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/webview/android/metrics/MC;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/webview/android/metrics/MC;->WEB_VIEW_CARD_REQUEST_TIMER:Lcom/amazon/kindle/webview/android/metrics/MC;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/webview/android/metrics/MC;

    const/4 v2, 0x1

    const-string v3, "WEB_VIEW_CARD_LOAD_TIMER"

    const-string v4, "KindleWebView:load:"

    .line 8
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/webview/android/metrics/MC;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/webview/android/metrics/MC;->WEB_VIEW_CARD_LOAD_TIMER:Lcom/amazon/kindle/webview/android/metrics/MC;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/webview/android/metrics/MC;

    const/4 v2, 0x2

    const-string v3, "WEB_VIEW_LOAD_URL_ERROR"

    const-string v4, "KindleWebViewLoadUrlError"

    .line 10
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/webview/android/metrics/MC;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/webview/android/metrics/MC;->WEB_VIEW_LOAD_URL_ERROR:Lcom/amazon/kindle/webview/android/metrics/MC;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/webview/android/metrics/MC;

    const/4 v2, 0x3

    const-string v3, "WEB_VIEW_LOAD_URL_ERROR_OFFLINE"

    const-string v4, "KindleWebViewLoadUrlErrorOffline"

    .line 12
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/webview/android/metrics/MC;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/webview/android/metrics/MC;->WEB_VIEW_LOAD_URL_ERROR_OFFLINE:Lcom/amazon/kindle/webview/android/metrics/MC;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/webview/android/metrics/MC;

    const/4 v2, 0x4

    const-string v3, "WEB_VIEW_LOAD_URL_HTTP_ERROR"

    const-string v4, "KindleWebViewLoadUrlHttpError"

    .line 14
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/webview/android/metrics/MC;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/webview/android/metrics/MC;->WEB_VIEW_LOAD_URL_HTTP_ERROR:Lcom/amazon/kindle/webview/android/metrics/MC;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/webview/android/metrics/MC;

    const/4 v2, 0x5

    const-string v3, "WEB_VIEW_LOAD_URL_HTTP_ERROR_OFFLINE"

    const-string v4, "KindleWebViewLoadUrlHttpErrorOffline"

    .line 16
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/webview/android/metrics/MC;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/webview/android/metrics/MC;->WEB_VIEW_LOAD_URL_HTTP_ERROR_OFFLINE:Lcom/amazon/kindle/webview/android/metrics/MC;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/webview/android/metrics/MC;

    const/4 v2, 0x6

    const-string v3, "WEB_VIEW_FATAL_INIT_ERROR"

    const-string v4, "KindleWebViewFatalInitError"

    .line 18
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/webview/android/metrics/MC;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/webview/android/metrics/MC;

    const/4 v2, 0x7

    const-string v3, "WEB_VIEW_FATAL_LOADING_ERROR"

    const-string v4, "KindleWebViewFatalLoadingError"

    .line 20
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/webview/android/metrics/MC;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/webview/android/metrics/MC;->WEB_VIEW_FATAL_LOADING_ERROR:Lcom/amazon/kindle/webview/android/metrics/MC;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/webview/android/metrics/MC;

    const/16 v2, 0x8

    const-string v3, "WEB_VIEW_FATAL_LOADING_ERROR_OFFLINE"

    const-string v4, "KindleWebViewFatalLoadingErrorOffline"

    .line 22
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/webview/android/metrics/MC;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/webview/android/metrics/MC;->WEB_VIEW_FATAL_LOADING_ERROR_OFFLINE:Lcom/amazon/kindle/webview/android/metrics/MC;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/webview/android/metrics/MC;

    const/16 v2, 0x9

    const-string v3, "WEB_VIEW_LOAD_TIMEOUT_ERROR"

    const-string v4, "KindleWebViewLoadTimeoutError"

    .line 24
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/webview/android/metrics/MC;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/webview/android/metrics/MC;->WEB_VIEW_LOAD_TIMEOUT_ERROR:Lcom/amazon/kindle/webview/android/metrics/MC;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/webview/android/metrics/MC;

    const/16 v2, 0xa

    const-string v3, "WEB_VIEW_JS_CONSOLE_MESSAGE"

    const-string v4, "KindleWebViewJSConsoleMessage"

    .line 26
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/webview/android/metrics/MC;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/webview/android/metrics/MC;->WEB_VIEW_JS_CONSOLE_MESSAGE:Lcom/amazon/kindle/webview/android/metrics/MC;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/webview/android/metrics/MC;

    const/16 v2, 0xb

    const-string v3, "WEB_VIEW_JS_CONSOLE_ERROR_MESSAGE"

    const-string v4, "KindleWebViewJSConsoleErrorMessage"

    .line 28
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/webview/android/metrics/MC;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/webview/android/metrics/MC;->WEB_VIEW_JS_CONSOLE_ERROR_MESSAGE:Lcom/amazon/kindle/webview/android/metrics/MC;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/webview/android/metrics/MC;->$VALUES:[Lcom/amazon/kindle/webview/android/metrics/MC;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kindle/webview/android/metrics/MC;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/webview/android/metrics/MC;
    .locals 1

    const-class v0, Lcom/amazon/kindle/webview/android/metrics/MC;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/webview/android/metrics/MC;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/webview/android/metrics/MC;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/webview/android/metrics/MC;->$VALUES:[Lcom/amazon/kindle/webview/android/metrics/MC;

    invoke-virtual {v0}, [Lcom/amazon/kindle/webview/android/metrics/MC;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/webview/android/metrics/MC;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/metrics/MC;->value:Ljava/lang/String;

    return-object v0
.end method
