.class Lcom/amazon/device/sync/SyncableStringMap$Entries;
.super Lcom/amazon/device/sync/SyncableStringMap$View;
.source "SyncableStringMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/SyncableStringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/device/sync/SyncableStringMap$View<",
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

    .line 144
    iput-object p1, p0, Lcom/amazon/device/sync/SyncableStringMap$Entries;->this$0:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-direct {p0, p1}, Lcom/amazon/device/sync/SyncableStringMap$View;-><init>(Lcom/amazon/device/sync/SyncableStringMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/String;Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)Ljava/lang/Object;
    .locals 0

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/sync/SyncableStringMap$Entries;->transform(Ljava/lang/String;Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public transform(Ljava/lang/String;Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;",
            ")",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 147
    new-instance v0, Lcom/amazon/device/sync/SyncableStringMap$WriteThroughEntry;

    iget-object v1, p0, Lcom/amazon/device/sync/SyncableStringMap$Entries;->this$0:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {p2}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p1, p2}, Lcom/amazon/device/sync/SyncableStringMap$WriteThroughEntry;-><init>(Lcom/amazon/device/sync/SyncableStringMap;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
