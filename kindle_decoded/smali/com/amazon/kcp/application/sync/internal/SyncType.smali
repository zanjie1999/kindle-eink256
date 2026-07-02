.class public final enum Lcom/amazon/kcp/application/sync/internal/SyncType;
.super Ljava/lang/Enum;
.source "SyncType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/application/sync/internal/SyncType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/application/sync/internal/SyncType;

.field public static final enum APP_STARTUP_SYNC:Lcom/amazon/kcp/application/sync/internal/SyncType;

.field public static final enum BACKGROUND_TODO_SYNC:Lcom/amazon/kcp/application/sync/internal/SyncType;

.field public static final enum BOOK_EXIT:Lcom/amazon/kcp/application/sync/internal/SyncType;

.field public static final enum BOOK_MANUAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

.field public static final enum BOOK_MANUAL_FULL:Lcom/amazon/kcp/application/sync/internal/SyncType;

.field public static final enum BOOK_OPEN_AUTO:Lcom/amazon/kcp/application/sync/internal/SyncType;

.field public static final enum EXIT:Lcom/amazon/kcp/application/sync/internal/SyncType;

.field public static final enum FALKOR_FULL_SYNC:Lcom/amazon/kcp/application/sync/internal/SyncType;

.field public static final enum FOREGROUND_1P:Lcom/amazon/kcp/application/sync/internal/SyncType;

.field public static final enum FOREGROUND_3P:Lcom/amazon/kcp/application/sync/internal/SyncType;

.field public static final enum LIBRARY_CREATED:Lcom/amazon/kcp/application/sync/internal/SyncType;

.field public static final enum LIBRARY_MANUAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

.field public static final enum LOGIN:Lcom/amazon/kcp/application/sync/internal/SyncType;

.field public static final enum NETWORK_CONNECTED_1P:Lcom/amazon/kcp/application/sync/internal/SyncType;

.field public static final enum NETWORK_CONNECTED_3P:Lcom/amazon/kcp/application/sync/internal/SyncType;

.field public static final enum SLEEP:Lcom/amazon/kcp/application/sync/internal/SyncType;

.field public static final enum SMD_POLL_SYNC:Lcom/amazon/kcp/application/sync/internal/SyncType;

.field public static final enum SYNCMETADATA_ONLY:Lcom/amazon/kcp/application/sync/internal/SyncType;

.field private static final SYNC_DATE_STORAGE_TAG:Ljava/lang/String; = "LastSyncDate"

.field public static final enum TODO_LOOKING_FOR_ITEM:Lcom/amazon/kcp/application/sync/internal/SyncType;

.field public static final enum TODO_LOOKING_FOR_SIDECARS:Lcom/amazon/kcp/application/sync/internal/SyncType;

.field public static final enum TODO_SYNC:Lcom/amazon/kcp/application/sync/internal/SyncType;

.field public static final enum UPLOAD_JOURNAL:Lcom/amazon/kcp/application/sync/internal/SyncType;


# instance fields
.field private final bookRequired:Z

.field private final cancelable:Z

.field private final metricTimer:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final steps:I

.field private final storage:Lcom/amazon/kcp/application/internal/KeyValueStorage;

.field private todoReason:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;


