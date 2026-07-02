.class Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;
.super Ljava/lang/Object;
.source "AsyncGraphicForRange.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/notebook/module/AsyncGraphicForRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncGraphicCall"
.end annotation


# instance fields
.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private end:Lcom/amazon/kindle/krx/reader/IPosition;

.field private height:I

.field private loadingSpinner:Landroid/view/View;

.field private start:Lcom/amazon/kindle/krx/reader/IPosition;

.field final synthetic this$0:Lcom/amazon/notebook/module/AsyncGraphicForRange;

.field private view:Landroid/widget/ImageView;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/amazon/notebook/module/AsyncGraphicForRange;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IILandroid/widget/ImageView;Landroid/view/View;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 6

    .line 102
    iput-object p1, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->this$0:Lcom/amazon/notebook/module/AsyncGraphicForRange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p2, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 104
    iput-object p3, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 105
    iput p4, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->width:I

    .line 106
    iput p5, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->height:I

    .line 107
    iput-object p6, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->view:Landroid/widget/ImageView;

    .line 108
    iput-object p7, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->loadingSpinner:Landroid/view/View;

    .line 109
    iput-object p8, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 111
    monitor-enter p6

    const/4 p1, 0x5

    :try_start_0
    new-array p8, p1, [Ljava/lang/Comparable;

    const/4 v0, 0x1

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p8, v2

    aput-object p2, p8, v0

    const/4 v1, 0x2

    aput-object p3, p8, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, p8, v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x4

    aput-object v3, p8, v5

    invoke-static {p8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p8

    .line 114
    invoke-virtual {p6}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 115
    invoke-interface {p8, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p8

    if-nez p8, :cond_0

    .line 116
    invoke-direct {p0, p7, v2}, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->setVisibility(Landroid/view/View;I)V

    .line 117
    sget p7, Lcom/amazon/notebook/module/R$drawable;->notebook_loading:I

    invoke-virtual {p6, p7}, Landroid/widget/ImageView;->setImageResource(I)V

    new-array p1, p1, [Ljava/lang/Comparable;

    .line 118
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    aput-object p7, p1, v2

    aput-object p2, p1, v0

    aput-object p3, p1, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v5

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p6, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 120
    :cond_0
    monitor-exit p6

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic access$100(Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;)Landroid/widget/ImageView;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->view:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;)Landroid/view/View;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->loadingSpinner:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;Landroid/view/View;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->setVisibility(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;)I
    .locals 0

    .line 74
    iget p0, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->width:I

    return p0
.end method

.method static synthetic access$700(Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;)I
    .locals 0

    .line 74
    iget p0, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->height:I

    return p0
.end method

.method private setVisibility(Landroid/view/View;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Comparable;

    const/4 v1, 0x0

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->view:Landroid/widget/ImageView;

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->view:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 129
    invoke-interface {v2, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    monitor-exit v1

    return-void

    .line 132
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 135
    new-instance v1, Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;

    iget-object v2, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    iget-object v3, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    iget v4, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->width:I

    iget v5, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->height:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;II)V

    .line 136
    iget-object v2, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->this$0:Lcom/amazon/notebook/module/AsyncGraphicForRange;

    invoke-static {v2}, Lcom/amazon/notebook/module/AsyncGraphicForRange;->access$000(Lcom/amazon/notebook/module/AsyncGraphicForRange;)Landroidx/collection/LruCache;

    move-result-object v2

    monitor-enter v2

    .line 137
    :try_start_1
    iget-object v3, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->this$0:Lcom/amazon/notebook/module/AsyncGraphicForRange;

    invoke-static {v3}, Lcom/amazon/notebook/module/AsyncGraphicForRange;->access$000(Lcom/amazon/notebook/module/AsyncGraphicForRange;)Landroidx/collection/LruCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 138
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_2

    .line 141
    iget-object v2, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iget-object v3, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    iget v4, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->width:I

    iget v5, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->height:I

    invoke-interface {v2, v3, v4, v5}, Lcom/amazon/android/docviewer/KindleDocViewer;->getGraphicForPage(Lcom/amazon/kindle/krx/reader/IPosition;II)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iget-object v4, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    iget v5, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->width:I

    iget v6, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->height:I

    invoke-interface {v3, v4, v2, v5, v6}, Lcom/amazon/android/docviewer/KindleDocViewer;->getGraphicForRange(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;II)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_2

    .line 144
    iget-object v2, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->this$0:Lcom/amazon/notebook/module/AsyncGraphicForRange;

    invoke-static {v2}, Lcom/amazon/notebook/module/AsyncGraphicForRange;->access$000(Lcom/amazon/notebook/module/AsyncGraphicForRange;)Landroidx/collection/LruCache;

    move-result-object v2

    monitor-enter v2

    .line 145
    :try_start_2
    iget-object v4, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->this$0:Lcom/amazon/notebook/module/AsyncGraphicForRange;

    invoke-static {v4}, Lcom/amazon/notebook/module/AsyncGraphicForRange;->access$000(Lcom/amazon/notebook/module/AsyncGraphicForRange;)Landroidx/collection/LruCache;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 155
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 160
    :cond_3
    iget-object v1, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;->this$0:Lcom/amazon/notebook/module/AsyncGraphicForRange;

    invoke-static {v1}, Lcom/amazon/notebook/module/AsyncGraphicForRange;->access$800(Lcom/amazon/notebook/module/AsyncGraphicForRange;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall$1;

    invoke-direct {v2, p0, v0, v3}, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall$1;-><init>(Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;Ljava/util/List;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_1
    move-exception v0

    .line 138
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 132
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method
