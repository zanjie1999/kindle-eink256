.class public final Lcom/amazon/kcp/home/database/HomeDatabase;
.super Ljava/lang/Object;
.source "HomeDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/home/database/HomeDatabase$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHomeDatabase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeDatabase.kt\ncom/amazon/kcp/home/database/HomeDatabase\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,423:1\n1819#2,2:424\n*E\n*S KotlinDebug\n*F\n+ 1 HomeDatabase.kt\ncom/amazon/kcp/home/database/HomeDatabase\n*L\n65#1,2:424\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kcp/home/database/HomeDatabase$Companion;

.field private static final INSTANCE:Lcom/amazon/android/util/LazyWith;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/android/util/LazyWith<",
            "Lcom/amazon/kcp/home/database/HomeDatabase;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final helper:Lcom/amazon/kcp/home/database/HomeDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/home/database/HomeDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/home/database/HomeDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/home/database/HomeDatabase;->Companion:Lcom/amazon/kcp/home/database/HomeDatabase$Companion;

    .line 307
    sget-object v0, Lcom/amazon/kcp/home/database/HomeDatabase$Companion$INSTANCE$1;->INSTANCE:Lcom/amazon/kcp/home/database/HomeDatabase$Companion$INSTANCE$1;

    invoke-static {v0}, Lcom/amazon/android/util/LazyKt;->lazyWith(Lkotlin/jvm/functions/Function1;)Lcom/amazon/android/util/LazyWith;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/home/database/HomeDatabase;->INSTANCE:Lcom/amazon/android/util/LazyWith;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/home/database/HomeDatabaseHelper;)V
    .locals 1

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/database/HomeDatabase;->helper:Lcom/amazon/kcp/home/database/HomeDatabaseHelper;

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/amazon/android/util/LazyWith;
    .locals 1

    .line 50
    sget-object v0, Lcom/amazon/kcp/home/database/HomeDatabase;->INSTANCE:Lcom/amazon/android/util/LazyWith;

    return-object v0
.end method

