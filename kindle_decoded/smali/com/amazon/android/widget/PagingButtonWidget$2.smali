.class Lcom/amazon/android/widget/PagingButtonWidget$2;
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

    .line 149
    iput-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget$2;->this$0:Lcom/amazon/android/widget/PagingButtonWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget$2;->this$0:Lcom/amazon/android/widget/PagingButtonWidget;

    invoke-static {v0}, Lcom/amazon/android/widget/PagingButtonWidget;->access$100(Lcom/amazon/android/widget/PagingButtonWidget;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Lcom/amazon/android/widget/PagingButtonWidget;->access$200()Ljava/lang/String;

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget$2;->this$0:Lcom/amazon/android/widget/PagingButtonWidget;

    invoke-static {v0}, Lcom/amazon/android/widget/PagingButtonWidget;->access$400(Lcom/amazon/android/widget/PagingButtonWidget;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/widget/AbstractCategoryWidgetItem;

    if-eqz v0, :cond_1

    .line 159
    iget-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget$2;->this$0:Lcom/amazon/android/widget/PagingButtonWidget;

    invoke-virtual {v0}, Lcom/amazon/android/widget/AbstractCategoryWidgetItem;->getWidgetItemGroup()Lcom/amazon/android/widget/WidgetItemGroup;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/android/widget/PagingButtonWidget;->access$500(Lcom/amazon/android/widget/PagingButtonWidget;Lcom/amazon/android/widget/WidgetItemGroup;)Ljava/util/List;

    move-result-object p1

    .line 160
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget$2;->this$0:Lcom/amazon/android/widget/PagingButtonWidget;

    invoke-static {v0}, Lcom/amazon/android/widget/PagingButtonWidget;->access$600(Lcom/amazon/android/widget/PagingButtonWidget;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget$2;->this$0:Lcom/amazon/android/widget/PagingButtonWidget;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/android/widget/PagingButtonWidget;->access$700(Lcom/amazon/android/widget/PagingButtonWidget;Z)V

    goto :goto_0

    .line 163
    :cond_1
    invoke-static {}, Lcom/amazon/android/widget/PagingButtonWidget;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find AbstractCategoryWidgetItem for View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
