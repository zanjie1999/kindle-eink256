.class Lcom/amazon/android/widget/PagingButtonWidget$1;
.super Ljava/lang/Object;
.source "PagingButtonWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/widget/PagingButtonWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/widget/PagingButtonWidget;


# direct methods
.method constructor <init>(Lcom/amazon/android/widget/PagingButtonWidget;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget$1;->this$0:Lcom/amazon/android/widget/PagingButtonWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget$1;->this$0:Lcom/amazon/android/widget/PagingButtonWidget;

    invoke-static {v0}, Lcom/amazon/android/widget/PagingButtonWidget;->access$000(Lcom/amazon/android/widget/PagingButtonWidget;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/widget/AbstractActionWidgetItem;

    .line 122
    iget-object v1, p0, Lcom/amazon/android/widget/PagingButtonWidget$1;->this$0:Lcom/amazon/android/widget/PagingButtonWidget;

    invoke-static {v1}, Lcom/amazon/android/widget/PagingButtonWidget;->access$100(Lcom/amazon/android/widget/PagingButtonWidget;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-static {}, Lcom/amazon/android/widget/PagingButtonWidget;->access$200()Ljava/lang/String;

    return-void

    :cond_0
    if-eqz v0, :cond_2

    .line 128
    iget-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget$1;->this$0:Lcom/amazon/android/widget/PagingButtonWidget;

    invoke-static {p1}, Lcom/amazon/android/widget/PagingButtonWidget;->access$300(Lcom/amazon/android/widget/PagingButtonWidget;)Lcom/amazon/android/widget/PagingButtonWidget$OnActionItemsClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 129
    iget-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget$1;->this$0:Lcom/amazon/android/widget/PagingButtonWidget;

    invoke-static {p1}, Lcom/amazon/android/widget/PagingButtonWidget;->access$300(Lcom/amazon/android/widget/PagingButtonWidget;)Lcom/amazon/android/widget/PagingButtonWidget$OnActionItemsClickListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/amazon/android/widget/PagingButtonWidget$OnActionItemsClickListener;->onActionItemClick(Lcom/amazon/android/widget/AbstractActionWidgetItem;)V

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget$1;->this$0:Lcom/amazon/android/widget/PagingButtonWidget;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/android/widget/AbstractActionWidgetItem;->onClick(Landroid/content/Context;)Z

    goto :goto_0

    .line 133
    :cond_2
    invoke-static {}, Lcom/amazon/android/widget/PagingButtonWidget;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find AbstractActionWidgetItem for View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
