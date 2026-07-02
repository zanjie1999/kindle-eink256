.class Lcom/amazon/device/sync/SyncableStringMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "SyncableStringMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/SyncableStringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/SyncableStringMap;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/SyncableStringMap;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/amazon/device/sync/SyncableStringMap$EntrySet;->this$0:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$EntrySet;->this$0:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$EntrySet;->this$0:Lcom/amazon/device/sync/SyncableStringMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/amazon/device/sync/SyncableStringMap;->containsEntry(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$EntrySet;->this$0:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 217
    new-instance v0, Lcom/amazon/device/sync/SyncableStringMap$Entries;

    iget-object v1, p0, Lcom/amazon/device/sync/SyncableStringMap$EntrySet;->this$0:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-direct {v0, v1}, Lcom/amazon/device/sync/SyncableStringMap$Entries;-><init>(Lcom/amazon/device/sync/SyncableStringMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 221
    check-cast p1, Ljava/util/Map$Entry;

    .line 222
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$EntrySet;->this$0:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/device/sync/SyncableStringMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$EntrySet;->this$0:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap;->size()I

    move-result v0

    return v0
.end method
