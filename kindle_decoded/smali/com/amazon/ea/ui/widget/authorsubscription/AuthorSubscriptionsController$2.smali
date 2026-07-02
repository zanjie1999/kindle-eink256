.class Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$2;
.super Ljava/lang/Object;
.source "AuthorSubscriptionsController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$2;->this$0:Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 185
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$2;->this$0:Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;->access$100(Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object p1

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/GeneralWidgetActions;->CLICK_EMPTY:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    return-void
.end method
