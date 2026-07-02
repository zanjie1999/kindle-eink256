.class public final enum Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;
.super Ljava/lang/Enum;
.source "OldWebViewWidget.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MetricActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;

.field public static final enum BOOK:Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;

.field public static final enum STORE:Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;

.field public static final enum WEB:Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;

    new-instance v1, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;

    const-string v2, "WEB"

    const/4 v3, 0x0

    .line 466
    invoke-direct {v1, v2, v3, v2}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;->WEB:Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;

    const-string v2, "STORE"

    const/4 v3, 0x1

    .line 467
    invoke-direct {v1, v2, v3, v2}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;->STORE:Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;

    const-string v2, "BOOK"

    const/4 v3, 0x2

    .line 468
    invoke-direct {v1, v2, v3, v2}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;->BOOK:Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;

    const-string v2, "PURCHASE_DOWNLOAD"

    const/4 v3, 0x3

    .line 469
    invoke-direct {v1, v2, v3, v2}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;->$VALUES:[Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;

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

    .line 465
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;
    .locals 1

    const-class v0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;->$VALUES:[Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricActionType;->value:Ljava/lang/String;

    return-object v0
.end method
