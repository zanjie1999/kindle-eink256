.class final Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;
.super Ljava/lang/Object;
.source "LoadRecordsDbOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/LoadRecordsDbOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CachedRecords"
.end annotation


# instance fields
.field private final mBaseRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mConflicts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/sync/Conflict<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mPendingRecordKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Record;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/sync/Conflict<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;->mBaseRecords:Ljava/util/Map;

    .line 30
    iput-object p2, p0, Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;->mPendingRecordKeys:Ljava/util/Set;

    .line 31
    iput-object p3, p0, Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;->mConflicts:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Lcom/amazon/device/sync/LoadRecordsDbOperation$1;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;-><init>(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getBaseRecords()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Record;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;->mBaseRecords:Ljava/util/Map;

    return-object v0
.end method

.method public getConflictedRecords()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/sync/Conflict<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;->mConflicts:Ljava/util/Map;

    return-object v0
.end method

.method public getPendingRecordKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;->mPendingRecordKeys:Ljava/util/Set;

    return-object v0
.end method
