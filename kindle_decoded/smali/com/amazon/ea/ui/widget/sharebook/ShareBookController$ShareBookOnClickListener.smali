.class Lcom/amazon/ea/ui/widget/sharebook/ShareBookController$ShareBookOnClickListener;
.super Ljava/lang/Object;
.source "ShareBookController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareBookOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;


# direct methods
.method private constructor <init>(Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/sharebook/ShareBookController$ShareBookOnClickListener;->this$0:Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;Lcom/amazon/ea/ui/widget/sharebook/ShareBookController$1;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/sharebook/ShareBookController$ShareBookOnClickListener;-><init>(Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 90
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/sharebook/ShareBookController$ShareBookOnClickListener;->this$0:Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;->access$100(Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object p1

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/ea/ui/widget/sharebook/ShareBookController$ShareBookOnClickListener;->this$0:Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;

    .line 91
    invoke-static {v0}, Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;->access$200(Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    const-string/jumbo v1, "ss"

    .line 90
    invoke-static {p1, v0, v1}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTagWithAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "END_ACTIONS_SHARING_WIDGET"

    invoke-static {p1, v0}, Lcom/amazon/ea/ui/helper/ShareHelper;->shareBook(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 96
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "ShareBookWidgetShareButtonClicked"

    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 97
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v2, p0, Lcom/amazon/ea/ui/widget/sharebook/ShareBookController$ShareBookOnClickListener;->this$0:Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;

    invoke-static {v2}, Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;->access$300(Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v2

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 98
    invoke-static {v1}, Lcom/amazon/ea/guava/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object p1

    .line 99
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/sharebook/ShareBookController$ShareBookOnClickListener;->this$0:Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;->access$400(Lcom/amazon/ea/ui/widget/sharebook/ShareBookController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v1, "MetricsTag"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "AnyActionsShareBookWidget"

    const-string v2, "Recommend"

    .line 101
    invoke-interface {v0, v1, v2, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string p1, "EmailApp"

    .line 103
    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->openContext(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
