.class Lcom/amazon/device/sync/SyncableStringMap$KeySet;
.super Ljava/util/AbstractSet;
.source "SyncableStringMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/SyncableStringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/SyncableStringMap;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/SyncableStringMap;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/amazon/device/sync/SyncableStringMap$KeySet;->this$0:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$KeySet;->this$0:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$KeySet;->this$0:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v0, p1}, Lcom/amazon/device/sync/SyncableStringMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$KeySet;->this$0:Lcom/amazon/device/sync/SyncableStringMap;

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 178
    new-instance v0, Lcom/amazon/device/sync/SyncableStringMap$Keys;

    iget-object v1, p0, Lcom/amazon/device/sync/SyncableStringMap$KeySet;->this$0:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-direct {v0, v1}, Lcom/amazon/device/sync/SyncableStringMap$Keys;-><init>(Lcom/amazon/device/sync/SyncableStringMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$KeySet;->this$0:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v0, p1}, Lcom/amazon/device/sync/SyncableStringMap;->remove(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public size()I
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap$KeySet;->this$0:Lcom/amazon/device/sync/SyncableStringMap;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap;->size()I

    move-result v0

    return v0
.end method
