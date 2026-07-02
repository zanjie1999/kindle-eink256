.class public Lcom/amazon/kindle/cms/CMSUtils;
.super Ljava/lang/Object;
.source "CMSUtils.java"


# static fields
.field private static final DOC_TUTORIAL_ASIN:Ljava/lang/String; = "KINDLE_DOC_CUSTOMER_WELCOME_NOTE"

.field private static final TAG:Ljava/lang/String;

.field private static final WELCOME_LETTER_KEY:Ljava/lang/String; = "PSNL!KISIT!"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lcom/amazon/kindle/cms/CMSUtils;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/cms/CMSUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBookIdFromString(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;
    .locals 0

    .line 371
    invoke-static {p0}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p0

    return-object p0
.end method

.method static getCMSItemFromMetadata(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/cms/api/Thumbnail;Landroid/content/Context;)Lcom/amazon/kindle/cms/api/Item;
    .locals 25

    move-object/from16 v1, p0

    .line 82
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCMSItemFactory()Lcom/amazon/kindle/cms/ICMSItemFactory;

    move-result-object v2

    .line 83
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCMSItemLocationFactory()Lcom/amazon/kindle/cms/ICMSItemLocationFactory;

    move-result-object v0

    .line 88
    invoke-static/range {p2 .. p2}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    .line 89
    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSortFriendlyFormatter()Lcom/amazon/kindle/utils/ISortFriendlyFormatter;

    move-result-object v3

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-static {v4}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 97
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    goto :goto_0

    .line 99
    :cond_0
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 102
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getTitlePronunciation()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getTitlePronunciation()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v4, v6}, Lcom/amazon/kindle/utils/ISortFriendlyFormatter;->format(Ljava/lang/String;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 106
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v4, v6}, Lcom/amazon/kindle/utils/ISortFriendlyFormatter;->format(Ljava/lang/String;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v5

    :goto_1
    move-object v7, v5

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthorPronunciation()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthorPronunciation()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v4, v6}, Lcom/amazon/kindle/utils/ISortFriendlyFormatter;->format(Ljava/lang/String;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 114
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v4, v6}, Lcom/amazon/kindle/utils/ISortFriendlyFormatter;->format(Ljava/lang/String;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v3

    .line 118
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getOwner()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kindle/cms/CMSUtils;->getCMSUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getDeliveryDate()J

    move-result-wide v8

    const-wide/16 v11, 0x0

    const/4 v5, 0x0

    cmp-long v13, v8, v11

    if-lez v13, :cond_3

    .line 123
    new-instance v8, Ljava/util/Date;

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getDeliveryDate()J

    move-result-wide v13

    invoke-direct {v8, v13, v14}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v22, v8

    goto :goto_3

    :cond_3
    move-object/from16 v22, v5

    :goto_3
    const/4 v8, 0x0

    .line 129
    invoke-static {v8}, Lcom/amazon/kindle/cms/api/Progress;->fromPercentage(I)Lcom/amazon/kindle/cms/api/Progress;

    move-result-object v9

    .line 131
    sget-object v13, Lcom/amazon/kindle/cms/CMSUtils$1;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v13, v13, v14

    if-eq v13, v6, :cond_4

    const/4 v14, 0x2

    if-eq v13, v14, :cond_4

    const/4 v14, 0x3

    if-eq v13, v14, :cond_4

    const/4 v14, 0x4

    if-eq v13, v14, :cond_4

    .line 142
    invoke-static {v8}, Lcom/amazon/kindle/cms/api/Progress;->fromPercentage(I)Lcom/amazon/kindle/cms/api/Progress;

    move-result-object v8

    :goto_4
    move-object/from16 v18, v8

    goto :goto_5

    .line 136
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getReadingProgress()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_5

    .line 138
    invoke-static {v8}, Lcom/amazon/kindle/cms/api/Progress;->fromPercentage(I)Lcom/amazon/kindle/cms/api/Progress;

    move-result-object v8

    goto :goto_4

    .line 139
    :cond_5
    invoke-static {v13}, Lcom/amazon/kindle/cms/api/Progress;->fromPercentage(I)Lcom/amazon/kindle/cms/api/Progress;

    move-result-object v8

    goto :goto_4

    .line 146
    :goto_5
    invoke-interface {v0, v1}, Lcom/amazon/kindle/cms/ICMSItemLocationFactory;->getItemLocation(Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kindle/cms/api/ItemLocation;

    move-result-object v19

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 149
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_7

    :cond_6
    const-string v0, "en"

    .line 154
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object v8

    const-string v13, "Sharing"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v23, v8, 0x1

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getShareOriginId()Ljava/lang/String;

    move-result-object v24

    .line 157
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v8

    invoke-interface {v8}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object v8

    .line 159
    sget-object v13, Lcom/amazon/kindle/cms/CMSUtils$1;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    return-object v5

    .line 288
    :pswitch_0
    const-class v5, Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;

    invoke-static {v5}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v11

    .line 289
    const-class v5, Lcom/amazon/kindle/cms/api/PeriodicalItem$UserStatusFlag;

    invoke-static {v5}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v12

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->isNew()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 293
    sget-object v5, Lcom/amazon/kindle/cms/api/PeriodicalItem$UserStatusFlag;->New:Lcom/amazon/kindle/cms/api/PeriodicalItem$UserStatusFlag;

    invoke-virtual {v12, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->isKept()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 297
    sget-object v5, Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;->Kept:Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;

    invoke-virtual {v11, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_9
    invoke-static {v1, v8}, Lcom/amazon/kindle/cms/CMSUtils;->getContentSize(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/download/assets/IAssetStateManager;)J

    move-result-wide v15

    .line 301
    new-instance v6, Lcom/amazon/kindle/cms/api/SortableName;

    move-object v5, v6

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v7, v0}, Lcom/amazon/kindle/cms/api/SortableName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/amazon/kindle/cms/api/SortableName;

    move-object v6, v7

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3, v0}, Lcom/amazon/kindle/cms/api/SortableName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    move-object v8, v0

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDateInMillis()J

    move-result-wide v13

    invoke-direct {v0, v13, v14}, Ljava/util/Date;-><init>(J)V

    new-instance v0, Ljava/util/Date;

    move-object v13, v0

    move-object/from16 p2, v5

    move-object/from16 v21, v6

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getLastAccessTime()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v14

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v20

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v2, v4

    move-object/from16 v3, v19

    move-object v4, v9

    move-object v7, v11

    move-object/from16 v9, p1

    move-object v11, v12

    move-object/from16 v12, v18

    move/from16 v17, v23

    move-object/from16 v18, v24

    move-object/from16 v19, v22

    move-object/from16 v5, p2

    move-object/from16 v6, v21

    .line 301
    invoke-interface/range {v0 .. v20}, Lcom/amazon/kindle/cms/ICMSItemFactory;->createPeriodicalItem(Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Lcom/amazon/kindle/cms/api/ItemLocation;Lcom/amazon/kindle/cms/api/Progress;Lcom/amazon/kindle/cms/api/SortableName;Lcom/amazon/kindle/cms/api/SortableName;Ljava/util/EnumSet;Ljava/util/Date;Lcom/amazon/kindle/cms/api/Thumbnail;Ljava/lang/String;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Progress;Ljava/util/Date;Ljava/lang/String;JZLjava/lang/String;Ljava/util/Date;Ljava/lang/String;)Lcom/amazon/kindle/cms/api/PeriodicalItem;

    move-result-object v0

    return-object v0

    .line 242
    :pswitch_1
    const-class v5, Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;

    invoke-static {v5}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v8

    .line 243
    const-class v5, Lcom/amazon/kindle/cms/api/DocItem$UserStatusFlag;

    invoke-static {v5}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v15

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->isNew()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 246
    sget-object v5, Lcom/amazon/kindle/cms/api/DocItem$UserStatusFlag;->New:Lcom/amazon/kindle/cms/api/DocItem$UserStatusFlag;

    invoke-virtual {v15, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PSNL!KISIT!"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 250
    sget-object v5, Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;->WelcomeLetter:Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;

    invoke-virtual {v8, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v5

    sget-object v6, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PSNL:Lcom/amazon/kcp/library/models/BookType;

    if-ne v5, v6, :cond_c

    .line 254
    sget-object v5, Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;->CarouselOnly:Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;

    invoke-virtual {v8, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getContentType()Ljava/lang/String;

    move-result-object v6

    const-string v13, ".pdf"

    if-eqz v6, :cond_d

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/kindle/content/BookContentType;->getContentType(Ljava/lang/String;)Lcom/amazon/kindle/content/BookContentType$ContentType;

    move-result-object v6

    sget-object v14, Lcom/amazon/kindle/content/BookContentType$ContentType;->PDF:Lcom/amazon/kindle/content/BookContentType$ContentType;

    if-eq v6, v14, :cond_e

    .line 262
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 264
    :cond_e
    invoke-virtual {v5, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 265
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 270
    :cond_f
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v6

    sget-object v13, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v6, v13, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v6

    sget-object v13, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v6, v13, :cond_11

    .line 271
    :cond_10
    new-instance v6, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 273
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_11
    move-wide/from16 v16, v11

    .line 280
    new-instance v11, Lcom/amazon/kindle/cms/api/SortableName;

    move-object v6, v11

    invoke-direct {v11, v5, v7, v0}, Lcom/amazon/kindle/cms/api/SortableName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/amazon/kindle/cms/api/SortableName;

    move-object v7, v5

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11, v3, v0}, Lcom/amazon/kindle/cms/api/SortableName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    move-object v13, v0

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getLastAccessTime()J

    move-result-wide v11

    invoke-direct {v0, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v14

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v20

    move-object v3, v4

    move-object/from16 v4, v19

    move-object v5, v9

    move-object/from16 v9, p1

    move-object v11, v15

    move-object/from16 v12, v18

    move-wide/from16 v15, v16

    move/from16 v17, v23

    move-object/from16 v18, v24

    move-object/from16 v19, v22

    .line 280
    invoke-interface/range {v2 .. v20}, Lcom/amazon/kindle/cms/ICMSItemFactory;->createDocItem(Ljava/lang/String;Lcom/amazon/kindle/cms/api/ItemLocation;Lcom/amazon/kindle/cms/api/Progress;Lcom/amazon/kindle/cms/api/SortableName;Lcom/amazon/kindle/cms/api/SortableName;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Thumbnail;Ljava/lang/String;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Progress;Ljava/util/Date;Ljava/lang/String;JZLjava/lang/String;Ljava/util/Date;Ljava/lang/String;)Lcom/amazon/kindle/cms/api/DocItem;

    move-result-object v0

    return-object v0

    .line 220
    :pswitch_2
    const-class v5, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    invoke-static {v5}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v11

    .line 221
    const-class v5, Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;

    invoke-static {v5}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v12

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->isNew()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 225
    sget-object v5, Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;->New:Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;

    invoke-virtual {v12, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_12
    sget-object v5, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;->Sample:Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    invoke-virtual {v11, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-static {v1, v8}, Lcom/amazon/kindle/cms/CMSUtils;->getContentSize(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/download/assets/IAssetStateManager;)J

    move-result-wide v15

    .line 231
    new-instance v5, Lcom/amazon/kindle/cms/api/SortableName;

    move-object v6, v5

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8, v7, v0}, Lcom/amazon/kindle/cms/api/SortableName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/amazon/kindle/cms/api/SortableName;

    move-object v7, v5

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8, v3, v0}, Lcom/amazon/kindle/cms/api/SortableName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    move-object v13, v0

    move-object/from16 p2, v6

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getLastAccessTime()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->isSample()Z

    move-result v17

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v21

    move-object v3, v4

    move-object/from16 v4, v19

    move-object v5, v9

    move-object v8, v11

    move-object/from16 v9, p1

    move-object v11, v12

    move-object/from16 v12, v18

    move/from16 v18, v23

    move-object/from16 v19, v24

    move-object/from16 v20, v22

    move-object/from16 v6, p2

    .line 231
    invoke-interface/range {v2 .. v21}, Lcom/amazon/kindle/cms/ICMSItemFactory;->createBookItem(Ljava/lang/String;Lcom/amazon/kindle/cms/api/ItemLocation;Lcom/amazon/kindle/cms/api/Progress;Lcom/amazon/kindle/cms/api/SortableName;Lcom/amazon/kindle/cms/api/SortableName;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Thumbnail;Ljava/lang/String;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Progress;Ljava/util/Date;Ljava/lang/String;JZZLjava/lang/String;Ljava/util/Date;Ljava/lang/String;)Lcom/amazon/kindle/cms/api/BookItem;

    move-result-object v0

    return-object v0

    .line 161
    :pswitch_3
    const-class v5, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    invoke-static {v5}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v11

    .line 162
    const-class v5, Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;

    invoke-static {v5}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v12

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->isNew()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-static {v4}, Lcom/amazon/kindle/cms/CMSUtils;->isPreferredDictionary(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 166
    sget-object v5, Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;->New:Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;

    invoke-virtual {v12, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_13
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v13, v10, v6}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 172
    invoke-virtual {v5}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v6

    if-eqz v6, :cond_15

    .line 175
    invoke-virtual {v5}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object v5

    .line 176
    sget-object v6, Lcom/amazon/kindle/model/content/ContentOwnershipType;->Rental:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    if-ne v5, v6, :cond_14

    .line 177
    sget-object v6, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;->Rental:Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    invoke-virtual {v11, v6}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_14
    sget-object v6, Lcom/amazon/kindle/model/content/ContentOwnershipType;->FreeTrial:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    if-ne v5, v6, :cond_15

    .line 180
    sget-object v5, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;->Trial:Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    invoke-virtual {v11, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_15
    invoke-static/range {p2 .. p2}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 188
    invoke-interface {v5}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v6

    .line 189
    invoke-interface {v5}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v5

    .line 190
    invoke-interface {v5}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->getAudioBookMetadataProvider()Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;

    move-result-object v13

    if-eqz v13, :cond_17

    .line 191
    invoke-interface {v5}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->getAudioBookMetadataProvider()Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;

    move-result-object v5

    .line 192
    invoke-interface {v6, v4}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContent(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v6

    .line 194
    invoke-interface {v5, v6}, Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;->getCompanionAudioBookAvailable(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 195
    sget-object v13, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;->CompanionAudioBookAvailable:Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    invoke-virtual {v11, v13}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_16
    invoke-interface {v5, v6}, Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;->getOwnsCompanionBook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 198
    sget-object v5, Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;->OwnsCompanionAudioBook:Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;

    invoke-virtual {v12, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_17
    invoke-static {v4}, Lcom/amazon/kindle/cms/CMSUtils;->isPreferredDictionary(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v5

    sget-object v6, Lcom/amazon/kindle/model/content/DictionaryType;->FREE_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    if-ne v5, v6, :cond_19

    .line 205
    :cond_18
    sget-object v5, Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;->Dictionary:Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;

    invoke-virtual {v11, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_19
    invoke-static {v1, v8}, Lcom/amazon/kindle/cms/CMSUtils;->getContentSize(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/download/assets/IAssetStateManager;)J

    move-result-wide v15

    .line 211
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updating cms with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    new-instance v5, Lcom/amazon/kindle/cms/api/SortableName;

    move-object v6, v5

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8, v7, v0}, Lcom/amazon/kindle/cms/api/SortableName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/amazon/kindle/cms/api/SortableName;

    move-object v7, v5

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8, v3, v0}, Lcom/amazon/kindle/cms/api/SortableName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    move-object v13, v0

    move-object/from16 p2, v6

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getLastAccessTime()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->isSample()Z

    move-result v17

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v21

    move-object v3, v4

    move-object/from16 v4, v19

    move-object v5, v9

    move-object v8, v11

    move-object/from16 v9, p1

    move-object v11, v12

    move-object/from16 v12, v18

    move/from16 v18, v23

    move-object/from16 v19, v24

    move-object/from16 v20, v22

    move-object/from16 v6, p2

    .line 212
    invoke-interface/range {v2 .. v21}, Lcom/amazon/kindle/cms/ICMSItemFactory;->createBookItem(Ljava/lang/String;Lcom/amazon/kindle/cms/api/ItemLocation;Lcom/amazon/kindle/cms/api/Progress;Lcom/amazon/kindle/cms/api/SortableName;Lcom/amazon/kindle/cms/api/SortableName;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Thumbnail;Ljava/lang/String;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Progress;Ljava/util/Date;Ljava/lang/String;JZZLjava/lang/String;Ljava/util/Date;Ljava/lang/String;)Lcom/amazon/kindle/cms/api/BookItem;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getCMSUserId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 391
    sget-object v0, Lcom/amazon/kcp/application/IAuthenticationManager;->DEFAULT_USER_ID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "^"

    :cond_0
    return-object p0
.end method

.method static getContentSize(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/download/assets/IAssetStateManager;)J
    .locals 5

    .line 315
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 316
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->getLocalContentSize(Lcom/amazon/kindle/model/content/IBookID;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->getAllAssets(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 323
    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    goto :goto_0

    :cond_2
    move-wide v2, v0

    :cond_3
    :goto_0
    return-wide v2
.end method

.method static getDownloadProgressCapableFromMetadata(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/cms/api/Thumbnail;Landroid/content/Context;)Lcom/amazon/kindle/cms/api/DownloadProgressCapable;
    .locals 0

    .line 75
    invoke-static {p0, p1, p2}, Lcom/amazon/kindle/cms/CMSUtils;->getCMSItemFromMetadata(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/cms/api/Thumbnail;Landroid/content/Context;)Lcom/amazon/kindle/cms/api/Item;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/cms/api/DownloadProgressCapable;

    return-object p0
.end method

.method public static getLibraryUri(Lcom/amazon/kcp/library/models/BookType;)Landroid/net/Uri;
    .locals 1

    .line 375
    sget-object v0, Lcom/amazon/kindle/cms/CMSUtils$1;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    .line 386
    invoke-static {}, Lcom/amazon/kindle/cms/api/BookItem;->getLibraryUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 382
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/cms/api/PeriodicalItem;->getLibraryUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 379
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/cms/api/DocItem;->getLibraryUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static getSupportedUris()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/Uri;

    .line 398
    invoke-static {}, Lcom/amazon/kindle/cms/api/DocItem;->getLibraryUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Lcom/amazon/kindle/cms/api/PeriodicalItem;->getLibraryUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 399
    invoke-static {}, Lcom/amazon/kindle/cms/api/BookItem;->getLibraryUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 398
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isCMSInstalled()Z
    .locals 3

    .line 403
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    const-string v1, "com.amazon.kindle.cms"

    const/16 v2, 0x80

    .line 405
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method static isPreferredDictionary(Ljava/lang/String;)Z
    .locals 0

    .line 330
    invoke-static {p0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parseForAsin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static restrictFromCarousel(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 3

    :try_start_0
    const-string v0, "KINDLE_DOC_CUSTOMER_WELCOME_NOTE"

    .line 335
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/model/content/DictionaryType;->NONE:Lcom/amazon/kindle/model/content/DictionaryType;

    if-ne v0, v2, :cond_1

    .line 338
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kindle/cms/CMSUtils;->isPreferredDictionary(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    :cond_1
    return v1

    :catch_0
    move-exception p0

    .line 348
    sget-object v0, Lcom/amazon/kindle/cms/CMSUtils;->TAG:Ljava/lang/String;

    const-string v1, "Caught exception in restrictFromCarousel "

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
