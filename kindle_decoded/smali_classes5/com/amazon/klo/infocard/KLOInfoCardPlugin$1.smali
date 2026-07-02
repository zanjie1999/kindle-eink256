.class Lcom/amazon/klo/infocard/KLOInfoCardPlugin$1;
.super Ljava/lang/Object;
.source "KLOInfoCardPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ISortableProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->getProvider()Lcom/amazon/kindle/krx/providers/ISortableProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
        "Lcom/amazon/kindle/krx/ui/InfoCardView;",
        "Lcom/amazon/kindle/krx/content/IContentSelection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/klo/infocard/KLOInfoCardPlugin;


# direct methods
.method constructor <init>(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$1;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getNumWords(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 133
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    return p1
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kindle/krx/ui/InfoCardView;
    .locals 11

    .line 66
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    const-string v1, "InfoCardBuildTime"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 67
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$1;->getNumWords(Ljava/lang/String;)I

    move-result v0

    .line 68
    iget-object v2, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$1;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardPlugin;

    invoke-static {v2}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$100(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;)Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v2

    invoke-static {}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Considering the construction of a KLO info card..."

    invoke-interface {v2, v3, v4}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionType()Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;->TEXT_HIGHLIGHT:Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_6

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz v0, :cond_5

    const/16 v2, 0x1e

    if-le v0, v2, :cond_1

    goto/16 :goto_0

    .line 81
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectedText()Ljava/lang/String;

    move-result-object v6

    .line 83
    iget-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$1;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardPlugin;

    invoke-static {v0}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$200(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    .line 85
    iget-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$1;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardPlugin;

    invoke-static {p1}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$100(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;)Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    invoke-static {}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Not returning a KLO info card (no sidecar)..."

    invoke-interface {p1, v0, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    return-object v4

    .line 90
    :cond_2
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout_inflater"

    .line 91
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 94
    sget v2, Lcom/amazon/klo/R$layout;->klo_infocard_v2:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/klo/infocard/KLOInfoCardView;

    .line 96
    new-instance v5, Lcom/amazon/klo/infocard/KLOInfoCardController;

    invoke-direct {v5, v0}, Lcom/amazon/klo/infocard/KLOInfoCardController;-><init>(Lcom/amazon/klo/infocard/KLOInfoCardView;)V

    .line 98
    iget-object v2, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$1;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardPlugin;

    invoke-static {v2}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$100(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;)Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v2

    invoke-static {}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v7, "Trying to build and return a KLO info card now..."

    invoke-interface {v2, v3, v7}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->toSerializableString()Ljava/lang/String;

    move-result-object v7

    .line 100
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->toSerializableString()Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$1;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardPlugin;

    invoke-static {p1}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$300(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;)Lorg/json/JSONArray;

    move-result-object v9

    iget-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$1;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardPlugin;

    invoke-static {p1}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$400(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;)Lcom/amazon/klo/sidecar/SidecarHandler;

    move-result-object v10

    .line 99
    invoke-virtual/range {v5 .. v10}, Lcom/amazon/klo/infocard/KLOInfoCardController;->loadQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/amazon/klo/sidecar/SidecarHandler;)Z

    move-result p1

    const-string v2, "KINDLE_LEARNING_OBJECTS"

    if-eqz p1, :cond_4

    .line 105
    iget-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$1;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardPlugin;

    invoke-static {p1}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$500(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 107
    iget-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$1;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardPlugin;

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$502(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;Z)Z

    .line 108
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    const-string v3, "InfoCardFirstDelivered"

    invoke-interface {p1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_3
    invoke-virtual {v0}, Lcom/amazon/klo/infocard/KLOInfoCardView;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/klo/KLOMetricManager;->reportInfocardDisplayedForTerm(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    invoke-interface {p1, v2, v1, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    const-string v1, "InfoCardDelivered"

    invoke-interface {p1, v2, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 116
    :cond_4
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    const-string v0, "InfoCardNotDelivered"

    invoke-interface {p1, v2, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 77
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$1;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardPlugin;

    invoke-static {p1}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$100(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;)Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    invoke-static {}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Not returning a KLO info card (0 or too many words)..."

    invoke-interface {p1, v0, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    return-object v4

    .line 71
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$1;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardPlugin;

    invoke-static {p1}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$100(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;)Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    invoke-static {}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Not returning a KLO info card (not a text highlight)..."

    invoke-interface {p1, v0, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    return-object v4
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 56
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$1;->get(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kindle/krx/ui/InfoCardView;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I
    .locals 0

    const/16 p1, 0x2328

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 56
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$1;->getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I

    move-result p1

    return p1
.end method
