.class public Lcom/amazon/kcp/dictionary/utils/DictionaryUtils;
.super Ljava/lang/Object;
.source "DictionaryUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/amazon/kcp/dictionary/utils/DictionaryUtils;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/dictionary/utils/DictionaryUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteDictionaries(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;Ljava/lang/String;Lcom/amazon/kindle/io/IFileConnectionFactory;)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "!"

    .line 41
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->getDictionaryDefinitions()Ljava/util/HashMap;

    move-result-object v3

    .line 45
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "!*_*"

    const-string v7, "!*-*"

    .line 49
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!*_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 50
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!*-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 51
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 52
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-*"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 57
    invoke-static/range {p0 .. p0}, Lcom/amazon/kcp/dictionary/utils/DictionaryUtils;->fallbackDeletionLogicForCN(Lcom/amazon/kindle/content/ILibraryService;)Z

    move-result v10

    if-eqz v10, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 61
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;

    .line 63
    iget-object v10, v10, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->listDictionaries:Ljava/util/HashMap;

    if-eqz v10, :cond_7

    .line 67
    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_6

    .line 70
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;

    .line 80
    invoke-virtual {v12}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getMarketplace()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    if-eqz v13, :cond_4

    .line 81
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_4

    .line 82
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 84
    invoke-interface {v13, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 86
    invoke-interface {v13, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    goto :goto_3

    .line 90
    :cond_2
    invoke-interface {v13, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 91
    invoke-interface {v13, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 93
    invoke-interface {v13, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 94
    invoke-interface {v13, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    goto :goto_2

    .line 99
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_2

    .line 107
    :cond_4
    :goto_3
    invoke-virtual {v12}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getAsin()Ljava/lang/String;

    move-result-object v12

    .line 108
    invoke-interface/range {p0 .. p0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v13

    .line 106
    invoke-interface {v0, v12, v14, v13, v14}, Lcom/amazon/kindle/content/ILibraryService;->getContentByAsin(Ljava/lang/String;ZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 116
    invoke-virtual {v12}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 118
    invoke-virtual {v12}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v14, p3

    .line 117
    invoke-static {v14, v13}, Lcom/amazon/kindle/io/FileSystemHelper;->isWritable(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 124
    invoke-virtual {v12}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v13

    const-string v15, "/mnt/sdcard/Android/data/com.amazon.kindle/files/dictionaries/"

    .line 125
    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 126
    invoke-virtual {v12}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_5
    move-object/from16 v14, p3

    goto/16 :goto_2

    :cond_6
    move-object/from16 v14, p3

    goto/16 :goto_1

    :cond_7
    move-object/from16 v14, p3

    goto/16 :goto_0

    .line 135
    :cond_8
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 136
    sget-object v1, Lcom/amazon/kcp/dictionary/utils/DictionaryUtils;->TAG:Ljava/lang/String;

    const-string v3, "Deleting dictionaries"

    invoke-static {v1, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-interface/range {p0 .. p0}, Lcom/amazon/kindle/content/ILibraryService;->getUserIds()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    .line 138
    invoke-interface {v0, v2, v3, v4}, Lcom/amazon/kindle/content/ILibraryService;->deleteContentMetadata(Ljava/util/Collection;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 143
    sget-object v1, Lcom/amazon/kcp/dictionary/utils/DictionaryUtils;->TAG:Ljava/lang/String;

    const-string v2, "Unable to delete dictionaries"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    return-void
.end method

.method public static fallbackDeletionLogicForCN(Lcom/amazon/kindle/content/ILibraryService;)Z
    .locals 6

    .line 174
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isChinaUser()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/dcm/R$xml;->dictionaries:I

    invoke-static {v2, v3}, Lcom/amazon/kcp/reader/ui/dictionary/internal/XmlPreferredDictionaryList;->getNonCNDictionariesList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    .line 184
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/dcm/R$xml;->dictionaries_cn:I

    invoke-static {v3, v4}, Lcom/amazon/kcp/reader/ui/dictionary/internal/XmlPreferredDictionaryList;->getNonCNDictionariesList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    .line 186
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    sget-object p0, Lcom/amazon/kcp/dictionary/utils/DictionaryUtils;->TAG:Ljava/lang/String;

    const-string v0, "CN preloaded dictionary xml list is empty"

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 191
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 192
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 193
    new-instance v4, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    sget-object v5, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v4, v2, v5}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    .line 194
    invoke-virtual {v4}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 198
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 199
    sget-object v1, Lcom/amazon/kcp/dictionary/utils/DictionaryUtils;->TAG:Ljava/lang/String;

    const-string v3, "Deleting dictionaries for CN"

    invoke-static {v1, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-interface {p0}, Lcom/amazon/kindle/content/ILibraryService;->getUserIds()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 201
    invoke-interface {p0, v0, v3, v2}, Lcom/amazon/kindle/content/ILibraryService;->deleteContentMetadata(Ljava/util/Collection;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    return v1
.end method

.method public static isPreloadedDictionary(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/mnt/sdcard/Android/data/com.amazon.kindle/files/dictionaries/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
