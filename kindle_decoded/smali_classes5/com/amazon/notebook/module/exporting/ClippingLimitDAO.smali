.class public Lcom/amazon/notebook/module/exporting/ClippingLimitDAO;
.super Ljava/lang/Object;
.source "ClippingLimitDAO.java"

# interfaces
.implements Lcom/amazon/notebook/module/exporting/IClippingLimitDAO;


# static fields
.field private static instance:Lcom/amazon/notebook/module/exporting/ClippingLimitDAO;


# instance fields
.field private dbHelper:Lcom/amazon/notebook/module/exporting/ClippingLimitDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/amazon/notebook/module/exporting/ClippingLimitDBHelper;->getInstance(Landroid/content/Context;)Lcom/amazon/notebook/module/exporting/ClippingLimitDBHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/notebook/module/exporting/ClippingLimitDAO;->dbHelper:Lcom/amazon/notebook/module/exporting/ClippingLimitDBHelper;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/notebook/module/exporting/IClippingLimitDAO;
    .locals 3

    const-class v0, Lcom/amazon/notebook/module/exporting/ClippingLimitDAO;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/amazon/notebook/module/exporting/ClippingLimitDAO;->instance:Lcom/amazon/notebook/module/exporting/ClippingLimitDAO;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/amazon/notebook/module/exporting/ClippingLimitDAO;

    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/notebook/module/exporting/ClippingLimitDAO;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/notebook/module/exporting/ClippingLimitDAO;->instance:Lcom/amazon/notebook/module/exporting/ClippingLimitDAO;

    .line 39
    :cond_0
    sget-object v1, Lcom/amazon/notebook/module/exporting/ClippingLimitDAO;->instance:Lcom/amazon/notebook/module/exporting/ClippingLimitDAO;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private insertOrUpdate(Landroid/content/ContentValues;)J
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/ClippingLimitDAO;->dbHelper:Lcom/amazon/notebook/module/exporting/ClippingLimitDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v1, "AmountExported"

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 83
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    .line 85
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide v1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 88
    throw p1
.end method

.method private parse(Ljava/lang/String;Ljava/lang/String;F)Landroid/content/ContentValues;
    .locals 4

    .line 103
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 104
    sget-object v1, Lcom/amazon/notebook/module/exporting/ClippingLimitField;->ALL_FIELDS:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/notebook/module/exporting/ClippingLimitField;

    .line 105
    sget-object v3, Lcom/amazon/notebook/module/exporting/ClippingLimitDAO$1;->$SwitchMap$com$amazon$notebook$module$exporting$ClippingLimitField:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    sget-object v2, Lcom/amazon/notebook/module/exporting/ClippingLimitField;->EXPORTED:Lcom/amazon/notebook/module/exporting/ClippingLimitField;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_0

    .line 110
    :cond_1
    sget-object v2, Lcom/amazon/notebook/module/exporting/ClippingLimitField;->BOOKID:Lcom/amazon/notebook/module/exporting/ClippingLimitField;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_2
    sget-object v2, Lcom/amazon/notebook/module/exporting/ClippingLimitField;->USERID:Lcom/amazon/notebook/module/exporting/ClippingLimitField;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public getAmountExported(Ljava/lang/String;Ljava/lang/String;)F
    .locals 10

    .line 128
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/ClippingLimitDAO;->dbHelper:Lcom/amazon/notebook/module/exporting/ClippingLimitDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    .line 129
    sget-object v2, Lcom/amazon/notebook/module/exporting/ClippingLimitField;->EXPORTED:Lcom/amazon/notebook/module/exporting/ClippingLimitField;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v3, v9

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/amazon/notebook/module/exporting/ClippingLimitField;->USERID:Lcom/amazon/notebook/module/exporting/ClippingLimitField;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = ? AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/notebook/module/exporting/ClippingLimitField;->BOOKID:Lcom/amazon/notebook/module/exporting/ClippingLimitField;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = ?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    aput-object p1, v5, v9

    aput-object p2, v5, v0

    const-string v2, "AmountExported"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 133
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 135
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 136
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getFloat(I)F

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return p2

    :cond_0
    const/high16 p2, -0x40800000    # -1.0f

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 141
    throw p2
.end method

.method public setAmountExported(Ljava/lang/String;Ljava/lang/String;F)J
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/notebook/module/exporting/ClippingLimitDAO;->parse(Ljava/lang/String;Ljava/lang/String;F)Landroid/content/ContentValues;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/exporting/ClippingLimitDAO;->insertOrUpdate(Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/16 p1, -0x1

    return-wide p1
.end method
