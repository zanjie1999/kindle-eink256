.class final Lcom/amazon/readingactions/ui/widget/ShareBookController$ShareBookOnClickListener;
.super Ljava/lang/Object;
.source "ShareBookController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/ShareBookController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShareBookOnClickListener"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShareBookController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShareBookController.kt\ncom/amazon/readingactions/ui/widget/ShareBookController$ShareBookOnClickListener\n*L\n1#1,95:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/ShareBookController;


# direct methods
.method public constructor <init>(Lcom/amazon/readingactions/ui/widget/ShareBookController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/ShareBookController$ShareBookOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/ShareBookController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/ShareBookController$ShareBookOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/ShareBookController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/ShareBookController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/ShareBookController;)Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;

    move-result-object p1

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/ShareBookController$ShareBookOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/ShareBookController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/ShareBookController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/ShareBookController;)Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    const-string/jumbo v1, "ss"

    .line 77
    invoke-static {p1, v0, v1}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTagWithAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "END_ACTIONS_SHARING_WIDGET"

    invoke-static {p1, v0}, Lcom/amazon/ea/ui/helper/ShareHelper;->shareBook(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 83
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "ShareBookWidgetShareButtonClicked"

    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 84
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/ShareBookController$ShareBookOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/ShareBookController;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/widget/ShareBookController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/ShareBookController;)Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;

    move-result-object v2

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 85
    invoke-static {v1}, Lcom/amazon/ea/guava/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object p1

    const-string/jumbo v0, "rsMetadata"

    .line 86
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/ShareBookController$ShareBookOnClickListener;->this$0:Lcom/amazon/readingactions/ui/widget/ShareBookController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/ShareBookController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/ShareBookController;)Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v1, "MetricsTag"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "EndActionsPlugin.sdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "AnyActionsShareBookWidget"

    const-string v2, "Recommend"

    .line 88
    invoke-interface {v0, v1, v2, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string p1, "EmailApp"

    .line 90
    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->openContext(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
