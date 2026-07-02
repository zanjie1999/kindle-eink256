.class Lcom/amazon/device/sync/SyncableStringMap$WriteThroughEntry;
.super Ljava/util/AbstractMap$SimpleEntry;
.source "SyncableStringMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/SyncableStringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WriteThroughEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap$SimpleEntry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/SyncableStringMap;


# direct methods
.method public constructor <init>(Lcom/amazon/device/sync/SyncableStringMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/amazon/device/sync/SyncableStringMap$WriteThroughEntry;->this$0:Lcom/amazon/device/sync/SyncableStringMap;

    .line 154
    invoke-direct {p0, p2, p3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 150
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/device/sync/SyncableStringMap$WriteThroughEntry;->setValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 160
    const-class v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, ""

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$WriteThroughEntry;->this$0:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {p0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/device/sync/SyncableStringMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    invoke-super {p0, p1}, Ljava/util/AbstractMap$SimpleEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
