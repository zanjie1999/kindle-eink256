.class public Lcom/amazon/kcp/util/CursorUtils;
.super Ljava/lang/Object;
.source "CursorUtils.java"


# direct methods
.method public static convertToExternalCursor(Ljava/util/Collection;[Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;[",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 81
    array-length v0, p1

    if-nez v0, :cond_1

    .line 82
    :cond_0
    sget-object p1, Lcom/amazon/kcp/content/KindleContentConstants;->ALL_EXTERNAL_COLUMNS:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 86
    :cond_1
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 88
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz p1, :cond_2

    .line 90
    invoke-static {v2, p1, p2}, Lcom/amazon/kcp/util/CursorUtils;->getColumnValues(Lcom/amazon/kindle/content/ContentMetadata;[Ljava/lang/String;Z)[Ljava/lang/Object;

    move-result-object v1

    .line 92
    :cond_2
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static getColumnValues(Lcom/amazon/kindle/content/ContentMetadata;[Ljava/lang/String;Z)[Ljava/lang/Object;
    .locals 3

    .line 111
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 112
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 113
    aget-object v2, p1, v1

    .line 114
    invoke-static {p0, v2, p2}, Lcom/amazon/kcp/util/CursorUtils;->getValue(Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 115
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getValue(Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "publicationDate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "lastAccessed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "title"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "downloadState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_6
    const-string v0, "previewUri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_7
    const-string v0, "readingProgress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto :goto_1

    :sswitch_8
    const-string/jumbo v0, "viewIntentUri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_9
    const-string v0, "thumbnailUri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_a
    const-string v0, "fileSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    goto :goto_1

    :sswitch_b
    const-string v0, "author"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 166
    :pswitch_0
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getFileSize()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 164
    :pswitch_1
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getReadingProgress()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 162
    :pswitch_2
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDate()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    if-eqz p2, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kcp/application/KindleProtocol;->createOpenStoreDetailPageIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_2

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kcp/application/KindleProtocol;->createOpenBookIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 159
    :goto_2
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 160
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0

    .line 150
    :pswitch_4
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-static {p0, p1}, Lcom/amazon/kcp/util/CoverUtils;->getExternalCoverUri(Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 151
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0

    .line 147
    :pswitch_5
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-static {p0, p1}, Lcom/amazon/kcp/util/CoverUtils;->getExternalCoverUri(Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 148
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0

    .line 145
    :pswitch_6
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getLastAccessTime()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 143
    :pswitch_7
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 141
    :pswitch_8
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthor()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 139
    :pswitch_9
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 137
    :pswitch_a
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 135
    :pswitch_b
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x53d2de75 -> :sswitch_b
        -0x2bd7d463 -> :sswitch_a
        -0x1543bb20 -> :sswitch_9
        -0x62aaff5 -> :sswitch_8
        -0x5ac5727 -> :sswitch_7
        -0x27b8b7c -> :sswitch_6
        0x19e5f -> :sswitch_5
        0x368f3a -> :sswitch_4
        0x13d20e9 -> :sswitch_3
        0x6942258 -> :sswitch_2
        0x1983f9b9 -> :sswitch_1
        0x57a70ffa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
