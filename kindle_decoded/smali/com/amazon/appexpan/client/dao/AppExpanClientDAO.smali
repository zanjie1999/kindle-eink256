.class public Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;
.super Ljava/lang/Object;
.source "AppExpanClientDAO.java"

# interfaces
.implements Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;


# static fields
.field private static final DESC:Ljava/lang/String; = " DESC"

.field private static final INSERT_RESOURCES_SQL:Ljava/lang/String; = "INSERT OR IGNORE INTO resources (name,version,location,ref_name) VALUES (?,?,?,?);"

.field private static final INSERT_RESOURCE_SET_SQL:Ljava/lang/String; = "INSERT OR IGNORE INTO resource_sets (name,version,state,delivery_priority) VALUES (?,?,?,?);"

.field private static final INSERT_RESOURCE_SET_TO_RESOURCE_SQL:Ljava/lang/String; = "INSERT OR IGNORE INTO resource_set_to_resource_map (resource_set_name,resource_set_version,resource_name,resource_version) VALUES (?,?,?,?);"

.field private static final JOINED_RESOURCE_SET_TO_RESOURCE_MAP_AND_RESOURCES:Ljava/lang/String; = "resource_set_to_resource_map map INNER JOIN resources res ON map.resource_name = res.name AND map.resource_version = res.version"

.field private static final SYNC_TOKEN:Ljava/lang/String; = "syncToken"

.field private static final TAG:Ljava/lang/String; = "com.amazon.appexpan.client.dao.AppExpanClientDAO"


# instance fields
.field private appExpanClientDBHelper:Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;

.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;

    invoke-direct {v0, p1}, Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->appExpanClientDBHelper:Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;

    .line 113
    iput-object p1, p0, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->context:Landroid/content/Context;

    return-void
.end method

.method private expirePreviousResourceSets(Lcom/amazon/appexpan/client/model/ResourceSetModel;)I
    .locals 7

    .line 786
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getState()Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    move-result-object v0

    sget-object v1, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->LOCAL:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->appExpanClientDBHelper:Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 791
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 792
    sget-object v3, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->EXPIRED:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    invoke-virtual {v3}, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "state"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "name=? AND version<?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 797
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getVersion()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 801
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string/jumbo v5, "resource_sets"

    .line 802
    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 803
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 807
    :try_start_1
    sget-object v3, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to update state to EXPIRED for previous versions of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getVersion()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 807
    invoke-static {v3, p1, v2}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 812
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 813
    throw p1

    :cond_0
    :goto_2
    return v1
.end method

