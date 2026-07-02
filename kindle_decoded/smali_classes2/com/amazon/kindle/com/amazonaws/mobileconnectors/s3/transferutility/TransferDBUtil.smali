.class Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;
.super Ljava/lang/Object;
.source "TransferDBUtil.java"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

.field private static final QUERY_PLACE_HOLDER_STRING:Ljava/lang/String; = ",?"

.field private static transferDBBase:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;


# instance fields
.field private gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->gson:Lcom/google/gson/Gson;

    .line 65
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->transferDBBase:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->transferDBBase:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    .line 69
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private createPlaceholders(I)Ljava/lang/String;
    .locals 3

    if-gtz p1, :cond_0

    .line 678
    sget-object p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v0, "Cannot create a string of 0 or less placeholders."

    invoke-interface {p1, v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->error(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 682
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 683
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "?"

    .line 684
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-ge v2, p1, :cond_1

    const-string v1, ",?"

    .line 687
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 689
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public checkWaitingForNetworkPartRequestsFromDB(I)Z
    .locals 7

    const/4 v0, 0x0

    .line 653
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->transferDBBase:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->getPartUri(I)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "state=?"

    const/4 p1, 0x1

    new-array v5, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    sget-object v6, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 655
    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, p1

    const/4 v6, 0x0

    .line 653
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 657
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 663
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 665
    :cond_1
    throw p1
.end method

.method public deleteTransferRecords(I)I
    .locals 2

    .line 559
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->transferDBBase:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->getRecordUri(I)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getNonCompletedPartRequestsFromDB(ILjava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;",
            ">;"
        }
    .end annotation

    .line 602
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 605
    :try_start_0
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->transferDBBase:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->getPartUri(I)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 606
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 607
    sget-object p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PART_COMPLETED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const-string v2, "state"

    .line 608
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 607
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->getState(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 611
    :cond_0
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;

    invoke-direct {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;-><init>()V

    const-string v2, "_id"

    .line 612
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->withId(I)Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;

    const-string v2, "main_upload_id"

    .line 615
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 614
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 613
    invoke-virtual {p1, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->withMainUploadId(I)Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;

    const-string v2, "bucket_name"

    .line 618
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 617
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 616
    invoke-virtual {p1, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->withBucketName(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;

    const-string v2, "key"

    .line 619
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->withKey(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;

    .line 620
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->withUploadId(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;

    new-instance v2, Ljava/io/File;

    const-string v3, "file"

    .line 622
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p1, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->withFile(Ljava/io/File;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;

    const-string v2, "file_offset"

    .line 624
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 623
    invoke-virtual {p1, v2, v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->withFileOffset(J)Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;

    const-string v2, "part_num"

    .line 626
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 625
    invoke-virtual {p1, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->withPartNumber(I)Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;

    const-string v2, "bytes_total"

    .line 628
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 627
    invoke-virtual {p1, v2, v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->withPartSize(J)Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;

    const-string v2, "is_last_part"

    .line 630
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 629
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1, v3}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->withLastPart(Z)Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;

    .line 631
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 635
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 637
    :cond_4
    throw p1
.end method

.method public getPartUri(I)Landroid/net/Uri;
    .locals 2

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->transferDBBase:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/part/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getRecordUri(I)Landroid/net/Uri;
    .locals 2

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->transferDBBase:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public queryBytesTransferredByMainUploadId(I)J
    .locals 7

    const/4 v0, 0x0

    .line 507
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->transferDBBase:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->getPartUri(I)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 508
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "state"

    .line 509
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 510
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PART_COMPLETED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->getState(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "bytes_total"

    .line 512
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 511
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v1, v3

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 517
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-wide v1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 519
    :cond_3
    throw p1
.end method

.method public queryPartETagsOfUpload(I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/services/s3/model/PartETag;",
            ">;"
        }
    .end annotation

    .line 572
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 577
    :try_start_0
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->transferDBBase:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->getPartUri(I)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 578
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "part_num"

    .line 579
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const-string v2, "etag"

    .line 580
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 581
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PartETag;

    invoke-direct {v3, p1, v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/PartETag;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 585
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 587
    :cond_2
    throw p1
.end method

.method public queryTransfersWithTypeAndStates(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;[Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Landroid/database/Cursor;
    .locals 10

    .line 462
    array-length v0, p2

    .line 463
    invoke-direct {p0, v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->createPlaceholders(I)Ljava/lang/String;

    move-result-object v1

    .line 465
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;->ANY:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    const/4 v3, 0x0

    const-string v4, "state in ("

    if-ne p1, v2, :cond_1

    .line 466
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 468
    new-array v1, v0, [Ljava/lang/String;

    :goto_0
    if-ge v3, v0, :cond_0

    .line 470
    aget-object v2, p2, v3

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v7, p1

    move-object v8, v1

    goto :goto_2

    .line 473
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") and "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    .line 476
    new-array v2, v2, [Ljava/lang/String;

    :goto_1
    if-ge v3, v0, :cond_2

    .line 478
    aget-object v4, p2, v3

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 480
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    move-object v7, v1

    move-object v8, v2

    .line 483
    :goto_2
    sget-object v4, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->transferDBBase:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {v4}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public updateBytesTransferred(IJ)I
    .locals 1

    .line 195
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 196
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "bytes_current"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 197
    sget-object p2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->transferDBBase:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->getRecordUri(I)Landroid/net/Uri;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, v0, p3, p3}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public updateETag(ILjava/lang/String;)I
    .locals 2

    .line 280
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "etag"

    .line 281
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    sget-object p2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->transferDBBase:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->getRecordUri(I)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1, v1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public updateMultipartId(ILjava/lang/String;)I
    .locals 2

    .line 267
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "multipart_id"

    .line 268
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    sget-object p2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->transferDBBase:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->getRecordUri(I)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1, v1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public updateState(ILcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;)I
    .locals 4

    .line 226
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 227
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 229
    sget-object p2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->transferDBBase:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->getRecordUri(I)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->COMPLETED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 231
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_NETWORK_DISCONNECT:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 232
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PAUSED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 233
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->CANCELED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 234
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 235
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "state not in (?,?,?,?,?) "

    .line 229
    invoke-virtual {p2, p1, v0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 238
    :cond_0
    sget-object p2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->transferDBBase:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->getRecordUri(I)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1, v1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public updateTransferRecord(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)I
    .locals 3

    .line 179
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 180
    iget v1, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    iget-object v1, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->state:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-wide v1, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bytesTotal:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "bytes_total"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 183
    iget-wide v1, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bytesCurrent:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "bytes_current"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 184
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->transferDBBase:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;

    iget p1, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->getRecordUri(I)Landroid/net/Uri;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, v2}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBBase;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method
