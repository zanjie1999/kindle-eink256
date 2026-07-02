.class public Lcom/amazon/kcp/wordwise/gloss/PinyinModel;
.super Ljava/lang/Object;
.source "PinyinModel.java"


# static fields
.field private static final CHARACTER_INCREMENT:I = 0x3

.field private static final CHINESE_PUNCTUATIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final DESC_DIFFICULTY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final POSITION_OFFSET:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private pinyinDBHelper:Lcom/amazon/kcp/wordwise/persistence/PinyinDictionaryDBHelper;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    const-class v0, Lcom/amazon/kcp/wordwise/gloss/PinyinModel;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/wordwise/gloss/PinyinModel;->TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x17

    new-array v1, v1, [Ljava/lang/Character;

    const/16 v2, 0x2018

    .line 49
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x2019

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/16 v2, 0x3001

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/16 v2, 0x201c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/16 v2, 0x201d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/16 v2, 0x3000

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const v2, 0xff0c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/16 v2, 0x3002

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const v2, 0xff01

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const v2, 0xff1f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const v2, 0xff1b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const v2, 0xff1a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const v2, 0xff08

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const v2, 0xff09

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const/16 v2, 0x2014

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const/16 v2, 0x300a

    .line 50
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const/16 v2, 0x300b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const v2, 0xff5e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const/16 v2, 0x2026

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const/16 v2, 0x3010

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x13

    aput-object v2, v1, v3

    const/16 v2, 0x3011

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const v2, 0xff3b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x15

    aput-object v2, v1, v3

    const v2, 0xff3d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x16

    aput-object v2, v1, v3

    .line 48
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/kcp/wordwise/gloss/PinyinModel;->CHINESE_PUNCTUATIONS:Ljava/util/Set;

    .line 55
    new-instance v0, Lcom/amazon/kcp/wordwise/gloss/PinyinModel$1;

    invoke-direct {v0}, Lcom/amazon/kcp/wordwise/gloss/PinyinModel$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/wordwise/gloss/PinyinModel;->DESC_DIFFICULTY_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/PinyinModel;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 75
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/gloss/PinyinModel;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 77
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->ZH_PN:Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    invoke-virtual {v1}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getGlossDictionaryFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v1, Lcom/amazon/kcp/wordwise/persistence/PinyinDictionaryDBHelper;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/amazon/kcp/wordwise/persistence/PinyinDictionaryDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amazon/kcp/wordwise/gloss/PinyinModel;->pinyinDBHelper:Lcom/amazon/kcp/wordwise/persistence/PinyinDictionaryDBHelper;

    :cond_0
    return-void
.end method

.method private getEntryWithPositionInfo(II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/PinyinModel;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ww/R$integer;->max_word_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 220
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 221
    iget-object v2, p0, Lcom/amazon/kcp/wordwise/gloss/PinyinModel;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->createWordTokenIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    .line 226
    :cond_1
    invoke-interface {v2, p1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    .line 233
    :goto_1
    invoke-interface {v2}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object p1

    if-eqz p1, :cond_3

    iget v3, p1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    if-ge v3, p2, :cond_3

    .line 234
    iget-object v3, p1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_2

    .line 239
    :cond_2
    invoke-direct {p0, v3}, Lcom/amazon/kcp/wordwise/gloss/PinyinModel;->removeTrailingPunctuations(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 240
    new-instance v4, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;

    invoke-direct {v4}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;-><init>()V

    .line 242
    iget-object v5, p1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3

    .line 243
    invoke-virtual {v4, v3}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->setChinese(Ljava/lang/String;)V

    const-string v3, ""

    .line 244
    invoke-virtual {v4, v3}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->setPinyin(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v4, v0}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->setDifficulty(I)V

    .line 246
    iget v3, p1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    invoke-virtual {v4, v3}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->setStartPosition(I)V

    .line 247
    iget p1, p1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    sub-int/2addr p1, v5

    invoke-virtual {v4, p1}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->setEndPosition(I)V

    .line 248
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :goto_2
    invoke-interface {v2}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->next()Z

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method private getPinyinEntriesByCharacter(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-char v3, p1, v2

    .line 157
    new-instance v4, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;

    invoke-direct {v4}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;-><init>()V

    .line 158
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->setChinese(Ljava/lang/String;)V

    const-string v3, ""

    .line 159
    invoke-virtual {v4, v3}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->setPinyin(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v4, p2}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->setStartPosition(I)V

    add-int/lit8 v3, p2, 0x2

    .line 161
    invoke-virtual {v4, v3}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->setEndPosition(I)V

    .line 162
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getPinyinEntriesFromEntry(Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;I)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;",
            "I)",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;",
            ">;"
        }
    .end annotation

    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->getPinyin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->getPinyin()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 182
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->getStartPosition()I

    move-result v1

    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->getPinyin()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->getDifficulty()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 188
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->getChinese()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    const/16 v16, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-char v7, v4, v6

    .line 189
    aget-char v8, v3, v16

    add-int/lit8 v12, v8, -0x30

    move/from16 v15, p2

    if-gt v12, v15, :cond_1

    .line 192
    new-instance v14, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;

    const/4 v8, -0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    aget-object v10, v2, v16

    const/4 v11, 0x0

    const/4 v13, 0x0

    add-int/lit8 v17, v1, 0x2

    move-object v7, v14

    move-object/from16 v18, v14

    move v14, v1

    move/from16 v15, v17

    invoke-direct/range {v7 .. v15}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;-><init>(ILjava/lang/String;Ljava/lang/String;IIIII)V

    move-object/from16 v7, v18

    .line 194
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    .line 179
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private removeTrailingPunctuations(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 140
    sget-object v0, Lcom/amazon/kcp/wordwise/gloss/PinyinModel;->CHINESE_PUNCTUATIONS:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/wordwise/gloss/PinyinModel;->removeTrailingPunctuations(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getPinyinEntriesForPage(III)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/Collection<",
            "Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;",
            ">;"
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/wordwise/gloss/PinyinModel;->getEntryWithPositionInfo(II)Ljava/util/List;

    move-result-object p1

    .line 95
    iget-object p2, p0, Lcom/amazon/kcp/wordwise/gloss/PinyinModel;->pinyinDBHelper:Lcom/amazon/kcp/wordwise/persistence/PinyinDictionaryDBHelper;

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/wordwise/persistence/PinyinDictionaryDBHelper;->fillInPinyinInfo(Ljava/util/List;)V

    .line 97
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;

    .line 104
    iget-object v2, v1, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->pinyin:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 105
    invoke-virtual {v1}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->getChinese()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->getStartPosition()I

    move-result v1

    invoke-direct {p0, v2, v1}, Lcom/amazon/kcp/wordwise/gloss/PinyinModel;->getPinyinEntriesByCharacter(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 107
    :cond_0
    invoke-direct {p0, v1, p3}, Lcom/amazon/kcp/wordwise/gloss/PinyinModel;->getPinyinEntriesFromEntry(Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/gloss/PinyinModel;->pinyinDBHelper:Lcom/amazon/kcp/wordwise/persistence/PinyinDictionaryDBHelper;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/wordwise/persistence/PinyinDictionaryDBHelper;->fillInPinyinInfo(Ljava/util/List;)V

    .line 114
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;

    .line 115
    iget v1, v0, Lcom/amazon/kcp/wordwise/gloss/ChinesePinyinEntry;->difficulty:I

    if-gt v1, p3, :cond_2

    .line 116
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    :cond_3
    sget-object p1, Lcom/amazon/kcp/wordwise/gloss/PinyinModel;->DESC_DIFFICULTY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p2
.end method