.method private getEncryptedLocation(Lcom/amazon/appexpan/client/model/ManifestResourceModel$Location;)Lcom/amazon/appexpan/client/model/ResourceModel$Location;
    .locals 7

    .line 1007
    new-instance v6, Lcom/amazon/appexpan/client/model/ResourceModel$Location;

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ManifestResourceModel$Location;->getType()Ljava/lang/String;

    move-result-object v1

    .line 1008
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ManifestResourceModel$Location;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ManifestResourceModel$Location;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ManifestResourceModel$Location;->getLocalLocationType()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/appexpan/client/model/ResourceModel$Location;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1011
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ManifestResourceModel$Location;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/amazon/appexpan/client/util/CipherUtils;->encrypt(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 1020
    invoke-virtual {v6, p1, v0}, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->setUrl(Ljava/lang/String;Z)V

    :cond_1
    return-object v6
.end method

.method private getMaxResourceSetVersion(Ljava/lang/String;)I
    .locals 9

    .line 397
    iget-object v0, p0, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->appExpanClientDBHelper:Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v0, "MAX(version) AS MAXVERSION"

    .line 400
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "name = ? "

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 p1, 0x0

    :try_start_0
    const-string/jumbo v2, "resource_sets"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 413
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 421
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "MAXVERSION"

    .line 423
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    move v0, v1

    :cond_0
    if-eqz p1, :cond_1

    .line 439
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 433
    :try_start_1
    sget-object v2, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->TAG:Ljava/lang/String;

    const-string v3, "Unable to determine max resource set version"

    invoke-static {v2, v3, v1}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :goto_2
    if-eqz p1, :cond_2

    .line 439
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 441
    :cond_2
    throw v0
.end method

.method private getResource(Landroid/database/Cursor;)Lcom/amazon/appexpan/client/model/ResourceModel;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string/jumbo v0, "name"

    .line 1066
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "version"

    .line 1068
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1069
    invoke-static {}, Lcom/amazon/appexpan/client/model/ResourceModel$State;->values()[Lcom/amazon/appexpan/client/model/ResourceModel$State;

    move-result-object v2

    const-string/jumbo v3, "state"

    .line 1070
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 1069
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aget-object v2, v2, v3

    const-string v3, "location"

    .line 1071
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "download_id"

    .line 1072
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v6, "download_retry"

    .line 1073
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "ref_name"

    .line 1075
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1077
    invoke-static {v3}, Lcom/amazon/appexpan/client/deserialization/AppExpanParser;->parseLocation(Ljava/lang/String;)Lcom/amazon/appexpan/client/model/ResourceModel$Location;

    move-result-object v3

    .line 1079
    invoke-static {v6}, Lcom/amazon/appexpan/client/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1081
    invoke-static {v6}, Lcom/amazon/appexpan/client/deserialization/AppExpanParser;->parseDownloadRetry(Ljava/lang/String;)Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 1084
    :goto_0
    invoke-static {}, Lcom/amazon/appexpan/client/model/ResourceModel;->builder()Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;

    move-result-object v7

    .line 1085
    invoke-virtual {v7, v0}, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->name(Ljava/lang/String;)Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;

    .line 1086
    invoke-virtual {v7, v1}, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->version(I)Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;

    .line 1087
    invoke-virtual {v7, v2}, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->state(Lcom/amazon/appexpan/client/model/ResourceModel$State;)Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;

    .line 1088
    invoke-virtual {v7, v3}, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->location(Lcom/amazon/appexpan/client/model/ResourceModel$Location;)Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;

    .line 1089
    invoke-virtual {v7, p1}, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->refName(Ljava/lang/String;)Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;

    .line 1090
    invoke-virtual {v7, v6}, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->downloadRetry(Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;)Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;

    .line 1091
    invoke-virtual {v7, v4, v5}, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->downloadId(J)Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;

    invoke-virtual {v7}, Lcom/amazon/appexpan/client/model/ResourceModel$ResourceModelBuilder;->build()Lcom/amazon/appexpan/client/model/ResourceModel;

    move-result-object p1

    return-object p1
.end method

.method private getResourceSet(Landroid/database/Cursor;)Lcom/amazon/appexpan/client/model/ResourceSetModel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string/jumbo v0, "name"

    .line 1038
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "version"

    .line 1040
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1042
    invoke-static {}, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->values()[Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    move-result-object v2

    const-string/jumbo v3, "state"

    .line 1043
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 1042
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aget-object v2, v2, v3

    const-string v3, "delivery_priority"

    .line 1045
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 1047
    invoke-static {p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;->getPriority(I)Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

    move-result-object p1

    .line 1048
    invoke-static {}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->builder()Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;->name(Ljava/lang/String;)Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;

    invoke-virtual {v3, v1}, Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;->version(I)Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;

    invoke-virtual {v3, v2}, Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;->state(Lcom/amazon/appexpan/client/model/ResourceSetModel$State;)Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;

    .line 1049
    invoke-virtual {v3, p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;->priority(Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;)Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;

    invoke-virtual {v3}, Lcom/amazon/appexpan/client/model/ResourceSetModel$ResourceSetModelBuilder;->build()Lcom/amazon/appexpan/client/model/ResourceSetModel;

    move-result-object p1

    return-object p1
.end method

.method private insertResource(Lcom/amazon/appexpan/client/model/ManifestResourceModel;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 4

    .line 922
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ManifestResourceModel;->getLocation()Lcom/amazon/appexpan/client/model/ManifestResourceModel$Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->getEncryptedLocation(Lcom/amazon/appexpan/client/model/ManifestResourceModel$Location;)Lcom/amazon/appexpan/client/model/ResourceModel$Location;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/appexpan/client/deserialization/AppExpanParser;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 923
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 924
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ManifestResourceModel;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p2, v2, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 925
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ManifestResourceModel;->getVersion()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x2

    invoke-virtual {p2, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v1, 0x3

    .line 926
    invoke-virtual {p2, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 928
    sget-object v1, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/amazon/appexpan/client/AppExpanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ManifestResourceModel;->getRefName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/appexpan/client/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 932
    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 936
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ManifestResourceModel;->getRefName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 938
    :goto_0
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    return-void
.end method

.method private insertResourceSet(Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 6

    .line 949
    sget-object v0, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->REMOTE:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->getValue()I

    move-result v0

    .line 952
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->getDownloadStrategy()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ON_DEMAND"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 954
    sget-object v0, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->NOT_REQUESTED:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->getValue()I

    move-result v0

    .line 958
    :cond_0
    sget-object v1, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;->DEFAULT:Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

    invoke-virtual {v1}, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;->getValue()I

    move-result v1

    .line 960
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->getDeliveryPriority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 962
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->getDeliveryPriority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;->getPriority(Ljava/lang/String;)Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;->getValue()I

    move-result v1

    :cond_1
    const/4 v2, 0x1

    .line 966
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    const/4 v3, 0x2

    .line 967
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v2, 0x3

    .line 968
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->getVersion()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v3, 0x4

    int-to-long v4, v0

    .line 969
    invoke-virtual {p2, v2, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    int-to-long v0, v1

    .line 970
    invoke-virtual {p2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 972
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gez p2, :cond_2

    .line 975
    sget-object p2, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to insert Resource set: name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->getVersion()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 975
    invoke-static {p2, p1}, Lcom/amazon/appexpan/client/AppExpanLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private insertResourceSetToResourceMap(Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 6

    .line 988
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->getAllResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/appexpan/client/model/ManifestResourceModel;

    const/4 v2, 0x1

    .line 991
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    const/4 v3, 0x2

    .line 992
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v2, 0x3

    .line 993
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->getVersion()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v3, 0x4

    .line 994
    invoke-virtual {v1}, Lcom/amazon/appexpan/client/model/ManifestResourceModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 995
    invoke-virtual {v1}, Lcom/amazon/appexpan/client/model/ManifestResourceModel;->getVersion()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p2, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 996
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    goto :goto_0

    :cond_0
    return-void
.end method

.method private insertResourceSets(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;",
            ">;)V"
        }
    .end annotation

    .line 839
    iget-object v0, p0, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->appExpanClientDBHelper:Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "INSERT OR IGNORE INTO resources (name,version,location,ref_name) VALUES (?,?,?,?);"

    .line 840
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    const-string v2, "INSERT OR IGNORE INTO resource_sets (name,version,state,delivery_priority) VALUES (?,?,?,?);"

    .line 841
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    const-string v3, "INSERT OR IGNORE INTO resource_set_to_resource_map (resource_set_name,resource_set_version,resource_name,resource_version) VALUES (?,?,?,?);"

    .line 842
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 843
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;

    .line 847
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 849
    invoke-virtual {v4}, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->getAllResources()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->insertResources(Ljava/util/List;Landroid/database/sqlite/SQLiteStatement;)V

    .line 850
    invoke-direct {p0, v4, v2}, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->insertResourceSet(Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;Landroid/database/sqlite/SQLiteStatement;)V

    .line 851
    invoke-direct {p0, v4, v3}, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->insertResourceSetToResourceMap(Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;Landroid/database/sqlite/SQLiteStatement;)V

    .line 853
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v5

    .line 857
    :try_start_1
    sget-object v6, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fail to process database transaction for resource set: name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    invoke-virtual {v4}, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " version = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 857
    invoke-static {v6, v4, v5}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 862
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 863
    throw p1

    :cond_0
    return-void
.end method

.method private insertResources(Ljava/util/List;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/appexpan/client/model/ManifestResourceModel;",
            ">;",
            "Landroid/database/sqlite/SQLiteStatement;",
            ")V"
        }
    .end annotation

    .line 875
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/appexpan/client/model/ManifestResourceModel;

    .line 877
    invoke-direct {p0, v0, p2}, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->insertResource(Lcom/amazon/appexpan/client/model/ManifestResourceModel;Landroid/database/sqlite/SQLiteStatement;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private insertSyncToken(Ljava/lang/String;)V
    .locals 3

    .line 821
    iget-object v0, p0, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->context:Landroid/content/Context;

    const-string v1, "app_expansion_properties"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 823
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "syncToken"

    .line 824
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 825
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updateResourceSetState(Lcom/amazon/appexpan/client/model/ResourceSetModel;Lcom/amazon/appexpan/client/model/ResourceSetModel$State;)I
    .locals 2

    .line 737
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 739
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getVersion()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->updateResourceSetState(Ljava/lang/String;ILcom/amazon/appexpan/client/model/ResourceSetModel$State;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-lez v0, :cond_1

    .line 744
    invoke-virtual {p1, p2}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->setState(Lcom/amazon/appexpan/client/model/ResourceSetModel$State;)V

    :cond_1
    return v0
.end method

.method private updateResourceSetState(Ljava/lang/String;ILcom/amazon/appexpan/client/model/ResourceSetModel$State;)I
    .locals 5

    .line 754
    iget-object v0, p0, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->appExpanClientDBHelper:Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 756
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 757
    invoke-virtual {p3}, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->getValue()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string/jumbo v2, "state"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p3, "name=? AND version=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 761
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, -0x1

    .line 765
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string/jumbo v4, "resource_sets"

    .line 766
    invoke-virtual {v0, v4, v1, p3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 767
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p3

    .line 771
    :try_start_1
    sget-object v1, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to update state for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " version "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p3}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return v3

    .line 776
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 777
    throw p1
.end method

.method private updateResourceURL(Lcom/amazon/appexpan/client/model/ManifestResourceModel;)V
    .locals 6

    .line 888
    iget-object v0, p0, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->appExpanClientDBHelper:Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 889
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ManifestResourceModel;->getLocation()Lcom/amazon/appexpan/client/model/ManifestResourceModel$Location;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->getEncryptedLocation(Lcom/amazon/appexpan/client/model/ManifestResourceModel$Location;)Lcom/amazon/appexpan/client/model/ResourceModel$Location;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/appexpan/client/deserialization/AppExpanParser;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 890
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "location"

    .line 891
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "name=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 894
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ManifestResourceModel;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 898
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string/jumbo v4, "resources"

    .line 899
    invoke-virtual {v0, v4, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 900
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 904
    :try_start_1
    sget-object v2, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to update URL for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ManifestResourceModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ManifestResourceModel;->getVersion()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 904
    invoke-static {v2, p1, v1}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 909
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 910
    throw p1
.end method


# virtual methods
.method public clearSyncToken()V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->context:Landroid/content/Context;

    const-string v1, "app_expansion_properties"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 226
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "syncToken"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public deleteAllResourcesAndSets()V
    .locals 3

    .line 1182
    iget-object v0, p0, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->appExpanClientDBHelper:Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1186
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string/jumbo v1, "resource_sets"

    const/4 v2, 0x0

    .line 1188
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string/jumbo v1, "resource_set_to_resource_map"

    .line 1189
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string/jumbo v1, "resources"

    .line 1190
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1192
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1196
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1197
    throw v1
.end method

.method public getActiveResourceSetVersion(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 10

    .line 287
    iget-object v0, p0, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->appExpanClientDBHelper:Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v0, "MAX(version) AS MAXVERSION"

    .line 290
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "name = ?  AND state = ? "

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    .line 297
    sget-object p1, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->LOCAL:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    .line 299
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v5, v0

    const/4 p1, 0x0

    :try_start_0
    const-string/jumbo v2, "resource_sets"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 304
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "MAXVERSION"

    .line 314
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 319
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz v0, :cond_1

    .line 330
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v0, p1

    .line 324
    :goto_1
    :try_start_2
    sget-object v2, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->TAG:Ljava/lang/String;

    const-string v3, "Unable to determine active resource set version"

    invoke-static {v2, v3, v1}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_2
    return-object p1

    :catchall_1
    move-exception p1

    :goto_3
    if-eqz v0, :cond_2

    .line 330
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 332
    :cond_2
    throw p1
.end method

.method public getAllActiveRemoteResourceSets()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/appexpan/client/model/ResourceSetModel;",
            ">;"
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "name"

    const-string v2, "MAX(version) AS version"

    const-string/jumbo v3, "state"

    const-string v4, "delivery_priority"

    .line 236
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "state=?"

    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/String;

    .line 243
    sget-object v1, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->REMOTE:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    invoke-virtual {v1}, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v9, v2

    .line 245
    iget-object v1, p0, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->appExpanClientDBHelper:Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v6, "resource_sets"

    const-string/jumbo v10, "name"

    const/4 v11, 0x0

    const-string v12, "delivery_priority DESC"

    const/4 v13, 0x0

    .line 250
    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 259
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    invoke-direct {p0, v1}, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->getResourceSet(Landroid/database/Cursor;)Lcom/amazon/appexpan/client/model/ResourceSetModel;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 266
    :try_start_1
    sget-object v3, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->TAG:Ljava/lang/String;

    const-string v4, "Unable to get active remote resource sets from resource_sets table"

    invoke-static {v3, v4, v2}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 272
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 274
    :cond_2
    throw v0
.end method

.method public getAllNonLocalResourcesForResourceSet(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/appexpan/client/model/ResourceSetModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/appexpan/client/model/ResourceModel;",
            ">;"
        }
    .end annotation

    .line 563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v4, "resource_set_name=? AND resource_set_version=? AND state!=?"

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    .line 569
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v5, v2

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getVersion()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v5, v1

    sget-object p1, Lcom/amazon/appexpan/client/model/ResourceModel$State;->LOCAL:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    .line 570
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel$State;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v5, v1

    .line 572
    iget-object p1, p0, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->appExpanClientDBHelper:Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 p1, 0x0

    :try_start_0
    const-string/jumbo v2, "resource_set_to_resource_map map INNER JOIN resources res ON map.resource_name = res.name AND map.resource_version = res.version"

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 577
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 586
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 588
    invoke-direct {p0, p1}, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->getResource(Landroid/database/Cursor;)Lcom/amazon/appexpan/client/model/ResourceModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 593
    :try_start_1
    sget-object v2, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->TAG:Ljava/lang/String;

    const-string v3, "Unable to get remote resources from resources table"

    invoke-static {v2, v3, v1}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 599
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :goto_2
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 601
    :cond_2
    throw v0
.end method

.method public getAllResourceSets()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/appexpan/client/model/ResourceSetModel;",
            ">;"
        }
    .end annotation

    .line 1100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1102
    iget-object v1, p0, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->appExpanClientDBHelper:Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v3, "resource_sets"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1107
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1116
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1118
    invoke-direct {p0, v1}, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->getResourceSet(Landroid/database/Cursor;)Lcom/amazon/appexpan/client/model/ResourceSetModel;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 1123
    :try_start_1
    sget-object v3, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->TAG:Ljava/lang/String;

    const-string v4, "Unable to get resource sets from resource_sets table"

    invoke-static {v3, v4, v2}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 1129
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1131
    :cond_2
    throw v0
.end method

.method public getDownloadIdsOfDownloadingResources()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "download_id"

    .line 612
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "state=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .line 616
    sget-object v2, Lcom/amazon/appexpan/client/model/ResourceModel$State;->DOWNLOADING:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    invoke-virtual {v2}, Lcom/amazon/appexpan/client/model/ResourceModel$State;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v6, v3

    .line 618
    iget-object v2, p0, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->appExpanClientDBHelper:Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v11, 0x0

    :try_start_0
    const-string/jumbo v3, "resources"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 623
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 632
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 635
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 634
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v11, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 640
    :try_start_1
    sget-object v2, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->TAG:Ljava/lang/String;

    const-string v3, "Unable to get downloadIds for DOWNLOADING state from resource table"

    invoke-static {v2, v3, v1}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_1

    .line 646
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :goto_2
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 648
    :cond_2
    throw v0
.end method

.method public getMaxVersionResourceSet(Ljava/lang/String;)Lcom/amazon/appexpan/client/model/ResourceSetModel;
    .locals 1

    .line 341
    invoke-direct {p0, p1}, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->getMaxResourceSetVersion(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 344
    invoke-virtual {p0, p1, v0}, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->getResourceSet(Ljava/lang/String;I)Lcom/amazon/appexpan/client/model/ResourceSetModel;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getResourceForDownloadId(J)Lcom/amazon/appexpan/client/model/ResourceModel;
    .locals 10

    const-string v3, "download_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 660
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    .line 662
    iget-object v0, p0, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->appExpanClientDBHelper:Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v9, 0x0

    :try_start_0
    const-string/jumbo v1, "resources"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 667
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    invoke-direct {p0, v0}, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->getResource(Landroid/database/Cursor;)Lcom/amazon/appexpan/client/model/ResourceModel;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz v0, :cond_1

    .line 690
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v0, v9

    .line 684
    :goto_1
    :try_start_2
    sget-object v2, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get resource for the downloadId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_2
    return-object v9

    :catchall_1
    move-exception p1

    move-object v9, v0

    :goto_3
    if-eqz v9, :cond_2

    .line 690
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 692
    :cond_2
    throw p1
.end method

.method public getResourceSet(Ljava/lang/String;I)Lcom/amazon/appexpan/client/model/ResourceSetModel;
    .locals 10

    .line 353
    iget-object v0, p0, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->appExpanClientDBHelper:Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v4, "name=? AND version=?"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v5, v2

    const/4 p1, 0x1

    .line 360
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, p1

    const-string/jumbo v2, "resource_sets"

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 362
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 373
    invoke-direct {p0, p1}, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->getResourceSet(Landroid/database/Cursor;)Lcom/amazon/appexpan/client/model/ResourceSetModel;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    .line 383
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p2

    :catch_0
    move-exception p2

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 377
    :goto_0
    :try_start_2
    sget-object v1, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->TAG:Ljava/lang/String;

    const-string v2, "Unable to get resource set by name and version from resource_sets table"

    invoke-static {v1, v2, p2}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_1

    .line 383
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_1
    move-exception p2

    move-object v0, p1

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 385
    :cond_2
    throw p2
.end method

.method public getResourceSetsByName(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/appexpan/client/model/ResourceSetModel;",
            ">;"
        }
    .end annotation

    .line 1140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1142
    iget-object v1, p0, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->appExpanClientDBHelper:Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v5, "name=?"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v6, v3

    const-string/jumbo v3, "resource_sets"

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1150
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1159
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1161
    invoke-direct {p0, v1}, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->getResourceSet(Landroid/database/Cursor;)Lcom/amazon/appexpan/client/model/ResourceSetModel;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1166
    :try_start_1
    sget-object v2, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->TAG:Ljava/lang/String;

    const-string v3, "Unable to get resource sets by name from resource_sets table"

    invoke-static {v2, v3, p1}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 1172
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1174
    :cond_2
    throw p1
.end method

.method public getResourcesForResourceSet(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/appexpan/client/model/ResourceSetModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/appexpan/client/model/ResourceModel;",
            ">;"
        }
    .end annotation

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v4, "resource_set_name=? AND resource_set_version=?"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    .line 520
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v5, v2

    .line 521
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getVersion()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v5, v1

    .line 524
    iget-object p1, p0, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->appExpanClientDBHelper:Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 p1, 0x0

    :try_start_0
    const-string/jumbo v2, "resource_set_to_resource_map map INNER JOIN resources res ON map.resource_name = res.name AND map.resource_version = res.version"

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 529
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 538
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    invoke-direct {p0, p1}, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->getResource(Landroid/database/Cursor;)Lcom/amazon/appexpan/client/model/ResourceModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 545
    :try_start_1
    sget-object v2, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->TAG:Ljava/lang/String;

    const-string v3, "Unable to get remote resources from resources table"

    invoke-static {v2, v3, v1}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 551
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :goto_2
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 553
    :cond_2
    throw v0
.end method

.method public getSyncToken()Ljava/lang/String;
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->context:Landroid/content/Context;

    const-string v1, "app_expansion_properties"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "syncToken"

    const/4 v2, 0x0

    .line 218
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertManifest(Lcom/amazon/appexpan/client/model/Manifest;)V
    .locals 1

    if-nez p1, :cond_0

    .line 121
    sget-object p1, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->TAG:Ljava/lang/String;

    const-string v0, "Manifest is null!"

    invoke-static {p1, v0}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 125
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/Manifest;->getAllResourceSets()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->insertResourceSets(Ljava/util/List;)V

    .line 126
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/Manifest;->getSyncToken()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->insertSyncToken(Ljava/lang/String;)V

    return-void
.end method

.method public markResourceSetAndItsResourcesAsRemote(Lcom/amazon/appexpan/client/model/ResourceSetModel;)V
    .locals 5

    .line 1203
    invoke-virtual {p0, p1}, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->getResourcesForResourceSet(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Ljava/util/List;

    move-result-object v0

    .line 1205
    iget-object v1, p0, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->appExpanClientDBHelper:Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1210
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1212
    sget-object v2, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->REMOTE:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    invoke-direct {p0, p1, v2}, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->updateResourceSetState(Lcom/amazon/appexpan/client/model/ResourceSetModel;Lcom/amazon/appexpan/client/model/ResourceSetModel$State;)I

    .line 1214
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/appexpan/client/model/ResourceModel;

    .line 1216
    sget-object v2, Lcom/amazon/appexpan/client/model/ResourceModel$State;->REMOTE:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->updateResourceState(Lcom/amazon/appexpan/client/model/ResourceModel;Lcom/amazon/appexpan/client/model/ResourceModel$State;Ljava/lang/Long;)V

    goto :goto_0

    .line 1219
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1223
    :try_start_1
    sget-object v0, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->TAG:Ljava/lang/String;

    const-string v2, "Exception when marking resources and resource sets as REMOTE"

    invoke-static {v0, v2, p1}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1227
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1228
    throw p1
.end method

.method public promoteLatestNotRequestedResourceSetToRemote(Ljava/lang/String;)I
    .locals 10

    .line 453
    iget-object v0, p0, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->appExpanClientDBHelper:Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v0, "MAX(version) AS MAXVERSION"

    .line 456
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "name = ?  AND state = ? "

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    .line 463
    sget-object v0, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->NOT_REQUESTED:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    .line 465
    invoke-virtual {v0}, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v5, v2

    const/4 v0, -0x1

    const/4 v9, 0x0

    :try_start_0
    const-string/jumbo v2, "resource_sets"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 470
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 478
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "MAXVERSION"

    .line 480
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 486
    sget-object v2, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->REMOTE:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    invoke-direct {p0, p1, v1, v2}, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->updateResourceSetState(Ljava/lang/String;ILcom/amazon/appexpan/client/model/ResourceSetModel$State;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_0

    move v0, v1

    :cond_0
    if-eqz v9, :cond_1

    .line 502
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 496
    :try_start_1
    sget-object v1, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->TAG:Ljava/lang/String;

    const-string v2, "Unable to determine active resource set version"

    invoke-static {v1, v2, p1}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :goto_2
    if-eqz v9, :cond_2

    .line 502
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 504
    :cond_2
    throw p1
.end method

.method public promoteResourceSetToFailure(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Z
    .locals 1

    .line 712
    sget-object v0, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->FAILED:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    invoke-direct {p0, p1, v0}, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->updateResourceSetState(Lcom/amazon/appexpan/client/model/ResourceSetModel;Lcom/amazon/appexpan/client/model/ResourceSetModel$State;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public promoteResourceSetToLocal(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Z
    .locals 2

    .line 699
    sget-object v0, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->LOCAL:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    invoke-direct {p0, p1, v0}, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->updateResourceSetState(Lcom/amazon/appexpan/client/model/ResourceSetModel;Lcom/amazon/appexpan/client/model/ResourceSetModel$State;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 703
    invoke-direct {p0, p1}, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->expirePreviousResourceSets(Lcom/amazon/appexpan/client/model/ResourceSetModel;)I

    :cond_0
    if-gtz v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method public promoteResourceSetToNotRequested(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Z
    .locals 1

    .line 728
    sget-object v0, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->NOT_REQUESTED:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    invoke-direct {p0, p1, v0}, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->updateResourceSetState(Lcom/amazon/appexpan/client/model/ResourceSetModel;Lcom/amazon/appexpan/client/model/ResourceSetModel$State;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public updateManifest(Lcom/amazon/appexpan/client/model/Manifest;)V
    .locals 2

    if-nez p1, :cond_0

    .line 134
    sget-object p1, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->TAG:Ljava/lang/String;

    const-string v0, "Manifest is null!"

    invoke-static {p1, v0}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 139
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/Manifest;->getAllResourceSets()Ljava/util/List;

    move-result-object p1

    .line 140
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 142
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;

    .line 144
    invoke-virtual {v0}, Lcom/amazon/appexpan/client/model/ManifestResourceSetModel;->getAllResources()Ljava/util/List;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/appexpan/client/model/ManifestResourceModel;

    .line 148
    invoke-direct {p0, v1}, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->updateResourceURL(Lcom/amazon/appexpan/client/model/ManifestResourceModel;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateResourceState(Lcom/amazon/appexpan/client/model/ResourceModel;Lcom/amazon/appexpan/client/model/ResourceModel$State;Ljava/lang/Long;)V
    .locals 1

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->updateResourceState(Lcom/amazon/appexpan/client/model/ResourceModel;Lcom/amazon/appexpan/client/model/ResourceModel$State;Ljava/lang/Long;Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;)V

    return-void
.end method

.method public updateResourceState(Lcom/amazon/appexpan/client/model/ResourceModel;Lcom/amazon/appexpan/client/model/ResourceModel$State;Ljava/lang/Long;Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;)V
    .locals 6

    .line 168
    iget-object v0, p0, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->appExpanClientDBHelper:Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 169
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 170
    invoke-virtual {p2}, Lcom/amazon/appexpan/client/model/ResourceModel$State;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "state"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p3, :cond_0

    const-string v2, "download_id"

    .line 173
    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 178
    invoke-static {p4}, Lcom/amazon/appexpan/client/deserialization/AppExpanParser;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    const-string v2, "download_retry"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo p4, "name=? AND version=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 184
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, -0x1

    .line 188
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string/jumbo v5, "resources"

    .line 189
    invoke-virtual {v0, v5, v1, p4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 190
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p4

    .line 194
    :try_start_1
    sget-object v1, Lcom/amazon/appexpan/client/dao/AppExpanClientDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to update state for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " version "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getVersion()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-static {v1, v2, p4}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    if-ne v3, v4, :cond_2

    .line 204
    invoke-virtual {p1, p2}, Lcom/amazon/appexpan/client/model/ResourceModel;->setState(Lcom/amazon/appexpan/client/model/ResourceModel$State;)V

    if-eqz p3, :cond_2

    .line 207
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/amazon/appexpan/client/model/ResourceModel;->setDownloadId(J)V

    :cond_2
    return-void

    .line 199
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 200
    throw p1
.end method
