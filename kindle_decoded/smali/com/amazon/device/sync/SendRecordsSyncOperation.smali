.class Lcom/amazon/device/sync/SendRecordsSyncOperation;
.super Lcom/amazon/device/sync/AbstractDatasetSyncOperation;
.source "SendRecordsSyncOperation.java"


# static fields
.field public static final MAX_UPLOAD_SIZE:Lcom/amazon/whispersync/dcp/settings/SettingInteger;


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mDatasetName:Ljava/lang/String;

.field private final mNamespace:Ljava/lang/String;

.field private mNumberOfBatches:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    sget-object v1, Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;->DeviceGlobal:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    const-string v2, "com.amazon.device.sync.MAX_UPLOAD_SIZE"

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;-><init>(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/sync/SendRecordsSyncOperation;->MAX_UPLOAD_SIZE:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/DCPLog;)V
    .locals 13

    move-object v9, p0

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v10, v0, v12

    const/4 v1, 0x1

    aput-object v11, v0, v1

    const-string v1, "Sending records in %s/%s"

    .line 48
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;->UPLOAD:Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    sget-object v7, Lcom/amazon/device/sync/Synchronizer$SyncActionScope;->RECORDS:Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/amazon/device/sync/AbstractDatasetSyncOperation;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;Lcom/amazon/device/sync/Synchronizer$SyncActionScope;Lcom/amazon/whispersync/dcp/framework/DCPLog;)V

    move-object v0, p2

    .line 50
    iput-object v0, v9, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mAccountId:Ljava/lang/String;

    .line 51
    iput-object v10, v9, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mNamespace:Ljava/lang/String;

    .line 52
    iput-object v11, v9, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mDatasetName:Ljava/lang/String;

    .line 53
    iput v12, v9, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mNumberOfBatches:I

    return-void
.end method

.method private constructRecordsToBeUpdated(Ljava/util/Collection;Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/whispersync/Record;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/Acknowledgment;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Record;",
            ">;"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 206
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/Record;

    .line 208
    invoke-virtual {v1}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 211
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 212
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/Acknowledgment;

    .line 214
    invoke-virtual {v1}, Lcom/amazon/whispersync/Acknowledgment;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    invoke-virtual {v1}, Lcom/amazon/whispersync/Acknowledgment;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/Record;

    .line 217
    invoke-virtual {v1}, Lcom/amazon/whispersync/Acknowledgment;->getServerSyncCount()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/whispersync/Record;->setServerSyncCount(Ljava/lang/Long;)V

    .line 218
    invoke-virtual {v1}, Lcom/amazon/whispersync/Acknowledgment;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method private getDataset(Landroid/content/Context;)Lcom/amazon/whispersync/Dataset;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/amazon/device/sync/GetDatasetDbOperation;

    iget-object v1, p0, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mAccountId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mNamespace:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mDatasetName:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/amazon/device/sync/GetDatasetDbOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v1, Lcom/amazon/device/sync/SendDatasetsSyncOperation;

    iget v2, p0, Lcom/amazon/device/sync/SyncOperation;->mId:I

    iget-object v3, p0, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mAccountId:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mNamespace:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/device/sync/SyncOperation;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazon/device/sync/SendDatasetsSyncOperation;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/DCPLog;)V

    iget-object v2, p0, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mDatasetName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->executeWithPendingDatasets(Landroid/content/Context;Ljava/util/Collection;)Z

    .line 80
    invoke-virtual {v0}, Lcom/amazon/device/sync/GetDatasetDbOperation;->execute()Lcom/amazon/whispersync/Dataset;

    move-result-object p1

    return-object p1
.end method

