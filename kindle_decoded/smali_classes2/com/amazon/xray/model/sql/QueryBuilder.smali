.class public Lcom/amazon/xray/model/sql/QueryBuilder;
.super Ljava/lang/Object;
.source "QueryBuilder.java"


# static fields
.field private static final AND:Ljava/lang/String; = "AND "

.field private static final ARG:Ljava/lang/String; = "?"

.field private static final AS:Ljava/lang/String; = " AS "

.field private static final ASC:Ljava/lang/String; = " ASC"

.field private static final BETWEEN_ARGS:Ljava/lang/String; = " BETWEEN ? AND ? "

.field private static final COMMA:Ljava/lang/String; = ", "

.field private static final CREATE_INDEX_IF_NOT_EXISTS:Ljava/lang/String; = "CREATE INDEX IF NOT EXISTS "

.field private static final EQUALS:Ljava/lang/String; = " = "

.field private static final EQUALS_ARG:Ljava/lang/String; = " = ? "

.field private static final FROM:Ljava/lang/String; = "FROM "

.field private static final GROUP_BY:Ljava/lang/String; = "GROUP BY "

.field private static final IN:Ljava/lang/String; = " IN "

.field private static final LEFT_BRACKET:Ljava/lang/String; = "("

.field private static final LEFT_JOIN:Ljava/lang/String; = "LEFT JOIN "

.field private static final LIMIT:Ljava/lang/String; = "LIMIT "

.field private static final NOT_NULL:Ljava/lang/String; = " IS NOT NULL "

.field private static final ON:Ljava/lang/String; = " ON "

.field private static final ORDER_BY:Ljava/lang/String; = "ORDER BY "

.field private static final RIGHT_BRACKET:Ljava/lang/String; = ")"

.field private static final SELECT:Ljava/lang/String; = "SELECT "

.field private static final SPACE:Ljava/lang/String; = " "

.field private static final TAG:Ljava/lang/String; = "com.amazon.xray.model.sql.QueryBuilder"

.field private static final WHERE:Ljava/lang/String; = "WHERE "


# instance fields
.field private containsWhere:Z

.field private final sb:Ljava/lang/StringBuilder;

.field private selectableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->containsWhere:Z

    return-void
.end method

.method private getSql()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public varargs createIndex(Ljava/lang/String;Lcom/amazon/xray/model/sql/table/Table;[Lcom/amazon/xray/model/sql/column/Column;)Lcom/amazon/xray/model/sql/QueryBuilder;
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, "CREATE INDEX IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-object v0, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    iget-object p1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v0, " ON "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    iget-object p1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/xray/model/sql/table/Table;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    iget-object p1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 276
    :goto_0
    array-length p2, p3

    if-ge p1, p2, :cond_1

    .line 277
    iget-object p2, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    aget-object v0, p3, p1

    invoke-virtual {v0}, Lcom/amazon/xray/model/sql/column/Column;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object p2, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v0, " ASC"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    array-length p2, p3

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_0

    .line 280
    iget-object p2, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 283
    :cond_1
    iget-object p1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public execute(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 340
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    sget-object v0, Lcom/amazon/xray/model/sql/QueryBuilder;->TAG:Ljava/lang/String;

    const-string v1, "DB query called from UI thread. Please use a background thread for DB queries."

    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_0
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    sget-object v0, Lcom/amazon/xray/model/sql/QueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing statement: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/amazon/xray/model/sql/QueryBuilder;->getSql()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_1
    invoke-direct {p0}, Lcom/amazon/xray/model/sql/QueryBuilder;->getSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public from(Lcom/amazon/xray/model/sql/table/Table;)Lcom/amazon/xray/model/sql/QueryBuilder;
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, "FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v0, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/xray/model/sql/table/Table;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object p1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->selectableMap:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/amazon/xray/model/sql/column/Column;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1
.end method

.method public get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/StringColumn;)Ljava/lang/String;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->selectableMap:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/amazon/xray/model/sql/column/Column;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/BooleanColumn;)Z
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->selectableMap:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/amazon/xray/model/sql/column/Column;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public isNull(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/Column;)Z
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->selectableMap:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/amazon/xray/model/sql/column/Column;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    return p1
.end method

