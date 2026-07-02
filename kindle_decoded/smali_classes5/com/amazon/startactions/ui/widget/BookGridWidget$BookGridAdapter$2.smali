.class Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter$2;
.super Ljava/lang/Object;
.source "BookGridWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->getBubbleContentView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;I)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter$2;->this$1:Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;

    iput p2, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 435
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter$2;->this$1:Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    iget v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter$2;->val$index:I

    invoke-static {p1, v0}, Lcom/amazon/startactions/ui/widget/BookGridWidget;->access$1000(Lcom/amazon/startactions/ui/widget/BookGridWidget;I)V

    .line 436
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter$2;->this$1:Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/BookGridWidget$BookGridAdapter;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/BookGridActions;->CLICK_SEE_IN_STORE:Lcom/amazon/ea/metrics/BookGridActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    return-void
.end method
