.class Lcom/amazon/kcp/application/AndroidLocalStorage$ReddingDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AndroidLocalStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/AndroidLocalStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReddingDBHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 239
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private executeStatements(Landroid/database/sqlite/SQLiteDatabase;[[Ljava/lang/String;)V
    .locals 7

    .line 284
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 285
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 286
    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private upgradeDb(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    if-le p3, p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    .line 271
    invoke-static {}, Lcom/amazon/kcp/application/AndroidLocalStorage;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected an invalid DB version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/AndroidLocalStorage;->access$300()[[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/application/AndroidLocalStorage$ReddingDBHelper;->executeStatements(Landroid/database/sqlite/SQLiteDatabase;[[Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/AndroidLocalStorage;->access$200()[[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/application/AndroidLocalStorage$ReddingDBHelper;->executeStatements(Landroid/database/sqlite/SQLiteDatabase;[[Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/application/AndroidLocalStorage;->access$100()[[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/application/AndroidLocalStorage$ReddingDBHelper;->executeStatements(Landroid/database/sqlite/SQLiteDatabase;[[Ljava/lang/String;)V

    :goto_0
    add-int/2addr p2, v0

    .line 274
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/application/AndroidLocalStorage$ReddingDBHelper;->upgradeDb(Landroid/database/sqlite/SQLiteDatabase;II)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 244
    invoke-static {}, Lcom/amazon/kcp/application/AndroidLocalStorage;->access$000()[[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/application/AndroidLocalStorage$ReddingDBHelper;->executeStatements(Landroid/database/sqlite/SQLiteDatabase;[[Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 249
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/application/AndroidLocalStorage$ReddingDBHelper;->upgradeDb(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
