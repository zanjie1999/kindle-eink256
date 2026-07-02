.class public abstract Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;
.super Ljava/lang/Object;
.source "AbstractPreferredDictionaryList.java"

# interfaces
.implements Lcom/amazon/kcp/library/dictionary/internal/IDictionaryList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList$FallbackDictionaryInfo;,
        Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList$PreferredDictionaryInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static fallbackDictionariesAsins:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected preferredDictionaries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;",
            ">;"
        }
    .end annotation
.end field

.field protected preferredDictionaryTitles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected preferredDisplayDictionaries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected shortTitleToContentDescription:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getDictionaryDefinitionListFromXml(Landroid/content/Context;I)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 237
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p2

    :goto_0
    const/4 v1, 0x1

    if-eq p2, v1, :cond_8

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto/16 :goto_1

    .line 242
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Dictionaries"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_1

    .line 244
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Dictionary"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 245
    new-instance p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;

    invoke-direct {p2, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 246
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDictionaries:Ljava/util/HashMap;

    iget-object v2, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->language:Ljava/lang/String;

    .line 248
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;

    if-nez v1, :cond_2

    .line 250
    new-instance v1, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;

    iget-object v2, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->language:Ljava/lang/String;

    iget-object v3, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->asin:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_2
    iget-object v2, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->language:Ljava/lang/String;

    iget-object v3, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->subLanguage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->hasDefaultPreferredAsin()Z

    move-result v2

    if-nez v2, :cond_3

    .line 256
    iget-object v2, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->asin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->setDefaultPreferredAsin(Ljava/lang/String;)V

    .line 259
    :cond_3
    iget-object v2, v1, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->listDictionaries:Ljava/util/HashMap;

    iget-object v3, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->subLanguage:Ljava/lang/String;

    .line 261
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_4

    .line 263
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 266
    :cond_4
    new-instance v12, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;

    iget-object v4, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->asin:Ljava/lang/String;

    iget-object v5, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->language:Ljava/lang/String;

    iget-object v6, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->subLanguage:Ljava/lang/String;

    iget-object v7, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->marketplace:Ljava/util/List;

    iget-object v8, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->languageString:Ljava/lang/String;

    iget-object v9, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->title:Ljava/lang/String;

    iget-object v10, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->contentDescription:Ljava/lang/String;

    iget-boolean v11, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->isHidden:Z

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 271
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v3, v1, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->listDictionaries:Ljava/util/HashMap;

    iget-object v4, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->subLanguage:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDictionaries:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDictionaryTitles:Ljava/util/HashMap;

    iget-object v2, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->asin:Ljava/lang/String;

    iget-object v3, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->shortTitleToContentDescription:Ljava/util/HashMap;

    invoke-virtual {v12}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getLanguageString()Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-virtual {v12}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getContentDescription()Ljava/lang/String;

    move-result-object v3

    .line 279
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-boolean v1, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->isHidden:Z

    if-nez v1, :cond_6

    .line 283
    iget-object v1, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->marketplace:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "-"

    if-eqz v1, :cond_5

    :try_start_1
    iget-object v1, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->marketplace:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 285
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDisplayDictionaries:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    iget-object v4, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->languageString:Ljava/lang/String;

    iget-object v5, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->language:Ljava/lang/String;

    .line 286
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->subLanguage:Ljava/lang/String;

    .line 287
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p2, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->marketplace:Ljava/util/List;

    const/4 v5, 0x0

    .line 288
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, v4, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 285
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 290
    :cond_5
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDisplayDictionaries:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    iget-object v4, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->languageString:Ljava/lang/String;

    iget-object v5, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->language:Ljava/lang/String;

    .line 291
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object p2, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->subLanguage:Ljava/lang/String;

    .line 292
    invoke-virtual {v5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, v4, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 290
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_6
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2

    goto/16 :goto_0

    .line 296
    :cond_7
    sget-object p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected tag in dictionaries.xml: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 296
    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 306
    sget-object p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->TAG:Ljava/lang/String;

    const-string v1, "error parsing dictionaries.xml: "

    invoke-static {p2, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return-object v0
.end method

.method public getDictionaryDefinitions()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDictionaries:Ljava/util/HashMap;

    return-object v0
.end method

.method public getDictionaryLanguages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDisplayDictionaries:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDictionaryTitles()Ljava/util/HashMap;
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

    .line 66
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDictionaryTitles:Ljava/util/HashMap;

    return-object v0
.end method

.method public getShortTitleToContentDescription()Ljava/util/HashMap;
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

    .line 71
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->shortTitleToContentDescription:Ljava/util/HashMap;

    return-object v0
.end method

.method protected initFallbackDictionaries(Landroid/content/Context;)V
    .locals 4

    .line 171
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/dcm/R$xml;->fallback_dictionaries:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 173
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 177
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fallback_Dictionaries"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 179
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dictionary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    new-instance v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList$FallbackDictionaryInfo;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList$FallbackDictionaryInfo;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 181
    sget-object v1, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->fallbackDictionariesAsins:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList$FallbackDictionaryInfo;->asin:Ljava/lang/String;

    iget-object v3, v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList$FallbackDictionaryInfo;->fallbackAsin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDictionaryTitles:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList$FallbackDictionaryInfo;->asin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 183
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 184
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDictionaryTitles:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList$FallbackDictionaryInfo;->fallbackAsin:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 187
    :cond_3
    sget-object v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected tag in fallback_dictionaries.xml: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 196
    sget-object v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->TAG:Ljava/lang/String;

    const-string v1, "error parsing dictionaries.xml: "

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method protected initPreferredDictionaries(Landroid/content/Context;I)V
    .locals 2

    .line 203
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 205
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p2

    :goto_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_1

    .line 209
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Preferred_Dictionaries"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 211
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Language"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 212
    new-instance p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList$PreferredDictionaryInfo;

    invoke-direct {p2, p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList$PreferredDictionaryInfo;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 213
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->preferredDictionaries:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList$PreferredDictionaryInfo;->language:Ljava/lang/String;

    .line 214
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;

    if-eqz v0, :cond_2

    .line 216
    iget-object p2, p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList$PreferredDictionaryInfo;->asin:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->setDefaultPreferredAsin(Ljava/lang/String;)V

    .line 206
    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2

    goto :goto_0

    .line 219
    :cond_3
    sget-object p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unexpected tag in preferred_dictionaries.xml: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 228
    sget-object p2, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->TAG:Ljava/lang/String;

    const-string v0, "error parsing dictionaries.xml: "

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method
