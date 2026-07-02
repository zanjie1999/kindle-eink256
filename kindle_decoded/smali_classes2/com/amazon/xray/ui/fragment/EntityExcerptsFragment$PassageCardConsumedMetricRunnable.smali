.class Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment$PassageCardConsumedMetricRunnable;
.super Ljava/lang/Object;
.source "EntityExcerptsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassageCardConsumedMetricRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment$PassageCardConsumedMetricRunnable;->this$0:Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment;Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment$1;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment$PassageCardConsumedMetricRunnable;-><init>(Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 86
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const-string v1, "XrayReadingSession"

    invoke-static {v0, v1}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment$PassageCardConsumedMetricRunnable;->this$0:Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment;

    invoke-static {v1}, Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment;->access$100(Lcom/amazon/xray/ui/fragment/EntityExcerptsFragment;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BookPassageCardsConsumed"

    .line 89
    invoke-virtual {v0, v1}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "EntityPassageCardsConsumed"

    .line 91
    invoke-virtual {v0, v1}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    :goto_0
    const-string v1, "PassageCardsConsumed"

    .line 93
    invoke-virtual {v0, v1}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    return-void
.end method
