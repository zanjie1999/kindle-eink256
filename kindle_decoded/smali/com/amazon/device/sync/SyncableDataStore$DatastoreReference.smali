.class Lcom/amazon/device/sync/SyncableDataStore$DatastoreReference;
.super Ljava/lang/ref/SoftReference;
.source "SyncableDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/SyncableDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatastoreReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/SoftReference<",
        "Lcom/amazon/device/sync/SyncableDataStore;",
        ">;"
    }
.end annotation


# instance fields
.field final mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/device/sync/SyncableDataStore;)V
    .locals 1

    .line 45
    invoke-static {}, Lcom/amazon/device/sync/SyncableDataStore;->access$000()Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 46
    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableDataStore;->getAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableDataStore;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/device/sync/SyncableDataStore;->access$100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/sync/SyncableDataStore$DatastoreReference;->mKey:Ljava/lang/String;

    return-void
.end method
