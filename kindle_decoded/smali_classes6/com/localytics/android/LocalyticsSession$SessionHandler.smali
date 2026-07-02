.class final Lcom/localytics/android/LocalyticsSession$SessionHandler;
.super Landroid/os/Handler;
.source "LocalyticsSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/LocalyticsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SessionHandler"
.end annotation


# static fields
.field private static final EVENTS_SORT_ORDER:Ljava/lang/String;

.field private static final JOINER_ARG_UPLOAD_EVENTS_COLUMNS:[Ljava/lang/String;

.field private static final PROJECTION_FLOW_BLOBS:[Ljava/lang/String;

.field private static final PROJECTION_FLOW_EVENTS:[Ljava/lang/String;

.field private static final PROJECTION_GET_INSTALLATION_ID:[Ljava/lang/String;

.field private static final PROJECTION_GET_NUMBER_OF_SESSIONS:[Ljava/lang/String;

.field private static final PROJECTION_GET_OPEN_SESSION_ID_EVENT_COUNT:[Ljava/lang/String;

.field private static final PROJECTION_GET_OPEN_SESSION_ID_SESSION_ID:[Ljava/lang/String;

.field private static final PROJECTION_INIT_API_KEY:[Ljava/lang/String;

.field private static final PROJECTION_IS_OPTED_OUT:[Ljava/lang/String;

.field private static final PROJECTION_OPEN_BLOB_EVENTS:[Ljava/lang/String;

.field private static final PROJECTION_OPEN_CLOSED_SESSION:[Ljava/lang/String;

.field private static final PROJECTION_OPEN_DELETE_EMPTIES_EVENT_ID:[Ljava/lang/String;

.field private static final PROJECTION_OPEN_DELETE_EMPTIES_PROCESSED_IN_BLOB:[Ljava/lang/String;

.field private static final PROJECTION_OPEN_EVENT_ID:[Ljava/lang/String;

.field private static final PROJECTION_OPEN_SESSIONS:[Ljava/lang/String;

.field private static final PROJECTION_SET_IDENTIFIER:[Ljava/lang/String;

.field private static final PROJECTION_TAG_EVENT:[Ljava/lang/String;

.field private static final PROJECTION_TAG_SCREEN:[Ljava/lang/String;

.field private static final PROJECTION_UPLOAD_BLOBS:[Ljava/lang/String;

.field private static final PROJECTION_UPLOAD_EVENTS:[Ljava/lang/String;

.field private static final SELECTION_ARGS_FLOW_EVENTS:[Ljava/lang/String;

.field private static final SELECTION_FLOW_EVENTS:Ljava/lang/String;

.field private static final SELECTION_GET_INSTALLATION_ID:Ljava/lang/String;

.field private static final SELECTION_GET_OPEN_SESSION_ID_EVENT_COUNT:Ljava/lang/String;

.field private static final SELECTION_INIT_API_KEY:Ljava/lang/String;

.field private static final SELECTION_IS_OPTED_OUT:Ljava/lang/String;

.field private static final SELECTION_OPEN:Ljava/lang/String;

.field private static final SELECTION_OPEN_CLOSED_SESSION:Ljava/lang/String;

.field private static final SELECTION_OPEN_CLOSED_SESSION_ATTRIBUTES:Ljava/lang/String;

.field private static final SELECTION_OPEN_DELETE_EMPTIES_EVENTS_SESSION_KEY_REF:Ljava/lang/String;

.field private static final SELECTION_OPEN_DELETE_EMPTIES_EVENT_HISTORY_SESSION_KEY_REF:Ljava/lang/String;

.field private static final SELECTION_OPEN_DELETE_EMPTIES_SESSIONS_ID:Ljava/lang/String;

.field private static final SELECTION_OPEN_DELETE_EMPTIES_UPLOAD_BLOBS_ID:Ljava/lang/String;

.field private static final SELECTION_OPEN_NEW_SESSION:Ljava/lang/String;

.field private static final SELECTION_OPT_IN_OUT:Ljava/lang/String;

.field private static final SELECTION_SET_IDENTIFIER:Ljava/lang/String;

.field private static final SELECTION_TAG_EVENT:Ljava/lang/String;

.field private static final SELECTION_TAG_SCREEN:Ljava/lang/String;

.field private static final SELECTION_UPLOAD_NULL_BLOBS:Ljava/lang/String;

.field private static final SORT_ORDER_TAG_SCREEN:Ljava/lang/String;

.field private static final UPLOAD_BLOBS_EVENTS_SORT_ORDER:Ljava/lang/String;


# instance fields
.field private final mApiKey:Ljava/lang/String;

.field private mApiKeyId:J

.field private final mContext:Landroid/content/Context;

.field private final mDeviceIdSeed:Ljava/lang/String;

.field protected mProvider:Lcom/localytics/android/LocalyticsProvider;

.field private mUploadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "events_key_ref"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v4, "CAST(%s AS TEXT)"

    .line 1194
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->UPLOAD_BLOBS_EVENTS_SORT_ORDER:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "_id"

    aput-object v4, v1, v3

    const-string v5, "CAST(%s as TEXT)"

    .line 1201
    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->EVENTS_SORT_ORDER:Ljava/lang/String;

    const-string v1, "uuid"

    const-string v5, "opt_out"

    .line 1619
    filled-new-array {v4, v5, v1}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_INIT_API_KEY:[Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "api_key"

    aput-object v7, v6, v3

    const-string v8, "%s = ?"

    .line 1628
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_INIT_API_KEY:Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v4, v6, v3

    .line 1700
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_OPT_IN_OUT:Ljava/lang/String;

    .line 1756
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_GET_OPEN_SESSION_ID_SESSION_ID:[Ljava/lang/String;

    const-string v6, "_count"

    .line 1762
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_GET_OPEN_SESSION_ID_EVENT_COUNT:[Ljava/lang/String;

    const/4 v6, 0x2

    new-array v9, v6, [Ljava/lang/Object;

    const-string v10, "session_key_ref"

    aput-object v10, v9, v3

    const-string v11, "event_name"

    aput-object v11, v9, v0

    const-string v12, "%s = ? AND %s = ?"

    .line 1768
    invoke-static {v12, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_GET_OPEN_SESSION_ID_EVENT_COUNT:Ljava/lang/String;

    .line 1845
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_OPEN_EVENT_ID:[Ljava/lang/String;

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v11, v9, v3

    const-string v13, "wall_time"

    aput-object v13, v9, v0

    const-string v14, "%s = ? AND %s >= ?"

    .line 1851
    invoke-static {v14, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_OPEN:Ljava/lang/String;

    .line 1856
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_OPEN_BLOB_EVENTS:[Ljava/lang/String;

    const-string v9, "session_start_wall_time"

    .line 1862
    filled-new-array {v4, v9}, [Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_OPEN_SESSIONS:[Ljava/lang/String;

    new-array v14, v0, [Ljava/lang/Object;

    aput-object v7, v14, v3

    .line 1870
    invoke-static {v8, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_OPEN_NEW_SESSION:Ljava/lang/String;

    new-array v14, v0, [Ljava/lang/Object;

    aput-object v10, v14, v3

    .line 1875
    invoke-static {v8, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_OPEN_DELETE_EMPTIES_EVENT_HISTORY_SESSION_KEY_REF:Ljava/lang/String;

    new-array v14, v0, [Ljava/lang/Object;

    aput-object v10, v14, v3

    .line 1880
    invoke-static {v8, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_OPEN_DELETE_EMPTIES_EVENTS_SESSION_KEY_REF:Ljava/lang/String;

    .line 1885
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_OPEN_DELETE_EMPTIES_EVENT_ID:[Ljava/lang/String;

    const-string v14, "processed_in_blob"

    .line 1891
    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_OPEN_DELETE_EMPTIES_PROCESSED_IN_BLOB:[Ljava/lang/String;

    new-array v15, v0, [Ljava/lang/Object;

    aput-object v4, v15, v3

    .line 1897
    invoke-static {v8, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_OPEN_DELETE_EMPTIES_UPLOAD_BLOBS_ID:Ljava/lang/String;

    new-array v15, v0, [Ljava/lang/Object;

    aput-object v4, v15, v3

    .line 1902
    invoke-static {v8, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_OPEN_DELETE_EMPTIES_SESSIONS_ID:Ljava/lang/String;

    .line 2207
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_GET_INSTALLATION_ID:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v7, v1, v3

    .line 2213
    invoke-static {v8, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_GET_INSTALLATION_ID:Ljava/lang/String;

    .line 2283
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_OPEN_CLOSED_SESSION:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v4, v1, v3

    .line 2289
    invoke-static {v8, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_OPEN_CLOSED_SESSION:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v2, v1, v3

    .line 2294
    invoke-static {v8, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_OPEN_CLOSED_SESSION_ATTRIBUTES:Ljava/lang/String;

    .line 2344
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_GET_NUMBER_OF_SESSIONS:[Ljava/lang/String;

    .line 2403
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_TAG_EVENT:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v4, v1, v3

    .line 2409
    invoke-static {v8, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_TAG_EVENT:Ljava/lang/String;

    const-string v1, "name"

    .line 2580
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_TAG_SCREEN:[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v6, "type"

    aput-object v6, v1, v3

    aput-object v10, v1, v0

    .line 2586
    invoke-static {v12, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_TAG_SCREEN:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v4, v1, v3

    const-string v6, "%s DESC"

    .line 2591
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SORT_ORDER_TAG_SCREEN:Ljava/lang/String;

    const-string v1, "value"

    .line 2668
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_SET_IDENTIFIER:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "key"

    aput-object v6, v1, v3

    .line 2674
    invoke-static {v8, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_SET_IDENTIFIER:Ljava/lang/String;

    .line 2731
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_FLOW_EVENTS:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v11, v1, v3

    .line 2737
    invoke-static {v8, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_FLOW_EVENTS:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    .line 2742
    sget-object v6, Lcom/localytics/android/LocalyticsSession;->FLOW_EVENT:Ljava/lang/String;

    aput-object v6, v1, v3

    sput-object v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_ARGS_FLOW_EVENTS:[Ljava/lang/String;

    .line 2748
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_FLOW_BLOBS:[Ljava/lang/String;

    .line 2812
    filled-new-array {v4, v11, v13}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_UPLOAD_EVENTS:[Ljava/lang/String;

    .line 2821
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_UPLOAD_BLOBS:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v14, v1, v3

    const-string v2, "%s IS NULL"

    .line 2827
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_UPLOAD_NULL_BLOBS:Ljava/lang/String;

    .line 2832
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->JOINER_ARG_UPLOAD_EVENTS_COLUMNS:[Ljava/lang/String;

    .line 2987
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_IS_OPTED_OUT:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v7, v0, v3

    .line 2995
    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_IS_OPTED_OUT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0

    .line 1249
    invoke-direct {p0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    if-eqz p1, :cond_1

    .line 1257
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 1263
    iput-object p1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mContext:Landroid/content/Context;

    .line 1264
    iput-object p2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    .line 1265
    iput-object p3, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mDeviceIdSeed:Ljava/lang/String;

    return-void

    .line 1259
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1255
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/localytics/android/LocalyticsSession$SessionHandler;)Landroid/content/Context;
    .locals 0

    .line 1110
    iget-object p0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private conditionallyAddFlowEvent()V
    .locals 9

    const/4 v0, 0x0

    .line 2767
    :try_start_0
    iget-object v1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    const-string v2, "events"

    sget-object v3, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_FLOW_EVENTS:[Ljava/lang/String;

    sget-object v4, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_FLOW_EVENTS:Ljava/lang/String;

    sget-object v5, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_ARGS_FLOW_EVENTS:[Ljava/lang/String;

    sget-object v6, Lcom/localytics/android/LocalyticsSession$SessionHandler;->EVENTS_SORT_ORDER:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2769
    :try_start_1
    iget-object v2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    const-string v3, "upload_blob_events"

    sget-object v4, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_FLOW_BLOBS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/localytics/android/LocalyticsSession$SessionHandler;->UPLOAD_BLOBS_EVENTS_SORT_ORDER:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2771
    :try_start_2
    new-instance v3, Landroid/database/CursorJoiner;

    sget-object v4, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_FLOW_EVENTS:[Ljava/lang/String;

    sget-object v5, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_FLOW_BLOBS:[Ljava/lang/String;

    invoke-direct {v3, v1, v4, v2, v5}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 2772
    invoke-virtual {v3}, Landroid/database/CursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/CursorJoiner$Result;

    .line 2774
    sget-object v6, Lcom/localytics/android/LocalyticsSession$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    invoke-virtual {v5}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v5

    aget v5, v6, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 2792
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v2, :cond_3

    .line 2798
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    if-nez v4, :cond_4

    .line 2805
    sget-object v1, Lcom/localytics/android/LocalyticsSession;->FLOW_EVENT:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_1

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_5

    .line 2792
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v2, :cond_6

    .line 2798
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2801
    :cond_6
    throw v0
.end method

.method static getInstallationId(Lcom/localytics/android/LocalyticsProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "api_keys"

    .line 2223
    sget-object v3, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_GET_INSTALLATION_ID:[Ljava/lang/String;

    sget-object v4, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_GET_INSTALLATION_ID:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2226
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "uuid"

    .line 2228
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 2235
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

    .line 2238
    :cond_3
    throw p1
.end method

.method static getNumberOfSessions(Lcom/localytics/android/LocalyticsProvider;)J
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "sessions"

    .line 2358
    sget-object v3, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_GET_NUMBER_OF_SESSIONS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2360
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v1, p0

    if-eqz v0, :cond_0

    .line 2366
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v1

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2369
    :cond_1
    throw p0
.end method

.method static getOpenSessionId(Lcom/localytics/android/LocalyticsProvider;)Ljava/lang/Long;
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "sessions"

    .line 1790
    sget-object v3, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_GET_OPEN_SESSION_ID_SESSION_ID:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "_id"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1792
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "_id"

    .line 1794
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_0

    .line 1805
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :try_start_2
    const-string v4, "events"

    .line 1817
    sget-object v5, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_GET_OPEN_SESSION_ID_EVENT_COUNT:[Ljava/lang/String;

    sget-object v6, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_GET_OPEN_SESSION_ID_EVENT_COUNT:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v7, v1, [Ljava/lang/String;

    .line 1819
    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    aput-object v1, v7, v9

    const/4 v1, 0x1

    sget-object v3, Lcom/localytics/android/LocalyticsSession;->CLOSE_EVENT:Ljava/lang/String;

    aput-object v3, v7, v1

    const/4 v8, 0x0

    move-object v3, p0

    .line 1817
    invoke-virtual/range {v3 .. v8}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1822
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1824
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_2

    if-eqz p0, :cond_1

    .line 1834
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v2

    :cond_2
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v10, v0

    move-object v0, p0

    move-object p0, v10

    :goto_0
    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1837
    :cond_4
    throw v0

    :cond_5
    if-eqz v1, :cond_6

    .line 1805
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v0

    :catchall_2
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_3
    move-exception p0

    :goto_1
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1808
    :cond_7
    throw p0
.end method

.method static isOptedOut(Lcom/localytics/android/LocalyticsProvider;Ljava/lang/String;)Z
    .locals 9

    if-eqz p0, :cond_6

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "api_keys"

    .line 3023
    sget-object v3, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_IS_OPTED_OUT:[Ljava/lang/String;

    sget-object v4, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_IS_OPTED_OUT:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v5, v8

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3026
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "opt_out"

    .line 3028
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3035
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v7

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return v8

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3038
    :cond_4
    throw p0

    .line 3016
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "apiKey cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3011
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "provider cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private openClosedSession(J)V
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 2305
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const/4 p1, 0x0

    .line 2310
    :try_start_0
    iget-object v1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    const-string v2, "events"

    sget-object v3, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_OPEN_CLOSED_SESSION:[Ljava/lang/String;

    sget-object v4, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_OPEN_CLOSED_SESSION:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2312
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2314
    iget-object p1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    const-string v1, "attributes"

    sget-object v2, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_OPEN_CLOSED_SESSION_ATTRIBUTES:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Lcom/localytics/android/LocalyticsProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2315
    iget-object p1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    const-string v1, "events"

    sget-object v2, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_OPEN_CLOSED_SESSION:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Lcom/localytics/android/LocalyticsProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 2328
    :cond_0
    invoke-direct {p0, p1}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->openNewSession(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p2, :cond_1

    .line 2335
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :goto_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 2338
    :cond_2
    throw p1
.end method

.method private openNewSession(Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2137
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2139
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2140
    iget-wide v2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mApiKeyId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "api_key_ref"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "session_start_wall_time"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2142
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uuid"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    iget-object v2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/localytics/android/DatapointHelper;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "app_version"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    sget v2, Lcom/localytics/android/Constants;->CURRENT_API_LEVEL:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "android_sdk"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2145
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v4, "android_version"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    iget-object v2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mDeviceIdSeed:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/localytics/android/DatapointHelper;->getAndroidIdHashOrNull(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v4, 0x0

    .line 2154
    :try_start_0
    iget-object v5, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    const-string v6, "api_keys"

    const/4 v7, 0x0

    sget-object v8, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_OPEN_NEW_SESSION:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 2156
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2158
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v4, :cond_2

    .line 2165
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2168
    :cond_1
    throw p1

    :cond_2
    :goto_0
    const-string v3, "device_android_id_hash"

    .line 2171
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2172
    iget-object v2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/localytics/android/DatapointHelper;->getAndroidIdOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "device_android_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2173
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    const-string v3, "device_country"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    const-string v3, "device_manufacturer"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2175
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "device_model"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    iget-object v2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/localytics/android/DatapointHelper;->getTelephonyDeviceIdOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "device_telephony_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "device_telephony_id_hash"

    .line 2177
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2178
    iget-object v2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/localytics/android/DatapointHelper;->getWifiMacHashOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "device_wifi_mac_hash"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2179
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "locale_country"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2180
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "locale_language"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "localytics_library_version"

    const-string v3, "android_2.17"

    .line 2181
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2182
    iget-object v2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    iget-object v3, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->getInstallationId(Lcom/localytics/android/LocalyticsProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "iu"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "latitude"

    .line 2184
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v2, "longitude"

    .line 2185
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2186
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "network_carrier"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2187
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    const-string v3, "network_country"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    iget-object v2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/localytics/android/DatapointHelper;->getNetworkType(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "network_type"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    const-string v2, "sessions"

    invoke-virtual {v0, v2, v1}, Lcom/localytics/android/LocalyticsProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 2196
    sget-object v0, Lcom/localytics/android/LocalyticsSession;->OPEN_EVENT:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 2201
    iget-object p1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/localytics/android/LocalyticsProvider;->deleteOldFiles(Landroid/content/Context;)V

    return-void

    .line 2193
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "session insert failed"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method static preUploadBuildBlobs(Lcom/localytics/android/LocalyticsProvider;)V
    .locals 11

    .line 2853
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "events"

    .line 2859
    sget-object v4, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_UPLOAD_EVENTS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/localytics/android/LocalyticsSession$SessionHandler;->EVENTS_SORT_ORDER:Ljava/lang/String;

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v4, "upload_blob_events"

    .line 2861
    sget-object v5, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_UPLOAD_BLOBS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/localytics/android/LocalyticsSession$SessionHandler;->UPLOAD_BLOBS_EVENTS_SORT_ORDER:Ljava/lang/String;

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v4, "_id"

    .line 2863
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 2864
    new-instance v5, Landroid/database/CursorJoiner;

    sget-object v6, Lcom/localytics/android/LocalyticsSession$SessionHandler;->JOINER_ARG_UPLOAD_EVENTS_COLUMNS:[Ljava/lang/String;

    sget-object v7, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_UPLOAD_BLOBS:[Ljava/lang/String;

    invoke-direct {v5, v2, v6, v3, v7}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 2865
    invoke-virtual {v5}, Landroid/database/CursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/CursorJoiner$Result;

    .line 2867
    sget-object v7, Lcom/localytics/android/LocalyticsSession$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    invoke-virtual {v6}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v6

    aget v6, v7, v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    goto :goto_0

    .line 2871
    :cond_0
    sget-object v6, Lcom/localytics/android/LocalyticsSession;->CLOSE_EVENT:Ljava/lang/String;

    const-string v7, "event_name"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2873
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v8, "wall_time"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3a98

    cmp-long v10, v6, v8

    if-gez v10, :cond_1

    goto :goto_0

    .line 2878
    :cond_1
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 2892
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v3, :cond_4

    .line 2898
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2903
    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 2906
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2910
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "uuid"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "upload_blobs"

    .line 2911
    invoke-virtual {p0, v3, v2}, Lcom/localytics/android/LocalyticsProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2912
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 2915
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    const-string v5, "upload_blobs_key_ref"

    .line 2917
    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "events_key_ref"

    .line 2918
    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "upload_blob_events"

    .line 2920
    invoke-virtual {p0, v4, v2}, Lcom/localytics/android/LocalyticsProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2922
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    goto :goto_1

    :cond_5
    const-string v0, "processed_in_blob"

    .line 2925
    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2926
    sget-object v0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_UPLOAD_NULL_BLOBS:Ljava/lang/String;

    const-string v3, "event_history"

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/localytics/android/LocalyticsProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2927
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v3, v1

    :goto_2
    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object v3, v1

    :goto_3
    if-eqz v1, :cond_7

    .line 2892
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v3, :cond_8

    .line 2898
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2901
    :cond_8
    throw p0
.end method


# virtual methods
.method close(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2388
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    invoke-static {v0}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->getOpenSessionId(Lcom/localytics/android/LocalyticsProvider;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2397
    :cond_0
    sget-object v0, Lcom/localytics/android/LocalyticsSession;->CLOSE_EVENT:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1273
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1280
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1598
    new-instance p1, Ljava/lang/RuntimeException;

    goto/16 :goto_1

    .line 1548
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1550
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    new-instance v1, Lcom/localytics/android/LocalyticsSession$SessionHandler$8;

    invoke-direct {v1, p0, p1}, Lcom/localytics/android/LocalyticsSession$SessionHandler$8;-><init>(Lcom/localytics/android/LocalyticsSession$SessionHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/LocalyticsProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 1496
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1498
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    new-instance v1, Lcom/localytics/android/LocalyticsSession$SessionHandler$7;

    invoke-direct {v1, p0, p1}, Lcom/localytics/android/LocalyticsSession$SessionHandler$7;-><init>(Lcom/localytics/android/LocalyticsSession$SessionHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/LocalyticsProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 1474
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/localytics/android/LocalyticsSession$Pair;

    .line 1475
    iget-object v0, p1, Lcom/localytics/android/LocalyticsSession$Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1476
    iget-object p1, p1, Lcom/localytics/android/LocalyticsSession$Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1478
    iget-object v1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    new-instance v2, Lcom/localytics/android/LocalyticsSession$SessionHandler$6;

    invoke-direct {v2, p0, v0, p1}, Lcom/localytics/android/LocalyticsSession$SessionHandler$6;-><init>(Lcom/localytics/android/LocalyticsSession$SessionHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/localytics/android/LocalyticsProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 1454
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1456
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    new-instance v1, Lcom/localytics/android/LocalyticsSession$SessionHandler$5;

    invoke-direct {v1, p0, p1}, Lcom/localytics/android/LocalyticsSession$SessionHandler$5;-><init>(Lcom/localytics/android/LocalyticsSession$SessionHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/LocalyticsProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 1300
    :pswitch_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1302
    :goto_0
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    new-instance v1, Lcom/localytics/android/LocalyticsSession$SessionHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/localytics/android/LocalyticsSession$SessionHandler$1;-><init>(Lcom/localytics/android/LocalyticsSession$SessionHandler;Z)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/LocalyticsProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 1589
    :pswitch_5
    sget-object p1, Lcom/localytics/android/LocalyticsSession;->sIsUploadingMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1570
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    .line 1572
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    new-instance v1, Lcom/localytics/android/LocalyticsSession$SessionHandler$9;

    invoke-direct {v1, p0, p1}, Lcom/localytics/android/LocalyticsSession$SessionHandler$9;-><init>(Lcom/localytics/android/LocalyticsSession$SessionHandler;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/LocalyticsProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 1356
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/localytics/android/LocalyticsSession$Triple;

    .line 1358
    iget-object v0, p1, Lcom/localytics/android/LocalyticsSession$Triple;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1359
    iget-object v1, p1, Lcom/localytics/android/LocalyticsSession$Triple;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    .line 1360
    iget-object p1, p1, Lcom/localytics/android/LocalyticsSession$Triple;->third:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    .line 1362
    iget-object v2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    new-instance v3, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;-><init>(Lcom/localytics/android/LocalyticsSession$SessionHandler;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V

    invoke-virtual {v2, v3}, Lcom/localytics/android/LocalyticsProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 1337
    :pswitch_8
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    new-instance v1, Lcom/localytics/android/LocalyticsSession$SessionHandler$3;

    invoke-direct {v1, p0, p1}, Lcom/localytics/android/LocalyticsSession$SessionHandler$3;-><init>(Lcom/localytics/android/LocalyticsSession$SessionHandler;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/LocalyticsProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 1319
    :pswitch_9
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    new-instance v1, Lcom/localytics/android/LocalyticsSession$SessionHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/localytics/android/LocalyticsSession$SessionHandler$2;-><init>(Lcom/localytics/android/LocalyticsSession$SessionHandler;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/LocalyticsProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 1289
    :pswitch_a
    invoke-virtual {p0}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->init()V

    goto :goto_2

    :goto_1
    const-string v0, "Fell through switch statement"

    .line 1598
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method init()V
    .locals 9

    .line 1642
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/localytics/android/LocalyticsProvider;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/localytics/android/LocalyticsProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    const/4 v0, 0x0

    :try_start_0
    const-string v3, "api_keys"

    .line 1647
    sget-object v4, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_INIT_API_KEY:[Ljava/lang/String;

    sget-object v5, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_INIT_API_KEY:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    aput-object v7, v6, v1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1650
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_id"

    .line 1658
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mApiKeyId:J

    goto :goto_0

    .line 1668
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "api_key"

    .line 1669
    iget-object v3, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "uuid"

    .line 1670
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "opt_out"

    .line 1671
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "created_time"

    .line 1672
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1674
    iget-object v2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    const-string v3, "api_keys"

    invoke-virtual {v2, v3, v1}, Lcom/localytics/android/LocalyticsProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mApiKeyId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    .line 1681
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1686
    :cond_1
    sget-object v0, Lcom/localytics/android/LocalyticsSession;->sIsUploadingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1688
    sget-object v0, Lcom/localytics/android/LocalyticsSession;->sIsUploadingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1694
    :cond_2
    new-instance v0, Lcom/localytics/android/LocalyticsSession$UploadHandler;

    iget-object v4, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    invoke-static {v1, v6}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->getInstallationId(Lcom/localytics/android/LocalyticsProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v1, Lcom/localytics/android/LocalyticsSession;->sUploadHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    move-object v3, v0

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Lcom/localytics/android/LocalyticsSession$UploadHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mUploadHandler:Landroid/os/Handler;

    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 1681
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1684
    :cond_3
    throw v1
.end method

.method open(ZLjava/util/Map;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "_id"

    .line 1920
    iget-object v2, v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    invoke-static {v2}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->getOpenSessionId(Lcom/localytics/android/LocalyticsProvider;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    return-void

    .line 1930
    :cond_0
    iget-object v2, v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    iget-object v3, v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->isOptedOut(Lcom/localytics/android/LocalyticsProvider;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 1951
    :try_start_0
    iget-object v3, v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    const-string v4, "events"

    sget-object v5, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_OPEN_EVENT_ID:[Ljava/lang/String;

    sget-object v6, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_OPEN:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    sget-object v8, Lcom/localytics/android/LocalyticsSession;->CLOSE_EVENT:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 1954
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3a98

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v7, v10

    sget-object v8, Lcom/localytics/android/LocalyticsSession$SessionHandler;->EVENTS_SORT_ORDER:Ljava/lang/String;

    .line 1951
    invoke-virtual/range {v3 .. v8}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 1955
    :try_start_1
    iget-object v14, v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    const-string v15, "upload_blob_events"

    sget-object v16, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_OPEN_BLOB_EVENTS:[Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    sget-object v19, Lcom/localytics/android/LocalyticsSession$SessionHandler;->UPLOAD_BLOBS_EVENTS_SORT_ORDER:Ljava/lang/String;

    invoke-virtual/range {v14 .. v19}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 1957
    :try_start_2
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 1958
    new-instance v6, Landroid/database/CursorJoiner;

    sget-object v7, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_OPEN_EVENT_ID:[Ljava/lang/String;

    sget-object v8, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_OPEN_BLOB_EVENTS:[Ljava/lang/String;

    invoke-direct {v6, v3, v7, v4, v8}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 1960
    invoke-virtual {v6}, Landroid/database/CursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const-wide/16 v7, -0x1

    move-wide v14, v7

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/database/CursorJoiner$Result;

    .line 1962
    sget-object v16, Lcom/localytics/android/LocalyticsSession$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    invoke-virtual {v11}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v11

    aget v11, v16, v11

    if-eq v11, v10, :cond_3

    goto :goto_0

    :cond_3
    cmp-long v11, v7, v14

    if-eqz v11, :cond_4

    .line 1977
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    cmp-long v11, v16, v14

    if-lez v11, :cond_4

    move-wide/from16 v14, v16

    :cond_4
    cmp-long v11, v7, v14

    if-nez v11, :cond_2

    .line 1986
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    .line 2005
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v4, :cond_7

    .line 2010
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_7
    cmp-long v3, v7, v14

    if-eqz v3, :cond_8

    .line 2023
    invoke-direct {v1, v14, v15}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->openClosedSession(J)V

    goto/16 :goto_6

    .line 2030
    :cond_8
    :try_start_3
    iget-object v3, v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    const-string v17, "sessions"

    sget-object v18, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_OPEN_SESSIONS:[Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "_id"

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v21}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 2032
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->moveToLast()Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "session_start_wall_time"

    .line 2034
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    sub-long/2addr v6, v12

    cmp-long v8, v4, v6

    if-ltz v8, :cond_a

    if-eqz v3, :cond_9

    .line 2102
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_9
    return-void

    .line 2049
    :cond_a
    :try_start_5
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    new-array v4, v10, [Ljava/lang/String;

    aput-object v0, v4, v9

    .line 2052
    iget-object v11, v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    const-string v12, "events"

    sget-object v13, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_OPEN_DELETE_EMPTIES_EVENT_ID:[Ljava/lang/String;

    sget-object v14, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_OPEN_DELETE_EMPTIES_EVENTS_SESSION_KEY_REF:Ljava/lang/String;

    const/16 v16, 0x0

    move-object v15, v4

    invoke-virtual/range {v11 .. v16}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2054
    :try_start_6
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_f

    .line 2056
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2062
    :try_start_7
    iget-object v11, v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    const-string v12, "event_history"

    sget-object v13, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_OPEN_DELETE_EMPTIES_PROCESSED_IN_BLOB:[Ljava/lang/String;

    sget-object v14, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_OPEN_DELETE_EMPTIES_EVENT_HISTORY_SESSION_KEY_REF:Ljava/lang/String;

    const/16 v16, 0x0

    move-object v15, v4

    invoke-virtual/range {v11 .. v16}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2063
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "processed_in_blob"

    .line 2065
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :cond_b
    if-eqz v2, :cond_c

    .line 2072
    :try_start_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2077
    :cond_c
    iget-object v2, v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    const-string v6, "event_history"

    sget-object v7, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_OPEN_DELETE_EMPTIES_EVENT_HISTORY_SESSION_KEY_REF:Ljava/lang/String;

    invoke-virtual {v2, v6, v7, v4}, Lcom/localytics/android/LocalyticsProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2078
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 2080
    iget-object v2, v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    const-string v8, "upload_blobs"

    sget-object v11, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_OPEN_DELETE_EMPTIES_UPLOAD_BLOBS_ID:Ljava/lang/String;

    new-array v12, v10, [Ljava/lang/String;

    .line 2081
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v12, v9

    .line 2080
    invoke-virtual {v2, v8, v11, v12}, Lcom/localytics/android/LocalyticsProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 2085
    :cond_d
    iget-object v0, v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    const-string v2, "sessions"

    sget-object v6, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_OPEN_DELETE_EMPTIES_SESSIONS_ID:Ljava/lang/String;

    invoke-virtual {v0, v2, v6, v4}, Lcom/localytics/android/LocalyticsProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_e

    .line 2072
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2075
    :cond_e
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_f
    :goto_3
    if-eqz v5, :cond_11

    .line 2092
    :try_start_9
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v5

    goto :goto_4

    :catchall_2
    move-exception v0

    :goto_4
    if-eqz v2, :cond_10

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2095
    :cond_10
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_11
    :goto_5
    if-eqz v3, :cond_12

    .line 2102
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_12
    if-nez p1, :cond_13

    .line 2110
    iget-object v0, v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    invoke-static {v0}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->getNumberOfSessions(Lcom/localytics/android/LocalyticsProvider;)J

    move-result-wide v2

    const-wide/16 v4, 0xa

    cmp-long v0, v2, v4

    if-ltz v0, :cond_13

    goto :goto_6

    :cond_13
    move-object/from16 v0, p2

    .line 2124
    invoke-direct {v1, v0}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->openNewSession(Ljava/util/Map;)V

    :goto_6
    return-void

    :catchall_3
    move-exception v0

    move-object v2, v3

    goto :goto_7

    :catchall_4
    move-exception v0

    :goto_7
    if-eqz v2, :cond_14

    .line 2102
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2105
    :cond_14
    throw v0

    :catchall_5
    move-exception v0

    goto :goto_8

    :catchall_6
    move-exception v0

    move-object v4, v2

    :goto_8
    move-object v2, v3

    goto :goto_9

    :catchall_7
    move-exception v0

    move-object v4, v2

    :goto_9
    if-eqz v2, :cond_15

    .line 2005
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_15
    if-eqz v4, :cond_16

    .line 2010
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2013
    :cond_16
    throw v0
.end method

.method optOut(Z)V
    .locals 6

    .line 1728
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    iget-object v1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->isOptedOut(Lcom/localytics/android/LocalyticsProvider;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 1733
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    invoke-static {v0}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->getOpenSessionId(Lcom/localytics/android/LocalyticsProvider;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1738
    invoke-virtual {p0, v1, v2}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->open(ZLjava/util/Map;)V

    if-eqz p1, :cond_1

    .line 1739
    sget-object v0, Lcom/localytics/android/LocalyticsSession;->OPT_OUT_EVENT:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/localytics/android/LocalyticsSession;->OPT_IN_EVENT:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1740
    invoke-virtual {p0, v2}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->close(Ljava/util/Map;)V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    .line 1744
    sget-object v0, Lcom/localytics/android/LocalyticsSession;->OPT_OUT_EVENT:Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/localytics/android/LocalyticsSession;->OPT_IN_EVENT:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1747
    :goto_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1748
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "opt_out"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1749
    iget-object p1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    sget-object v2, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_OPT_IN_OUT:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mApiKeyId:J

    .line 1750
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "api_keys"

    .line 1749
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/localytics/android/LocalyticsProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method setIdentifier(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    .line 2682
    :try_start_0
    iget-object v1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    const-string v2, "identifiers"

    sget-object v3, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_SET_IDENTIFIER:[Ljava/lang/String;

    sget-object v4, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_SET_IDENTIFIER:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v5, v8

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2684
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "value"

    const-string v3, "identifiers"

    const-string v4, "key"

    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    .line 2688
    :try_start_1
    iget-object p1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    const-string p2, "%s = ?"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v4, v1, v8

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array v1, v7, [Ljava/lang/String;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {p1, v3, p2, v1}, Lcom/localytics/android/LocalyticsProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 2692
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2693
    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2694
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2695
    iget-object p2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    sget-object v2, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_SET_IDENTIFIER:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v8

    invoke-virtual {p2, v3, v1, v2, v4}, Lcom/localytics/android/LocalyticsProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 2702
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2703
    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2704
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2705
    iget-object p1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    invoke-virtual {p1, v3, v1}, Lcom/localytics/android/LocalyticsProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 2714
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2717
    :cond_4
    throw p1
.end method

.method setPushRegistrationId(Ljava/lang/String;)V
    .locals 3

    .line 2722
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v1, "registration_id"

    .line 2723
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2724
    iget-object p1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/localytics/android/DatapointHelper;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "registration_version"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2725
    iget-object p1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    const/4 v1, 0x0

    const-string v2, "info"

    invoke-virtual {p1, v2, v0, v1, v1}, Lcom/localytics/android/LocalyticsProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method tagEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2426
    invoke-virtual {p0, p1, p2, v0}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    .line 2445
    iget-object v3, v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    invoke-static {v3}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->getOpenSessionId(Lcom/localytics/android/LocalyticsProvider;)Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 2460
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "session_key_ref"

    .line 2461
    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2462
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "uuid"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "event_name"

    .line 2463
    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2464
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "real_time"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "wall_time"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "clv_increase"

    const/4 v8, 0x0

    if-eqz v2, :cond_1

    .line 2469
    invoke-virtual {v4, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 2473
    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2476
    :goto_0
    invoke-static {}, Lcom/localytics/android/LocalyticsSession;->access$100()Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2478
    invoke-static {}, Lcom/localytics/android/LocalyticsSession;->access$100()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v6, "event_lat"

    invoke-virtual {v4, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2479
    invoke-static {}, Lcom/localytics/android/LocalyticsSession;->access$100()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v6, "event_lng"

    invoke-virtual {v4, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2485
    :cond_2
    sget-object v2, Lcom/localytics/android/LocalyticsSession;->OPEN_EVENT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    .line 2490
    :try_start_0
    iget-object v9, v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    const-string v10, "sessions"

    sget-object v11, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_TAG_EVENT:[Ljava/lang/String;

    sget-object v12, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_TAG_EVENT:Ljava/lang/String;

    new-array v13, v6, [Ljava/lang/String;

    .line 2491
    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v8

    const/4 v14, 0x0

    .line 2490
    invoke-virtual/range {v9 .. v14}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2493
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "session_start_wall_time"

    .line 2495
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_5

    .line 2507
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2500
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v3, "During tag of open event, session didn\'t exist"

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_4

    .line 2507
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2510
    :cond_4
    throw v0

    .line 2513
    :cond_5
    :goto_1
    iget-object v2, v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    const-string v7, "events"

    invoke-virtual {v2, v7, v4}, Lcom/localytics/android/LocalyticsProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    const-wide/16 v11, -0x1

    cmp-long v2, v11, v9

    if-eqz v2, :cond_a

    if-eqz p2, :cond_8

    .line 2527
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 2529
    iget-object v7, v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v8

    const-string v7, ""

    aput-object v7, v4, v6

    const-string v7, "%s:%s"

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2532
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v13, 0x0

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 2537
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    add-int/lit8 v13, v13, 0x1

    const/16 v15, 0x32

    if-le v13, v15, :cond_6

    goto :goto_2

    .line 2546
    :cond_6
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-string v8, "events_key_ref"

    invoke-virtual {v2, v8, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2547
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v15, "attribute_key"

    invoke-virtual {v2, v15, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2548
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v14, "attribute_value"

    invoke-virtual {v2, v14, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2550
    iget-object v8, v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    const-string v14, "attributes"

    invoke-virtual {v8, v14, v2}, Lcom/localytics/android/LocalyticsProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v14

    cmp-long v8, v11, v14

    if-eqz v8, :cond_7

    .line 2557
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    const/4 v8, 0x0

    goto :goto_2

    .line 2554
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    const-string v2, "Inserting attribute failed"

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2564
    :cond_8
    sget-object v2, Lcom/localytics/android/LocalyticsSession;->OPEN_EVENT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/localytics/android/LocalyticsSession;->CLOSE_EVENT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/localytics/android/LocalyticsSession;->OPT_IN_EVENT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/localytics/android/LocalyticsSession;->OPT_OUT_EVENT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/localytics/android/LocalyticsSession;->FLOW_EVENT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 2566
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2567
    iget-object v4, v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, "name"

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2568
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "type"

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2569
    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "processed_in_blob"

    .line 2570
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2571
    iget-object v0, v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    const-string v3, "event_history"

    invoke-virtual {v0, v3, v2}, Lcom/localytics/android/LocalyticsProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2573
    invoke-direct/range {p0 .. p0}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->conditionallyAddFlowEvent()V

    :cond_9
    return-void

    .line 2517
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Inserting event failed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method tagScreen(Ljava/lang/String;)V
    .locals 10

    .line 2610
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    invoke-static {v0}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->getOpenSessionId(Lcom/localytics/android/LocalyticsProvider;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2626
    :try_start_0
    iget-object v2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    const-string v3, "event_history"

    sget-object v4, Lcom/localytics/android/LocalyticsSession$SessionHandler;->PROJECTION_TAG_SCREEN:[Ljava/lang/String;

    sget-object v5, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SELECTION_TAG_SCREEN:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 2628
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    .line 2629
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    sget-object v7, Lcom/localytics/android/LocalyticsSession$SessionHandler;->SORT_ORDER_TAG_SCREEN:Ljava/lang/String;

    .line 2626
    invoke-virtual/range {v2 .. v7}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2631
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "name"

    if-eqz v2, :cond_2

    .line 2633
    :try_start_1
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    .line 2647
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2655
    :cond_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2656
    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2657
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "session_key_ref"

    .line 2658
    invoke-virtual {v1, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "processed_in_blob"

    .line 2659
    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2660
    iget-object p1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    const-string v0, "event_history"

    invoke-virtual {p1, v0, v1}, Lcom/localytics/android/LocalyticsProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2662
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->conditionallyAddFlowEvent()V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_4

    .line 2647
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2650
    :cond_4
    throw p1
.end method

.method upload(Ljava/lang/Runnable;)V
    .locals 3

    .line 2945
    sget-object v0, Lcom/localytics/android/LocalyticsSession;->sIsUploadingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2952
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mUploadHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 2958
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    invoke-static {v0}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->preUploadBuildBlobs(Lcom/localytics/android/LocalyticsProvider;)V

    .line 2960
    sget-object v0, Lcom/localytics/android/LocalyticsSession;->sIsUploadingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2961
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mUploadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mUploadHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 2970
    sget-object v0, Lcom/localytics/android/LocalyticsSession;->sIsUploadingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mApiKey:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 2979
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "upload_callback"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method
