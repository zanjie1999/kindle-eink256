.class final Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$getBubbleContentView$seeInStoreHandler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BookGridController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->getBubbleContentView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $index:I

.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$getBubbleContentView$seeInStoreHandler$1;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;

    iput p2, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$getBubbleContentView$seeInStoreHandler$1;->$index:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 300
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$getBubbleContentView$seeInStoreHandler$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$getBubbleContentView$seeInStoreHandler$1;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BookGridController;)Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    move-result-object p1

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/BookGridActions;->CLICK_SEE_IN_STORE:Lcom/amazon/ea/metrics/BookGridActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 382
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$getBubbleContentView$seeInStoreHandler$1;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridController;

    iget v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridController$BookGridAdapter$getBubbleContentView$seeInStoreHandler$1;->$index:I

    invoke-static {p1, v0}, Lcom/amazon/readingactions/ui/widget/BookGridController;->access$loadDetailPage(Lcom/amazon/readingactions/ui/widget/BookGridController;I)V

    return-void
.end method
