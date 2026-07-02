.class Lcom/amazon/appexpan/client/metrics/Analytics$1;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/appexpan/client/metrics/Analytics;->publishEvent(Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/appexpan/client/metrics/Analytics;

.field final synthetic val$event:Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;


# direct methods
.method constructor <init>(Lcom/amazon/appexpan/client/metrics/Analytics;Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/amazon/appexpan/client/metrics/Analytics$1;->this$0:Lcom/amazon/appexpan/client/metrics/Analytics;

    iput-object p2, p0, Lcom/amazon/appexpan/client/metrics/Analytics$1;->val$event:Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/amazon/appexpan/client/metrics/Analytics$1;->this$0:Lcom/amazon/appexpan/client/metrics/Analytics;

    invoke-static {v0}, Lcom/amazon/appexpan/client/metrics/Analytics;->access$000(Lcom/amazon/appexpan/client/metrics/Analytics;)Lcom/amazon/appexpan/client/metrics/AppExpanMetricsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v1, p0, Lcom/amazon/appexpan/client/metrics/Analytics$1;->val$event:Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;

    invoke-interface {v0, v1}, Lcom/amazon/appexpan/client/metrics/AppExpanMetricsAdapter;->publishEvent(Lcom/amazon/appexpan/client/metrics/AppExpanMetricsData;)V

    :cond_0
    return-void
.end method
