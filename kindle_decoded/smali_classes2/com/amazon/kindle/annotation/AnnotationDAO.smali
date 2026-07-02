.class public Lcom/amazon/kindle/annotation/AnnotationDAO;
.super Ljava/lang/Object;
.source "AnnotationDAO.java"

# interfaces
.implements Lcom/amazon/kindle/annotation/IAnnotationDAO;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile instance:Lcom/amazon/kindle/annotation/AnnotationDAO;


# instance fields
.field private dbHelper:Lcom/amazon/kindle/annotation/AnnotationDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/amazon/kindle/annotation/AnnotationDAO;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/annotation/AnnotationDAO;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 62
    sput-object v0, Lcom/amazon/kindle/annotation/AnnotationDAO;->instance:Lcom/amazon/kindle/annotation/AnnotationDAO;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {p1}, Lcom/amazon/kindle/annotation/AnnotationDBHelper;->getInstance(Landroid/content/Context;)Lcom/amazon/kindle/annotation/AnnotationDBHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationDAO;->dbHelper:Lcom/amazon/kindle/annotation/AnnotationDBHelper;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/amazon/kindle/annotation/IAnnotationDAO;
    .locals 2

    .line 72
    sget-object v0, Lcom/amazon/kindle/annotation/AnnotationDAO;->instance:Lcom/amazon/kindle/annotation/AnnotationDAO;

    if-nez v0, :cond_1

    .line 73
    const-class v0, Lcom/amazon/kindle/annotation/AnnotationDAO;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationDAO;->instance:Lcom/amazon/kindle/annotation/AnnotationDAO;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/amazon/kindle/annotation/AnnotationDAO;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/annotation/AnnotationDAO;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/kindle/annotation/AnnotationDAO;->instance:Lcom/amazon/kindle/annotation/AnnotationDAO;

    .line 77
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 80
    :cond_1
    :goto_0
    sget-object p0, Lcom/amazon/kindle/annotation/AnnotationDAO;->instance:Lcom/amazon/kindle/annotation/AnnotationDAO;

    return-object p0
.end method

.method private getNumberDownloadAttempted(Ljava/lang/String;)I
    .locals 9

    .line 896
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationDAO;->dbHelper:Lcom/amazon/kindle/annotation/AnnotationDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v0, "DOWNLOAD_ATTEMPTED"

    .line 897
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kindle/annotation/AnnotationField;->BOOKID:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const-string v2, "SidecarRequests"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 901
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 904
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 905
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v0

    :cond_0
    const/4 v0, -0x1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 910
    throw v0
.end method

.method private getShortPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I
    .locals 2

    .line 566
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 568
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 574
    :catch_0
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    return p1
.end method

.method private insertOrUpdate(Landroid/content/ContentValues;)J
    .locals 4

    .line 544
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationDAO;->dbHelper:Lcom/amazon/kindle/annotation/AnnotationDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 545
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v1, "Annotations"

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 548
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    .line 550
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide v1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 553
    throw p1
.end method

