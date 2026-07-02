.class public Lcom/amazon/kcp/reader/ui/dictionary/internal/DbPreferredDictionaryList;
.super Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;
.source "DbPreferredDictionaryList.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private libraryService:Lcom/amazon/kindle/content/ILibraryService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DbPreferredDictionaryList;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DbPreferredDictionaryList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;-><init>()V

    .line 95
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 96
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDictionaries:Ljava/util/HashMap;

    .line 99
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDictionaryTitles:Ljava/util/HashMap;

    .line 101
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDisplayDictionaries:Ljava/util/ArrayList;

    .line 102
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    sput-object p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->fallbackDictionariesAsins:Ljava/util/HashMap;

    .line 103
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->shortTitleToContentDescription:Ljava/util/HashMap;

    .line 106
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DbPreferredDictionaryList;->populateDictionaryListFromDb()V

    .line 108
    invoke-virtual {p0, p1, p3}, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->initPreferredDictionaries(Landroid/content/Context;I)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->initFallbackDictionaries(Landroid/content/Context;)V

    return-void
.end method

.method private getLibraryService()Lcom/amazon/kindle/content/ILibraryService;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DbPreferredDictionaryList;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    if-nez v0, :cond_0

    .line 241
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DbPreferredDictionaryList;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DbPreferredDictionaryList;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    return-object v0
.end method

.method private initDictionaries(Landroid/content/Context;I)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDisplayDictionaries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDisplayDictionaries:Ljava/util/ArrayList;

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDictionaries:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDictionaries:Ljava/util/HashMap;

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDictionaryTitles:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDictionaryTitles:Ljava/util/HashMap;

    .line 78
    :cond_2
    sget-object v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->fallbackDictionariesAsins:Ljava/util/HashMap;

    if-nez v0, :cond_3

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->fallbackDictionariesAsins:Ljava/util/HashMap;

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->shortTitleToContentDescription:Ljava/util/HashMap;

    if-nez v0, :cond_4

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->shortTitleToContentDescription:Ljava/util/HashMap;

    .line 85
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->getDictionaryDefinitionListFromXml(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 87
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_5

    .line 88
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DbPreferredDictionaryList;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/amazon/kindle/content/ILibraryService;->insertDictionaryInfoToTable(Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method private initializeDictionariesFromXml()V
    .locals 2

    .line 53
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isChinaUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/dcm/R$xml;->dictionaries_cn:I

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DbPreferredDictionaryList;->initDictionaries(Landroid/content/Context;I)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/dcm/R$xml;->dictionaries:I

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DbPreferredDictionaryList;->initDictionaries(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method private populateDictionaryListFromDb()V
    .locals 16

    move-object/from16 v1, p0

    .line 126
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DbPreferredDictionaryList;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getDictionaryInfoFromTable()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 128
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 129
    iget-object v2, v1, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDisplayDictionaries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 131
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v2

    .line 132
    sget-object v3, Lcom/amazon/kindle/services/authentication/TokenKey;->COR:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v2, v3}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;

    .line 135
    invoke-virtual {v3}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-static {v4}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 144
    sget-object v4, Lcom/amazon/kcp/reader/ui/dictionary/internal/DbPreferredDictionaryList;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reading dictionaries from DB and found db with null langauge! asin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v3}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-static {v4, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {v3}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getAsin()Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-virtual {v3}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 151
    invoke-virtual {v3}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getSubLanguage()Ljava/lang/String;

    move-result-object v7

    .line 152
    invoke-virtual {v3}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getContentDescription()Ljava/lang/String;

    move-result-object v8

    .line 153
    invoke-virtual {v3}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getLanguageString()Ljava/lang/String;

    move-result-object v9

    .line 154
    invoke-virtual {v3}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getMarketplace()Ljava/util/List;

    move-result-object v10

    .line 156
    iget-object v11, v1, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDictionaries:Ljava/util/HashMap;

    .line 157
    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;

    if-nez v11, :cond_2

    .line 165
    new-instance v11, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;

    invoke-direct {v11, v4, v5}, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_2
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    if-eqz v10, :cond_5

    .line 174
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    .line 175
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, "_"

    .line 177
    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 178
    array-length v15, v14

    const/4 v13, 0x1

    if-le v15, v13, :cond_4

    .line 179
    aget-object v13, v14, v13

    goto :goto_1

    :cond_4
    const/4 v13, 0x0

    .line 181
    aget-object v14, v14, v13

    move-object v13, v14

    .line 183
    :goto_1
    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 184
    invoke-virtual {v11, v5}, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->setDefaultPreferredAsin(Ljava/lang/String;)V

    .line 189
    :cond_5
    invoke-virtual {v11}, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->hasDefaultPreferredAsin()Z

    move-result v12

    if-nez v12, :cond_6

    .line 190
    invoke-virtual {v11, v5}, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->setDefaultPreferredAsin(Ljava/lang/String;)V

    .line 194
    :cond_6
    iget-object v12, v11, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->listDictionaries:Ljava/util/HashMap;

    .line 195
    invoke-virtual {v3}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getSubLanguage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    if-nez v12, :cond_7

    .line 197
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 200
    :cond_7
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v13, v11, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->listDictionaries:Ljava/util/HashMap;

    invoke-virtual {v13, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v12, v1, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDictionaries:Ljava/util/HashMap;

    invoke-virtual {v11}, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->getLanguage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v11, v1, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDictionaryTitles:Ljava/util/HashMap;

    invoke-virtual {v11, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_0

    if-eqz v8, :cond_8

    .line 207
    iget-object v5, v1, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->shortTitleToContentDescription:Ljava/util/HashMap;

    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_8
    invoke-virtual {v3}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->isHidden()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    const-string v3, "-"

    if-eqz v10, :cond_9

    .line 210
    :try_start_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 212
    iget-object v5, v1, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDisplayDictionaries:Ljava/util/ArrayList;

    new-instance v6, Landroid/util/Pair;

    .line 213
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 214
    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 215
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v9, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 212
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 217
    :cond_9
    iget-object v5, v1, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDisplayDictionaries:Ljava/util/ArrayList;

    new-instance v6, Landroid/util/Pair;

    .line 218
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 219
    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v9, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 217
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 226
    :cond_a
    iget-object v0, v1, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDisplayDictionaries:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDisplayDictionaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_c

    .line 228
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DbPreferredDictionaryList;->initializeDictionariesFromXml()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 235
    sget-object v2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DbPreferredDictionaryList;->TAG:Ljava/lang/String;

    const-string v3, "error reading dictionaries from db"

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    :goto_2
    return-void
.end method


# virtual methods
.method public getFallbackDictionaryAsins()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public insertXmlDictionaryInfoIntoDictionaryTable(Lcom/amazon/kindle/content/db/KindleContentDB$DictionaryTableCreatedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 46
    invoke-virtual {p1}, Lcom/amazon/kindle/content/db/KindleContentDB$DictionaryTableCreatedEvent;->getType()Lcom/amazon/kindle/content/db/KindleContentDB$DictionaryTableCreatedEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/content/db/KindleContentDB$DictionaryTableCreatedEvent$EventType;->DICTIONARY_TABLE_CREATED:Lcom/amazon/kindle/content/db/KindleContentDB$DictionaryTableCreatedEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DbPreferredDictionaryList;->initializeDictionariesFromXml()V

    :cond_0
    return-void
.end method
