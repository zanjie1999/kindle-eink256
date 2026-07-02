.class Lcom/amazon/ea/ui/widget/buybook/BuyBookController$3;
.super Ljava/lang/Object;
.source "BuyBookController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->getView(Landroid/view/ViewGroup;Lcom/amazon/ea/model/widget/WidgetDisplayFormat;Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/widget/buybook/BuyBookController;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/buybook/BuyBookController;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController$3;->this$0:Lcom/amazon/ea/ui/widget/buybook/BuyBookController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 183
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/buybook/BuyBookController$3;->this$0:Lcom/amazon/ea/ui/widget/buybook/BuyBookController;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;->access$300(Lcom/amazon/ea/ui/widget/buybook/BuyBookController;)Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    move-result-object p1

    iget-object p1, p1, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/GeneralWidgetActions;->CLICK_EMPTY:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    return-void
.end method