.method private getDirectoryUriFromDB(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 285
    new-instance v0, Lcom/amazon/device/sync/GetDatasetUpdatesUriDbOperation;

    iget-object v1, p0, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mAccountId:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/amazon/device/sync/GetDatasetUpdatesUriDbOperation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/device/sync/GetDatasetUpdatesUriDbOperation;->execute()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getMissingRecords(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/whispersync/Record;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/Acknowledgment;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/Record;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/Record;

    .line 232
    invoke-virtual {v1}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whispersync/Acknowledgment;

    .line 237
    invoke-virtual {p2}, Lcom/amazon/whispersync/Acknowledgment;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 239
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whispersync/Record;

    .line 241
    invoke-virtual {p2}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 244
    :cond_2
    invoke-interface {v0, p4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method


# virtual methods
.method protected doExecute(Landroid/content/Context;Lcom/amazon/whispersync/dcp/framework/DCPLog;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/SendRecordsSyncOperation;->getDataset(Landroid/content/Context;)Lcom/amazon/whispersync/Dataset;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 65
    :cond_0
    new-instance p2, Lcom/amazon/device/sync/GetPendingRecordsDbOperation;

    iget-object v2, p0, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mAccountId:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mNamespace:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mDatasetName:Ljava/lang/String;

    iget v5, p0, Lcom/amazon/device/sync/SyncOperation;->mId:I

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/sync/GetPendingRecordsDbOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    invoke-virtual {p2}, Lcom/amazon/device/sync/GetPendingRecordsDbOperation;->execute()Ljava/util/Map;

    move-result-object p2

    .line 69
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/sync/SendRecordsSyncOperation;->executeWithRecords(Landroid/content/Context;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 255
    const-class v1, Lcom/amazon/device/sync/SendRecordsSyncOperation;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 259
    :cond_1
    invoke-super {p0, p1}, Lcom/amazon/device/sync/AbstractDatasetSyncOperation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 264
    :cond_2
    check-cast p1, Lcom/amazon/device/sync/SendRecordsSyncOperation;

    .line 266
    iget-object v1, p0, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mDatasetName:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mDatasetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 270
    :cond_3
    iget-object v0, p0, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mNamespace:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mNamespace:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public executeWithRecords(Landroid/content/Context;Ljava/util/Collection;)Z
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Lcom/amazon/whispersync/Record;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v12, p1

    .line 86
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_0

    return v13

    .line 91
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/amazon/device/sync/SendRecordsSyncOperation;->getDataset(Landroid/content/Context;)Lcom/amazon/whispersync/Dataset;

    move-result-object v0

    const/4 v14, 0x0

    if-nez v0, :cond_1

    return v14

    .line 96
    :cond_1
    new-instance v2, Lcom/amazon/device/sync/rpc/DatasetListRPC;

    iget-object v3, v1, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mAccountId:Ljava/lang/String;

    iget-object v4, v1, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mNamespace:Ljava/lang/String;

    invoke-direct {v2, v12, v3, v4}, Lcom/amazon/device/sync/rpc/DatasetListRPC;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v2, v0}, Lcom/amazon/device/sync/rpc/DatasetListRPC;->createLocalDataset(Lcom/amazon/whispersync/Dataset;)Lcom/amazon/device/sync/rpc/DatasetRPC;

    move-result-object v15

    .line 99
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-direct/range {p0 .. p1}, Lcom/amazon/device/sync/SendRecordsSyncOperation;->getDirectoryUriFromDB(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {v0}, Lcom/amazon/whispersync/Dataset;->getLinks()Lcom/amazon/whispersync/DatasetLinks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/DatasetLinks;->getRecords()Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 108
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 110
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/Record;

    .line 113
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    sget-object v4, Lcom/amazon/device/sync/SendRecordsSyncOperation;->MAX_UPLOAD_SIZE:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    invoke-virtual {v4}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v21, v10

    move-object/from16 v20, v11

    goto/16 :goto_2

    .line 117
    :cond_3
    :goto_1
    iget-object v3, v1, Lcom/amazon/device/sync/SyncOperation;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const-string v4, "Sending %d/%d record updates for dataset \'%s/%s\'"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v14

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v13

    const/4 v6, 0x2

    iget-object v7, v1, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mNamespace:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v15}, Lcom/amazon/device/sync/rpc/DatasetRPC;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 121
    invoke-virtual {v15, v11, v0, v2}, Lcom/amazon/device/sync/rpc/DatasetRPC;->updateRecords(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/PostUpdatesResponse;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/amazon/whispersync/PostUpdatesResponse;->getLinks()Lcom/amazon/whispersync/PostUpdatesLinks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whispersync/PostUpdatesLinks;->getDirectory()Ljava/lang/String;

    move-result-object v17

    .line 126
    invoke-virtual {v0}, Lcom/amazon/whispersync/PostUpdatesResponse;->getLinks()Lcom/amazon/whispersync/PostUpdatesLinks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whispersync/PostUpdatesLinks;->getRecords()Ljava/lang/String;

    move-result-object v18

    .line 128
    iget v2, v1, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mNumberOfBatches:I

    add-int/2addr v2, v13

    iput v2, v1, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mNumberOfBatches:I

    .line 130
    invoke-virtual {v0}, Lcom/amazon/whispersync/PostUpdatesResponse;->getSaved()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/whispersync/PostUpdatesResponse;->getResolved()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazon/whispersync/PostUpdatesResponse;->getConflicts()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v1, v11, v2, v3, v4}, Lcom/amazon/device/sync/SendRecordsSyncOperation;->getMissingRecords(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 135
    invoke-virtual {v0}, Lcom/amazon/whispersync/PostUpdatesResponse;->getSaved()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v11, v2}, Lcom/amazon/device/sync/SendRecordsSyncOperation;->constructRecordsToBeUpdated(Ljava/util/Collection;Ljava/util/List;)Ljava/util/Map;

    move-result-object v7

    .line 138
    new-instance v19, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;

    iget-object v4, v1, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mAccountId:Ljava/lang/String;

    iget-object v5, v1, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mNamespace:Ljava/lang/String;

    iget-object v6, v1, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mDatasetName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/amazon/whispersync/PostUpdatesResponse;->getResolved()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0}, Lcom/amazon/whispersync/PostUpdatesResponse;->getConflicts()Ljava/util/Map;

    move-result-object v9

    iget v3, v1, Lcom/amazon/device/sync/SyncOperation;->mId:I

    invoke-virtual {v0}, Lcom/amazon/whispersync/PostUpdatesResponse;->getLinks()Lcom/amazon/whispersync/PostUpdatesLinks;

    move-result-object v0

    move-object/from16 v2, v19

    move/from16 v20, v3

    move-object/from16 v3, p1

    move-object/from16 v21, v10

    move/from16 v10, v20

    move-object/from16 v20, v11

    move-object v11, v0

    invoke-direct/range {v2 .. v11}, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;ILcom/amazon/whispersync/PostUpdatesLinks;)V

    .line 149
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 151
    invoke-virtual/range {v19 .. v19}, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->execute()V

    move-object/from16 v2, v17

    move-object/from16 v0, v18

    :goto_2
    move-object/from16 v11, v20

    move-object/from16 v10, v21

    goto/16 :goto_0

    :cond_4
    move-object/from16 v21, v10

    .line 156
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catch Lcom/amazon/device/sync/rpc/RPCException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 178
    iget-object v2, v1, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mAccountId:Ljava/lang/String;

    invoke-static {v12, v2}, Lcom/amazon/device/sync/SyncDb;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v2

    .line 182
    :try_start_1
    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 183
    iget v3, v1, Lcom/amazon/device/sync/SyncOperation;->mId:I

    invoke-static {v2, v3}, Lcom/amazon/device/sync/PendingRecordsTable;->markRecordsAsNotInProgressByOpId(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;I)I

    .line 184
    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    .line 189
    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    return v0

    :catchall_0
    move-exception v0

    .line 188
    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    .line 189
    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 160
    :try_start_2
    iget-object v2, v1, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mAccountId:Ljava/lang/String;

    invoke-static {v12, v2}, Lcom/amazon/device/sync/SyncDb;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 164
    :try_start_3
    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 165
    iget-object v3, v1, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mDatasetName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/device/sync/PendingDatasetsTable;->incrementRetryCount(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 170
    :try_start_4
    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    .line 171
    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    .line 174
    throw v0

    :catchall_2
    move-exception v0

    .line 170
    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    .line 171
    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 178
    :goto_3
    iget-object v2, v1, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mAccountId:Ljava/lang/String;

    invoke-static {v12, v2}, Lcom/amazon/device/sync/SyncDb;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v2

    .line 182
    :try_start_5
    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 183
    iget v3, v1, Lcom/amazon/device/sync/SyncOperation;->mId:I

    invoke-static {v2, v3}, Lcom/amazon/device/sync/PendingRecordsTable;->markRecordsAsNotInProgressByOpId(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;I)I

    .line 184
    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 188
    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    .line 189
    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    .line 191
    throw v0

    :catchall_3
    move-exception v0

    .line 188
    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    .line 189
    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    throw v0
.end method

.method protected getLockKey()Ljava/lang/String;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mDatasetName:Ljava/lang/String;

    return-object v0
.end method

.method getNumberOfBatches()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mNumberOfBatches:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 277
    invoke-super {p0}, Lcom/amazon/device/sync/AbstractDatasetSyncOperation;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 278
    iget-object v1, p0, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mNamespace:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 279
    iget-object v1, p0, Lcom/amazon/device/sync/SendRecordsSyncOperation;->mDatasetName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