# direct methods
.method static constructor <clinit>()V
    .locals 38

    .line 27
    new-instance v9, Lcom/amazon/kcp/application/sync/internal/SyncType;

    new-instance v4, Ljava/util/HashSet;

    const/4 v10, 0x4

    .line 28
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v0, v10, [Ljava/lang/Integer;

    const/4 v12, 0x0

    aput-object v11, v0, v12

    const/4 v13, 0x2

    .line 29
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    .line 38
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v14, v0, v15

    const/16 v1, 0x40

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v0, v13

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/4 v8, 0x3

    aput-object v18, v0, v8

    .line 28
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v7, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->KINDLE_FOREGROUNDED:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const-string v1, "FOREGROUND_1P"

    const/4 v2, 0x0

    const-string v3, "FOREGROUND"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v19, "FullSync"

    move-object v0, v9

    const/4 v10, 0x3

    move-object/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kcp/application/sync/internal/SyncType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashSet;ZZLcom/amazon/kcp/application/models/internal/TodoModel$Reason;Ljava/lang/String;)V

    sput-object v9, Lcom/amazon/kcp/application/sync/internal/SyncType;->FOREGROUND_1P:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 37
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncType;

    new-instance v1, Ljava/util/HashSet;

    new-array v2, v10, [Ljava/lang/Integer;

    const/16 v3, 0x8

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v12

    aput-object v16, v2, v15

    aput-object v18, v2, v13

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v27, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->KINDLE_FOREGROUNDED:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const-string v21, "FOREGROUND_3P"

    const/16 v22, 0x1

    const-string v23, "FOREGROUND"

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v28, "FullSync"

    move-object/from16 v20, v0

    move-object/from16 v24, v1

    invoke-direct/range {v20 .. v28}, Lcom/amazon/kcp/application/sync/internal/SyncType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashSet;ZZLcom/amazon/kcp/application/models/internal/TodoModel$Reason;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->FOREGROUND_3P:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 45
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncType;

    new-instance v1, Ljava/util/HashSet;

    new-array v2, v15, [Ljava/lang/Integer;

    aput-object v16, v2, v12

    .line 46
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v36, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->KINDLE_FOREGROUNDED:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const-string v30, "UPLOAD_JOURNAL"

    const/16 v31, 0x2

    const-string v32, "UPLOAD_JOURNAL"

    const/16 v34, 0x0

    const/16 v35, 0x0

    const-string v37, "UploadJournal"

    move-object/from16 v29, v0

    move-object/from16 v33, v1

    invoke-direct/range {v29 .. v37}, Lcom/amazon/kcp/application/sync/internal/SyncType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashSet;ZZLcom/amazon/kcp/application/models/internal/TodoModel$Reason;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->UPLOAD_JOURNAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 54
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncType;

    new-instance v1, Ljava/util/HashSet;

    new-array v2, v15, [Ljava/lang/Integer;

    aput-object v16, v2, v12

    .line 55
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v27, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->NONE:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const-string v21, "SLEEP"

    const/16 v22, 0x3

    const-string v23, "SLEEP"

    const-string v28, "UploadLocations"

    move-object/from16 v20, v0

    move-object/from16 v24, v1

    invoke-direct/range {v20 .. v28}, Lcom/amazon/kcp/application/sync/internal/SyncType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashSet;ZZLcom/amazon/kcp/application/models/internal/TodoModel$Reason;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->SLEEP:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 62
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncType;

    new-instance v1, Ljava/util/HashSet;

    new-array v2, v15, [Ljava/lang/Integer;

    aput-object v14, v2, v12

    .line 63
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v36, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->NONE:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const-string v30, "EXIT"

    const/16 v31, 0x4

    const-string v32, "EXIT"

    const/16 v35, 0x1

    const-string v37, "UploadLocations"

    move-object/from16 v29, v0

    move-object/from16 v33, v1

    invoke-direct/range {v29 .. v37}, Lcom/amazon/kcp/application/sync/internal/SyncType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashSet;ZZLcom/amazon/kcp/application/models/internal/TodoModel$Reason;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->EXIT:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 70
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncType;

    new-instance v1, Ljava/util/HashSet;

    new-array v2, v13, [Ljava/lang/Integer;

    aput-object v16, v2, v12

    aput-object v17, v2, v15

    .line 71
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v27, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->NONE:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const-string v21, "BOOK_EXIT"

    const/16 v22, 0x5

    const-string v23, "BOOK_EXIT"

    const-string v28, "UploadLocations"

    move-object/from16 v20, v0

    move-object/from16 v24, v1

    invoke-direct/range {v20 .. v28}, Lcom/amazon/kcp/application/sync/internal/SyncType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashSet;ZZLcom/amazon/kcp/application/models/internal/TodoModel$Reason;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_EXIT:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 78
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncType;

    new-instance v1, Ljava/util/HashSet;

    new-array v2, v13, [Ljava/lang/Integer;

    aput-object v14, v2, v12

    const/16 v5, 0x10

    .line 80
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v15

    .line 79
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v36, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->CUSTOMER:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const-string v30, "BOOK_MANUAL"

    const/16 v31, 0x6

    const-string v32, "BOOK_MANUAL"

    const/16 v34, 0x1

    const-string v37, "DownloadLocation"

    move-object/from16 v29, v0

    move-object/from16 v33, v1

    invoke-direct/range {v29 .. v37}, Lcom/amazon/kcp/application/sync/internal/SyncType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashSet;ZZLcom/amazon/kcp/application/models/internal/TodoModel$Reason;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_MANUAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 87
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncType;

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x4

    new-array v7, v2, [Ljava/lang/Integer;

    aput-object v4, v7, v12

    aput-object v11, v7, v15

    aput-object v14, v7, v13

    aput-object v6, v7, v10

    .line 88
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v27, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->CUSTOMER:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const-string v21, "BOOK_MANUAL_FULL"

    const/16 v22, 0x7

    const-string v23, "BOOK_MANUAL_FULL"

    const/16 v25, 0x1

    const/16 v26, 0x1

    const-string v28, "BookManualFull"

    move-object/from16 v20, v0

    move-object/from16 v24, v1

    invoke-direct/range {v20 .. v28}, Lcom/amazon/kcp/application/sync/internal/SyncType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashSet;ZZLcom/amazon/kcp/application/models/internal/TodoModel$Reason;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_MANUAL_FULL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 96
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncType;

    new-instance v1, Ljava/util/HashSet;

    new-array v2, v15, [Ljava/lang/Integer;

    const/16 v6, 0x20

    .line 97
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v12

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v36, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->CUSTOMER:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const-string v30, "BOOK_OPEN_AUTO"

    const/16 v31, 0x8

    const-string v32, "BOOK_OPEN_AUTO"

    const-string v37, "DownloadLocation"

    move-object/from16 v29, v0

    move-object/from16 v33, v1

    invoke-direct/range {v29 .. v37}, Lcom/amazon/kcp/application/sync/internal/SyncType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashSet;ZZLcom/amazon/kcp/application/models/internal/TodoModel$Reason;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_OPEN_AUTO:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 104
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncType;

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x5

    new-array v6, v2, [Ljava/lang/Integer;

    aput-object v4, v6, v12

    aput-object v11, v6, v15

    aput-object v14, v6, v13

    aput-object v17, v6, v10

    const/16 v7, 0x100

    .line 106
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v6, v8

    .line 105
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v27, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->CUSTOMER:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const-string v21, "LIBRARY_MANUAL"

    const/16 v22, 0x9

    const-string v23, "LIBRARY_MANUAL"

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v28, "FullManualSync"

    move-object/from16 v20, v0

    move-object/from16 v24, v1

    invoke-direct/range {v20 .. v28}, Lcom/amazon/kcp/application/sync/internal/SyncType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashSet;ZZLcom/amazon/kcp/application/models/internal/TodoModel$Reason;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->LIBRARY_MANUAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 113
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncType;

    new-instance v1, Ljava/util/HashSet;

    new-array v6, v13, [Ljava/lang/Integer;

    aput-object v17, v6, v12

    aput-object v7, v6, v15

    .line 114
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v36, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->NONE:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const-string v30, "LIBRARY_CREATED"

    const/16 v31, 0xa

    const-string v32, "LIBRARY_CREATED"

    const/16 v34, 0x0

    const/16 v35, 0x0

    const-string v37, "LibraryCreatedSync"

    move-object/from16 v29, v0

    move-object/from16 v33, v1

    invoke-direct/range {v29 .. v37}, Lcom/amazon/kcp/application/sync/internal/SyncType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashSet;ZZLcom/amazon/kcp/application/models/internal/TodoModel$Reason;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->LIBRARY_CREATED:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 122
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncType;

    new-instance v1, Ljava/util/HashSet;

    new-array v6, v13, [Ljava/lang/Integer;

    aput-object v11, v6, v12

    aput-object v7, v6, v15

    .line 123
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v27, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->APP_START:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const-string v21, "APP_STARTUP_SYNC"

    const/16 v22, 0xb

    const-string v23, "APP_STARTUP_SYNC"

    const-string v28, "AppStartupSync"

    move-object/from16 v20, v0

    move-object/from16 v24, v1

    invoke-direct/range {v20 .. v28}, Lcom/amazon/kcp/application/sync/internal/SyncType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashSet;ZZLcom/amazon/kcp/application/models/internal/TodoModel$Reason;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->APP_STARTUP_SYNC:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 130
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncType;

    new-instance v1, Ljava/util/HashSet;

    new-array v6, v13, [Ljava/lang/Integer;

    aput-object v4, v6, v12

    aput-object v14, v6, v15

    .line 131
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v36, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->CUSTOMER:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const-string v30, "TODO_SYNC"

    const/16 v31, 0xc

    const-string v32, "TODO_SYNC"

    const-string v37, "TodoSync"

    move-object/from16 v29, v0

    move-object/from16 v33, v1

    invoke-direct/range {v29 .. v37}, Lcom/amazon/kcp/application/sync/internal/SyncType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashSet;ZZLcom/amazon/kcp/application/models/internal/TodoModel$Reason;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->TODO_SYNC:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 138
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncType;

    new-instance v1, Ljava/util/HashSet;

    new-array v6, v2, [Ljava/lang/Integer;

    aput-object v11, v6, v12

    aput-object v4, v6, v15

    aput-object v14, v6, v13

    aput-object v17, v6, v10

    const/4 v8, 0x4

    aput-object v7, v6, v8

    .line 139
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v27, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->REGISTRATION:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const-string v21, "LOGIN"

    const/16 v22, 0xd

    const-string v23, "LOGIN"

    const-string v28, "Login"

    move-object/from16 v20, v0

    move-object/from16 v24, v1

    invoke-direct/range {v20 .. v28}, Lcom/amazon/kcp/application/sync/internal/SyncType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashSet;ZZLcom/amazon/kcp/application/models/internal/TodoModel$Reason;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->LOGIN:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 147
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncType;

    new-instance v1, Ljava/util/HashSet;

    new-array v6, v10, [Ljava/lang/Integer;

    aput-object v11, v6, v12

    aput-object v17, v6, v15

    aput-object v7, v6, v13

    .line 148
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v36, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->PURCHASE:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const-string v30, "SYNCMETADATA_ONLY"

    const/16 v31, 0xe

    const-string v32, "SYNCMETADATA_ONLY"

    const-string v37, "OnPurchaseSyncMetadata"

    move-object/from16 v29, v0

    move-object/from16 v33, v1

    invoke-direct/range {v29 .. v37}, Lcom/amazon/kcp/application/sync/internal/SyncType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashSet;ZZLcom/amazon/kcp/application/models/internal/TodoModel$Reason;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->SYNCMETADATA_ONLY:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 155
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncType;

    new-instance v1, Ljava/util/HashSet;

    new-array v6, v13, [Ljava/lang/Integer;

    aput-object v11, v6, v12

    aput-object v7, v6, v15

    .line 156
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v27, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->FALKOR_FULL_SYNC:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const-string v21, "FALKOR_FULL_SYNC"

    const/16 v22, 0xf

    const-string v23, "FALKOR_FULL_SYNC"

    const-string/jumbo v28, "onFalkorFullSync"

    move-object/from16 v20, v0

    move-object/from16 v24, v1

    invoke-direct/range {v20 .. v28}, Lcom/amazon/kcp/application/sync/internal/SyncType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashSet;ZZLcom/amazon/kcp/application/models/internal/TodoModel$Reason;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->FALKOR_FULL_SYNC:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 169
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncType;

    new-instance v1, Ljava/util/HashSet;

    new-array v6, v15, [Ljava/lang/Integer;

    aput-object v4, v6, v12

    .line 170
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v36, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->PURCHASE:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const-string v30, "TODO_LOOKING_FOR_ITEM"

    const/16 v31, 0x10

    const-string v32, "TODO_LOOKING_FOR_ITEM"

    const-string v37, "OnPurchaseSyncMetadata"

    move-object/from16 v29, v0

    move-object/from16 v33, v1

    invoke-direct/range {v29 .. v37}, Lcom/amazon/kcp/application/sync/internal/SyncType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashSet;ZZLcom/amazon/kcp/application/models/internal/TodoModel$Reason;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->TODO_LOOKING_FOR_ITEM:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 179
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncType;

    new-instance v1, Ljava/util/HashSet;

    new-array v6, v15, [Ljava/lang/Integer;

    aput-object v4, v6, v12

    .line 180
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v27, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->NONE:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const-string v21, "TODO_LOOKING_FOR_SIDECARS"

    const/16 v22, 0x11

    const-string v23, "TODO_LOOKING_FOR_SIDECARS"

    const-string v28, "OnBookDownloadSyncTodo"

    move-object/from16 v20, v0

    move-object/from16 v24, v1

    invoke-direct/range {v20 .. v28}, Lcom/amazon/kcp/application/sync/internal/SyncType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashSet;ZZLcom/amazon/kcp/application/models/internal/TodoModel$Reason;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->TODO_LOOKING_FOR_SIDECARS:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 187
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncType;

    new-instance v1, Ljava/util/HashSet;

    new-array v6, v15, [Ljava/lang/Integer;

    aput-object v11, v6, v12

    .line 188
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v36, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->SCHEDULED:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const-string v30, "SMD_POLL_SYNC"

    const/16 v31, 0x12

    const-string v32, "SMD_POLL_SYNC"

    const-string v37, "SMDPollSync"

    move-object/from16 v29, v0

    move-object/from16 v33, v1

    invoke-direct/range {v29 .. v37}, Lcom/amazon/kcp/application/sync/internal/SyncType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashSet;ZZLcom/amazon/kcp/application/models/internal/TodoModel$Reason;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->SMD_POLL_SYNC:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 195
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncType;

    new-instance v1, Ljava/util/HashSet;

    new-array v6, v15, [Ljava/lang/Integer;

    aput-object v4, v6, v12

    .line 196
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v27, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->BACKGROUND_NOTIFICATION_RECEIVED:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const-string v21, "BACKGROUND_TODO_SYNC"

    const/16 v22, 0x13

    const-string v23, "BACKGROUND_TODO_SYNC"

    const-string v28, "BackgroundTodoSync"

    move-object/from16 v20, v0

    move-object/from16 v24, v1

    invoke-direct/range {v20 .. v28}, Lcom/amazon/kcp/application/sync/internal/SyncType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashSet;ZZLcom/amazon/kcp/application/models/internal/TodoModel$Reason;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->BACKGROUND_TODO_SYNC:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 205
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncType;

    new-instance v1, Ljava/util/HashSet;

    new-array v6, v13, [Ljava/lang/Integer;

    aput-object v18, v6, v12

    aput-object v7, v6, v15

    .line 206
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v36, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->NONE:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const-string v30, "NETWORK_CONNECTED_1P"

    const/16 v31, 0x14

    const-string v32, "NETWORK_CONNECTED_1P"

    const-string v37, "NetworkConnectedSync"

    move-object/from16 v29, v0

    move-object/from16 v33, v1

    invoke-direct/range {v29 .. v37}, Lcom/amazon/kcp/application/sync/internal/SyncType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashSet;ZZLcom/amazon/kcp/application/models/internal/TodoModel$Reason;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->NETWORK_CONNECTED_1P:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 213
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncType;

    new-instance v1, Ljava/util/HashSet;

    new-array v6, v10, [Ljava/lang/Integer;

    aput-object v4, v6, v12

    aput-object v18, v6, v15

    aput-object v7, v6, v13

    .line 214
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v27, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->NETWORK_CONNECTED:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const-string v21, "NETWORK_CONNECTED_3P"

    const/16 v22, 0x15

    const-string v23, "NETWORK_CONNECTED_3P"

    const-string v28, "NetworkConnectedSync"

    move-object/from16 v20, v0

    move-object/from16 v24, v1

    invoke-direct/range {v20 .. v28}, Lcom/amazon/kcp/application/sync/internal/SyncType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashSet;ZZLcom/amazon/kcp/application/models/internal/TodoModel$Reason;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->NETWORK_CONNECTED_3P:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/16 v1, 0x16

    new-array v1, v1, [Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 21
    sget-object v4, Lcom/amazon/kcp/application/sync/internal/SyncType;->FOREGROUND_1P:Lcom/amazon/kcp/application/sync/internal/SyncType;

    aput-object v4, v1, v12

    sget-object v4, Lcom/amazon/kcp/application/sync/internal/SyncType;->FOREGROUND_3P:Lcom/amazon/kcp/application/sync/internal/SyncType;

    aput-object v4, v1, v15

    sget-object v4, Lcom/amazon/kcp/application/sync/internal/SyncType;->UPLOAD_JOURNAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    aput-object v4, v1, v13

    sget-object v4, Lcom/amazon/kcp/application/sync/internal/SyncType;->SLEEP:Lcom/amazon/kcp/application/sync/internal/SyncType;

    aput-object v4, v1, v10

    sget-object v4, Lcom/amazon/kcp/application/sync/internal/SyncType;->EXIT:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/4 v6, 0x4

    aput-object v4, v1, v6

    sget-object v4, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_EXIT:Lcom/amazon/kcp/application/sync/internal/SyncType;

    aput-object v4, v1, v2

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_MANUAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_MANUAL_FULL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/4 v4, 0x7

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_OPEN_AUTO:Lcom/amazon/kcp/application/sync/internal/SyncType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->LIBRARY_MANUAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->LIBRARY_CREATED:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->APP_STARTUP_SYNC:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->TODO_SYNC:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->LOGIN:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->SYNCMETADATA_ONLY:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->FALKOR_FULL_SYNC:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->TODO_LOOKING_FOR_ITEM:Lcom/amazon/kcp/application/sync/internal/SyncType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->TODO_LOOKING_FOR_SIDECARS:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->SMD_POLL_SYNC:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->BACKGROUND_TODO_SYNC:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->NETWORK_CONNECTED_1P:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const/16 v2, 0x15

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->$VALUES:[Lcom/amazon/kcp/application/sync/internal/SyncType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashSet;ZZLcom/amazon/kcp/application/models/internal/TodoModel$Reason;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;ZZ",
            "Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 240
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 241
    iput-object p3, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->name:Ljava/lang/String;

    .line 242
    invoke-direct {p0, p4}, Lcom/amazon/kcp/application/sync/internal/SyncType;->combineUnorderedSteps(Ljava/util/HashSet;)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->steps:I

    .line 243
    iput-boolean p5, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->bookRequired:Z

    .line 244
    iput-boolean p6, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->cancelable:Z

    .line 245
    iput-object p7, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->todoReason:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    .line 246
    iput-object p8, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->metricTimer:Ljava/lang/String;

    .line 248
    invoke-static {}, Lcom/amazon/kcp/application/internal/KeyValueStorage;->getInstance()Lcom/amazon/kcp/application/internal/KeyValueStorage;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->storage:Lcom/amazon/kcp/application/internal/KeyValueStorage;

    return-void
.end method

.method private combineUnorderedSteps(Ljava/util/HashSet;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 256
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 257
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private makeStorageKey()Ljava/lang/String;
    .locals 2

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LastSyncDate_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/application/sync/internal/SyncType;
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kcp/application/sync/internal/SyncType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/sync/internal/SyncType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/application/sync/internal/SyncType;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->$VALUES:[Lcom/amazon/kcp/application/sync/internal/SyncType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/application/sync/internal/SyncType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/application/sync/internal/SyncType;

    return-object v0
.end method


# virtual methods
.method public getMetricTimer()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->metricTimer:Ljava/lang/String;

    return-object v0
.end method

.method public getSteps()I
    .locals 1

    .line 273
    iget v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->steps:I

    return v0
.end method

.method public getTodoReason()Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->todoReason:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    return-object v0
.end method

.method public setLastSyncDate(Ljava/util/Date;)V
    .locals 6

    .line 313
    invoke-static {}, Lcom/amazon/kcp/application/sync/internal/SyncType;->values()[Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v0

    const/4 v1, 0x0

    .line 314
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 315
    aget-object v2, v0, v1

    .line 316
    invoke-virtual {v2}, Lcom/amazon/kcp/application/sync/internal/SyncType;->getSteps()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0}, Lcom/amazon/kcp/application/sync/internal/SyncType;->getSteps()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/amazon/kcp/application/sync/internal/SyncStep;->isSubset(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    iget-object v2, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->storage:Lcom/amazon/kcp/application/internal/KeyValueStorage;

    invoke-direct {p0}, Lcom/amazon/kcp/application/sync/internal/SyncType;->makeStorageKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/amazon/kcp/application/internal/KeyValueStorage;->setDate(Ljava/lang/String;Ljava/util/Date;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->name:Ljava/lang/String;

    return-object v0
.end method