.method private parse(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 6

    if-eqz p3, :cond_4

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 689
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    if-eq v1, v0, :cond_0

    if-eqz p4, :cond_0

    goto/16 :goto_2

    .line 694
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 695
    sget-object v2, Lcom/amazon/kindle/annotation/AnnotationField;->ALL_FIELDS:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/annotation/AnnotationField;

    .line 696
    sget-object v4, Lcom/amazon/kindle/annotation/AnnotationDAO$1;->$SwitchMap$com$amazon$kindle$annotation$AnnotationField:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 750
    :pswitch_0
    sget-object v3, Lcom/amazon/kindle/annotation/AnnotationField;->IS_AVAILABLE:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 752
    :pswitch_1
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getMetadata()Ljava/util/Map;

    move-result-object v3

    const-string v4, "mchl_color"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 755
    :cond_1
    sget-object v3, Lcom/amazon/kindle/annotation/AnnotationField;->METADATA:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    .line 756
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getMetadata()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kindle/util/JsonUtils;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 755
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 746
    :pswitch_2
    sget-object v3, Lcom/amazon/kindle/annotation/AnnotationField;->STATE:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    .line 747
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getState()[B

    move-result-object v4

    .line 746
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 742
    :pswitch_3
    sget-object v3, Lcom/amazon/kindle/annotation/AnnotationField;->BOOK_TEXT:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    .line 743
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->getBookText()Ljava/lang/String;

    move-result-object v4

    .line 742
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 738
    :pswitch_4
    sget-object v3, Lcom/amazon/kindle/annotation/AnnotationField;->LOCATION:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    .line 739
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getLocation()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 738
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 734
    :pswitch_5
    sget-object v3, Lcom/amazon/kindle/annotation/AnnotationField;->TIME:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    .line 735
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 734
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 730
    :pswitch_6
    sget-object v3, Lcom/amazon/kindle/annotation/AnnotationField;->POS_START_PAGE:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    .line 731
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getPos()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 730
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    if-nez p4, :cond_2

    .line 725
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getUserText()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, p4

    .line 726
    :goto_1
    sget-object v4, Lcom/amazon/kindle/annotation/AnnotationField;->USER_TEXT:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 720
    :pswitch_8
    sget-object v3, Lcom/amazon/kindle/annotation/AnnotationField;->END_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    .line 721
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 720
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 716
    :pswitch_9
    sget-object v3, Lcom/amazon/kindle/annotation/AnnotationField;->START_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    .line 717
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 716
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 712
    :pswitch_a
    sget-object v3, Lcom/amazon/kindle/annotation/AnnotationField;->END_POS:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    .line 713
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 712
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 708
    :pswitch_b
    sget-object v3, Lcom/amazon/kindle/annotation/AnnotationField;->START_POS:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    .line 709
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 708
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 704
    :pswitch_c
    sget-object v3, Lcom/amazon/kindle/annotation/AnnotationField;->TYPE:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    .line 705
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 704
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 701
    :pswitch_d
    sget-object v3, Lcom/amazon/kindle/annotation/AnnotationField;->BOOKID:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 698
    :pswitch_e
    sget-object v3, Lcom/amazon/kindle/annotation/AnnotationField;->USERID:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    return-object v1

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parse(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/sync/AnnotationExport;)Landroid/content/ContentValues;
    .locals 5

    if-eqz p3, :cond_2

    if-eqz p3, :cond_0

    .line 593
    invoke-virtual {p3}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getType()I

    move-result v0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_2

    .line 594
    invoke-virtual {p3}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getType()I

    move-result v0

    const/16 v1, 0x400

    if-eq v0, v1, :cond_2

    .line 595
    invoke-virtual {p3}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getType()I

    move-result v0

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    .line 600
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 601
    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->ALL_FIELDS:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/annotation/AnnotationField;

    .line 602
    sget-object v3, Lcom/amazon/kindle/annotation/AnnotationDAO$1;->$SwitchMap$com$amazon$kindle$annotation$AnnotationField:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 655
    :pswitch_0
    sget-object v2, Lcom/amazon/kindle/annotation/AnnotationField;->METADATA:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 656
    invoke-virtual {p3}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getMetadata()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/util/JsonUtils;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 655
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    :pswitch_1
    sget-object v2, Lcom/amazon/kindle/annotation/AnnotationField;->IS_AVAILABLE:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 651
    :pswitch_2
    sget-object v2, Lcom/amazon/kindle/annotation/AnnotationField;->STATE:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 652
    invoke-virtual {p3}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getState()[B

    move-result-object v3

    .line 651
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 647
    :pswitch_3
    sget-object v2, Lcom/amazon/kindle/annotation/AnnotationField;->BOOK_TEXT:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p3, Lcom/amazon/kindle/services/sync/AnnotationExport;->subject:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 643
    :pswitch_4
    sget-object v2, Lcom/amazon/kindle/annotation/AnnotationField;->LOCATION:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 644
    invoke-virtual {p3}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getLocation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 643
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 639
    :pswitch_5
    sget-object v2, Lcom/amazon/kindle/annotation/AnnotationField;->TIME:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 640
    invoke-virtual {p3}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 639
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 635
    :pswitch_6
    sget-object v2, Lcom/amazon/kindle/annotation/AnnotationField;->POS_START_PAGE:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 636
    invoke-virtual {p3}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getPos()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 635
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 631
    :pswitch_7
    sget-object v2, Lcom/amazon/kindle/annotation/AnnotationField;->USER_TEXT:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 632
    invoke-virtual {p3}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getText()Ljava/lang/String;

    move-result-object v3

    .line 631
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 627
    :pswitch_8
    sget-object v2, Lcom/amazon/kindle/annotation/AnnotationField;->END_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 628
    invoke-virtual {p3}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 627
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 623
    :pswitch_9
    sget-object v2, Lcom/amazon/kindle/annotation/AnnotationField;->START_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 624
    invoke-virtual {p3}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 623
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 619
    :pswitch_a
    sget-object v2, Lcom/amazon/kindle/annotation/AnnotationField;->END_POS:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 620
    invoke-virtual {p3}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/amazon/kindle/annotation/AnnotationDAO;->getShortPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 619
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 615
    :pswitch_b
    sget-object v2, Lcom/amazon/kindle/annotation/AnnotationField;->START_POS:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 616
    invoke-virtual {p3}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/amazon/kindle/annotation/AnnotationDAO;->getShortPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 615
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 610
    :pswitch_c
    sget-object v2, Lcom/amazon/kindle/annotation/AnnotationField;->TYPE:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 612
    invoke-virtual {p3}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getType()I

    move-result v3

    .line 611
    invoke-static {v3}, Lcom/amazon/kindle/services/sync/AnnotationExport;->getAnnotationDataTypeFromAnnotationExportType(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 610
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 607
    :pswitch_d
    sget-object v2, Lcom/amazon/kindle/annotation/AnnotationField;->BOOKID:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 604
    :pswitch_e
    sget-object v2, Lcom/amazon/kindle/annotation/AnnotationField;->USERID:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addSidecarRequest(Ljava/lang/String;)V
    .locals 3

    .line 836
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationDAO;->dbHelper:Lcom/amazon/kindle/annotation/AnnotationDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 838
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 840
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 841
    sget-object v2, Lcom/amazon/kindle/annotation/AnnotationField;->BOOKID:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "DOWNLOAD_ATTEMPTED"

    const/4 v2, 0x0

    .line 842
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "SidecarRequests"

    const/4 v2, 0x0

    .line 843
    invoke-virtual {v0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 844
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 847
    throw p1
.end method

.method public deleteAnnotation(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)I
    .locals 7

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 323
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v2, " = ?"

    if-eqz v3, :cond_1

    const-string v4, " <= ?"

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    if-eqz v3, :cond_2

    const-string v3, " >= ?"

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    const-string v5, " AND "

    if-eqz p1, :cond_3

    .line 332
    sget-object v6, Lcom/amazon/kindle/annotation/AnnotationField;->USERID:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p2, :cond_4

    .line 338
    sget-object p1, Lcom/amazon/kindle/annotation/AnnotationField;->BOOKID:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_4
    sget-object p1, Lcom/amazon/kindle/annotation/AnnotationField;->TYPE:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    .line 351
    :cond_5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/amazon/kindle/annotation/AnnotationField;->START_POS:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/amazon/kindle/annotation/AnnotationField;->END_POS:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 345
    :cond_6
    :goto_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/amazon/kindle/annotation/AnnotationField;->START_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/amazon/kindle/annotation/AnnotationField;->END_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 358
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 359
    invoke-interface {v1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 361
    iget-object p3, p0, Lcom/amazon/kindle/annotation/AnnotationDAO;->dbHelper:Lcom/amazon/kindle/annotation/AnnotationDBHelper;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 362
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "Annotations"

    .line 364
    invoke-virtual {p3, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 365
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 368
    throw p1
.end method

.method public deleteAnnotations(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 767
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kindle/annotation/AnnotationDAO;->deleteAnnotations(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)I

    move-result p1

    return p1
.end method

.method public deleteAnnotations(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)I
    .locals 9

    .line 773
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationDAO;->dbHelper:Lcom/amazon/kindle/annotation/AnnotationDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 776
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p1, :cond_0

    .line 779
    sget-object v3, Lcom/amazon/kindle/annotation/AnnotationField;->USERID:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = ?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v3, " AND "

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 784
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    :cond_1
    sget-object v4, Lcom/amazon/kindle/annotation/AnnotationField;->BOOKID:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = ? "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p3, :cond_5

    .line 790
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_5

    if-nez p2, :cond_3

    if-eqz p1, :cond_4

    .line 792
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/amazon/kindle/annotation/AnnotationField;->TIME:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " < ? "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    invoke-virtual {p3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 799
    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 800
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 802
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_6

    const-string p2, "1"

    .line 805
    :cond_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string p3, "Annotations"

    .line 807
    invoke-virtual {v0, p3, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 808
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 811
    throw p1
.end method

.method public deleteSidecarRequest(Ljava/lang/String;)V
    .locals 4

    .line 872
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationDAO;->dbHelper:Lcom/amazon/kindle/annotation/AnnotationDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 873
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kindle/annotation/AnnotationField;->BOOKID:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 876
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string p1, "SidecarRequests"

    .line 878
    invoke-virtual {v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 879
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 881
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 882
    throw p1
.end method

.method public getGHLsWithInvalidShortPos(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    const-string v0, "-1"

    const-string v1, " = ? AND "

    move-object/from16 v2, p0

    .line 196
    iget-object v3, v2, Lcom/amazon/kindle/annotation/AnnotationDAO;->dbHelper:Lcom/amazon/kindle/annotation/AnnotationDBHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 197
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    .line 201
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/amazon/kindle/annotation/AnnotationField;->USERID:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 202
    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/amazon/kindle/annotation/AnnotationField;->BOOKID:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 203
    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/amazon/kindle/annotation/AnnotationField;->TYPE:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 204
    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/amazon/kindle/annotation/AnnotationField;->START_POS:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 205
    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->END_POS:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 206
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = ?"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v8, v1

    const/4 v1, 0x1

    aput-object p2, v8, v1

    const/4 v1, 0x2

    const-string v6, "7"

    aput-object v6, v8, v1

    const/4 v1, 0x3

    aput-object v0, v8, v1

    const/4 v1, 0x4

    aput-object v0, v8, v1

    const-string v0, "Annotations"

    const/4 v6, 0x0

    .line 215
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 217
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->BOOK_TEXT:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 220
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->TYPE:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 222
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    new-instance v1, Lcom/amazon/kindle/model/Annotations/ReaderPosition;

    sget-object v4, Lcom/amazon/kindle/annotation/AnnotationField;->START_POS:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 224
    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    .line 223
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/amazon/kindle/annotation/AnnotationField;->START_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 225
    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    .line 224
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/amazon/kindle/model/Annotations/ReaderPosition;-><init>(ILjava/lang/String;)V

    new-instance v4, Lcom/amazon/kindle/model/Annotations/ReaderPosition;

    sget-object v5, Lcom/amazon/kindle/annotation/AnnotationField;->END_POS:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 227
    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    .line 226
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Lcom/amazon/kindle/annotation/AnnotationField;->END_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 228
    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    .line 227
    invoke-interface {v12, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/amazon/kindle/model/Annotations/ReaderPosition;-><init>(ILjava/lang/String;)V

    new-instance v5, Lcom/amazon/kindle/model/Annotations/IntPosition;

    sget-object v6, Lcom/amazon/kindle/annotation/AnnotationField;->POS_START_PAGE:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 230
    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    .line 229
    invoke-interface {v12, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    sget-object v6, Lcom/amazon/kindle/annotation/AnnotationField;->USER_TEXT:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 232
    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    .line 231
    invoke-interface {v12, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    sget-object v6, Lcom/amazon/kindle/annotation/AnnotationField;->STATE:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 234
    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    .line 233
    invoke-interface {v12, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v20

    sget-object v6, Lcom/amazon/kindle/annotation/AnnotationField;->METADATA:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 236
    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    .line 235
    invoke-interface {v12, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/kindle/util/JsonUtils;->parseJsonMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v21

    move-object v13, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    invoke-direct/range {v13 .. v21}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Ljava/lang/String;[BLjava/util/Map;)V

    .line 238
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_0
    if-eqz v12, :cond_1

    .line 242
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v3

    :catchall_0
    move-exception v0

    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 244
    :cond_2
    throw v0
.end method

.method public getGHLsWithLongPos(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    const-string v0, " = ? AND "

    move-object/from16 v1, p0

    .line 144
    iget-object v2, v1, Lcom/amazon/kindle/annotation/AnnotationDAO;->dbHelper:Lcom/amazon/kindle/annotation/AnnotationDBHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 145
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    .line 149
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/annotation/AnnotationField;->USERID:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 150
    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/annotation/AnnotationField;->BOOKID:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 151
    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/annotation/AnnotationField;->TYPE:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 152
    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->START_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 153
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " <> \'\' AND "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->END_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 154
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " <> \'\'"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v7, v0

    const/4 v0, 0x1

    aput-object p2, v7, v0

    const/4 v0, 0x2

    const-string v5, "7"

    aput-object v5, v7, v0

    const-string v0, "Annotations"

    const/4 v5, 0x0

    .line 161
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 163
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;

    sget-object v3, Lcom/amazon/kindle/annotation/AnnotationField;->BOOK_TEXT:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 166
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget-object v3, Lcom/amazon/kindle/annotation/AnnotationField;->TYPE:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 168
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    new-instance v15, Lcom/amazon/kindle/model/Annotations/ReaderPosition;

    sget-object v3, Lcom/amazon/kindle/annotation/AnnotationField;->START_POS:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 170
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/amazon/kindle/annotation/AnnotationField;->START_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 171
    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    .line 170
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v3, v4}, Lcom/amazon/kindle/model/Annotations/ReaderPosition;-><init>(ILjava/lang/String;)V

    new-instance v3, Lcom/amazon/kindle/model/Annotations/ReaderPosition;

    sget-object v4, Lcom/amazon/kindle/annotation/AnnotationField;->END_POS:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 173
    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/amazon/kindle/annotation/AnnotationField;->END_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 174
    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    .line 173
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/amazon/kindle/model/Annotations/ReaderPosition;-><init>(ILjava/lang/String;)V

    new-instance v4, Lcom/amazon/kindle/model/Annotations/IntPosition;

    sget-object v5, Lcom/amazon/kindle/annotation/AnnotationField;->POS_START_PAGE:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 176
    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    .line 175
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    sget-object v5, Lcom/amazon/kindle/annotation/AnnotationField;->USER_TEXT:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 178
    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    .line 177
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    sget-object v5, Lcom/amazon/kindle/annotation/AnnotationField;->STATE:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 180
    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    .line 179
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v19

    sget-object v5, Lcom/amazon/kindle/annotation/AnnotationField;->METADATA:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 182
    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    .line 181
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kindle/util/JsonUtils;->parseJsonMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v20

    move-object v12, v0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    invoke-direct/range {v12 .. v20}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Ljava/lang/String;[BLjava/util/Map;)V

    .line 184
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_0
    if-eqz v11, :cond_1

    .line 188
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v2

    :catchall_0
    move-exception v0

    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 190
    :cond_2
    throw v0
.end method

.method public incSidecarDownloadAttempts(Ljava/lang/String;)I
    .locals 3

    .line 852
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationDAO;->dbHelper:Lcom/amazon/kindle/annotation/AnnotationDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 853
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE SidecarRequests SET DOWNLOAD_ATTEMPTED = DOWNLOAD_ATTEMPTED + 1 WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/annotation/AnnotationField;->BOOKID:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 856
    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 853
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 858
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v2, 0x1

    .line 860
    :try_start_0
    invoke-virtual {v1, v2, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 861
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 862
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 864
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 867
    invoke-direct {p0, p1}, Lcom/amazon/kindle/annotation/AnnotationDAO;->getNumberDownloadAttempted(Ljava/lang/String;)I

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 864
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 865
    throw p1
.end method

.method public insertAnnotation(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)J
    .locals 1

    const/4 v0, 0x0

    .line 505
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/kindle/annotation/AnnotationDAO;->parse(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 507
    invoke-direct {p0, p1}, Lcom/amazon/kindle/annotation/AnnotationDAO;->insertOrUpdate(Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public insertAnnotations(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/services/sync/AnnotationExport;",
            ">;)I"
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationDAO;->dbHelper:Lcom/amazon/kindle/annotation/AnnotationDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 517
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 520
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/services/sync/AnnotationExport;

    .line 521
    invoke-direct {p0, p1, p2, v3}, Lcom/amazon/kindle/annotation/AnnotationDAO;->parse(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/sync/AnnotationExport;)Landroid/content/ContentValues;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "Annotations"

    const/4 v5, 0x0

    const/4 v6, 0x5

    .line 523
    invoke-virtual {v0, v4, v5, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    add-int/2addr v2, v3

    goto :goto_0

    .line 527
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v2

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 530
    throw p1
.end method

.method public isSidecarRequested(Ljava/lang/String;)Z
    .locals 1

    .line 887
    invoke-direct {p0, p1}, Lcom/amazon/kindle/annotation/AnnotationDAO;->getNumberDownloadAttempted(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public queryForAnnotations(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 104
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationDAO;->dbHelper:Lcom/amazon/kindle/annotation/AnnotationDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/16 v0, 0xb

    new-array v3, v0, [Ljava/lang/String;

    .line 106
    sget-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->BOOK_TEXT:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 107
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v3, v2

    sget-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->TYPE:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 108
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v3, v2

    sget-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->START_POS:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 109
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v3, v2

    sget-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->END_POS:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 110
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, v3, v4

    sget-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->POS_START_PAGE:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 111
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    aput-object v0, v3, v4

    sget-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->USER_TEXT:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 112
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x5

    aput-object v0, v3, v4

    sget-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->STATE:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 113
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x6

    aput-object v0, v3, v4

    sget-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->METADATA:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 114
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x7

    aput-object v0, v3, v4

    sget-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->START_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 115
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x8

    aput-object v0, v3, v4

    sget-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->END_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 116
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x9

    aput-object v0, v3, v4

    sget-object v0, Lcom/amazon/kindle/annotation/AnnotationField;->IS_AVAILABLE:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 117
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xa

    aput-object v0, v3, v4

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    const-string v2, " = ?"

    if-eqz p1, :cond_0

    .line 125
    sget-object v5, Lcom/amazon/kindle/annotation/AnnotationField;->USERID:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    const-string p1, " AND "

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_1
    sget-object p1, Lcom/amazon/kindle/annotation/AnnotationField;->BOOKID:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    new-array v5, p1, [Ljava/lang/String;

    .line 136
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "Annotations"

    .line 138
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public readAll(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/annotation/AnnotationDAO;->queryForAnnotations(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 269
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 270
    new-instance p2, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->BOOK_TEXT:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 272
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->TYPE:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 274
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    new-instance v4, Lcom/amazon/kindle/model/Annotations/ReaderPosition;

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->START_POS:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 276
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget-object v5, Lcom/amazon/kindle/annotation/AnnotationField;->START_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 277
    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    .line 276
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/amazon/kindle/model/Annotations/ReaderPosition;-><init>(ILjava/lang/String;)V

    new-instance v5, Lcom/amazon/kindle/model/Annotations/ReaderPosition;

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->END_POS:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 279
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget-object v6, Lcom/amazon/kindle/annotation/AnnotationField;->END_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 280
    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    .line 279
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lcom/amazon/kindle/model/Annotations/ReaderPosition;-><init>(ILjava/lang/String;)V

    new-instance v6, Lcom/amazon/kindle/model/Annotations/IntPosition;

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->POS_START_PAGE:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 282
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v6, v1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->USER_TEXT:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 284
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->STATE:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 286
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->METADATA:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 288
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/util/JsonUtils;->parseJsonMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    move-object v1, p2

    invoke-direct/range {v1 .. v9}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Ljava/lang/String;[BLjava/util/Map;)V

    .line 290
    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationField;->IS_AVAILABLE:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 291
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 290
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 292
    :goto_1
    invoke-virtual {p2, v2}, Lcom/amazon/kcp/reader/Annotation;->setAvailability(Z)V

    .line 293
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 297
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception p2

    goto :goto_2

    :catchall_1
    move-exception p2

    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 299
    :cond_3
    throw p2
.end method

.method public updateAnnotation(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)I
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;,
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskWriteViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, -0x1

    return p1

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationDAO;->dbHelper:Lcom/amazon/kindle/annotation/AnnotationDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 396
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 397
    sget-object v2, Lcom/amazon/kindle/annotation/AnnotationField;->USER_TEXT:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    sget-object p4, Lcom/amazon/kindle/annotation/AnnotationField;->METADATA:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {p4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getMetadata()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/util/JsonUtils;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    new-instance p4, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/annotation/AnnotationField;->USERID:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 401
    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " = ? AND "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/annotation/AnnotationField;->BOOKID:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 402
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/annotation/AnnotationField;->TYPE:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 403
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/annotation/AnnotationField;->START_POS:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 404
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/annotation/AnnotationField;->END_POS:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 405
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/annotation/AnnotationField;->START_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 406
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/annotation/AnnotationField;->END_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 407
    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ?"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v2, 0x7

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    .line 414
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    .line 415
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x4

    .line 416
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x5

    .line 417
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x6

    .line 418
    invoke-interface {p3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "Annotations"

    .line 419
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 420
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 423
    throw p1
.end method

.method public updateAnnotations(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    const-string v0, " = ? AND "

    .line 429
    iget-object v1, p0, Lcom/amazon/kindle/annotation/AnnotationDAO;->dbHelper:Lcom/amazon/kindle/annotation/AnnotationDBHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 430
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 433
    :try_start_0
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 435
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/annotation/AnnotationField;->USERID:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 436
    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/annotation/AnnotationField;->BOOKID:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 437
    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/annotation/AnnotationField;->TYPE:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 438
    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/annotation/AnnotationField;->START_POS:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 439
    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/annotation/AnnotationField;->END_POS:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 440
    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/annotation/AnnotationField;->START_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 441
    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/annotation/AnnotationField;->END_POS_LF:Lcom/amazon/kindle/annotation/AnnotationField;

    .line 442
    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    .line 448
    invoke-interface {v4}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 449
    invoke-interface {v4}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 450
    invoke-interface {v4}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 451
    invoke-interface {v4}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 452
    invoke-interface {v4}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    const-string v4, "Annotations"

    .line 454
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 456
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 458
    :try_start_1
    sget-object p2, Lcom/amazon/kindle/annotation/AnnotationDAO;->TAG:Ljava/lang/String;

    const-string p3, "Exception occurred bulk-updating annotations"

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 461
    throw p1
.end method

.method public updateBookId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 818
    sget-object v0, Lcom/amazon/kindle/annotation/AnnotationDAO;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v4, 0x1

    aput-object p3, v2, v4

    const-string v5, "Updating book ID, oldBookId: %s, newBookId: %s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationDAO;->dbHelper:Lcom/amazon/kindle/annotation/AnnotationDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 820
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 822
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 823
    sget-object v5, Lcom/amazon/kindle/annotation/AnnotationField;->BOOKID:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Annotations"

    .line 824
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/amazon/kindle/annotation/AnnotationField;->USERID:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " = ? AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/amazon/kindle/annotation/AnnotationField;->BOOKID:Lcom/amazon/kindle/annotation/AnnotationField;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " = ?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/String;

    aput-object p1, v7, v3

    aput-object p2, v7, v4

    invoke-virtual {v0, v5, v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 826
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 827
    sget-object v2, Lcom/amazon/kindle/annotation/AnnotationDAO;->TAG:Ljava/lang/String;

    const-string v5, "Updating book ID succeeded, oldBookId: %s, newBookId: %s, rowsAffected: %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v3

    aput-object p3, v6, v4

    .line 828
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v1

    .line 827
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 831
    throw p1
.end method
