.class Lcom/amazon/device/sync/SyncableStringMap$Conflicts;
.super Lcom/amazon/device/sync/SyncableStringMap$View;
.source "SyncableStringMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/SyncableStringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Conflicts"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/device/sync/SyncableStringMap$View<",
        "Lcom/amazon/device/sync/Conflict<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/SyncableStringMap;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/SyncableStringMap;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/amazon/device/sync/SyncableStringMap$Conflicts;->this$0:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-direct {p0, p1}, Lcom/amazon/device/sync/SyncableStringMap$View;-><init>(Lcom/amazon/device/sync/SyncableStringMap;)V

    return-void
.end method


# virtual methods
.method public includeInView(Ljava/lang/String;Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)Z
    .locals 0

    .line 118
    invoke-virtual {p2}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->hasConflict()Z

    move-result p1

    return p1
.end method

.method public transform(Ljava/lang/String;Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)Lcom/amazon/device/sync/Conflict;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;",
            ")",
            "Lcom/amazon/device/sync/Conflict<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 114
    invoke-virtual {p2}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->asConflict()Lcom/amazon/device/sync/Conflict;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic transform(Ljava/lang/String;Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)Ljava/lang/Object;
    .locals 0

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/sync/SyncableStringMap$Conflicts;->transform(Ljava/lang/String;Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;)Lcom/amazon/device/sync/Conflict;

    move-result-object p1

    return-object p1
.end method
