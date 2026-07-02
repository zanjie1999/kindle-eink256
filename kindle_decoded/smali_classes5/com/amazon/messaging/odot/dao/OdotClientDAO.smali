.class public Lcom/amazon/messaging/odot/dao/OdotClientDAO;
.super Ljava/lang/Object;
.source "OdotClientDAO.java"

# interfaces
.implements Lcom/amazon/messaging/odot/dao/IOdotClientDAO;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final tableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/messaging/odot/dao/OdotClientDAO;

    invoke-static {v0}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 35
    iput-object p2, p0, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->tableName:Ljava/lang/String;

    return-void
.end method

.method private getIOdotMessageObject(Landroid/database/Cursor;)Lcom/amazon/messaging/odot/dto/IOdotMessage;
    .locals 14

    .line 312
    sget-object v0, Lcom/amazon/messaging/odot/dao/OdotMessageField;->ID:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 313
    sget-object v0, Lcom/amazon/messaging/odot/dao/OdotMessageField;->PAYLOAD:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 314
    sget-object v0, Lcom/amazon/messaging/odot/dao/OdotMessageField;->TOPIC:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 315
    sget-object v0, Lcom/amazon/messaging/odot/dao/OdotMessageField;->STATUS:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;->get(I)Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    move-result-object v5

    .line 316
    sget-object v0, Lcom/amazon/messaging/odot/dao/OdotMessageField;->CREATION_DATE_UTC:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 317
    sget-object v0, Lcom/amazon/messaging/odot/dao/OdotMessageField;->CRC:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 318
    sget-object v0, Lcom/amazon/messaging/odot/dao/OdotMessageField;->SIGNATURE:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 319
    sget-object v0, Lcom/amazon/messaging/odot/dao/OdotMessageField;->RETRIES:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 320
    sget-object v1, Lcom/amazon/messaging/odot/dao/OdotMessageField;->TOKEN_ID:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 321
    sget-object v1, Lcom/amazon/messaging/odot/dao/OdotMessageField;->REQUESTER:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 322
    sget-object v1, Lcom/amazon/messaging/odot/dao/OdotMessageField;->TRANSPORT:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 323
    sget-object v1, Lcom/amazon/messaging/odot/dao/OdotMessageField;->RETRY_AFTER_UTC:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 325
    new-instance v12, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;-><init>(Ljava/lang/String;[BLjava/lang/String;Lcom/amazon/messaging/odot/dto/OdotMessageStatus;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {v12, v0}, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->setRetries(Ljava/lang/Integer;)V

    .line 328
    invoke-virtual {v12, p1}, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->setRetryAfterUtc(Ljava/lang/Long;)V

    return-object v12
.end method

.method private getMessagesBeyondMaxQueueSizeWhereClause(I)Ljava/lang/String;
    .locals 3

    add-int/lit16 p1, p1, -0x3e8

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    sget-object v1, Lcom/amazon/messaging/odot/dao/OdotMessageField;->ID:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IN ("

    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SELECT "

    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    sget-object v1, Lcom/amazon/messaging/odot/dao/OdotMessageField;->ID:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " FROM "

    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget-object v1, p0, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE "

    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/messaging/odot/dao/OdotMessageField;->REQUESTER:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ORDER BY "

    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    sget-object v1, Lcom/amazon/messaging/odot/dao/OdotMessageField;->CREATION_DATE_UTC:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ASC "

    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " LIMIT "

    .line 371
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    .line 373
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUnredeemableMessages()Ljava/lang/String;
    .locals 2

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    sget-object v1, Lcom/amazon/messaging/odot/dao/OdotMessageField;->REQUESTER:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = ?) AND ("

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    sget-object v1, Lcom/amazon/messaging/odot/dao/OdotMessageField;->STATUS:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    sget-object v1, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;->UNRECOVERABLE_ERROR:Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " OR "

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    sget-object v1, Lcom/amazon/messaging/odot/dao/OdotMessageField;->RETRIES:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " > "

    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/messaging/odot/dao/OdotClientDAO;
    .locals 2

    .line 30
    new-instance v0, Lcom/amazon/messaging/odot/dao/OdotClientDAO;

    new-instance v1, Lcom/amazon/messaging/odot/dao/OdotClientDBHelper;

    invoke-direct {v1, p0, p1}, Lcom/amazon/messaging/odot/dao/OdotClientDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "OdotMessages"

    invoke-direct {v0, v1, p0}, Lcom/amazon/messaging/odot/dao/OdotClientDAO;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public deleteAllOdotMessages()Z
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->tableName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 303
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 306
    throw v1
.end method

.method public deleteDefunctOdotMessages(Ljava/lang/String;)Z
    .locals 12

    .line 232
    iget-object v0, p0, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v9, 0x0

    .line 237
    :try_start_0
    iget-object v2, p0, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->tableName:Ljava/lang/String;

    const/4 v10, 0x1

    new-array v3, v10, [Ljava/lang/String;

    sget-object v1, Lcom/amazon/messaging/odot/dao/OdotMessageField;->ID:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    .line 238
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x0

    aput-object v1, v3, v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/amazon/messaging/odot/dao/OdotMessageField;->REQUESTER:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    .line 239
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = ?"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/String;

    aput-object p1, v5, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    .line 237
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 245
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 249
    invoke-direct {p0, v1}, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->getMessagesBeyondMaxQueueSizeWhereClause(I)Ljava/lang/String;

    move-result-object v1

    .line 250
    iget-object v2, p0, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->tableName:Ljava/lang/String;

    .line 251
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v10, [Ljava/lang/String;

    aput-object p1, v3, v11

    .line 250
    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 255
    sget-object v1, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t delete messages that exceeded max queue size for requester - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/messaging/odot/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_0

    .line 268
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v11

    .line 261
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->getUnredeemableMessages()Ljava/lang/String;

    move-result-object v1

    .line 262
    iget-object v2, p0, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->tableName:Ljava/lang/String;

    new-array v3, v10, [Ljava/lang/String;

    aput-object p1, v3, v11

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 265
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_2

    .line 268
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v10

    :catchall_0
    move-exception p1

    if-eqz v9, :cond_3

    .line 268
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 271
    throw p1
.end method

.method public deleteOdotMessage(Ljava/lang/String;)Z
    .locals 6

    .line 278
    iget-object v0, p0, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 282
    :try_start_0
    iget-object v1, p0, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->tableName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/amazon/messaging/odot/dao/OdotMessageField;->ID:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 284
    sget-object v1, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t delete odot message; odotId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/messaging/odot/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v5

    .line 288
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v3

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 291
    throw p1
.end method

.method public getMessageCountPerRequester()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v10, 0x0

    .line 178
    :try_start_0
    iget-object v2, p0, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->tableName:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcom/amazon/messaging/odot/dao/OdotMessageField;->REQUESTER:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    .line 179
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    aput-object v4, v3, v11

    const-string v4, "COUNT(*)"

    const/4 v12, 0x1

    aput-object v4, v3, v12

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/amazon/messaging/odot/dao/OdotMessageField;->REQUESTER:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    .line 182
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 178
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 186
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 189
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v10, :cond_1

    .line 193
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_2
    throw v0
.end method

.method public getOdotMessage(Ljava/lang/String;)Lcom/amazon/messaging/odot/dto/IOdotMessage;
    .locals 10

    .line 76
    iget-object v0, p0, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x0

    .line 80
    :try_start_0
    iget-object v2, p0, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->tableName:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/amazon/messaging/odot/dao/OdotMessageField;->ID:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    .line 82
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 80
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 88
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-direct {p0, p1}, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->getIOdotMessageObject(Landroid/database/Cursor;)Lcom/amazon/messaging/odot/dto/IOdotMessage;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz p1, :cond_1

    .line 93
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 95
    :cond_2
    throw v0
.end method

.method public getPendingOdotMessages(I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/amazon/messaging/odot/dto/IOdotMessage;",
            ">;"
        }
    .end annotation

    const-string v0, " = "

    .line 103
    iget-object v1, p0, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 104
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v10, 0x0

    .line 106
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    sget-object v4, Lcom/amazon/messaging/odot/dao/OdotMessageField;->RETRY_AFTER_UTC:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " IS NULL OR "

    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    sget-object v4, Lcom/amazon/messaging/odot/dao/OdotMessageField;->RETRY_AFTER_UTC:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " < ? ) AND ("

    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    sget-object v4, Lcom/amazon/messaging/odot/dao/OdotMessageField;->STATUS:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    sget-object v4, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;->NOT_PROCESSED:Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " OR "

    .line 115
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    sget-object v4, Lcom/amazon/messaging/odot/dao/OdotMessageField;->STATUS:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    sget-object v0, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;->RETRYABLE_ERROR:Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") AND ("

    .line 119
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    sget-object v0, Lcom/amazon/messaging/odot/dao/OdotMessageField;->RETRIES:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " <= "

    .line 121
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    .line 122
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    .line 123
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ORDER BY "

    .line 124
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    sget-object v0, Lcom/amazon/messaging/odot/dao/OdotMessageField;->CREATION_DATE_UTC:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ASC "

    .line 126
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " LIMIT "

    .line 127
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 131
    iget-object v0, p0, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->tableName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 133
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 134
    invoke-direct {p0, v10}, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->getIOdotMessageObject(Landroid/database/Cursor;)Lcom/amazon/messaging/odot/dto/IOdotMessage;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v10, :cond_1

    .line 138
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1

    :catchall_0
    move-exception p1

    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 140
    :cond_2
    throw p1
.end method

.method public getRequestersAboveQueueSize()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 149
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v9, 0x0

    .line 151
    :try_start_0
    iget-object v2, p0, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->tableName:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/amazon/messaging/odot/dao/OdotMessageField;->REQUESTER:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    .line 152
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/amazon/messaging/odot/dao/OdotMessageField;->REQUESTER:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    .line 155
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, "COUNT(*) > 1000"

    const/4 v8, 0x0

    .line 151
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 159
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    sget-object v1, Lcom/amazon/messaging/odot/dao/OdotMessageField;->REQUESTER:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v9, :cond_1

    .line 165
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 167
    :cond_2
    throw v0
.end method

.method public insertOdotMessage(Lcom/amazon/messaging/odot/dto/IOdotMessage;)Z
    .locals 8

    .line 40
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 41
    sget-object v1, Lcom/amazon/messaging/odot/dao/OdotMessageField;->ID:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/messaging/odot/dto/IOdotMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-object v1, Lcom/amazon/messaging/odot/dao/OdotMessageField;->PAYLOAD:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/messaging/odot/dto/IOdotMessage;->getPayload()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 43
    sget-object v1, Lcom/amazon/messaging/odot/dao/OdotMessageField;->TOPIC:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/messaging/odot/dto/IOdotMessage;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sget-object v1, Lcom/amazon/messaging/odot/dao/OdotMessageField;->STATUS:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/messaging/odot/dto/IOdotMessage;->getStatus()Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 45
    sget-object v1, Lcom/amazon/messaging/odot/dao/OdotMessageField;->CREATION_DATE_UTC:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/messaging/odot/dto/IOdotMessage;->getCreationDateUtc()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 46
    sget-object v1, Lcom/amazon/messaging/odot/dao/OdotMessageField;->CRC:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/messaging/odot/dto/IOdotMessage;->getCrc()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 47
    sget-object v1, Lcom/amazon/messaging/odot/dao/OdotMessageField;->SIGNATURE:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/messaging/odot/dto/IOdotMessage;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object v1, Lcom/amazon/messaging/odot/dao/OdotMessageField;->RETRIES:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/messaging/odot/dto/IOdotMessage;->getRetries()Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/amazon/messaging/odot/dto/IOdotMessage;->getRetries()Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 49
    sget-object v1, Lcom/amazon/messaging/odot/dao/OdotMessageField;->TOKEN_ID:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/messaging/odot/dto/IOdotMessage;->getTokenId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object v1, Lcom/amazon/messaging/odot/dao/OdotMessageField;->REQUESTER:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/messaging/odot/dto/IOdotMessage;->getRequester()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v1, Lcom/amazon/messaging/odot/dao/OdotMessageField;->TRANSPORT:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/messaging/odot/dto/IOdotMessage;->getTransport()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object v1, Lcom/amazon/messaging/odot/dao/OdotMessageField;->RETRY_AFTER_UTC:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/messaging/odot/dto/IOdotMessage;->getRetryAfterUtc()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    iget-object v1, p0, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 58
    :try_start_0
    iget-object v2, p0, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->tableName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 60
    sget-object v0, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t insert odot message - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v3

    .line 63
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 68
    sget-object v0, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully inserted odot message - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/messaging/odot/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 65
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 66
    throw p1
.end method

.method public updateOdotMessage(Lcom/amazon/messaging/odot/dto/IOdotMessage;)Z
    .locals 8

    .line 202
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 204
    sget-object v1, Lcom/amazon/messaging/odot/dao/OdotMessageField;->STATUS:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/messaging/odot/dto/IOdotMessage;->getStatus()Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    sget-object v1, Lcom/amazon/messaging/odot/dao/OdotMessageField;->RETRIES:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/messaging/odot/dto/IOdotMessage;->getRetries()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    sget-object v1, Lcom/amazon/messaging/odot/dao/OdotMessageField;->RETRY_AFTER_UTC:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/messaging/odot/dto/IOdotMessage;->getRetryAfterUtc()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 208
    iget-object v1, p0, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 209
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 212
    :try_start_0
    iget-object v2, p0, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->tableName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/amazon/messaging/odot/dao/OdotMessageField;->ID:Lcom/amazon/messaging/odot/dao/OdotMessageField;

    .line 214
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .line 215
    invoke-interface {p1}, Lcom/amazon/messaging/odot/dto/IOdotMessage;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 212
    invoke-virtual {v1, v2, v0, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 217
    sget-object v0, Lcom/amazon/messaging/odot/dao/OdotClientDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No rows were updated for odot message - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/messaging/odot/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v7

    .line 221
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v4

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 224
    throw p1
.end method
