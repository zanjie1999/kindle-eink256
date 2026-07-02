.class public final Lcom/amazon/readingactions/sidecar/parsing/widgets/WebWidgetDefParser;
.super Ljava/lang/Object;
.source "WebWidgetDefParser.kt"


# static fields
.field private static final OPTIONS_PAYLOAD:Ljava/lang/String; = "payload"

.field private static final OPTIONS_URL:Ljava/lang/String; = "url"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/amazon/readingactions/sidecar/parsing/widgets/WebWidgetDefParser;

    invoke-direct {v0}, Lcom/amazon/readingactions/sidecar/parsing/widgets/WebWidgetDefParser;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final parse(Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;)Lcom/amazon/readingactions/sidecar/def/widgets/WebWidgetDef;
    .locals 9

    const-string v0, "def"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 14
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->options:Lorg/json/JSONObject;

    const-string/jumbo v2, "payload"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 16
    new-instance v0, Lcom/amazon/readingactions/sidecar/def/widgets/WebWidgetDef;

    iget-object v3, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayKey:Ljava/lang/String;

    iget v6, p0, Lcom/amazon/ea/sidecar/def/raw/RawWidgetDef;->displayLimit:I

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/amazon/readingactions/sidecar/def/widgets/WebWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
