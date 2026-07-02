.class Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter$3;
.super Ljava/lang/Object;
.source "BookGridController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->getBubbleContentView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;I)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter$3;->this$1:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;

    iput p2, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter$3;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 532
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter$3;->this$1:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;

    iget-object p1, p1, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$3200(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-result-object p1

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/BookGridActions;->CLICK_SEE_IN_STORE:Lcom/amazon/ea/metrics/BookGridActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 533
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter$3;->this$1:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;

    iget-object p1, p1, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;

    iget v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController$BookGridAdapter$3;->val$index:I

    invoke-static {p1, v0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;->access$3300(Lcom/amazon/ea/ui/widget/bookgrid/BookGridController;I)V

    return-void
.end method
