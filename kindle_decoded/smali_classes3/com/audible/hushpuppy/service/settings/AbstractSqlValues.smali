.class public abstract Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;
.super Ljava/lang/Object;
.source "AbstractSqlValues.java"

# interfaces
.implements Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;


# static fields
.field private static final DEFAULT_SORT_ORDER:Ljava/lang/String;

.field private static final EMPTY_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private final lastUpdateMillisColumnName:Ljava/lang/String;

.field private final nameColumnName:Ljava/lang/String;

.field private final nameSelection:Ljava/lang/String;

.field private final tableUri:Landroid/net/Uri;

.field private final valueColumnName:Ljava/lang/String;

.field private final valueProjection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 21
    sput-object v0, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->EMPTY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "contentResolver is a required parameter."

    .line 71
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "tableUri is a required parameter."

    .line 72
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "nameColumnName is a required parameter."

    .line 73
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueColumnName is a required parameter."

    .line 74
    invoke-static {p4, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "lastUpdateMillisColumnName is a required parameter."

    .line 75
    invoke-static {p5, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    iput-object p1, p0, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->contentResolver:Landroid/content/ContentResolver;

    .line 77
    iput-object p2, p0, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->tableUri:Landroid/net/Uri;

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "=?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->nameSelection:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->nameColumnName:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->valueColumnName:Ljava/lang/String;

    .line 81
    iput-object p5, p0, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->lastUpdateMillisColumnName:Ljava/lang/String;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p4, p1, p2

    const/4 p2, 0x1

    aput-object p5, p1, p2

    .line 82
    iput-object p1, p0, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->valueProjection:[Ljava/lang/String;

    return-void
.end method

.method private closeCursor(Landroid/database/Cursor;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 376
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method private getValueCursor([Ljava/lang/String;Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;)Landroid/database/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->contentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->tableUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->nameSelection:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->nameSelectionArgs(Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;)[Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_2

    .line 342
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 345
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    goto :goto_0

    .line 346
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->tooManyValuesException(Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;I)Ljava/lang/Exception;

    move-result-object p2

    throw p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    move-object v0, p1

    goto :goto_2

    :cond_2
    :goto_0
    move-object v0, p1

    :goto_1
    return-object v0

    :catch_1
    move-exception p2

    .line 350
    :goto_2
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->closeCursor(Landroid/database/Cursor;)V

    .line 351
    throw p2
.end method

.method private nameSelectionArgs(Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 322
    invoke-interface {p1}, Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object v0
.end method

.method private tooManyValuesException(Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;I)Ljava/lang/Exception;
    .locals 3

    .line 365
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected 1 value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", found "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final getLong(Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;Ljava/lang/Long;)Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Value;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;",
            "Ljava/lang/Long;",
            ")",
            "Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Value<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 188
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->getString(Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;Ljava/lang/String;)Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Value;

    move-result-object p1

    .line 189
    new-instance p2, Lcom/audible/hushpuppy/service/settings/ImmutableValue;

    invoke-interface {p1}, Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Value;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1}, Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Value;->getLastUpdateDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {p2, v0, v1, v2}, Lcom/audible/hushpuppy/service/settings/ImmutableValue;-><init>(Ljava/lang/Object;J)V

    return-object p2
.end method

.method public final getString(Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;Ljava/lang/String;)Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Value;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;",
            "Ljava/lang/String;",
            ")",
            "Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Value<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->getStringEx(Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;Ljava/lang/String;)Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Value;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 158
    new-instance p1, Lcom/audible/hushpuppy/service/settings/ImmutableValue;

    const-wide/16 v0, 0x0

    invoke-direct {p1, p2, v0, v1}, Lcom/audible/hushpuppy/service/settings/ImmutableValue;-><init>(Ljava/lang/Object;J)V

    return-object p1
.end method

.method public final getStringEx(Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;Ljava/lang/String;)Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Value;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;",
            "Ljava/lang/String;",
            ")",
            "Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Value<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->valueProjection:[Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->getValueCursor([Ljava/lang/String;Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->valueColumnName:Ljava/lang/String;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 130
    iget-object p1, p0, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->lastUpdateMillisColumnName:Ljava/lang/String;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 132
    :goto_0
    new-instance p1, Lcom/audible/hushpuppy/service/settings/ImmutableValue;

    invoke-direct {p1, p2, v1, v2}, Lcom/audible/hushpuppy/service/settings/ImmutableValue;-><init>(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->closeCursor(Landroid/database/Cursor;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->closeCursor(Landroid/database/Cursor;)V

    .line 135
    throw p1
.end method

.method public final setLong(Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;Ljava/lang/Long;)V
    .locals 0

    .line 195
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->setString(Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;Ljava/lang/String;)V

    return-void
.end method

.method public final setString(Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;Ljava/lang/String;)V
    .locals 2

    .line 166
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->setStringEx(Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public final setStringEx(Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 142
    iget-object v1, p0, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->valueColumnName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object p2, p0, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->lastUpdateMillisColumnName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 144
    iget-object p2, p0, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->tableUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->nameSelection:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->nameSelectionArgs(Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_0

    .line 146
    iget-object p2, p0, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->nameColumnName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->contentResolver:Landroid/content/ContentResolver;

    iget-object p2, p0, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;->tableUri:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_0
    return-void
.end method
