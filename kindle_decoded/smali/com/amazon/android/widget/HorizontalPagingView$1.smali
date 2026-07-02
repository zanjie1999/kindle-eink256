.class Lcom/amazon/android/widget/HorizontalPagingView$1;
.super Ljava/lang/Object;
.source "HorizontalPagingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/widget/HorizontalPagingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/widget/HorizontalPagingView;


# direct methods
.method constructor <init>(Lcom/amazon/android/widget/HorizontalPagingView;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView$1;->this$0:Lcom/amazon/android/widget/HorizontalPagingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/amazon/android/widget/HorizontalPagingView$1;->this$0:Lcom/amazon/android/widget/HorizontalPagingView;

    invoke-static {v0}, Lcom/amazon/android/widget/HorizontalPagingView;->access$000(Lcom/amazon/android/widget/HorizontalPagingView;)I

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/amazon/android/widget/HorizontalPagingView$1;->this$0:Lcom/amazon/android/widget/HorizontalPagingView;

    invoke-static {v1}, Lcom/amazon/android/widget/HorizontalPagingView;->access$100(Lcom/amazon/android/widget/HorizontalPagingView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 144
    iget-object v1, p0, Lcom/amazon/android/widget/HorizontalPagingView$1;->this$0:Lcom/amazon/android/widget/HorizontalPagingView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/amazon/android/widget/HorizontalPagingView$1;->this$0:Lcom/amazon/android/widget/HorizontalPagingView;

    .line 145
    invoke-static {v1}, Lcom/amazon/android/widget/HorizontalPagingView;->access$100(Lcom/amazon/android/widget/HorizontalPagingView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    :cond_0
    const/4 v1, 0x0

    if-ge p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 147
    iget-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView$1;->this$0:Lcom/amazon/android/widget/HorizontalPagingView;

    invoke-static {p1}, Lcom/amazon/android/widget/HorizontalPagingView;->access$000(Lcom/amazon/android/widget/HorizontalPagingView;)I

    move-result p1

    sub-int/2addr p1, v2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView$1;->this$0:Lcom/amazon/android/widget/HorizontalPagingView;

    invoke-static {p1}, Lcom/amazon/android/widget/HorizontalPagingView;->access$000(Lcom/amazon/android/widget/HorizontalPagingView;)I

    move-result p1

    add-int/2addr p1, v2

    .line 148
    :goto_1
    iget-object v0, p0, Lcom/amazon/android/widget/HorizontalPagingView$1;->this$0:Lcom/amazon/android/widget/HorizontalPagingView;

    invoke-static {v0}, Lcom/amazon/android/widget/HorizontalPagingView;->access$200(Lcom/amazon/android/widget/HorizontalPagingView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {p1, v3, v1}, Lcom/amazon/android/widget/HorizontalPagingView;->boundInt(III)I

    move-result p1

    invoke-static {v0, p1}, Lcom/amazon/android/widget/HorizontalPagingView;->access$002(Lcom/amazon/android/widget/HorizontalPagingView;I)I

    .line 149
    iget-object p1, p0, Lcom/amazon/android/widget/HorizontalPagingView$1;->this$0:Lcom/amazon/android/widget/HorizontalPagingView;

    invoke-static {p1}, Lcom/amazon/android/widget/HorizontalPagingView;->access$000(Lcom/amazon/android/widget/HorizontalPagingView;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/amazon/android/widget/HorizontalPagingView;->access$300(Lcom/amazon/android/widget/HorizontalPagingView;I)V

    return-void
.end method
