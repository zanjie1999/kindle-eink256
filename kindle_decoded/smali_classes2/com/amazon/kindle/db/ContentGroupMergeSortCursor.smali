.class public Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;
.super Ljava/lang/Object;
.source "ContentGroupMergeSortCursor.java"

# interfaces
.implements Landroid/database/Cursor;


# instance fields
.field private final content:Landroid/database/Cursor;

.field private final count:I

.field private currentCursor:Landroid/database/Cursor;

.field private final descending:Z

.field private final group:Landroid/database/Cursor;

.field private final orderFieldContentIndex:I

.field private final orderFieldGroupIndex:I

.field private position:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/database/Cursor;Lcom/amazon/kindle/db/OrderBy;Lcom/amazon/kindle/content/dao/ResultsLimit;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->position:I

    .line 50
    iput-object p1, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->content:Landroid/database/Cursor;

    .line 51
    iput-object p2, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->group:Landroid/database/Cursor;

    .line 52
    invoke-virtual {p4}, Lcom/amazon/kindle/content/dao/ResultsLimit;->getSizeLimit()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 53
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p4}, Lcom/amazon/kindle/content/dao/ResultsLimit;->getSizeLimit()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->count:I

    goto :goto_0

    .line 55
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->count:I

    .line 58
    :goto_0
    iget p1, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->count:I

    const/4 p2, 0x0

    if-lez p1, :cond_1

    .line 59
    invoke-virtual {p3}, Lcom/amazon/kindle/db/OrderBy;->getColumns()[Ljava/lang/String;

    move-result-object p1

    .line 60
    aget-object p1, p1, p2

    .line 61
    invoke-virtual {p3, p1}, Lcom/amazon/kindle/db/OrderBy;->isColumnDescending(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->descending:Z

    .line 62
    iget-object p2, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->content:Landroid/database/Cursor;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->orderFieldContentIndex:I

    .line 63
    iget-object p2, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->group:Landroid/database/Cursor;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->orderFieldGroupIndex:I

    goto :goto_1

    .line 65
    :cond_1
    iput v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->orderFieldContentIndex:I

    .line 66
    iput v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->orderFieldGroupIndex:I

    .line 67
    iput-boolean p2, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->descending:Z

    :goto_1
    return-void
.end method

.method private compare(Landroid/database/Cursor;Landroid/database/Cursor;)I
    .locals 3

    .line 134
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 138
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 142
    :cond_1
    iget v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->orderFieldGroupIndex:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 143
    iget p2, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->orderFieldContentIndex:I

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    .line 144
    iget-boolean v2, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->descending:Z

    if-eqz v2, :cond_2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    goto :goto_0

    .line 145
    :cond_2
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    :goto_0
    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_2
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->content:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 268
    iget-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->group:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->currentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public deactivate()V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->content:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 257
    iget-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->group:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    return-void
.end method

.method public getBlob(I)[B
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->currentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    return-object p1
.end method

.method public getColumnCount()I
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->currentCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->currentCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 178
    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->currentCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 186
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 184
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cursor is not at a valid position to get indexes."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->currentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->currentCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->count:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->currentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 318
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFloat(I)F
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->currentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->currentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->currentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->position:I

    return v0
.end method

.method public getShort(I)S
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->currentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->currentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getType(I)I
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->currentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result p1

    return p1
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAfterLast()Z
    .locals 2

    .line 170
    iget v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->position:I

    iget v1, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->count:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBeforeFirst()Z
    .locals 1

    .line 165
    iget v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->position:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->content:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->group:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFirst()Z
    .locals 1

    .line 155
    iget v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->position:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLast()Z
    .locals 3

    .line 160
    iget v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->position:I

    iget v1, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->count:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isNull(I)Z
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->currentCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    return p1
.end method

.method public move(I)Z
    .locals 0

    .line 83
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public moveToFirst()Z
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 101
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->moveToPosition(I)Z

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public moveToNext()Z
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->currentCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 116
    :cond_0
    iget v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->position:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->position:I

    .line 117
    iget v2, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->count:I

    if-ge v0, v2, :cond_4

    .line 118
    iget-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->content:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->content:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->group:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->group:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->content:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->group:Landroid/database/Cursor;

    invoke-direct {p0, v0, v2}, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->compare(Landroid/database/Cursor;Landroid/database/Cursor;)I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->content:Landroid/database/Cursor;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->group:Landroid/database/Cursor;

    :goto_0
    iput-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->currentCursor:Landroid/database/Cursor;

    return v1

    :cond_4
    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->currentCursor:Landroid/database/Cursor;

    const/4 v0, 0x0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->currentCursor:Landroid/database/Cursor;

    .line 90
    iput v0, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->position:I

    .line 91
    iget-object p1, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->content:Landroid/database/Cursor;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    .line 92
    iget-object v1, p0, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;->group:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    and-int/2addr p1, v0

    return p1

    .line 95
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public moveToPrevious()Z
    .locals 1

    .line 150
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 0

    .line 278
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .line 288
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public requery()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 323
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p1
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0

    .line 313
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    .line 298
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 0

    .line 283
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .line 293
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
