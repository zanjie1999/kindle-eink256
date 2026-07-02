.class public final Lcom/audible/relationship/db/RelationshipRequestStorage;
.super Ljava/lang/Object;
.source "RelationshipRequestStorage.java"

# interfaces
.implements Lcom/audible/relationship/db/IRelationshipRequestStorage;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final WHERE_TYPE_AND_PAYLOAD:Ljava/lang/String; = "type = ? AND payload = ? "


# instance fields
.field private final sqLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/relationship/db/RelationshipRequestStorage;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/relationship/db/RelationshipRequestStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sqLiteOpenHelper can\'t be null."

    .line 53
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/database/sqlite/SQLiteOpenHelper;

    iput-object p1, p0, Lcom/audible/relationship/db/RelationshipRequestStorage;->sqLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method

.method private extractRelationshipRequest(Landroid/database/Cursor;)Lcom/audible/relationship/domain/RelationshipRequest;
    .locals 3

    const-string v0, "type"

    .line 145
    invoke-static {p1, v0}, Lcom/audible/relationship/db/DbUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "payload"

    .line 146
    invoke-static {p1, v1}, Lcom/audible/relationship/db/DbUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-static {v0}, Lcom/audible/relationship/domain/RelationshipRequest$Type;->valueOf(Ljava/lang/String;)Lcom/audible/relationship/domain/RelationshipRequest$Type;

    move-result-object v0

    .line 149
    new-instance v1, Lcom/audible/relationship/domain/RelationshipRequest;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/audible/mobile/util/StringUtils;->defaultIfBlank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Lcom/audible/relationship/domain/RelationshipRequest;-><init>(Lcom/audible/relationship/domain/RelationshipRequest$Type;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public addRequest(Lcom/audible/relationship/domain/RelationshipRequest;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 60
    sget-object p1, Lcom/audible/relationship/db/RelationshipRequestStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "request is null! Do nothing"

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;->RelationshipRequestStorage_AddRequest_NullRequest:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {p1, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return v0

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/audible/relationship/db/RelationshipRequestStorage;->sqLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 67
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 68
    invoke-virtual {p1}, Lcom/audible/relationship/domain/RelationshipRequest;->getType()Lcom/audible/relationship/domain/RelationshipRequest$Type;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lcom/audible/relationship/domain/RelationshipRequest;->getPayload()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/audible/mobile/util/StringUtils;->defaultIfBlank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "payload"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v4, "relationship_request_queue"

    .line 71
    invoke-virtual {v1, v4, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    cmp-long v6, v1, v3

    if-nez v6, :cond_1

    .line 73
    sget-object v1, Lcom/audible/relationship/db/RelationshipRequestStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-array v2, v5, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to insert request! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/relationship/domain/RelationshipRequest;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;->RelationshipRequestStorage_AddRequest_Status:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {p1, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return v0

    .line 78
    :cond_1
    sget-object v0, Lcom/audible/relationship/db/RelationshipRequestStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is saved!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;->RelationshipRequestStorage_AddRequest_Status:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->SUCCESS:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return v5
.end method

.method public getAllRequests()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/relationship/domain/RelationshipRequest;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/audible/relationship/db/RelationshipRequestStorage;->sqLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x0

    .line 91
    :try_start_0
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v2

    sget-object v3, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageTimerMetricKey;->RelationshipRequestStorage_GetAllRequests_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageTimerMetricKey;

    invoke-virtual {v2, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    const-string v2, "relationship_request_queue"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 92
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    invoke-direct {p0, v0}, Lcom/audible/relationship/db/RelationshipRequestStorage;->extractRelationshipRequest(Landroid/database/Cursor;)Lcom/audible/relationship/domain/RelationshipRequest;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v2

    sget-object v3, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageTimerMetricKey;->RelationshipRequestStorage_GetAllRequests_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageTimerMetricKey;

    invoke-virtual {v2, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-static {v0}, Lcom/audible/relationship/db/DbUtils;->closeCursor(Landroid/database/Cursor;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/audible/relationship/db/DbUtils;->closeCursor(Landroid/database/Cursor;)V

    .line 102
    throw v1
.end method

.method public removeAllRequests()Z
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/audible/relationship/db/RelationshipRequestStorage;->sqLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "relationship_request_queue"

    .line 131
    invoke-virtual {v0, v2, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 133
    sget-object v1, Lcom/audible/relationship/db/RelationshipRequestStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " record(s) are removed!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;->RelationshipRequestStorage_RemoveAllRequests_Status:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->SUCCESS:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {v0, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    const/4 v0, 0x1

    return v0

    .line 138
    :cond_0
    sget-object v0, Lcom/audible/relationship/db/RelationshipRequestStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Nothing to remove!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;->RelationshipRequestStorage_RemoveAllRequests_Status:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {v0, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    const/4 v0, 0x0

    return v0
.end method

.method public removeRequest(Lcom/audible/relationship/domain/RelationshipRequest;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 109
    sget-object p1, Lcom/audible/relationship/db/RelationshipRequestStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Request to remove is null! Do nothing."

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;->RelationshipRequestStorage_RemoveRequest_NullRequest:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {p1, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return v0

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/audible/relationship/db/RelationshipRequestStorage;->sqLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Lcom/audible/relationship/domain/RelationshipRequest;->getType()Lcom/audible/relationship/domain/RelationshipRequest$Type;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/audible/relationship/domain/RelationshipRequest;->getPayload()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/audible/mobile/util/StringUtils;->defaultIfBlank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "relationship_request_queue"

    const-string v5, "type = ? AND payload = ? "

    .line 114
    invoke-virtual {v1, v3, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 117
    sget-object v0, Lcom/audible/relationship/db/RelationshipRequestStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is removed!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;->RelationshipRequestStorage_RemoveRequest_Status:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->SUCCESS:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return v4

    .line 122
    :cond_1
    sget-object p1, Lcom/audible/relationship/db/RelationshipRequestStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Failed to remove request!"

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;->RelationshipRequestStorage_RemoveRequest_Status:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {p1, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return v0
.end method
