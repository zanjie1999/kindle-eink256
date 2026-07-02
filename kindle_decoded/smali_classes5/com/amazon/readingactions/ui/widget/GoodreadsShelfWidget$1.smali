.class Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$1;
.super Ljava/lang/Object;
.source "GoodreadsShelfWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget;->createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$1;->this$0:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 124
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget$1;->this$0:Lcom/amazon/readingactions/ui/widget/GoodreadsShelfWidget;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/GeneralWidgetActions;->CLICK_EMPTY:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    return-void
.end method
