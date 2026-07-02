.class final Lcom/localytics/android/LocalyticsProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LocalyticsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/LocalyticsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final SQLITE_BOOLEAN_FALSE:Ljava/lang/String; = "0"

.field private static final SQLITE_BOOLEAN_TRUE:Ljava/lang/String; = "1"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 518
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 520
    iput-object p1, p0, Lcom/localytics/android/LocalyticsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    const/16 v2, 0xa

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "api_keys"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v6, 0x1

    const-string v7, "_id"

    aput-object v7, v3, v6

    const-string v8, "api_key"

    const/4 v9, 0x2

    aput-object v8, v3, v9

    const-string v8, "uuid"

    const/4 v10, 0x3

    aput-object v8, v3, v10

    const-string v11, "created_time"

    const/4 v12, 0x4

    aput-object v11, v3, v12

    const/4 v13, 0x5

    aput-object v11, v3, v13

    const-string v11, "opt_out"

    const/4 v14, 0x6

    aput-object v11, v3, v14

    const/4 v15, 0x7

    aput-object v11, v3, v15

    const-string v11, "0"

    const/16 v2, 0x8

    aput-object v11, v3, v2

    const-string v11, "1"

    const/16 v17, 0x9

    aput-object v11, v3, v17

    const-string v11, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT UNIQUE NOT NULL, %s TEXT UNIQUE NOT NULL, %s INTEGER NOT NULL CHECK (%s >= 0), %s INTEGER NOT NULL CHECK(%s IN (%s, %s)));"

    .line 541
    invoke-static {v11, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v3, 0x1d

    new-array v3, v3, [Ljava/lang/Object;

    const-string v11, "sessions"

    aput-object v11, v3, v5

    aput-object v7, v3, v6

    const-string v18, "api_key_ref"

    aput-object v18, v3, v9

    aput-object v4, v3, v10

    aput-object v7, v3, v12

    aput-object v8, v3, v13

    const-string v4, "session_start_wall_time"

    aput-object v4, v3, v14

    aput-object v4, v3, v15

    const-string v4, "localytics_library_version"

    aput-object v4, v3, v2

    const-string v4, "iu"

    aput-object v4, v3, v17

    const-string v4, "app_version"

    const/16 v16, 0xa

    aput-object v4, v3, v16

    const-string v4, "android_version"

    const/16 v2, 0xb

    aput-object v4, v3, v2

    const-string v4, "android_sdk"

    const/16 v19, 0xc

    aput-object v4, v3, v19

    const-string v4, "device_model"

    const/16 v20, 0xd

    aput-object v4, v3, v20

    const/16 v4, 0xe

    const-string v21, "device_manufacturer"

    aput-object v21, v3, v4

    const/16 v4, 0xf

    const-string v21, "device_android_id_hash"

    aput-object v21, v3, v4

    const/16 v4, 0x10

    const-string v21, "device_telephony_id"

    aput-object v21, v3, v4

    const/16 v4, 0x11

    const-string v21, "device_telephony_id_hash"

    aput-object v21, v3, v4

    const/16 v4, 0x12

    const-string v21, "device_serial_number_hash"

    aput-object v21, v3, v4

    const/16 v4, 0x13

    const-string v21, "device_wifi_mac_hash"

    aput-object v21, v3, v4

    const/16 v4, 0x14

    const-string v21, "locale_language"

    aput-object v21, v3, v4

    const/16 v4, 0x15

    const-string v21, "locale_country"

    aput-object v21, v3, v4

    const/16 v4, 0x16

    const-string v21, "network_carrier"

    aput-object v21, v3, v4

    const/16 v4, 0x17

    const-string v21, "network_country"

    aput-object v21, v3, v4

    const/16 v4, 0x18

    const-string v21, "network_type"

    aput-object v21, v3, v4

    const/16 v4, 0x19

    const-string v21, "device_country"

    aput-object v21, v3, v4

    const/16 v4, 0x1a

    const-string v21, "latitude"

    aput-object v21, v3, v4

    const/16 v4, 0x1b

    const-string v21, "longitude"

    aput-object v21, v3, v4

    const/16 v4, 0x1c

    const-string v21, "device_android_id"

    aput-object v21, v3, v4

    const-string v4, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER REFERENCES %s(%s) NOT NULL, %s TEXT UNIQUE NOT NULL, %s INTEGER NOT NULL CHECK (%s >= 0), %s TEXT NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT NOT NULL, %s TEXT NOT NULL, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT);"

    .line 544
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v3, 0xe

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "events"

    aput-object v4, v3, v5

    aput-object v7, v3, v6

    const-string v21, "session_key_ref"

    aput-object v21, v3, v9

    aput-object v11, v3, v10

    aput-object v7, v3, v12

    aput-object v8, v3, v13

    const-string v21, "event_name"

    aput-object v21, v3, v14

    const-string v21, "real_time"

    aput-object v21, v3, v15

    const-string v21, "real_time"

    const/16 v18, 0x8

    aput-object v21, v3, v18

    const-string v21, "wall_time"

    aput-object v21, v3, v17

    const-string v21, "wall_time"

    const/16 v16, 0xa

    aput-object v21, v3, v16

    const-string v21, "clv_increase"

    aput-object v21, v3, v2

    const-string v21, "event_lat"

    aput-object v21, v3, v19

    const-string v19, "event_lng"

    aput-object v19, v3, v20

    const-string v15, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER REFERENCES %s(%s) NOT NULL, %s TEXT UNIQUE NOT NULL, %s TEXT NOT NULL, %s INTEGER NOT NULL CHECK (%s >= 0), %s INTEGER NOT NULL CHECK (%s >= 0), %s INTEGER NOT NULL DEFAULT 0, %s REAL, %s REAL);"

    .line 547
    invoke-static {v15, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "event_history"

    aput-object v3, v2, v5

    aput-object v7, v2, v6

    const-string v3, "session_key_ref"

    aput-object v3, v2, v9

    aput-object v11, v2, v10

    aput-object v7, v2, v12

    const-string v3, "type"

    aput-object v3, v2, v13

    const-string v3, "type"

    aput-object v3, v2, v14

    .line 554
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v11, 0x7

    aput-object v3, v2, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v15, 0x8

    aput-object v3, v2, v15

    const-string v3, "name"

    aput-object v3, v2, v17

    const-string v3, "processed_in_blob"

    const/16 v15, 0xa

    aput-object v3, v2, v15

    const-string v3, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER REFERENCES %s(%s) NOT NULL, %s TEXT NOT NULL CHECK(%s IN (%s, %s)), %s TEXT NOT NULL, %s INTEGER);"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array v2, v11, [Ljava/lang/Object;

    const-string v3, "attributes"

    aput-object v3, v2, v5

    aput-object v7, v2, v6

    const-string v3, "events_key_ref"

    aput-object v3, v2, v9

    aput-object v4, v2, v10

    aput-object v7, v2, v12

    const-string v3, "attribute_key"

    aput-object v3, v2, v13

    const-string v3, "attribute_value"

    aput-object v3, v2, v14

    const-string v3, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER REFERENCES %s(%s) NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL);"

    .line 558
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array v2, v10, [Ljava/lang/Object;

    const-string v3, "upload_blobs"

    aput-object v3, v2, v5

    aput-object v7, v2, v6

    aput-object v8, v2, v9

    const-string v3, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT UNIQUE NOT NULL);"

    .line 561
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v2, 0x8

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "upload_blob_events"

    aput-object v2, v3, v5

    aput-object v7, v3, v6

    const-string v2, "upload_blobs_key_ref"

    aput-object v2, v3, v9

    const-string v2, "upload_blobs"

    aput-object v2, v3, v10

    aput-object v7, v3, v12

    const-string v2, "events_key_ref"

    aput-object v2, v3, v13

    aput-object v4, v3, v14

    const/4 v2, 0x7

    aput-object v7, v3, v2

    const-string v2, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER REFERENCES %s(%s) NOT NULL, %s INTEGER REFERENCES %s(%s) NOT NULL);"

    .line 564
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "info"

    aput-object v3, v2, v5

    aput-object v7, v2, v6

    const-string v3, "fb_attribution"

    aput-object v3, v2, v9

    const-string v3, "play_attribution"

    aput-object v3, v2, v10

    const-string v3, "registration_id"

    aput-object v3, v2, v12

    const-string v3, "registration_version"

    aput-object v3, v2, v13

    const-string v3, "first_android_id"

    aput-object v3, v2, v14

    const-string v3, "first_telephony_id"

    const/4 v4, 0x7

    aput-object v3, v2, v4

    const-string v3, "package_name"

    const/16 v4, 0x8

    aput-object v3, v2, v4

    const-string v3, "first_run"

    aput-object v3, v2, v17

    const-string v3, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s INTEGER);"

    .line 567
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 568
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 569
    iget-object v3, v0, Lcom/localytics/android/LocalyticsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/localytics/android/DatapointHelper;->getFBAttribution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fb_attribution"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "first_run"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 571
    iget-object v3, v0, Lcom/localytics/android/LocalyticsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/localytics/android/DatapointHelper;->getAndroidIdOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "first_android_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v3, v0, Lcom/localytics/android/LocalyticsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/localytics/android/DatapointHelper;->getTelephonyDeviceIdOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "first_telephony_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v3, v0, Lcom/localytics/android/LocalyticsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "package_name"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v4, "info"

    .line 574
    invoke-virtual {v1, v4, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    new-array v2, v12, [Ljava/lang/Object;

    const-string v3, "identifiers"

    aput-object v3, v2, v5

    aput-object v7, v2, v6

    const-string v3, "key"

    aput-object v3, v2, v9

    const-string v3, "value"

    aput-object v3, v2, v10

    const-string v3, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT UNIQUE NOT NULL, %s TEXT NOT NULL);"

    .line 577
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    .line 537
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "db cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 583
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 590
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PRAGMA foreign_keys = ON;"

    .line 595
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v10, p2

    const-string v11, "attribute_key"

    const-string v12, "attributes"

    const/4 v13, 0x3

    const-string v14, "sessions"

    const-string v15, "events"

    const/4 v9, 0x0

    if-ge v10, v13, :cond_0

    const-string v2, "upload_blob_events"

    .line 621
    invoke-virtual {v0, v2, v9, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v2, "event_history"

    .line 622
    invoke-virtual {v0, v2, v9, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v2, "upload_blobs"

    .line 623
    invoke-virtual {v0, v2, v9, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 624
    invoke-virtual {v0, v12, v9, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 625
    invoke-virtual {v0, v15, v9, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 626
    invoke-virtual {v0, v14, v9, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    const/4 v8, 0x4

    const-string v7, "ALTER TABLE %s ADD COLUMN %s TEXT;"

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v16, 0x0

    if-ge v10, v8, :cond_1

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v14, v2, v16

    const-string v3, "iu"

    aput-object v3, v2, v5

    .line 633
    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x5

    if-ge v10, v2, :cond_2

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v14, v2, v16

    const-string v3, "device_wifi_mac_hash"

    aput-object v3, v2, v5

    .line 638
    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x6

    const-string v4, "_id"

    if-ge v10, v2, :cond_5

    :try_start_0
    const-string v3, "attributes"

    .line 646
    filled-new-array {v4, v11}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v2, p1

    move-object v13, v4

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v23, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v17, v14

    move-object v14, v9

    move-object/from16 v9, v22

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 651
    :try_start_1
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 652
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 654
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "%s = ?"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v13, v7, v16

    .line 655
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/String;

    const/4 v8, -0x1

    .line 658
    invoke-interface {v9, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 659
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "%s:%s"

    const/4 v14, 0x2

    new-array v6, v14, [Ljava/lang/Object;

    .line 661
    iget-object v14, v1, Lcom/localytics/android/LocalyticsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v16

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v19, 0x1

    aput-object v14, v6, v19

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v16

    .line 664
    invoke-virtual {v0, v12, v4, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 666
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x1

    const/4 v14, 0x0

    goto :goto_0

    :cond_3
    if-eqz v9, :cond_6

    .line 673
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 676
    :cond_4
    throw v0

    :cond_5
    move-object v13, v4

    move-object/from16 v23, v7

    move-object/from16 v17, v14

    :cond_6
    :goto_2
    const/4 v2, 0x7

    const-string v3, "info"

    if-ge v10, v2, :cond_7

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v3, v4, v16

    const-string v2, "fb_attribution"

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const-string v5, "first_run"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const-string v6, "CREATE TABLE IF NOT EXISTS %s (%s TEXT, %s INTEGER);"

    .line 682
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 683
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 684
    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 685
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v2, 0x0

    .line 686
    invoke-virtual {v0, v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_7
    const/16 v2, 0x8

    if-ge v10, v2, :cond_8

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "identifiers"

    aput-object v4, v2, v16

    const/4 v4, 0x1

    aput-object v13, v2, v4

    const-string v4, "key"

    const/4 v5, 0x2

    aput-object v4, v2, v5

    const-string v4, "value"

    const/4 v6, 0x3

    aput-object v4, v2, v6

    const-string v4, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT UNIQUE NOT NULL, %s TEXT NOT NULL);"

    .line 692
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const/4 v5, 0x2

    :goto_3
    const/16 v2, 0x9

    if-ge v10, v2, :cond_9

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v15, v2, v16

    const-string v4, "clv_increase"

    const/4 v6, 0x1

    aput-object v4, v2, v6

    const-string v4, "ALTER TABLE %s ADD COLUMN %s INTEGER NOT NULL DEFAULT 0;"

    .line 698
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    const/4 v6, 0x1

    :goto_4
    const/16 v2, 0xa

    if-ge v10, v2, :cond_a

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v3, v2, v16

    const-string v4, "play_attribution"

    aput-object v4, v2, v6

    move-object/from16 v4, v23

    .line 704
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    move-object/from16 v4, v23

    :goto_5
    const/16 v2, 0xb

    if-ge v10, v2, :cond_b

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v3, v2, v16

    const-string v7, "registration_id"

    aput-object v7, v2, v6

    .line 710
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v3, v2, v16

    const-string v7, "registration_version"

    aput-object v7, v2, v6

    .line 711
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_b
    const/16 v2, 0xc

    if-ge v10, v2, :cond_c

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v3, v2, v16

    const-string v7, "first_android_id"

    aput-object v7, v2, v6

    .line 717
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v3, v2, v16

    const-string v8, "first_telephony_id"

    aput-object v8, v2, v6

    .line 718
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v3, v2, v16

    const-string v5, "package_name"

    aput-object v5, v2, v6

    .line 719
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 720
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 721
    iget-object v6, v1, Lcom/localytics/android/LocalyticsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/localytics/android/DatapointHelper;->getAndroidIdOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v6, v1, Lcom/localytics/android/LocalyticsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/localytics/android/DatapointHelper;->getTelephonyDeviceIdOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object v6, v1, Lcom/localytics/android/LocalyticsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 724
    invoke-virtual {v0, v3, v2, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v17, v3, v16

    const-string v5, "device_android_id"

    const/4 v6, 0x1

    aput-object v5, v3, v6

    .line 727
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    const/4 v2, 0x2

    :goto_6
    const/16 v3, 0xd

    if-ge v10, v3, :cond_d

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v15, v3, v16

    const-string v4, "event_lat"

    aput-object v4, v3, v6

    const-string v4, "ALTER TABLE %s ADD COLUMN %s REAL;"

    .line 733
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v15, v2, v16

    const-string v3, "event_lng"

    aput-object v3, v2, v6

    .line 734
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_d
    return-void
.end method
