.class Lcom/amazon/kindle/rendering/KRIFView$KrifTextSelector;
.super Ljava/lang/Object;
.source "KRIFView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/rendering/KRIFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KrifTextSelector"
.end annotation


# instance fields
.field private selectionHandler:Lcom/amazon/krf/platform/Selection;

.field final synthetic this$0:Lcom/amazon/kindle/rendering/KRIFView;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/rendering/KRIFView;Lcom/amazon/krf/platform/Selection;)V
    .locals 0

    .line 1448
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView$KrifTextSelector;->this$0:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1449
    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFView$KrifTextSelector;->selectionHandler:Lcom/amazon/krf/platform/Selection;

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kindle/rendering/KRIFView$KrifTextSelector;)V
    .locals 0

    .line 1445
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFView$KrifTextSelector;->dispose()V

    return-void
.end method

.method private declared-synchronized dispose()V
    .locals 1

    monitor-enter p0

    .line 1470
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView$KrifTextSelector;->selectionHandler:Lcom/amazon/krf/platform/Selection;

    invoke-interface {v0}, Lcom/amazon/krf/platform/Selection;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1471
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method declared-synchronized setHighlightSelectionStyle(I)V
    .locals 3

    monitor-enter p0

    .line 1463
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView$KrifTextSelector;->this$0:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-static {v0}, Lcom/amazon/kindle/rendering/KRIFView;->access$100(Lcom/amazon/kindle/rendering/KRIFView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView$KrifTextSelector;->selectionHandler:Lcom/amazon/krf/platform/Selection;

    sget-object v1, Lcom/amazon/krf/platform/SelectionState$HandleStyle;->NONE:Lcom/amazon/krf/platform/SelectionState$HandleStyle;

    sget-object v2, Lcom/amazon/krf/platform/SelectionState$LoupeStyle;->NONE:Lcom/amazon/krf/platform/SelectionState$LoupeStyle;

    invoke-interface {v0, v1, v2, p1}, Lcom/amazon/krf/platform/Selection;->setSelectionStyle(Lcom/amazon/krf/platform/SelectionState$HandleStyle;Lcom/amazon/krf/platform/SelectionState$LoupeStyle;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1467
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setSelectionRanges(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/PositionRange;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1453
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView$KrifTextSelector;->this$0:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-static {v0}, Lcom/amazon/kindle/rendering/KRIFView;->access$100(Lcom/amazon/kindle/rendering/KRIFView;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 1454
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1457
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView$KrifTextSelector;->selectionHandler:Lcom/amazon/krf/platform/Selection;

    invoke-interface {v0, p1}, Lcom/amazon/krf/platform/Selection;->setSelectionRanges(Ljava/util/List;)V

    goto :goto_1

    .line 1455
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView$KrifTextSelector;->selectionHandler:Lcom/amazon/krf/platform/Selection;

    invoke-interface {p1}, Lcom/amazon/krf/platform/Selection;->clearSelection()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1460
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
