.class Lcom/amazon/kindle/observablemodel/LibraryRepository$5;
.super Ljava/lang/Object;
.source "LibraryRepository.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/observablemodel/LibraryRepository;->onItemDetail(Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/observablemodel/LibraryRepository;

.field final synthetic val$changeQueue:Ljava/util/Vector;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/observablemodel/LibraryRepository;Ljava/util/Vector;)V
    .locals 0

    .line 685
    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$5;->this$0:Lcom/amazon/kindle/observablemodel/LibraryRepository;

    iput-object p2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$5;->val$changeQueue:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 688
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$5;->val$changeQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/observablemodel/LibraryRepository$QueuedChange;

    .line 689
    iget-object v2, v1, Lcom/amazon/kindle/observablemodel/LibraryRepository$QueuedChange;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;

    if-eqz v2, :cond_0

    .line 691
    iget-object v1, v1, Lcom/amazon/kindle/observablemodel/LibraryRepository$QueuedChange;->update:Ljava/lang/Object;

    invoke-interface {v2, v1}, Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;->onChangeUpdate(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method
