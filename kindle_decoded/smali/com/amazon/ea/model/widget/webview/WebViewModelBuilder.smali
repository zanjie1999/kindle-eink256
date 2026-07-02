.class public final Lcom/amazon/ea/model/widget/webview/WebViewModelBuilder;
.super Ljava/lang/Object;
.source "WebViewModelBuilder.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/ea/model/widget/webview/WebViewModelBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/amazon/ea/model/widget/webview/WebViewModelBuilder;

    invoke-direct {v0}, Lcom/amazon/ea/model/widget/webview/WebViewModelBuilder;-><init>()V

    sput-object v0, Lcom/amazon/ea/model/widget/webview/WebViewModelBuilder;->INSTANCE:Lcom/amazon/ea/model/widget/webview/WebViewModelBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Lcom/amazon/readingactions/sidecar/def/widgets/WebWidgetDef;)Lcom/amazon/ea/model/widget/webview/WebViewModel;
    .locals 4

    const-string v0, "def"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/amazon/ea/model/widget/webview/WebViewModel;

    iget-object v1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    const-string v2, "def.id"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v3, "def.metricsTag"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/readingactions/sidecar/def/widgets/WebWidgetDef;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/readingactions/sidecar/def/widgets/WebWidgetDef;->getPayload()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/amazon/ea/model/widget/webview/WebViewModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
