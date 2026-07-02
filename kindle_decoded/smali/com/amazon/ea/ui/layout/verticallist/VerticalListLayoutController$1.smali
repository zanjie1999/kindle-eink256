.class Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController$1;
.super Ljava/lang/Object;
.source "VerticalListLayoutController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController;->getViewImplementation(Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController;

.field final synthetic val$widgetScroller:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController;Landroid/widget/ScrollView;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController$1;->this$0:Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController;

    iput-object p2, p0, Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController$1;->val$widgetScroller:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController$1;->this$0:Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController;

    invoke-virtual {v0}, Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController;->logMetricOnScrollChanged()V

    .line 76
    iget-object v0, p0, Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController$1;->val$widgetScroller:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method
