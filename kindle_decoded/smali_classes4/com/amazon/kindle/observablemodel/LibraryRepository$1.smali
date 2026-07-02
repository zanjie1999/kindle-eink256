.class Lcom/amazon/kindle/observablemodel/LibraryRepository$1;
.super Ljava/lang/Object;
.source "LibraryRepository.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/observablemodel/LibraryRepository;->processQueuedChangesOnListenerThread(Ljava/util/Vector;Lcom/amazon/kindle/observablemodel/OnChangesProcessedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/observablemodel/LibraryRepository;

.field final synthetic val$allQueuedChanges:Ljava/util/Vector;

.field final synthetic val$onChangesProcessedListener:Lcom/amazon/kindle/observablemodel/OnChangesProcessedListener;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/observablemodel/LibraryRepository;Ljava/util/Vector;Lcom/amazon/kindle/observablemodel/OnChangesProcessedListener;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$1;->this$0:Lcom/amazon/kindle/observablemodel/LibraryRepository;

    iput-object p2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$1;->val$allQueuedChanges:Ljava/util/Vector;

    iput-object p3, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$1;->val$onChangesProcessedListener:Lcom/amazon/kindle/observablemodel/OnChangesProcessedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$1;->val$allQueuedChanges:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;

    .line 375
    invoke-virtual {v1}, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;->sendToListeners()V

    goto :goto_0

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$1;->val$onChangesProcessedListener:Lcom/amazon/kindle/observablemodel/OnChangesProcessedListener;

    if-eqz v0, :cond_1

    .line 378
    invoke-interface {v0}, Lcom/amazon/kindle/observablemodel/OnChangesProcessedListener;->onChangesProcessed()V

    :cond_1
    return-void
.end method
