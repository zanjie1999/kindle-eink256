.class Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$FutureValueReference;
.super Ljava/lang/Object;
.source "MapMaker.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FutureValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final newEntry:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final original:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 593
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$FutureValueReference;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$FutureValueReference;->original:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;

    .line 595
    iput-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$FutureValueReference;->newEntry:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public copyFor(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 612
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$FutureValueReference;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$FutureValueReference;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$FutureValueReference;->original:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$FutureValueReference;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)V

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 601
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$FutureValueReference;->original:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;->getValueReference()Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 606
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$FutureValueReference;->removeEntry()V

    throw v0
.end method

.method removeEntry()V
    .locals 2

    .line 636
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$FutureValueReference;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->internals:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$FutureValueReference;->newEntry:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals;->removeEntry(Ljava/lang/Object;)Z

    return-void
.end method

.method public waitForValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$FutureValueReference;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$FutureValueReference;->original:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl;->waitForValue(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 624
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrategyImpl$FutureValueReference;->removeEntry()V

    throw v0
.end method
