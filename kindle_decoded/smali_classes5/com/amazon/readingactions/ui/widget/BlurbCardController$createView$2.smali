.class final Lcom/amazon/readingactions/ui/widget/BlurbCardController$createView$2;
.super Ljava/lang/Object;
.source "BlurbCardController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/BlurbCardController;->createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$createView$2;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 177
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$createView$2;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    move-result-object p1

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/GeneralWidgetActions;->CLICK_EMPTY:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    return-void
.end method
