.class public final Lcom/amazon/kcp/home/database/HomeDatabaseKt;
.super Ljava/lang/Object;
.source "HomeDatabase.kt"


# static fields
.field private static final COL_ACTION:Ljava/lang/String; = "action"

.field private static final COL_ARGS:Ljava/lang/String; = "args"

.field private static final COL_ASIN:Ljava/lang/String; = "asin"

.field private static final COL_CARD_ID:Ljava/lang/String; = "card_id"

.field private static final COL_DATA:Ljava/lang/String; = "data"

.field private static final COL_EVENT:Ljava/lang/String; = "event"

.field private static final COL_EXPIRY_TIME:Ljava/lang/String; = "expiry_time"

.field private static final COL_LINK_PARAMS:Ljava/lang/String; = "link_params"

.field private static final COL_PINNED:Ljava/lang/String; = "pinned"

.field private static final COL_POSITION:Ljava/lang/String; = "position"

.field private static final COL_REFTAG:Ljava/lang/String; = "reftag"

.field private static final COL_RETAIL_SESSION_ID:Ljava/lang/String; = "retail_session_id"

.field private static final COL_SIDEKICK_METADATA:Ljava/lang/String; = "sidekick_metadata"

.field private static final COL_TEMPLATE_ID:Ljava/lang/String; = "template_id"

.field private static final COL_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final COL_WEIGHT:Ljava/lang/String; = "weight"

.field private static final COL_ZONE_NAME:Ljava/lang/String; = "zone_name"

.field private static final DB_NAME:Ljava/lang/String; = "home_feed.db"

.field private static final DB_VERSION:I = 0x3

.field private static final QUERY_ACTIONS:Ljava/lang/String; = "card_id = ? AND zone_name = ?"

.field private static final QUERY_ASINS:Ljava/lang/String; = "asin IS NOT NULL"

.field private static QUERY_OWNERSHIP_AWARE_CARDS:Ljava/lang/String; = null

.field private static final QUERY_ZONES:Ljava/lang/String; = "card_id = ?"

.field private static final TABLE_ACTIONS:Ljava/lang/String; = "actions"

.field private static final TABLE_CARDS:Ljava/lang/String; = "cards"

.field private static final TABLE_CONFIG:Ljava/lang/String; = "config"

.field private static final TABLE_ZONES:Ljava/lang/String; = "zones"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "template_id IN (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kcp/home/models/CardType;->SHOVELER:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {v1}, Lcom/amazon/kcp/home/models/CardType;->getTemplateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kcp/home/models/CardType;->BRANDED_SHOVELER:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {v1}, Lcom/amazon/kcp/home/models/CardType;->getTemplateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/home/database/HomeDatabaseKt;->QUERY_OWNERSHIP_AWARE_CARDS:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getQUERY_OWNERSHIP_AWARE_CARDS$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kcp/home/database/HomeDatabaseKt;->QUERY_OWNERSHIP_AWARE_CARDS:Ljava/lang/String;

    return-object v0
.end method

.method public static final query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    const-string v0, "$this$query"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "table"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p4

    .line 417
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-string/jumbo p1, "this.query(table, null, \u2026rgs, null, null, orderBy)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final queryColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    const-string v0, "$this$queryColumn"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "table"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "col"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 422
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-string/jumbo p1, "this.query(table, col, w\u2026, null, null, null, null)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
