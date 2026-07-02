.class public final enum Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;
.super Ljava/lang/Enum;
.source "OldWebViewWidget.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MetricAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;

.field public static final enum TAP:Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;

    new-instance v1, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;

    const/4 v2, 0x0

    const-string v3, "TAP"

    const-string/jumbo v4, "tap"

    .line 461
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;->TAP:Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;

    const/4 v2, 0x1

    const-string v3, "HOLD"

    const-string v4, "hold"

    .line 462
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;->$VALUES:[Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;

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

    .line 460
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;
    .locals 1

    const-class v0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;->$VALUES:[Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;

    invoke-virtual {v0}, [Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface$MetricAction;->value:Ljava/lang/String;

    return-object v0
.end method
