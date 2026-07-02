.class final Lcom/localytics/android/LocalyticsSession$UploadHandler;
.super Landroid/os/Handler;
.source "LocalyticsSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/LocalyticsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UploadHandler"
.end annotation


# static fields
.field private static final ANALYTICS_URL_HTTP:Ljava/lang/String; = "http://analytics.localytics.com/api/v2/applications/%s/uploads"

.field private static final ANALYTICS_URL_HTTPS:Ljava/lang/String; = "https://analytics.localytics.com/api/v2/uploads"

.field private static final UPLOAD_CALLBACK_THREAD_NAME:Ljava/lang/String; = "upload_callback"


# instance fields
.field private final mApiKey:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mInstallId:Ljava/lang/String;

.field protected final mProvider:Lcom/localytics/android/LocalyticsProvider;

.field private final mSessionHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0

    .line 3120
    invoke-direct {p0, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3122
    iput-object p1, p0, Lcom/localytics/android/LocalyticsSession$UploadHandler;->mContext:Landroid/content/Context;

    .line 3123
    invoke-static {p1, p3}, Lcom/localytics/android/LocalyticsProvider;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/localytics/android/LocalyticsProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/localytics/android/LocalyticsSession$UploadHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    .line 3124
    iput-object p2, p0, Lcom/localytics/android/LocalyticsSession$UploadHandler;->mSessionHandler:Landroid/os/Handler;

    .line 3125
    iput-object p3, p0, Lcom/localytics/android/LocalyticsSession$UploadHandler;->mApiKey:Ljava/lang/String;

    .line 3126
    iput-object p4, p0, Lcom/localytics/android/LocalyticsSession$UploadHandler;->mInstallId:Ljava/lang/String;

    return-void
.end method

.method static convertAttributesToJson(Lcom/localytics/android/LocalyticsProvider;Landroid/content/Context;J)Lorg/json/JSONObject;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "attribute_key"

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "attributes"

    const/4 v4, 0x0

    const-string v2, "%s = ? AND %s != ? AND %s != ? AND %s != ? AND %s != ? AND %s != ? AND %s != ? AND %s != ? AND %s != ? AND %s != ? AND %s != ?"

    const/16 v5, 0xb

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "events_key_ref"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v9, 0x1

    aput-object v0, v6, v9

    const/4 v7, 0x2

    aput-object v0, v6, v7

    const/4 v10, 0x3

    aput-object v0, v6, v10

    const/4 v11, 0x4

    aput-object v0, v6, v11

    const/4 v12, 0x5

    aput-object v0, v6, v12

    const/4 v13, 0x6

    aput-object v0, v6, v13

    const/4 v14, 0x7

    aput-object v0, v6, v14

    const/16 v15, 0x8

    aput-object v0, v6, v15

    const/16 v16, 0x9

    aput-object v0, v6, v16

    const/16 v17, 0xa

    aput-object v0, v6, v17

    .line 4496
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

    aput-object v2, v5, v9

    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

    aput-object v2, v5, v7

    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

    aput-object v2, v5, v10

    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

    aput-object v2, v5, v11

    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_5:Ljava/lang/String;

    aput-object v2, v5, v12

    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_6:Ljava/lang/String;

    aput-object v2, v5, v13

    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_7:Ljava/lang/String;

    aput-object v2, v5, v14

    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_8:Ljava/lang/String;

    aput-object v2, v5, v15

    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_9:Ljava/lang/String;

    aput-object v2, v5, v16

    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_10:Ljava/lang/String;

    aput-object v2, v5, v17

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object v8, v5

    move-object v5, v6

    move-object v6, v8

    invoke-virtual/range {v2 .. v7}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4498
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    .line 4521
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v1

    .line 4503
    :cond_1
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 4505
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v3, "attribute_value"

    .line 4506
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 4507
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4509
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4510
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4512
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 4521
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v1

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4524
    :cond_4
    throw v0
.end method

.method static convertDatabaseToJson(Landroid/content/Context;Lcom/localytics/android/LocalyticsProvider;Ljava/lang/String;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/localytics/android/LocalyticsProvider;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p1

    const-string v9, "events_key_ref"

    .line 3506
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    const/4 v11, 0x0

    :try_start_0
    const-string v2, "upload_blobs"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    .line 3510
    invoke-virtual/range {v1 .. v6}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 3512
    :try_start_1
    invoke-static/range {p1 .. p2}, Lcom/localytics/android/LocalyticsSession$UploadHandler;->getApiKeyCreationTime(Lcom/localytics/android/LocalyticsProvider;Ljava/lang/String;)J

    move-result-wide v13

    const-string v0, "_id"

    .line 3514
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    const-string v0, "uuid"

    .line 3515
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 3516
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v0, :cond_4

    .line 3520
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "dt"

    const-string v2, "h"

    .line 3522
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pa"

    .line 3523
    invoke-virtual {v0, v1, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "seq"

    .line 3524
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "u"

    .line 3525
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "attrs"

    .line 3526
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v8, v2, v3}, Lcom/localytics/android/LocalyticsSession$UploadHandler;->getSessionIdForBlobId(Lcom/localytics/android/LocalyticsProvider;J)J

    move-result-wide v2

    move-object/from16 v6, p2

    invoke-static {v8, v6, v2, v3}, Lcom/localytics/android/LocalyticsSession$UploadHandler;->getAttributesFromSession(Lcom/localytics/android/LocalyticsProvider;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3528
    invoke-static/range {p1 .. p1}, Lcom/localytics/android/LocalyticsSession$UploadHandler;->getIdentifiers(Lcom/localytics/android/LocalyticsProvider;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "ids"

    .line 3531
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3534
    :cond_0
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    const-string v2, "upload_blob_events"

    .line 3544
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "%s = ?"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "upload_blobs_key_ref"

    const/16 v16, 0x0

    aput-object v5, v4, v16

    .line 3545
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/String;

    .line 3546
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v16

    const-string v0, "events_key_ref"

    move-object/from16 v1, p1

    move-object v6, v0

    .line 3544
    invoke-virtual/range {v1 .. v6}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3548
    :try_start_4
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 3549
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3551
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object/from16 v18, v5

    move-wide/from16 v5, v16

    move/from16 v16, v7

    move-object/from16 v7, p2

    :try_start_5
    invoke-static/range {v1 .. v7}, Lcom/localytics/android/LocalyticsSession$UploadHandler;->convertEventToJson(Lcom/localytics/android/LocalyticsProvider;Landroid/content/Context;JJLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move/from16 v7, v16

    move-object/from16 v5, v18

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v5, v18

    goto :goto_2

    :cond_1
    move-object/from16 v18, v5

    move/from16 v16, v7

    if-eqz v18, :cond_3

    .line 3558
    :try_start_6
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v18, v5

    move/from16 v16, v7

    goto :goto_2

    :catchall_2
    move-exception v0

    move/from16 v16, v7

    move-object v5, v11

    :goto_2
    if-eqz v5, :cond_2

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 3560
    :cond_2
    throw v0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catch_0
    move/from16 v16, v7

    :catch_1
    :cond_3
    :goto_3
    move/from16 v7, v16

    goto/16 :goto_0

    :cond_4
    if-eqz v12, :cond_5

    .line 3575
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v10

    :catchall_3
    move-exception v0

    move-object v11, v12

    goto :goto_4

    :catchall_4
    move-exception v0

    :goto_4
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3578
    :cond_6
    throw v0
.end method

.method static convertEventToJson(Lcom/localytics/android/LocalyticsProvider;Landroid/content/Context;JJLjava/lang/String;)Lorg/json/JSONObject;
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v7, "processed_in_blob"

    const-string v8, "%s = ?"

    .line 3883
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "events"

    const/4 v3, 0x0

    const/4 v11, 0x1

    new-array v1, v11, [Ljava/lang/Object;

    const-string v4, "_id"

    const/4 v12, 0x0

    aput-object v4, v1, v12

    .line 3889
    invoke-static {v8, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v11, [Ljava/lang/String;

    .line 3890
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v12

    const-string v6, "_id"

    move-object/from16 v1, p0

    .line 3889
    invoke-virtual/range {v1 .. v6}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    .line 3892
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3c

    const-string v1, "event_name"

    .line 3894
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-wide/from16 v14, p2

    .line 3895
    invoke-static {v0, v14, v15}, Lcom/localytics/android/LocalyticsSession$UploadHandler;->getSessionIdForEventId(Lcom/localytics/android/LocalyticsProvider;J)J

    move-result-wide v5

    .line 3896
    invoke-static {v0, v5, v6}, Lcom/localytics/android/LocalyticsSession$UploadHandler;->getSessionUuid(Lcom/localytics/android/LocalyticsProvider;J)Ljava/lang/String;

    move-result-object v2

    .line 3897
    invoke-static {v0, v5, v6}, Lcom/localytics/android/LocalyticsSession$UploadHandler;->getSessionStartTime(Lcom/localytics/android/LocalyticsProvider;J)J

    move-result-wide v3

    .line 3899
    sget-object v10, Lcom/localytics/android/LocalyticsSession;->OPEN_EVENT:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    const-string v12, "lng"

    const-string v11, "attribute_value"

    const-string v0, "lat"

    const-string v14, "attribute_key"

    const-string v15, "events_key_ref"

    move-object/from16 v16, v7

    const-string v7, "ct"

    move-wide/from16 v17, v3

    const-string v3, "u"

    const-string v4, "wall_time"

    move-object/from16 v19, v1

    const-string v1, "dt"

    const-wide/16 v20, 0x0

    move-object/from16 v22, v11

    const-string v11, "event_lng"

    move-object/from16 v23, v14

    const-string v14, "event_lat"

    const-wide v24, 0x408f400000000000L    # 1000.0

    if-eqz v10, :cond_d

    :try_start_2
    const-string v10, "s"

    .line 3901
    invoke-virtual {v9, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3902
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object v10, v0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    long-to-double v0, v0

    div-double v0, v0, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-virtual {v9, v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 3904
    invoke-virtual {v9, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "nth"

    .line 3909
    invoke-virtual {v9, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 3914
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3915
    invoke-interface {v13, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3917
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    .line 3918
    invoke-interface {v13, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    cmpl-double v4, v0, v20

    if-eqz v4, :cond_0

    cmpl-double v4, v2, v20

    if-eqz v4, :cond_0

    .line 3922
    invoke-virtual {v9, v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 3923
    invoke-virtual {v9, v12, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    :cond_0
    :try_start_3
    const-string v0, "attributes"

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v3, v4

    .line 3933
    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v2

    move-object/from16 p5, v4

    invoke-virtual/range {p0 .. p5}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v0, v23

    .line 3935
    :try_start_4
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v1, v22

    .line 3936
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 3937
    :cond_1
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3939
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3940
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3942
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v2, "c0"

    .line 3944
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 3946
    :cond_2
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v2, "c1"

    .line 3948
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 3950
    :cond_3
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v2, "c2"

    .line 3952
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 3954
    :cond_4
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v2, "c3"

    .line 3956
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 3958
    :cond_5
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_5:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v2, "c4"

    .line 3960
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 3962
    :cond_6
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_6:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v2, "c5"

    .line 3964
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 3966
    :cond_7
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_7:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v2, "c6"

    .line 3968
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 3970
    :cond_8
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_8:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v2, "c7"

    .line 3972
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 3974
    :cond_9
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_9:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v2, "c8"

    .line 3976
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 3978
    :cond_a
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_10:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "c9"

    .line 3980
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_b
    if-eqz v10, :cond_3a

    .line 3988
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_f

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_c

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3991
    :cond_c
    throw v0

    :cond_d
    move-object v10, v0

    move-object/from16 v26, v22

    move-object/from16 v0, v23

    move-wide/from16 v22, v5

    .line 3993
    sget-object v5, Lcom/localytics/android/LocalyticsSession;->CLOSE_EVENT:Ljava/lang/String;

    move-object/from16 v6, v19

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    move-object/from16 v19, v6

    const-string v6, "type"

    move-object/from16 v27, v6

    const-string v6, "uuid"

    move-object/from16 v28, v0

    const-string v0, "name"

    if-eqz v5, :cond_22

    :try_start_6
    const-string v5, "c"

    .line 3995
    invoke-virtual {v9, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3996
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "su"

    .line 3997
    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ss"

    move-wide/from16 v2, v17

    long-to-double v2, v2

    div-double v2, v2, v24

    .line 3998
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v9, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 3999
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    long-to-double v1, v1

    div-double v1, v1, v24

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-virtual {v9, v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_c

    :try_start_7
    const-string v2, "sessions"

    const-string v1, "session_start_wall_time"

    .line 4008
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "_id"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 4009
    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/String;

    const-string v1, "session_key_ref"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v29, v4

    move-object v4, v5

    move-wide/from16 v17, v22

    move-object v5, v6

    move-object/from16 v22, v8

    move-object/from16 v8, v27

    move-object v6, v7

    .line 4008
    invoke-virtual/range {v1 .. v6}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 4011
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "ctl"

    move-object/from16 v4, v29

    .line 4013
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    long-to-double v3, v3

    div-double v3, v3, v24

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    const-string v5, "session_start_wall_time"

    .line 4015
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    long-to-double v5, v5

    div-double v5, v5, v24

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 4013
    invoke-virtual {v9, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-eqz v1, :cond_e

    .line 4028
    :try_start_9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_c

    :cond_e
    :try_start_a
    const-string v2, "event_history"

    .line 4039
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v1, "%s = ? AND %s = ?"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "session_key_ref"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v8, v5, v6

    .line 4040
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v8, v4, [Ljava/lang/String;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v7

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v6

    const-string v6, "_id"

    move-object/from16 v1, p0

    move-object v4, v5

    move-object v5, v8

    .line 4039
    invoke-virtual/range {v1 .. v6}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 4042
    :try_start_b
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 4043
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 4045
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 4048
    :cond_f
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_10

    const-string v0, "fl"

    .line 4050
    invoke-virtual {v9, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :cond_10
    if-eqz v1, :cond_11

    .line 4057
    :try_start_c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4065
    :cond_11
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4066
    invoke-interface {v13, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4068
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    .line 4069
    invoke-interface {v13, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    cmpl-double v4, v0, v20

    if-eqz v4, :cond_12

    cmpl-double v4, v2, v20

    if-eqz v4, :cond_12

    .line 4073
    invoke-virtual {v9, v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 4074
    invoke-virtual {v9, v12, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    :cond_12
    :try_start_d
    const-string v0, "attributes"

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v3, v4

    move-object/from16 v5, v22

    .line 4084
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v2

    move-object/from16 p5, v4

    invoke-virtual/range {p0 .. p5}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object/from16 v0, v28

    .line 4086
    :try_start_e
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v1, v26

    .line 4087
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 4088
    :cond_13
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 4090
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4091
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4093
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v2, "c0"

    .line 4095
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 4097
    :cond_14
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v2, "c1"

    .line 4099
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 4101
    :cond_15
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v2, "c2"

    .line 4103
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 4105
    :cond_16
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v2, "c3"

    .line 4107
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 4109
    :cond_17
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_5:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v2, "c4"

    .line 4111
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 4113
    :cond_18
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_6:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v2, "c5"

    .line 4115
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 4117
    :cond_19
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_7:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string v2, "c6"

    .line 4119
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 4121
    :cond_1a
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_8:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v2, "c7"

    .line 4123
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 4125
    :cond_1b
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_9:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string v2, "c8"

    .line 4127
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 4129
    :cond_1c
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_10:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "c9"

    .line 4131
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_3

    :cond_1d
    if-eqz v10, :cond_3a

    .line 4139
    :try_start_f
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_f

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_1e

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4142
    :cond_1e
    throw v0

    :catchall_4
    move-exception v0

    move-object v10, v1

    goto :goto_5

    :catchall_5
    move-exception v0

    const/4 v10, 0x0

    :goto_5
    if-eqz v10, :cond_1f

    .line 4057
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4060
    :cond_1f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    .line 4021
    :cond_20
    :try_start_10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Session didn\'t exist"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :catchall_6
    move-exception v0

    move-object v10, v1

    goto :goto_6

    :catchall_7
    move-exception v0

    const/4 v10, 0x0

    :goto_6
    if-eqz v10, :cond_21

    .line 4028
    :try_start_11
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4031
    :cond_21
    throw v0

    :cond_22
    move-object/from16 v30, v26

    move-object/from16 v31, v28

    move-object/from16 v26, v8

    move-object/from16 v8, v27

    move-wide/from16 v32, v22

    move-object/from16 v23, v10

    move-object/from16 v22, v11

    move-wide/from16 v10, v17

    move-wide/from16 v17, v32

    .line 4144
    sget-object v5, Lcom/localytics/android/LocalyticsSession;->OPT_IN_EVENT:Ljava/lang/String;

    move-object/from16 v27, v15

    move-object/from16 v15, v19

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    sget-object v5, Lcom/localytics/android/LocalyticsSession;->OPT_OUT_EVENT:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    goto/16 :goto_c

    .line 4152
    :cond_23
    sget-object v5, Lcom/localytics/android/LocalyticsSession;->FLOW_EVENT:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    const-string v2, "f"

    .line 4154
    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4155
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ss"

    long-to-double v2, v10

    div-double v2, v2, v24

    .line 4156
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v9, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    :try_start_12
    const-string v2, "event_history"

    move-object/from16 v7, v16

    .line 4168
    filled-new-array {v8, v7, v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v1, "%s = ? AND %s <= ?"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "session_key_ref"

    const/4 v10, 0x0

    aput-object v6, v5, v10

    const/4 v6, 0x1

    aput-object v7, v5, v6

    .line 4172
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/String;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v10

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v6, v4

    const-string v10, "_id"

    move-object/from16 v1, p0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v10

    .line 4168
    invoke-virtual/range {v1 .. v6}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 4174
    :try_start_13
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 4175
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 4176
    :goto_7
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 4178
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4180
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_24

    const-string v4, "e"

    goto :goto_8

    :cond_24
    const-string v4, "s"

    .line 4189
    :goto_8
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v11, p4, v5

    if-nez v11, :cond_25

    .line 4191
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v5, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_7

    .line 4195
    :cond_25
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v5, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_7

    :cond_26
    const-string v0, "nw"

    .line 4199
    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "od"

    .line 4200
    invoke-virtual {v9, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    if-eqz v10, :cond_3a

    .line 4206
    :try_start_14
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_f

    :catchall_8
    move-exception v0

    goto :goto_9

    :catchall_9
    move-exception v0

    const/4 v10, 0x0

    :goto_9
    if-eqz v10, :cond_27

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4209
    :cond_27
    throw v0

    :cond_28
    const-string v0, "e"

    .line 4217
    invoke-virtual {v9, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4218
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    long-to-double v0, v0

    div-double v0, v0, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-virtual {v9, v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 4220
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "su"

    .line 4221
    invoke-virtual {v9, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "n"

    .line 4222
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v15, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "clv_increase"

    .line 4227
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_29

    const-string v2, "v"

    .line 4230
    invoke-virtual {v9, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 4236
    :cond_29
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2a

    move-object/from16 v0, v22

    .line 4237
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 4239
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    .line 4240
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    cmpl-double v0, v1, v20

    if-eqz v0, :cond_2a

    cmpl-double v0, v3, v20

    if-eqz v0, :cond_2a

    move-object/from16 v0, v23

    .line 4244
    invoke-virtual {v9, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 4245
    invoke-virtual {v9, v12, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    :cond_2a
    :try_start_15
    const-string v2, "attributes"

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v27, v1, v4

    move-object/from16 v5, v26

    .line 4255
    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v4, v5

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    move-object/from16 v0, v31

    .line 4257
    :try_start_16
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v1, v30

    .line 4258
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 4259
    :cond_2b
    :goto_a
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 4261
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4262
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4264
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const-string v2, "c0"

    .line 4266
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_a

    .line 4268
    :cond_2c
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const-string v2, "c1"

    .line 4270
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_a

    .line 4272
    :cond_2d
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const-string v2, "c2"

    .line 4274
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_a

    .line 4276
    :cond_2e
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const-string v2, "c3"

    .line 4278
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_a

    .line 4280
    :cond_2f
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_5:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    const-string v2, "c4"

    .line 4282
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_a

    .line 4284
    :cond_30
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_6:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    const-string v2, "c5"

    .line 4286
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_a

    .line 4288
    :cond_31
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_7:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    const-string v2, "c6"

    .line 4290
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_a

    .line 4292
    :cond_32
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_8:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    const-string v2, "c7"

    .line 4294
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_a

    .line 4296
    :cond_33
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_9:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    const-string v2, "c8"

    .line 4298
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_a

    .line 4300
    :cond_34
    sget-object v4, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_10:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string v2, "c9"

    .line 4302
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    goto/16 :goto_a

    :cond_35
    if-eqz v10, :cond_36

    .line 4310
    :try_start_17
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4315
    :cond_36
    invoke-static/range {p0 .. p3}, Lcom/localytics/android/LocalyticsSession$UploadHandler;->convertAttributesToJson(Lcom/localytics/android/LocalyticsProvider;Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3a

    const-string v1, "attrs"

    .line 4319
    invoke-virtual {v9, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f

    :catchall_a
    move-exception v0

    goto :goto_b

    :catchall_b
    move-exception v0

    const/4 v10, 0x0

    :goto_b
    if-eqz v10, :cond_37

    .line 4310
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4313
    :cond_37
    throw v0

    :cond_38
    :goto_c
    const-string v0, "o"

    .line 4146
    invoke-virtual {v9, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, p6

    .line 4147
    invoke-virtual {v9, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "out"

    .line 4148
    sget-object v1, Lcom/localytics/android/LocalyticsSession;->OPT_OUT_EVENT:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_d
    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_39
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_d

    :goto_e
    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4149
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    long-to-double v0, v0

    div-double v0, v0, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-virtual {v9, v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    :cond_3a
    :goto_f
    if-eqz v13, :cond_3b

    .line 4335
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_3b
    return-object v9

    .line 4328
    :cond_3c
    :try_start_18
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    :catchall_c
    move-exception v0

    move-object v10, v13

    goto :goto_10

    :catchall_d
    move-exception v0

    const/4 v10, 0x0

    :goto_10
    if-eqz v10, :cond_3d

    .line 4335
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4338
    :cond_3d
    throw v0
.end method

.method static deleteBlobsAndSessions(Lcom/localytics/android/LocalyticsProvider;)V
    .locals 22

    move-object/from16 v0, p0

    const-string v7, "upload_blobs_key_ref"

    const-string v8, "events_key_ref"

    const-string v9, "session_key_ref"

    const-string v10, "_id"

    .line 3603
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 3604
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    const-string v2, "upload_blob_events"

    .line 3609
    filled-new-array {v10, v8, v7}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 3615
    :try_start_1
    invoke-interface {v14, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 3616
    invoke-interface {v14, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 3617
    invoke-interface {v14, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 3618
    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v5, "%s = ?"

    const/16 v16, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 3620
    :try_start_2
    invoke-interface {v14, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 3621
    invoke-interface {v14, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 3622
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    const-string v3, "upload_blob_events"

    new-array v13, v4, [Ljava/lang/Object;

    aput-object v10, v13, v16

    .line 3625
    invoke-static {v5, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move/from16 v21, v6

    new-array v6, v4, [Ljava/lang/String;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v16

    invoke-virtual {v0, v3, v13, v6}, Lcom/localytics/android/LocalyticsProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3630
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "attributes"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v8, v2, v16

    .line 3633
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/localytics/android/LocalyticsProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string v2, "events"

    .line 3641
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v3

    const-string v1, "%s = ? AND %s = ?"

    const/4 v6, 0x2

    new-array v13, v6, [Ljava/lang/Object;

    aput-object v10, v13, v16

    const-string v17, "event_name"

    aput-object v17, v13, v4

    .line 3642
    invoke-static {v1, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    new-array v6, v6, [Ljava/lang/String;

    .line 3644
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v16

    sget-object v1, Lcom/localytics/android/LocalyticsSession;->CLOSE_EVENT:Ljava/lang/String;

    aput-object v1, v6, v4

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move/from16 v18, v7

    const/4 v7, 0x1

    move-object v4, v13

    move-object v13, v5

    move-object v5, v6

    move-object/from16 v6, v17

    .line 3641
    invoke-virtual/range {v1 .. v6}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3647
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3649
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "event_history"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v9, v5, v16

    .line 3651
    invoke-static {v13, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/String;

    .line 3652
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v16

    .line 3651
    invoke-virtual {v0, v4, v5, v6}, Lcom/localytics/android/LocalyticsProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3654
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    .line 3661
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string v1, "events"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v10, v2, v16

    .line 3667
    invoke-static {v13, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/localytics/android/LocalyticsProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move/from16 v7, v18

    move/from16 v6, v21

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v13, v1

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v13, 0x0

    :goto_1
    if-eqz v13, :cond_2

    .line 3661
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 3664
    :cond_2
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_3
    move-object v13, v5

    const/4 v7, 0x1

    if-eqz v14, :cond_4

    .line 3674
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 3680
    :cond_4
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v10, v4, v16

    .line 3682
    invoke-static {v13, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v16

    const-string v2, "upload_blobs"

    invoke-virtual {v0, v2, v4, v5}, Lcom/localytics/android/LocalyticsProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 3686
    :cond_5
    invoke-virtual {v11}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v10, v4, v16

    .line 3688
    invoke-static {v13, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v16

    const-string v2, "sessions"

    invoke-virtual {v0, v2, v4, v5}, Lcom/localytics/android/LocalyticsProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    return-void

    :catchall_2
    move-exception v0

    move-object v13, v14

    goto :goto_4

    :catchall_3
    move-exception v0

    const/4 v13, 0x0

    :goto_4
    if-eqz v13, :cond_7

    .line 3674
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 3677
    :cond_7
    throw v0
.end method

.method static getApiKeyCreationTime(Lcom/localytics/android/LocalyticsProvider;Ljava/lang/String;)J
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "api_keys"

    const/4 v3, 0x0

    const-string v1, "%s = ?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "api_key"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3705
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/String;

    aput-object p1, v6, v7

    const/4 p1, 0x0

    move-object v1, p0

    move-object v4, v5

    move-object v5, v6

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3707
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "created_time"

    .line 3709
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    long-to-float p0, p0

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long p0, p0

    if-eqz v0, :cond_0

    .line 3721
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide p0

    .line 3715
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "API key entry couldn\'t be found"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    .line 3721
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3724
    :cond_2
    throw p0
.end method

.method static getAttributesFromSession(Lcom/localytics/android/LocalyticsProvider;Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "iu"

    const-string v1, "device_telephony_id"

    const-string v2, "device_wifi_mac_hash"

    const-string v3, "device_serial_number_hash"

    const/4 v4, 0x0

    :try_start_0
    const-string v6, "sessions"

    const/4 v7, 0x0

    const-string v5, "%s = ?"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    const-string v10, "_id"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 3742
    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v8, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v10, v11

    const/4 p2, 0x0

    move-object v5, p0

    move-object v8, v9

    move-object v9, v10

    move-object v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 3744
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 3746
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "av"

    const-string v5, "app_version"

    .line 3749
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, p3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "dac"

    const-string v5, "network_type"

    .line 3750
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, p3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "du"

    const-string v5, "device_android_id_hash"

    .line 3751
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, p3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "dc"

    const-string v5, "device_country"

    .line 3752
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, p3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "dma"

    const-string v5, "device_manufacturer"

    .line 3753
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, p3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "dmo"

    const-string v5, "device_model"

    .line 3754
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, p3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "dov"

    const-string v5, "android_version"

    .line 3755
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, p3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "dp"

    const-string v5, "Android"

    .line 3756
    invoke-virtual {p2, p3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "dms"

    .line 3757
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_0

    .line 3758
    :cond_0
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3757
    :goto_0
    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "dsdk"

    const-string v3, "android_sdk"

    .line 3759
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "wmac"

    .line 3760
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_1

    .line 3761
    :cond_1
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3760
    :goto_1
    invoke-virtual {p2, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "au"

    .line 3762
    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "lv"

    const-string p3, "localytics_library_version"

    .line 3763
    invoke-interface {v4, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    invoke-interface {v4, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "dt"

    const-string p3, "a"

    .line 3764
    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ctdid"

    .line 3765
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    invoke-interface {v4, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result p3

    if-eqz p3, :cond_2

    sget-object p3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_2

    .line 3766
    :cond_2
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    invoke-interface {v4, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 3765
    :goto_2
    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3769
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v4, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3772
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string p1, "dlc"

    const-string p3, "locale_country"

    .line 3774
    invoke-interface {v4, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    invoke-interface {v4, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "dll"

    const-string p3, "locale_language"

    .line 3775
    invoke-interface {v4, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    invoke-interface {v4, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "nca"

    const-string p3, "network_carrier"

    .line 3776
    invoke-interface {v4, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    invoke-interface {v4, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "nc"

    const-string p3, "network_country"

    .line 3777
    invoke-interface {v4, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    invoke-interface {v4, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "fb_attribution"

    .line 3780
    invoke-static {p0, p1}, Lcom/localytics/android/LocalyticsSession$UploadHandler;->getStringFromAppInfo(Lcom/localytics/android/LocalyticsProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p3, "fbat"

    .line 3783
    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string p1, "play_attribution"

    .line 3786
    invoke-static {p0, p1}, Lcom/localytics/android/LocalyticsSession$UploadHandler;->getStringFromAppInfo(Lcom/localytics/android/LocalyticsProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string p3, "aurl"

    .line 3789
    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    const-string p1, "registration_id"

    .line 3792
    invoke-static {p0, p1}, Lcom/localytics/android/LocalyticsSession$UploadHandler;->getStringFromAppInfo(Lcom/localytics/android/LocalyticsProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string p3, "push"

    .line 3795
    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    const-string p1, "first_telephony_id"

    .line 3798
    invoke-static {p0, p1}, Lcom/localytics/android/LocalyticsSession$UploadHandler;->getStringFromAppInfo(Lcom/localytics/android/LocalyticsProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string p3, "tdid"

    .line 3801
    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    const-string p1, "package_name"

    .line 3804
    invoke-static {p0, p1}, Lcom/localytics/android/LocalyticsSession$UploadHandler;->getStringFromAppInfo(Lcom/localytics/android/LocalyticsProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    const-string p1, "pkg"

    .line 3807
    invoke-virtual {p2, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    if-eqz v4, :cond_9

    .line 3819
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object p2

    .line 3813
    :cond_a
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "No session exists"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    if-eqz v4, :cond_b

    .line 3819
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 3822
    :cond_b
    throw p0
.end method

.method static getIdentifiers(Lcom/localytics/android/LocalyticsProvider;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "identifiers"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 3839
    invoke-virtual/range {v1 .. v6}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3843
    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    .line 3847
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v1, "key"

    .line 3850
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    .line 3859
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v7, v0

    move-object v0, p0

    move-object p0, v7

    :goto_1
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 3862
    :cond_3
    throw v0
.end method

.method static getSessionIdForBlobId(Lcom/localytics/android/LocalyticsProvider;J)J
    .locals 18

    const-string v0, "session_key_ref"

    const-string v1, "%s = ?"

    const-string v2, "events_key_ref"

    const/4 v3, 0x0

    :try_start_0
    const-string v5, "upload_blob_events"

    .line 4544
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x1

    new-array v4, v10, [Ljava/lang/Object;

    const-string v7, "upload_blobs_key_ref"

    const/4 v11, 0x0

    aput-object v7, v4, v11

    .line 4545
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/String;

    .line 4546
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v11

    const/4 v9, 0x0

    move-object/from16 v4, p0

    .line 4544
    invoke-virtual/range {v4 .. v9}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4548
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4550
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_0

    .line 4564
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_0
    :try_start_2
    const-string v13, "events"

    .line 4575
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v14

    new-array v2, v10, [Ljava/lang/Object;

    const-string v4, "_id"

    aput-object v4, v2, v11

    .line 4576
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    new-array v1, v10, [Ljava/lang/String;

    .line 4577
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    const/16 v17, 0x0

    move-object/from16 v12, p0

    move-object/from16 v16, v1

    .line 4575
    invoke-virtual/range {v12 .. v17}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 4579
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4581
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    .line 4595
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v0

    .line 4588
    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No session associated with event"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_3

    .line 4595
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4598
    :cond_3
    throw v0

    .line 4557
    :cond_4
    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No events associated with blob"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v4

    goto :goto_0

    :catchall_2
    move-exception v0

    :goto_0
    if-eqz v3, :cond_5

    .line 4564
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4567
    :cond_5
    throw v0
.end method

.method static getSessionIdForEventId(Lcom/localytics/android/LocalyticsProvider;J)J
    .locals 9

    const-string v0, "session_key_ref"

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "events"

    .line 4355
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v2, "%s = ?"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "_id"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 4356
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v8

    const/4 p1, 0x0

    move-object v2, p0

    move-object v5, v6

    move-object v6, v7

    move-object v7, p1

    .line 4355
    invoke-virtual/range {v2 .. v7}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4358
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4360
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4372
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide p0

    .line 4366
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_2

    .line 4372
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4375
    :cond_2
    throw p0
.end method

.method static getSessionStartTime(Lcom/localytics/android/LocalyticsProvider;J)J
    .locals 9

    const-string v0, "session_start_wall_time"

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "sessions"

    .line 4458
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v2, "%s = ?"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "_id"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 4459
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v8

    const/4 p1, 0x0

    move-object v2, p0

    move-object v5, v6

    move-object v6, v7

    move-object v7, p1

    .line 4458
    invoke-virtual/range {v2 .. v7}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4461
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4463
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4475
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide p0

    .line 4469
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_2

    .line 4475
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4478
    :cond_2
    throw p0
.end method

.method static getSessionUuid(Lcom/localytics/android/LocalyticsProvider;J)Ljava/lang/String;
    .locals 9

    const-string v0, "uuid"

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "sessions"

    .line 4390
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v2, "%s = ?"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "_id"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 4391
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v8

    const/4 p1, 0x0

    move-object v2, p0

    move-object v5, v6

    move-object v6, v7

    move-object v7, p1

    .line 4390
    invoke-virtual/range {v2 .. v7}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4393
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4395
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4407
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p0

    .line 4401
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_2

    .line 4407
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4410
    :cond_2
    throw p0
.end method

.method static getStringFromAppInfo(Lcom/localytics/android/LocalyticsProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "info"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 4426
    invoke-virtual/range {v1 .. v6}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4428
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4430
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 4437
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    :cond_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4440
    :cond_3
    throw p1
.end method

.method static uploadSessions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v0, :cond_13

    if-eqz v1, :cond_12

    .line 3264
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getApiLevel()I

    move-result v4

    const/16 v5, 0x9

    const-string v9, "UTF-8"

    const-string v10, "android_2.17"

    const-string v11, "x-client-version"

    const-string v12, "x-app-id"

    const-string v13, "x-install-id"

    const-string v7, "x-upload-time"

    const-string v8, "gzip"

    const-string v14, "Content-Encoding"

    const-string v15, "application/x-gzip"

    const-string v6, "Content-Type"

    const/16 v18, 0x0

    const/16 v19, 0x0

    if-lt v4, v5, :cond_b

    .line 3274
    :try_start_0
    invoke-virtual {v1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 3275
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    array-length v5, v1

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 3276
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 3277
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 3278
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 3284
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getApiLevel()I

    move-result v1

    const/16 v9, 0x13

    if-ge v1, v9, :cond_0

    .line 3286
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 3289
    :cond_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 3313
    :try_start_2
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 3332
    :try_start_3
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v0, 0x1

    .line 3334
    :try_start_4
    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 3335
    invoke-virtual {v4, v6, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3336
    invoke-virtual {v4, v14, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    long-to-double v5, v5

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 3337
    invoke-virtual {v4, v7, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3340
    invoke-virtual {v4, v13, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3341
    invoke-virtual {v4, v12, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3342
    invoke-virtual {v4, v11, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3343
    array-length v0, v1

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3348
    :try_start_5
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3350
    :try_start_6
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_1

    .line 3356
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 3357
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 3362
    :cond_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_3

    const/16 v1, 0x257

    if-gt v0, v1, :cond_3

    if-eqz v4, :cond_2

    .line 3399
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return v19

    :cond_3
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    move-object/from16 v18, v2

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_0
    if-eqz v18, :cond_4

    .line 3356
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->flush()V

    .line 3357
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V

    .line 3360
    :cond_4
    throw v0
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    move-object/from16 v18, v4

    goto :goto_1

    :catch_0
    move-object/from16 v18, v4

    goto :goto_2

    :catch_1
    move-object/from16 v18, v4

    goto :goto_3

    :catchall_3
    move-exception v0

    :goto_1
    if-eqz v18, :cond_5

    .line 3399
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 3402
    :cond_5
    throw v0

    :catch_2
    nop

    :goto_2
    if-eqz v18, :cond_6

    .line 3399
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    return v19

    :catch_3
    nop

    :goto_3
    if-eqz v18, :cond_7

    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V

    :catch_4
    :cond_7
    return v19

    :catchall_4
    move-exception v0

    move-object/from16 v18, v5

    goto :goto_4

    :catch_5
    move-object/from16 v18, v5

    goto :goto_6

    :catch_6
    move-object/from16 v18, v5

    goto :goto_7

    :catchall_5
    move-exception v0

    goto :goto_4

    :catch_7
    nop

    goto :goto_6

    :catch_8
    nop

    goto :goto_7

    :goto_4
    if-eqz v18, :cond_8

    .line 3313
    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_5

    :catch_9
    return v19

    .line 3326
    :cond_8
    :goto_5
    throw v0

    :goto_6
    if-eqz v18, :cond_9

    .line 3313
    :try_start_a
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    nop

    :catch_a
    :cond_9
    return v19

    :goto_7
    if-eqz v18, :cond_a

    :try_start_b
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    nop

    :catch_b
    :cond_a
    return v19

    .line 3411
    :cond_b
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 3412
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 3413
    invoke-virtual {v5, v6, v15}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3414
    invoke-virtual {v5, v14, v8}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    long-to-double v14, v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 3415
    invoke-virtual {v5, v7, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3418
    invoke-virtual {v5, v13, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3419
    invoke-virtual {v5, v12, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3420
    invoke-virtual {v5, v11, v10}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3425
    :try_start_c
    invoke-virtual {v1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 3426
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 3427
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_c} :catch_13
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_c .. :try_end_c} :catch_12
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_11
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 3428
    :try_start_d
    invoke-virtual {v2, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 3429
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 3430
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 3432
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 3433
    invoke-virtual {v5, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 3435
    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 3437
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 3438
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_d} :catch_10
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_d .. :try_end_d} :catch_f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_c

    const/16 v1, 0x257

    if-gt v0, v1, :cond_c

    .line 3482
    :try_start_e
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    :catch_c
    return v19

    :cond_c
    :try_start_f
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    :catch_d
    :cond_d
    :goto_8
    const/4 v0, 0x1

    return v0

    :catchall_6
    move-exception v0

    move-object/from16 v18, v2

    goto :goto_9

    :catch_e
    move-object/from16 v18, v2

    goto :goto_a

    :catch_f
    move-object/from16 v18, v2

    goto :goto_b

    :catch_10
    move-object/from16 v18, v2

    goto :goto_c

    :catchall_7
    move-exception v0

    goto :goto_9

    :catch_11
    nop

    goto :goto_a

    :catch_12
    nop

    goto :goto_b

    :catch_13
    nop

    goto :goto_c

    :goto_9
    if-eqz v18, :cond_e

    :try_start_10
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_14

    .line 3493
    :catch_14
    :cond_e
    throw v0

    :goto_a
    if-eqz v18, :cond_f

    .line 3482
    :try_start_11
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_15

    :catch_15
    :cond_f
    return v19

    :goto_b
    if-eqz v18, :cond_10

    :try_start_12
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_16

    :catch_16
    :cond_10
    return v19

    :goto_c
    if-eqz v18, :cond_11

    :try_start_13
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_17

    :catch_17
    :cond_11
    return v19

    .line 3248
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "body cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3243
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const-string v0, "upload_callback"

    .line 3134
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 3136
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 3204
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$UploadHandler;->mSessionHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/localytics/android/LocalyticsSession$UploadHandler;->mSessionHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 3212
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Fell through switch statement"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3148
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x5

    .line 3152
    :try_start_1
    iget-object v2, p0, Lcom/localytics/android/LocalyticsSession$UploadHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/localytics/android/LocalyticsSession$UploadHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    iget-object v4, p0, Lcom/localytics/android/LocalyticsSession$UploadHandler;->mApiKey:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/localytics/android/LocalyticsSession$UploadHandler;->convertDatabaseToJson(Landroid/content/Context;Lcom/localytics/android/LocalyticsProvider;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 3154
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 3156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3157
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 3159
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    .line 3160
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3163
    :cond_2
    iget-object v2, p0, Lcom/localytics/android/LocalyticsSession$UploadHandler;->mApiKey:Ljava/lang/String;

    .line 3164
    iget-object v4, p0, Lcom/localytics/android/LocalyticsSession$UploadHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/localytics/android/DatapointHelper;->getLocalyticsRollupKeyOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 3165
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    move-object v2, v4

    :cond_3
    const-string v4, "https://analytics.localytics.com/api/v2/uploads"

    .line 3170
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/localytics/android/LocalyticsSession$UploadHandler;->mInstallId:Ljava/lang/String;

    invoke-static {v4, v3, v5, v2}, Lcom/localytics/android/LocalyticsSession$UploadHandler;->uploadSessions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3172
    iget-object v2, p0, Lcom/localytics/android/LocalyticsSession$UploadHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    new-instance v3, Lcom/localytics/android/LocalyticsSession$UploadHandler$1;

    invoke-direct {v3, p0}, Lcom/localytics/android/LocalyticsSession$UploadHandler$1;-><init>(Lcom/localytics/android/LocalyticsSession$UploadHandler;)V

    invoke-virtual {v2, v3}, Lcom/localytics/android/LocalyticsProvider;->runBatchTransaction(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    if-eqz p1, :cond_5

    .line 3190
    :try_start_2
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 3193
    :cond_5
    iget-object p1, p0, Lcom/localytics/android/LocalyticsSession$UploadHandler;->mSessionHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz p1, :cond_6

    .line 3190
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 3193
    :cond_6
    iget-object p1, p0, Lcom/localytics/android/LocalyticsSession$UploadHandler;->mSessionHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3194
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_1
    return-void
.end method