.method private final readActions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/model/HomeAction;",
            ">;"
        }
    .end annotation

    const-string v0, "args"

    const-string v1, "action"

    const-string v2, "event"

    .line 240
    iget-object v3, p0, Lcom/amazon/kcp/home/database/HomeDatabase;->helper:Lcom/amazon/kcp/home/database/HomeDatabaseHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "helper.readableDatabase"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object p2, v4, p1

    const/4 p1, 0x0

    const-string p2, "actions"

    const-string v5, "card_id = ? AND zone_name = ?"

    invoke-static {v3, p2, v5, v4, p1}, Lcom/amazon/kcp/home/database/HomeDatabaseKt;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 241
    :try_start_0
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 242
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 243
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 245
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 246
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 247
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 248
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 249
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 250
    sget-object v10, Lcom/amazon/kcp/home/util/HomeDatabaseUtils;->INSTANCE:Lcom/amazon/kcp/home/util/HomeDatabaseUtils;

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v7, v8, v9}, Lcom/amazon/kcp/home/util/HomeDatabaseUtils;->buildAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/home/model/HomeAction;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 251
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 254
    :cond_1
    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v6

    :catchall_0
    move-exception p1

    .line 240
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final readCards()Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/home/model/CardData;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string/jumbo v0, "reftag"

    .line 180
    iget-object v2, v1, Lcom/amazon/kcp/home/database/HomeDatabase;->helper:Lcom/amazon/kcp/home/database/HomeDatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "helper.readableDatabase"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v4, "cards"

    invoke-static {v2, v4, v3, v3, v3}, Lcom/amazon/kcp/home/database/HomeDatabaseKt;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v4, "card_id"

    .line 181
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "template_id"

    .line 182
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 183
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "weight"

    .line 184
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "pinned"

    .line 185
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, "retail_session_id"

    .line 186
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "link_params"

    .line 187
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v11, "sidekick_metadata"

    .line 188
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 190
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 191
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 192
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 193
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 194
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 195
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 196
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v25, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/16 v21, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    const/16 v21, 0x0

    .line 197
    :goto_1
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 198
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 199
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    const-string v3, "id"

    .line 200
    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "templateId"

    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v15, v13}, Lcom/amazon/kcp/home/database/HomeDatabase;->readZones(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v17

    .line 202
    sget-object v3, Lcom/amazon/kcp/home/util/HomeDatabaseUtils;->INSTANCE:Lcom/amazon/kcp/home/util/HomeDatabaseUtils;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v13, v4}, Lcom/amazon/kcp/home/util/HomeDatabaseUtils;->isTemplateValid(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    new-instance v3, Lcom/amazon/kindle/home/model/CardData;

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v20

    move-object v4, v14

    move-object v14, v3

    move-object/from16 v16, v13

    move-object/from16 v18, v4

    invoke-direct/range {v14 .. v24}, Lcom/amazon/kindle/home/model/CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move/from16 v4, v25

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    move-object v0, v3

    .line 206
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v12

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 180
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private final readZones(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/home/model/HomeZone;",
            ">;"
        }
    .end annotation

    const-string v0, "data"

    .line 214
    iget-object v1, p0, Lcom/amazon/kcp/home/database/HomeDatabase;->helper:Lcom/amazon/kcp/home/database/HomeDatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "helper.readableDatabase"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string/jumbo v3, "zones"

    const-string v4, "card_id = ?"

    const-string/jumbo v5, "position"

    invoke-static {v1, v3, v4, v2, v5}, Lcom/amazon/kcp/home/database/HomeDatabaseKt;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 215
    :try_start_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string/jumbo v3, "zone_name"

    .line 216
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 217
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 219
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 220
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 221
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "name"

    .line 222
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v5}, Lcom/amazon/kcp/home/database/HomeDatabase;->readActions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 223
    sget-object v8, Lcom/amazon/kcp/home/util/HomeDatabaseUtils;->INSTANCE:Lcom/amazon/kcp/home/util/HomeDatabaseUtils;

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, p2, v5, v6, v7}, Lcom/amazon/kcp/home/util/HomeDatabaseUtils;->buildZone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/amazon/kindle/home/model/HomeZone;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 224
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 227
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :catchall_0
    move-exception p1

    .line 214
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private final writeActions(Landroid/database/sqlite/SQLiteDatabase;Lcom/amazon/kcp/home/database/HomeCardData;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/amazon/kcp/home/database/HomeCardData;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kcp/home/database/HomeActionData;",
            ">;)V"
        }
    .end annotation

    .line 139
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/home/database/HomeActionData;

    .line 140
    sget-object v1, Lcom/amazon/kcp/home/util/HomeDatabaseUtils;->INSTANCE:Lcom/amazon/kcp/home/util/HomeDatabaseUtils;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/home/util/HomeDatabaseUtils;->isActionInvalid(Lcom/amazon/kcp/home/database/HomeActionData;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 144
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 145
    invoke-interface {p2}, Lcom/amazon/kcp/home/database/HomeCardData;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "card_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "zone_name"

    .line 146
    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-interface {v0}, Lcom/amazon/kcp/home/database/HomeActionData;->getEvent()Ljava/lang/String;

    move-result-object v3

    const-string v4, "event"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-interface {v0}, Lcom/amazon/kcp/home/database/HomeActionData;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "action"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-object v3, Lcom/amazon/kcp/home/util/HomeDatabaseUtils;->INSTANCE:Lcom/amazon/kcp/home/util/HomeDatabaseUtils;

    invoke-interface {v0}, Lcom/amazon/kcp/home/database/HomeActionData;->getArgs()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amazon/kcp/home/util/HomeDatabaseUtils;->serializeArgs(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "args"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v0, "actions"

    .line 144
    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final writeCard(Landroid/database/sqlite/SQLiteDatabase;Lcom/amazon/kcp/home/database/HomeCardData;)V
    .locals 5

    .line 91
    sget-object v0, Lcom/amazon/kcp/home/util/HomeDatabaseUtils;->INSTANCE:Lcom/amazon/kcp/home/util/HomeDatabaseUtils;

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/home/util/HomeDatabaseUtils;->isCardInvalid(Lcom/amazon/kcp/home/database/HomeCardData;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "cards"

    const/4 v1, 0x0

    .line 97
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "card_id"

    .line 98
    invoke-interface {p2}, Lcom/amazon/kcp/home/database/HomeCardData;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "template_id"

    .line 99
    invoke-interface {p2}, Lcom/amazon/kcp/home/database/HomeCardData;->getTemplateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "reftag"

    .line 100
    invoke-interface {p2}, Lcom/amazon/kcp/home/database/HomeCardData;->getReftag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "weight"

    .line 101
    invoke-interface {p2}, Lcom/amazon/kcp/home/database/HomeCardData;->getWeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "pinned"

    .line 102
    invoke-interface {p2}, Lcom/amazon/kcp/home/database/HomeCardData;->getPinned()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v3, "retail_session_id"

    .line 103
    invoke-interface {p2}, Lcom/amazon/kcp/home/database/HomeCardData;->getRetailSessionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "link_params"

    .line 104
    invoke-interface {p2}, Lcom/amazon/kcp/home/database/HomeCardData;->getLinkParams()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "sidekick_metadata"

    .line 105
    invoke-interface {p2}, Lcom/amazon/kcp/home/database/HomeCardData;->getSidekickMetadata()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 97
    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 107
    invoke-interface {p2}, Lcom/amazon/kcp/home/database/HomeCardData;->getZones()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/home/database/HomeDatabase;->writeZones(Landroid/database/sqlite/SQLiteDatabase;Lcom/amazon/kcp/home/database/HomeCardData;Ljava/util/List;)V

    .line 109
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p2
.end method

.method private final writeConfig(Landroid/database/sqlite/SQLiteDatabase;Lcom/amazon/kcp/home/database/HomeFeedData;)V
    .locals 6

    .line 74
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "config"

    const/4 v1, 0x0

    .line 76
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "timestamp"

    .line 77
    invoke-interface {p2}, Lcom/amazon/kcp/home/database/HomeFeedData;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "expiry_time"

    .line 78
    invoke-interface {p2}, Lcom/amazon/kcp/home/database/HomeFeedData;->getExpiryTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 79
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 76
    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 81
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p2
.end method

.method private final writeZones(Landroid/database/sqlite/SQLiteDatabase;Lcom/amazon/kcp/home/database/HomeCardData;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/amazon/kcp/home/database/HomeCardData;",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kcp/home/database/HomeZoneData;",
            ">;)V"
        }
    .end annotation

    .line 119
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/home/database/HomeZoneData;

    .line 120
    sget-object v2, Lcom/amazon/kcp/home/util/HomeDatabaseUtils;->INSTANCE:Lcom/amazon/kcp/home/util/HomeDatabaseUtils;

    invoke-virtual {v2, v1}, Lcom/amazon/kcp/home/util/HomeDatabaseUtils;->isZoneInvalid(Lcom/amazon/kcp/home/database/HomeZoneData;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 124
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 125
    invoke-interface {p2}, Lcom/amazon/kcp/home/database/HomeCardData;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "card_id"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-interface {v1}, Lcom/amazon/kcp/home/database/HomeZoneData;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "zone_name"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "position"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    invoke-interface {v1}, Lcom/amazon/kcp/home/database/HomeZoneData;->asin()Ljava/lang/String;

    move-result-object v4

    const-string v5, "asin"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v4, Lcom/amazon/kcp/home/util/HomeDatabaseUtils;->INSTANCE:Lcom/amazon/kcp/home/util/HomeDatabaseUtils;

    invoke-virtual {v4, v1}, Lcom/amazon/kcp/home/util/HomeDatabaseUtils;->serializeZoneData(Lcom/amazon/kcp/home/database/HomeZoneData;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string/jumbo v4, "zones"

    .line 124
    invoke-virtual {p1, v4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 131
    invoke-interface {v1}, Lcom/amazon/kcp/home/database/HomeZoneData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/amazon/kcp/home/database/HomeZoneData;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/amazon/kcp/home/database/HomeDatabase;->writeActions(Landroid/database/sqlite/SQLiteDatabase;Lcom/amazon/kcp/home/database/HomeCardData;Ljava/lang/String;Ljava/util/List;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 3

    .line 304
    iget-object v0, p0, Lcom/amazon/kcp/home/database/HomeDatabase;->helper:Lcom/amazon/kcp/home/database/HomeDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "helper.writableDatabase"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/database/HomeDatabaseHelper;->clearTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public final readAsins()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/amazon/kcp/home/database/HomeDatabase;->helper:Lcom/amazon/kcp/home/database/HomeDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "helper.readableDatabase"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "asin"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zones"

    const-string v3, "asin IS NOT NULL"

    invoke-static {v0, v2, v1, v3}, Lcom/amazon/kcp/home/database/HomeDatabaseKt;->queryColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 265
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 266
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 267
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cursor.getString(0)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 269
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 264
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final readFeed()Lcom/amazon/kcp/home/models/HomeFeed;
    .locals 11

    .line 158
    iget-object v0, p0, Lcom/amazon/kcp/home/database/HomeDatabase;->helper:Lcom/amazon/kcp/home/database/HomeDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "helper.readableDatabase"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "config"

    invoke-static {v0, v2, v1, v1, v1}, Lcom/amazon/kcp/home/database/HomeDatabaseKt;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string/jumbo v2, "timestamp"

    .line 159
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "expiry_time"

    .line 160
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 162
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 163
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 164
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 165
    invoke-direct {p0}, Lcom/amazon/kcp/home/database/HomeDatabase;->readCards()Ljava/util/List;

    move-result-object v10

    .line 166
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 167
    new-instance v2, Lcom/amazon/kcp/home/models/HomeFeed;

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/amazon/kcp/home/models/HomeFeed;-><init>(JJLjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 166
    :goto_0
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    .line 172
    :cond_1
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 158
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final removeContentForAsins(Ljava/util/Collection;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "asins"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    return v11

    .line 281
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 282
    iget-object v3, v1, Lcom/amazon/kcp/home/database/HomeDatabase;->helper:Lcom/amazon/kcp/home/database/HomeDatabaseHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "helper.readableDatabase"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "card_id"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/amazon/kcp/home/database/HomeDatabaseKt;->access$getQUERY_OWNERSHIP_AWARE_CARDS$p()Ljava/lang/String;

    move-result-object v5

    const-string v6, "cards"

    invoke-static {v3, v6, v4, v5}, Lcom/amazon/kcp/home/database/HomeDatabaseKt;->queryColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 283
    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 284
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cursor.getString(0)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 286
    :cond_1
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v12, 0x0

    .line 282
    invoke-static {v3, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 289
    iget-object v3, v1, Lcom/amazon/kcp/home/database/HomeDatabase;->helper:Lcom/amazon/kcp/home/database/HomeDatabaseHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    .line 290
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_1
    const-string/jumbo v14, "zones"

    .line 293
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asin IN (\'"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', \'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\') AND card_id IN (\'"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', \'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    move-object v2, v0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v14, v0, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 294
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-lez v0, :cond_2

    const/4 v11, 0x1

    :cond_2
    return v11

    :catchall_0
    move-exception v0

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 282
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    move-object v4, v0

    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public final write(Lcom/amazon/kcp/home/database/HomeFeedData;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 56
    invoke-interface {p1}, Lcom/amazon/kcp/home/database/HomeFeedData;->getCards()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/database/HomeDatabase;->helper:Lcom/amazon/kcp/home/database/HomeDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/amazon/kcp/home/database/HomeDatabase;->helper:Lcom/amazon/kcp/home/database/HomeDatabaseHelper;

    const-string v2, "db"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/home/database/HomeDatabaseHelper;->clearTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 64
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/home/database/HomeDatabase;->writeConfig(Landroid/database/sqlite/SQLiteDatabase;Lcom/amazon/kcp/home/database/HomeFeedData;)V

    .line 65
    invoke-interface {p1}, Lcom/amazon/kcp/home/database/HomeFeedData;->getCards()Ljava/util/List;

    move-result-object p1

    .line 424
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/home/database/HomeCardData;

    .line 66
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/home/database/HomeDatabase;->writeCard(Landroid/database/sqlite/SQLiteDatabase;Lcom/amazon/kcp/home/database/HomeCardData;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
