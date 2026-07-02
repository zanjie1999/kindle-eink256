.class Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall$1;
.super Ljava/lang/Object;
.source "AsyncGraphicForRange.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;

.field final synthetic val$pageBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$tag:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;Ljava/util/List;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall$1;->this$1:Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;

    iput-object p2, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall$1;->val$tag:Ljava/util/List;

    iput-object p3, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall$1;->val$pageBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 165
    iget-object v0, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall$1;->this$1:Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;

    invoke-static {v0}, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->access$100(Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;)Landroid/widget/ImageView;

    move-result-object v0

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall$1;->val$tag:Ljava/util/List;

    iget-object v2, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall$1;->this$1:Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;

    invoke-static {v2}, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->access$100(Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    monitor-exit v0

    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall$1;->this$1:Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;

    invoke-static {v1}, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->access$100(Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall$1;->val$pageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 170
    iget-object v1, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall$1;->this$1:Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;

    iget-object v2, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall$1;->this$1:Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;

    invoke-static {v2}, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->access$200(Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->access$300(Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;Landroid/view/View;I)V

    .line 171
    iget-object v1, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall$1;->this$1:Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;

    invoke-static {v1}, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->access$100(Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Comparable;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    iget-object v3, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall$1;->this$1:Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;

    invoke-static {v3}, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->access$400(Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall$1;->this$1:Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;

    invoke-static {v4}, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->access$500(Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall$1;->this$1:Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;

    invoke-static {v4}, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->access$600(Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall$1;->this$1:Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;

    invoke-static {v4}, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->access$700(Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 172
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
