.class public Lcom/amazon/kindle/specialOffer/KSOContentDAO;
.super Ljava/lang/Object;
.source "KSOContentDAO.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private formatter:Ljava/text/SimpleDateFormat;

.field private ksodbHelper:Lcom/amazon/kindle/specialOffer/KSODBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/kindle/specialOffer/KSOContentDAO;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->formatter:Ljava/text/SimpleDateFormat;

    .line 29
    iput-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->context:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Lcom/amazon/kindle/specialOffer/KSODBHelper;->getInstance(Landroid/content/Context;)Lcom/amazon/kindle/specialOffer/KSODBHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->ksodbHelper:Lcom/amazon/kindle/specialOffer/KSODBHelper;

    return-void
.end method


# virtual methods
.method public deleteExpiredContent()V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->ksodbHelper:Lcom/amazon/kindle/specialOffer/KSODBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "endTime < date(\'now\')"

    const-string v2, "SpecialOfferContent"

    const/4 v3, 0x0

    .line 139
    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete data num: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public getDisplayingCampaignByCarousel()Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;
    .locals 22

    move-object/from16 v1, p0

    const-string v2, "key"

    const-string v3, "campaignId"

    const-string v4, "startTime"

    const-string v5, "endTime"

    const-string v6, "imageUrl"

    const-string v7, "localImagePath"

    const-string v8, "link"

    const-string v9, "openInStore"

    const-string v10, "adType"

    const-string v11, "extraParams"

    const-string v12, "displayTimes"

    .line 206
    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v15

    .line 212
    iget-object v0, v1, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->ksodbHelper:Lcom/amazon/kindle/specialOffer/KSODBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 213
    iget-object v0, v1, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->ksodbHelper:Lcom/amazon/kindle/specialOffer/KSODBHelper;

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v16, "endTime >= date(\'now\') AND startTime <= date(\'now\')"

    const-string v20, "displayTimes ASC, timestamp ASC"

    const-string v21, "1"

    const-string v14, "SpecialOfferContent"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v2

    .line 214
    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 216
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    const/4 v13, 0x1

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v4, v1, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->formatter:Ljava/text/SimpleDateFormat;

    const/4 v6, 0x2

    .line 218
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    iget-object v4, v1, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->formatter:Ljava/text/SimpleDateFormat;

    const/4 v7, 0x3

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    const/4 v4, 0x4

    .line 219
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x6

    .line 220
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x7

    .line 221
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v4, 0x8

    .line 222
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v4, 0x9

    .line 223
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x5

    .line 224
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->setLocalImagePath(Ljava/lang/String;)V

    const-string v4, "campaignId = ?"

    new-array v5, v13, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 228
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 229
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "displayTimes"

    const/16 v8, 0xa

    .line 230
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/2addr v8, v13

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "SpecialOfferContent"

    .line 231
    invoke-virtual {v2, v7, v6, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 232
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 239
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v0

    .line 238
    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 239
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 236
    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->TAG:Ljava/lang/String;

    const-string v4, "fail to parse data in .db to kso widget data."

    invoke-static {v0, v4}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 238
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 239
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 240
    throw v0
.end method

.method public getImagePathOfExpiredCampaign()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "localImagePath"

    .line 147
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    iget-object v1, p0, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->ksodbHelper:Lcom/amazon/kindle/specialOffer/KSODBHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v4, "endTime < date(\'now\')"

    const-string v2, "SpecialOfferContent"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 152
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 154
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 155
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 158
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 159
    throw v0
.end method

.method public getWidgetdataByCompaignId(Ljava/lang/String;)Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;
    .locals 21

    move-object/from16 v1, p0

    const-string v2, "key"

    const-string v3, "campaignId"

    const-string v4, "startTime"

    const-string v5, "endTime"

    const-string v6, "imageUrl"

    const-string v7, "localImagePath"

    const-string v8, "link"

    const-string v9, "openInStore"

    const-string v10, "adType"

    const-string v11, "extraParams"

    .line 171
    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v14

    const-string v15, "campaignId = ?"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 177
    iget-object v3, v1, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->ksodbHelper:Lcom/amazon/kindle/specialOffer/KSODBHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const/4 v3, 0x0

    :try_start_0
    const-string v13, "SpecialOfferContent"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v2

    .line 180
    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 182
    new-instance v4, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->formatter:Ljava/text/SimpleDateFormat;

    const/4 v5, 0x2

    .line 183
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    iget-object v0, v1, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->formatter:Ljava/text/SimpleDateFormat;

    const/4 v5, 0x3

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    const/4 v0, 0x4

    .line 184
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x6

    .line 185
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v0, 0x7

    .line 186
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v0, 0x8

    .line 187
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v0, 0x9

    .line 188
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v5, v4

    invoke-direct/range {v5 .. v13}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    :cond_0
    if-eqz v2, :cond_1

    .line 195
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-object v2, v3

    .line 191
    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->TAG:Ljava/lang/String;

    const-string v4, "fail to parse the query result for kso data."

    invoke-static {v0, v4}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v3

    :catchall_1
    move-exception v0

    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_2

    .line 195
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_2
    throw v0
.end method

.method public updateCampaignData(Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;)V
    .locals 5

    .line 118
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->ksodbHelper:Lcom/amazon/kindle/specialOffer/KSODBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 120
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 121
    iget-object v2, p0, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->formatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getStartTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "startTime"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->formatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getEndTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "endTime"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getLink()Ljava/lang/String;

    move-result-object v2

    const-string v3, "link"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getOpenInStore()Ljava/lang/String;

    move-result-object v2

    const-string v3, "openInStore"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getAdType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "adType"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getExtraParams()Ljava/lang/String;

    move-result-object v2

    const-string v3, "extraParams"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "campaignId = ?"

    const-string v4, "SpecialOfferContent"

    .line 129
    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update data with campaign Hash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public updateOrAddContent(Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;)Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "localImagePath"

    .line 64
    iget-object v2, v1, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->ksodbHelper:Lcom/amazon/kindle/specialOffer/KSODBHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 65
    iget-object v3, v1, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->ksodbHelper:Lcom/amazon/kindle/specialOffer/KSODBHelper;

    invoke-virtual {v3, v2}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 67
    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "campaignId = ?"

    const/4 v12, 0x1

    new-array v7, v12, [Ljava/lang/String;

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x0

    aput-object v3, v7, v13

    const-string v4, "SpecialOfferContent"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v2

    .line 70
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 71
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 72
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move-object v4, v5

    const/4 v6, 0x0

    .line 75
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "SpecialOfferContent"

    const-string v7, "extraParams"

    const-string v8, "adType"

    const-string v9, "openInStore"

    const-string v10, "link"

    const-string v11, "imageUrl"

    const-string v14, "endTime"

    const-string v15, "startTime"

    if-nez v6, :cond_1

    .line 79
    :try_start_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v12, "campaignId"

    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getCampaignId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v12, v1, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->formatter:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getStartTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v15, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v12, v1, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->formatter:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getEndTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getImageUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getLocalImagePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getOpenInStore()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getAdType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getExtraParams()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Insert data with campaign Hash "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 93
    :cond_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 94
    iget-object v6, v1, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->formatter:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getStartTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v15, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v6, v1, Lcom/amazon/kindle/specialOffer/KSOContentDAO;->formatter:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getEndTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getLocalImagePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getOpenInStore()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getAdType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getExtraParams()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "campaignId = ?"

    new-array v6, v12, [Ljava/lang/String;

    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getCampaignId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v2, v3, v5, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update data with campaign Hash "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    :goto_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v4

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 109
    throw v0
.end method