.method public leftJoin(Lcom/amazon/xray/model/sql/table/Table;Lcom/amazon/xray/model/sql/column/Column;Lcom/amazon/xray/model/sql/column/Column;)Lcom/amazon/xray/model/sql/QueryBuilder;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, "LEFT JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v0, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/xray/model/sql/table/Table;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object p1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v0, " ON "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object p1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/xray/model/sql/column/Column;->getQualifiedName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object p1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    const-string p2, " = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object p1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/amazon/xray/model/sql/column/Column;->getQualifiedName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object p1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public limit(I)Lcom/amazon/xray/model/sql/QueryBuilder;
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, "LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget-object v0, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    iget-object p1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public varargs orderBy([Lcom/amazon/xray/model/sql/Selectable;)Lcom/amazon/xray/model/sql/QueryBuilder;
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, "ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 219
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/amazon/xray/model/sql/Selectable;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-object v1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    const-string v2, ", "

    goto :goto_1

    :cond_0
    const-string v2, " "

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    .line 297
    invoke-virtual {p0, p1, v0}, Lcom/amazon/xray/model/sql/QueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/Cursor;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 311
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/amazon/xray/model/sql/QueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    .line 325
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    sget-object v0, Lcom/amazon/xray/model/sql/QueryBuilder;->TAG:Ljava/lang/String;

    const-string v1, "DB query called from UI thread. Please use a background thread for DB queries."

    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_0
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    sget-object v0, Lcom/amazon/xray/model/sql/QueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing query: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/amazon/xray/model/sql/QueryBuilder;->getSql()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    const-string v2, ""

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " with args: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 331
    invoke-static {v3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_2
    invoke-direct {p0}, Lcom/amazon/xray/model/sql/QueryBuilder;->getSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public varargs select([Lcom/amazon/xray/model/sql/Selectable;)Lcom/amazon/xray/model/sql/QueryBuilder;
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 76
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 77
    iget-object v2, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    invoke-interface {v3}, Lcom/amazon/xray/model/sql/Selectable;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v2, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v2, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    invoke-interface {v3}, Lcom/amazon/xray/model/sql/Selectable;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v2, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    const-string v3, ", "

    goto :goto_1

    :cond_0
    const-string v3, " "

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    array-length v2, p1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->selectableMap:Ljava/util/Map;

    .line 85
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 86
    iget-object v1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->selectableMap:Ljava/util/Map;

    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/amazon/xray/model/sql/Selectable;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-object p0
.end method

.method public whereBetween(Lcom/amazon/xray/model/sql/column/Column;)Lcom/amazon/xray/model/sql/QueryBuilder;
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->containsWhere:Z

    if-eqz v1, :cond_0

    const-string v1, "AND "

    goto :goto_0

    :cond_0
    const-string v1, "WHERE "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object v0, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/xray/model/sql/column/Column;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object p1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v0, " BETWEEN ? AND ? "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    .line 163
    iput-boolean p1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->containsWhere:Z

    return-object p0
.end method

.method public varargs whereEq([Lcom/amazon/xray/model/sql/column/Column;)Lcom/amazon/xray/model/sql/QueryBuilder;
    .locals 5

    .line 139
    iget-object v0, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->containsWhere:Z

    const-string v2, "AND "

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    const-string v1, "WHERE "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 140
    :goto_1
    array-length v1, p1

    const/4 v3, 0x1

    if-ge v0, v1, :cond_2

    .line 141
    iget-object v1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/amazon/xray/model/sql/column/Column;->getQualifiedName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v4, " = ? "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    array-length v1, p1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 147
    :cond_2
    iput-boolean v3, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->containsWhere:Z

    return-object p0
.end method

.method public whereIn(Lcom/amazon/xray/model/sql/column/Column;I)Lcom/amazon/xray/model/sql/QueryBuilder;
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->containsWhere:Z

    if-eqz v1, :cond_0

    const-string v1, "AND "

    goto :goto_0

    :cond_0
    const-string v1, "WHERE "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v0, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/xray/model/sql/column/Column;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-object p1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v0, " IN "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object p1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    :goto_1
    if-ge p1, p2, :cond_2

    .line 183
    iget-object v0, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, p2, -0x1

    if-ge p1, v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 188
    :cond_2
    iget-object p1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    .line 189
    iput-boolean p1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->containsWhere:Z

    return-object p0
.end method

.method public whereNotNull(Lcom/amazon/xray/model/sql/column/Column;)Lcom/amazon/xray/model/sql/QueryBuilder;
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->containsWhere:Z

    if-eqz v1, :cond_0

    const-string v1, "AND "

    goto :goto_0

    :cond_0
    const-string v1, "WHERE "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v0, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/xray/model/sql/column/Column;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-object p1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v0, " IS NOT NULL "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    .line 205
    iput-boolean p1, p0, Lcom/amazon/xray/model/sql/QueryBuilder;->containsWhere:Z

    return-object p0
.end method
