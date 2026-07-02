.class Lcom/amazon/device/sync/SyncableDataStore$StringMapReference;
.super Ljava/lang/ref/SoftReference;
.source "SyncableDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/SyncableDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StringMapReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/SoftReference<",
        "Lcom/amazon/device/sync/SyncableStringMap;",
        ">;"
    }
.end annotation


# instance fields
.field final mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/device/sync/SyncableDataStore;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/SyncableDataStore;Lcom/amazon/device/sync/SyncableStringMap;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/amazon/device/sync/SyncableDataStore$StringMapReference;->this$0:Lcom/amazon/device/sync/SyncableDataStore;

    .line 61
    invoke-static {p1}, Lcom/amazon/device/sync/SyncableDataStore;->access$200(Lcom/amazon/device/sync/SyncableDataStore;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 62
    invoke-virtual {p2}, Lcom/amazon/device/sync/SyncableStringMap;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/sync/SyncableDataStore$StringMapReference;->mName:Ljava/lang/String;

    return-void
.end method
