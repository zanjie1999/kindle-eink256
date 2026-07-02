.class Lcom/amazon/android/widget/PagingButtonWidget$6;
.super Ljava/lang/Object;
.source "PagingButtonWidget.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/widget/PagingButtonWidget;->updateWidgetFromStack(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/widget/PagingButtonWidget;

.field final synthetic val$popButtons:Z


# direct methods
.method constructor <init>(Lcom/amazon/android/widget/PagingButtonWidget;Z)V
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget$6;->this$0:Lcom/amazon/android/widget/PagingButtonWidget;

    iput-boolean p2, p0, Lcom/amazon/android/widget/PagingButtonWidget$6;->val$popButtons:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 577
    iget-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget$6;->this$0:Lcom/amazon/android/widget/PagingButtonWidget;

    iget-boolean p2, p0, Lcom/amazon/android/widget/PagingButtonWidget$6;->val$popButtons:Z

    invoke-static {p1, p2}, Lcom/amazon/android/widget/PagingButtonWidget;->access$900(Lcom/amazon/android/widget/PagingButtonWidget;Z)V

    .line 578
    iget-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget$6;->this$0:Lcom/amazon/android/widget/PagingButtonWidget;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
