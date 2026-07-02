.class abstract Lcom/amazon/device/sync/SyncableStringMap$View;
.super Ljava/lang/Object;
.source "SyncableStringMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation build Lcom/amazon/whispersync/net/jcip/annotations/NotThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/SyncableStringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TU;>;"
    }
.end annotation


# instance fields
.field private mCurrentKey:Ljava/lang/String;

.field private final mInner:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNextKey:Ljava/lang/String;

.field private mNextValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/device/sync/SyncableStringMap;


# direct methods
.method protected constructor <init>(Lcom/amazon/device/sync/SyncableStringMap;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/amazon/device/sync/SyncableStringMap$View;->this$0:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/amazon/device/sync/SyncableStringMap$View;->mCurrentKey:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/amazon/device/sync/SyncableStringMap$View;->mNextKey:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/amazon/device/sync/SyncableStringMap$View;->mNextValue:Ljava/lang/Object;

    .line 55
    iget-object p1, p0, Lcom/amazon/device/sync/SyncableStringMap$View;->this$0:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-static {p1}, Lcom/amazon/device/sync/SyncableStringMap;->access$000(Lcom/amazon/device/sync/SyncableStringMap;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/sync/SyncableStringMap$View;->mInner:Ljava/util/Iterator;

    .line 58
    invoke-direct {p0}, Lcom/amazon/device/sync/SyncableStringMap$View;->advance()V

    return-void
.end method

.method private advance()V
    .locals 2

    .line 89
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$View;->mInner:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$View;->mInner:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$View;->mNextKey:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$View;->this$0:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-static {v0}, Lcom/amazon/device/sync/SyncableStringMap;->access$000(Lcom/amazon/device/sync/SyncableStringMap;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/sync/SyncableStringMap$View;->mNextKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;

    if-eqz v0, :cond_0

    .line 95
    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/sync/SyncableStringMap$View;->mNextKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/amazon/device/sync/SyncableStringMap$View;->includeInView(Ljava/lang/String;Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/amazon/device/sync/SyncableStringMap$View;->mNextKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/amazon/device/sync/SyncableStringMap$View;->transform(Ljava/lang/String;Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/device/sync/SyncableStringMap$View;->mNextValue:Ljava/lang/Object;

    .line 100
    monitor-exit v0

    return-void

    .line 102
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$View;->mNextKey:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$View;->mNextValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$View;->mNextKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected includeInView(Ljava/lang/String;Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)Z
    .locals 0

    .line 85
    invoke-virtual {p2}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->isDeleted()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$View;->mNextKey:Ljava/lang/String;

    const-class v1, Ljava/util/NoSuchElementException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, ""

    invoke-static {v0, v1, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$View;->mNextKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$View;->mCurrentKey:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$View;->mNextValue:Ljava/lang/Object;

    .line 70
    invoke-direct {p0}, Lcom/amazon/device/sync/SyncableStringMap$View;->advance()V

    return-object v0
.end method

.method public remove()V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$View;->mCurrentKey:Ljava/lang/String;

    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "remove() before next()"

    invoke-static {v0, v1, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$View;->this$0:Lcom/amazon/device/sync/SyncableStringMap;

    iget-object v1, p0, Lcom/amazon/device/sync/SyncableStringMap$View;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/sync/SyncableStringMap;->remove(Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$View;->mCurrentKey:Ljava/lang/String;

    return-void
.end method

.method protected abstract transform(Ljava/lang/String;Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;",
            ")TU;"
        }
    .end annotation
.end method
