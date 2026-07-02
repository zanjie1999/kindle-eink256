.class public Lcom/amazon/kcp/reader/ui/dictionary/internal/XmlPreferredDictionaryList;
.super Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;
.source "XmlPreferredDictionaryList.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/XmlPreferredDictionaryList;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/XmlPreferredDictionaryList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 132
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;-><init>()V

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDictionaries:Ljava/util/HashMap;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDictionaryTitles:Ljava/util/HashMap;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDisplayDictionaries:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->fallbackDictionariesAsins:Ljava/util/HashMap;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->shortTitleToContentDescription:Ljava/util/HashMap;

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/dictionary/internal/XmlPreferredDictionaryList;->initDictionaries(Landroid/content/Context;I)V

    .line 140
    invoke-virtual {p0, p1, p3}, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->initPreferredDictionaries(Landroid/content/Context;I)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->initFallbackDictionaries(Landroid/content/Context;)V

    return-void
.end method

.method public static getNonCNDictionariesList(Landroid/content/Context;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    .line 162
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    :goto_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_1

    .line 166
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Dictionaries"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 168
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Dictionary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 169
    new-instance p1, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 170
    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->asin:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    goto :goto_0

    .line 172
    :cond_2
    sget-object p1, Lcom/amazon/kcp/reader/ui/dictionary/internal/XmlPreferredDictionaryList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected tag in dictionaries.xml: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    .line 180
    sget-object p1, Lcom/amazon/kcp/reader/ui/dictionary/internal/XmlPreferredDictionaryList;->TAG:Ljava/lang/String;

    const-string v1, "error parsing dictionaries.xml: "

    invoke-static {p1, v1, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-object v0
.end method

.method private initDictionaries(Landroid/content/Context;I)V
    .locals 12

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDisplayDictionaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 47
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p2

    :goto_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_9

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto/16 :goto_1

    .line 51
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Dictionaries"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_1

    .line 53
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Dictionary"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 54
    new-instance p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;

    invoke-direct {p2, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 56
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->areTestDictionariesEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 58
    iget-object v0, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->language:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;->hasTestDictionaries(Ljava/lang/String;)Z

    move-result v0

    .line 59
    iget-object v1, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->subLanguage:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;->hasTestDictionaries(Ljava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_7

    if-eqz v1, :cond_2

    goto/16 :goto_1

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDictionaries:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->language:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;

    if-nez v0, :cond_3

    .line 70
    new-instance v0, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;

    iget-object v1, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->language:Ljava/lang/String;

    iget-object v2, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->asin:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_3
    iget-object v1, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->language:Ljava/lang/String;

    iget-object v2, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->subLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->hasDefaultPreferredAsin()Z

    move-result v1

    if-nez v1, :cond_4

    .line 76
    iget-object v1, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->asin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->setDefaultPreferredAsin(Ljava/lang/String;)V

    .line 79
    :cond_4
    iget-object v1, v0, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->listDictionaries:Ljava/util/HashMap;

    iget-object v2, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->subLanguage:Ljava/lang/String;

    .line 80
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_5

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    :cond_5
    new-instance v11, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;

    iget-object v3, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->asin:Ljava/lang/String;

    iget-object v4, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->language:Ljava/lang/String;

    iget-object v5, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->subLanguage:Ljava/lang/String;

    iget-object v6, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->marketplace:Ljava/util/List;

    iget-object v7, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->languageString:Ljava/lang/String;

    iget-object v8, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->title:Ljava/lang/String;

    iget-object v9, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->contentDescription:Ljava/lang/String;

    iget-boolean v10, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->isHidden:Z

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 93
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v2, v0, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->listDictionaries:Ljava/util/HashMap;

    iget-object v3, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->subLanguage:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDictionaries:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDictionaryTitles:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->asin:Ljava/lang/String;

    iget-object v2, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->shortTitleToContentDescription:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->languageString:Ljava/lang/String;

    iget-object v2, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->contentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-boolean v0, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->isHidden:Z

    if-nez v0, :cond_7

    .line 104
    iget-object v0, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->marketplace:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "-"

    if-eqz v0, :cond_6

    :try_start_1
    iget-object v0, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->marketplace:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDisplayDictionaries:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    iget-object v3, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->languageString:Ljava/lang/String;

    iget-object v4, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->language:Ljava/lang/String;

    .line 108
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->subLanguage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p2, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->marketplace:Ljava/util/List;

    const/4 v4, 0x0

    .line 110
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 109
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, v3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 112
    :cond_6
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDisplayDictionaries:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    iget-object v3, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->languageString:Ljava/lang/String;

    iget-object v4, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->language:Ljava/lang/String;

    .line 114
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object p2, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->subLanguage:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 115
    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, v3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_7
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2

    goto/16 :goto_0

    .line 119
    :cond_8
    sget-object p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/XmlPreferredDictionaryList;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unexpected tag in dictionaries.xml: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 127
    sget-object p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/XmlPreferredDictionaryList;->TAG:Ljava/lang/String;

    const-string v0, "error parsing dictionaries.xml: "

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
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

    .line 146
    sget-object v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->fallbackDictionariesAsins:Ljava/util/HashMap;

    return-object v0
.end method
