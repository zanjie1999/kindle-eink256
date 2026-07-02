.class public final enum Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;
.super Ljava/lang/Enum;
.source "KindleWebViewJavascriptInterface.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MetricActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;

.field public static final enum BOOK:Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;

.field public static final enum STORE:Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;

.field public static final enum WEB:Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;

    new-instance v1, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;

    const-string v2, "WEB"

    const/4 v3, 0x0

    .line 32
    invoke-direct {v1, v2, v3, v2}, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;->WEB:Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;

    const-string v2, "STORE"

    const/4 v3, 0x1

    .line 33
    invoke-direct {v1, v2, v3, v2}, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;->STORE:Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;

    const-string v2, "BOOK"

    const/4 v3, 0x2

    .line 34
    invoke-direct {v1, v2, v3, v2}, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;->BOOK:Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;

    const-string v2, "PURCHASE_DOWNLOAD"

    const/4 v3, 0x3

    .line 35
    invoke-direct {v1, v2, v3, v2}, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;->$VALUES:[Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;

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

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;
    .locals 1

    const-class v0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;->$VALUES:[Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface$MetricActionType;->value:Ljava/lang/String;

    return-object v0
.end method
