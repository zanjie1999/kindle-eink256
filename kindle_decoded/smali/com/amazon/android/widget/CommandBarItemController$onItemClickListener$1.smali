.class public final Lcom/amazon/android/widget/CommandBarItemController$onItemClickListener$1;
.super Ljava/lang/Object;
.source "CommandBarItemController.kt"

# interfaces
.implements Lcom/amazon/android/widget/CommandBar$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/widget/CommandBarItemController;-><init>(Lcom/amazon/kcp/debug/INeutronUtil;Lcom/amazon/kcp/application/IKindleObjectFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommandBarItemController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommandBarItemController.kt\ncom/amazon/android/widget/CommandBarItemController$onItemClickListener$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,533:1\n1#2:534\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/widget/CommandBarItemController;


# direct methods
.method constructor <init>(Lcom/amazon/android/widget/CommandBarItemController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/amazon/android/widget/CommandBarItemController$onItemClickListener$1;->this$0:Lcom/amazon/android/widget/CommandBarItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Lcom/amazon/android/widget/IWidgetItem;)V
    .locals 5

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    instance-of v0, p1, Lcom/amazon/android/widget/AbstractActionWidgetItem;

    if-nez v0, :cond_0

    .line 75
    invoke-static {}, Lcom/amazon/android/widget/CommandBarItemController;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Item was clicked that we don\'t know how to handle. Ignoring"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 79
    :cond_0
    check-cast p1, Lcom/amazon/android/widget/AbstractActionWidgetItem;

    invoke-virtual {p1}, Lcom/amazon/android/widget/AbstractActionWidgetItem;->getButtonIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "item.buttonIdentifier"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/krx/metrics/MetricsData;

    invoke-static {}, Lcom/amazon/android/widget/CommandBarItemController;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AmazonKindle"

    invoke-direct {v2, v4, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 81
    invoke-virtual {v2, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v2

    .line 82
    invoke-virtual {v2, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    .line 83
    invoke-static {}, Lcom/amazon/android/widget/CommandBarItemController;->access$getTAG$cp()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command Item Clicked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/amazon/android/widget/CommandBarItemController$onItemClickListener$1;->this$0:Lcom/amazon/android/widget/CommandBarItemController;

    invoke-static {v0, p1}, Lcom/amazon/android/widget/CommandBarItemController;->access$emitInBookChromeMetrics(Lcom/amazon/android/widget/CommandBarItemController;Lcom/amazon/android/widget/AbstractActionWidgetItem;)V

    return-void
.end method

.method public onOverflowClicked(Lcom/amazon/android/widget/CommandBar$Position;)V
    .locals 3

    const-string/jumbo v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/amazon/android/widget/CommandBarItemController;->access$getTAG$cp()Ljava/lang/String;

    .line 90
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->CHROME:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    .line 91
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_OVERFLOW_MENU:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 90
    invoke-static {p1, v0, v1, v2, v1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics$default(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionCause;ILjava/lang/Object;)V

    .line 96
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/amazon/android/widget/CommandBarItemController$onItemClickListener$1;->this$0:Lcom/amazon/android/widget/CommandBarItemController;

    invoke-static {p1}, Lcom/amazon/android/widget/CommandBarItemController;->access$getCommandBar$p(Lcom/amazon/android/widget/CommandBarItemController;)Lcom/amazon/android/widget/CommandBar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/android/widget/CommandBarItemController$onItemClickListener$1;->this$0:Lcom/amazon/android/widget/CommandBarItemController;

    invoke-virtual {v0, p1}, Lcom/amazon/android/widget/CommandBarItemController;->populateCommandBar(Lcom/amazon/android/widget/CommandBar;)V

    :cond_0
    return-void
.end method
