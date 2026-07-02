.class public final Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;
.super Ljava/lang/Object;
.source "PreferredDictionaries.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries$ComparableStringPair;
    }
.end annotation


# static fields
.field private static cachedAsin:Ljava/lang/String;

.field private static cachedLanguageCode:Ljava/lang/String;

.field private static customDictionaryAsinToLanguageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static customDictionaryLanguageToAsinsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static customDictionaryTitleAsins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries$ComparableStringPair;",
            ">;"
        }
    .end annotation
.end field

.field private static dictionaries:Ljava/util/ArrayList;
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

.field private static fallbackDictionariesAsins:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile preloadedDictionaries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile preloadedDictionaryTitleLanguageCodePair:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile preloadedDictionaryTitles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile shortTitleToDescription:Ljava/util/HashMap;
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
    .locals 0

    return-void
.end method

.method public static declared-synchronized addCustomDictionaries(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries$ComparableStringPair;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;

    monitor-enter v0

    .line 496
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->customDictionaryTitleAsins:Ljava/util/List;

    if-nez v1, :cond_0

    .line 497
    new-instance v1, Ljava/util/ArrayList;

    .line 498
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v1, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->customDictionaryTitleAsins:Ljava/util/List;

    :cond_0
    if-eqz p0, :cond_5

    .line 500
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 501
    sget-object v1, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->customDictionaryAsinToLanguageMap:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 502
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->customDictionaryAsinToLanguageMap:Ljava/util/Map;

    .line 504
    :cond_1
    sget-object v1, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->customDictionaryLanguageToAsinsMap:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 505
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->customDictionaryLanguageToAsinsMap:Ljava/util/Map;

    .line 507
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/ContentMetadata;

    .line 509
    sget-object v2, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->customDictionaryAsinToLanguageMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v3

    .line 510
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 509
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    new-instance v2, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries$ComparableStringPair;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries$ComparableStringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    sget-object v3, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->customDictionaryTitleAsins:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 514
    sget-object v2, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->customDictionaryTitleAsins:Ljava/util/List;

    new-instance v3, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries$ComparableStringPair;

    .line 515
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries$ComparableStringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 517
    :cond_3
    sget-object v4, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->customDictionaryTitleAsins:Ljava/util/List;

    invoke-interface {v4, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 519
    :goto_1
    sget-object v2, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->customDictionaryLanguageToAsinsMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 520
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    .line 522
    :cond_4
    sget-object v2, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->customDictionaryLanguageToAsinsMap:Ljava/util/Map;

    .line 523
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 525
    :goto_2
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    sget-object v3, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->customDictionaryLanguageToAsinsMap:Ljava/util/Map;

    .line 527
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 526
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 530
    :cond_5
    sget-object p0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->customDictionaryTitleAsins:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static addDictionaryLanguages(Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 472
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preloadedDictionaryTitleLanguageCodePair:Ljava/util/List;

    if-nez v0, :cond_0

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preloadedDictionaryTitleLanguageCodePair:Ljava/util/List;

    :cond_0
    if-eqz p0, :cond_3

    .line 475
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preloadedDictionaryTitleLanguageCodePair:Ljava/util/List;

    .line 477
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 481
    sget-object v1, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preloadedDictionaryTitleLanguageCodePair:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 483
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 488
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preloadedDictionaryTitleLanguageCodePair:Ljava/util/List;

    .line 489
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public static addFreeDictionaries(Ljava/util/List;Ljava/util/Map;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 417
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;

    .line 419
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preloadedDictionaries:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 420
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preloadedDictionaries:Ljava/util/HashMap;

    .line 423
    :cond_1
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preloadedDictionaries:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;

    if-nez v0, :cond_2

    .line 425
    new-instance v0, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_2
    invoke-virtual {p2}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getSubLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->hasDefaultPreferredAsin()Z

    move-result v1

    if-nez v1, :cond_3

    .line 430
    invoke-virtual {p2}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->setDefaultPreferredAsin(Ljava/lang/String;)V

    .line 432
    :cond_3
    iget-object v1, v0, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->listDictionaries:Ljava/util/HashMap;

    .line 433
    invoke-virtual {p2}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getSubLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_4

    .line 435
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 437
    :cond_4
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v2, v0, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->listDictionaries:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getSubLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v1, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preloadedDictionaries:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preloadedDictionaryTitles:Ljava/util/HashMap;

    if-nez v0, :cond_5

    .line 443
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preloadedDictionaryTitles:Ljava/util/HashMap;

    .line 445
    :cond_5
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preloadedDictionaryTitles:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getAsin()Ljava/lang/String;

    move-result-object v1

    .line 446
    invoke-virtual {p2}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 445
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->shortTitleToDescription:Ljava/util/HashMap;

    if-nez v0, :cond_6

    .line 449
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->shortTitleToDescription:Ljava/util/HashMap;

    .line 451
    :cond_6
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->shortTitleToDescription:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getAsin()Ljava/lang/String;

    move-result-object v1

    .line 452
    invoke-virtual {p2}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 451
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    invoke-virtual {p2}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    invoke-virtual {p2}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getMarketplace()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "-"

    if-nez v0, :cond_7

    .line 457
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getLanguageString()Ljava/lang/String;

    move-result-object v2

    .line 458
    invoke-virtual {p2}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 459
    invoke-virtual {p2}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getSubLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 460
    invoke-virtual {p2}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getMarketplace()Ljava/util/List;

    move-result-object p2

    const/4 v3, 0x0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 457
    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->addDictionaryLanguages(Landroid/util/Pair;)V

    goto/16 :goto_0

    .line 462
    :cond_7
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getLanguageString()Ljava/lang/String;

    move-result-object v2

    .line 463
    invoke-virtual {p2}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 464
    invoke-virtual {p2}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getSubLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 462
    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->addDictionaryLanguages(Landroid/util/Pair;)V

    goto/16 :goto_0

    .line 468
    :cond_8
    sget-object p0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preloadedDictionaryTitleLanguageCodePair:Ljava/util/List;

    return-object p0
.end method

.method public static declared-synchronized deleteCustomDictionary(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-class v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;

    monitor-enter v0

    .line 381
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->customDictionaryAsinToLanguageMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 382
    monitor-exit v0

    return v2

    .line 387
    :cond_0
    :try_start_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 388
    sget-object v4, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->customDictionaryAsinToLanguageMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 391
    sget-object v2, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->customDictionaryLanguageToAsinsMap:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 392
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 393
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v5, :cond_2

    .line 394
    sget-object v2, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->customDictionaryLanguageToAsinsMap:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 396
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_6

    .line 402
    sget-object v1, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->customDictionaryTitleAsins:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 403
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 404
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries$ComparableStringPair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 405
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 406
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 410
    :cond_6
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getAllDictionaryLanguages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 279
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preloadedDictionaries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getContentDescriptionForDictionary(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 546
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->shortTitleToDescription:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 547
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->shortTitleToDescription:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private static getCustomDictionaryASIN(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 248
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->customDictionaryLanguageToAsinsMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 252
    :cond_0
    monitor-enter v0

    .line 253
    :try_start_0
    sget-object v2, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->customDictionaryLanguageToAsinsMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    .line 256
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 257
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getDictionaryAsinFromLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 194
    sget-object v1, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preloadedDictionaries:Ljava/util/HashMap;

    if-nez v1, :cond_0

    goto :goto_2

    .line 198
    :cond_0
    new-instance v1, Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;-><init>(Ljava/lang/String;)V

    .line 200
    sget-object v2, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preloadedDictionaries:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;

    if-nez v2, :cond_1

    .line 205
    invoke-static {p0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->getCustomDictionaryASIN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 210
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;->hasSubLanguage()Z

    move-result p0

    if-nez p0, :cond_2

    .line 211
    invoke-virtual {v2}, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->getDefaultAsin()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 214
    :cond_2
    iget-object p0, v2, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->listDictionaries:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;->getSubLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_5

    .line 218
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 219
    invoke-virtual {v1}, Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;->hasMarketplace()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;->getMarketplace()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v0

    :goto_0
    if-nez v3, :cond_4

    const/4 v3, 0x0

    .line 222
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;

    goto :goto_1

    .line 224
    :cond_4
    invoke-static {p0, v3}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->getDictionaryOfMarketplace(Ljava/util/Collection;Ljava/lang/String;)Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_5

    .line 226
    invoke-virtual {p0}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getAsin()Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    :cond_5
    if-nez v0, :cond_6

    .line 230
    invoke-virtual {v2}, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->getDefaultAsin()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 233
    :cond_6
    sput-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->cachedAsin:Ljava/lang/String;

    .line 234
    invoke-virtual {v1}, Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;->getLanguageCode()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->cachedLanguageCode:Ljava/lang/String;

    :cond_7
    :goto_2
    return-object v0
.end method

.method private static getDictionaryOfMarketplace(Ljava/util/Collection;Ljava/lang/String;)Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;"
        }
    .end annotation

    .line 270
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;

    .line 271
    invoke-virtual {v0}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getMarketplace()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDictionarySecondaryLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 563
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preloadedDictionaries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;

    if-eqz p1, :cond_2

    .line 565
    iget-object p1, p1, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->listDictionaries:Ljava/util/HashMap;

    .line 566
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 567
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 568
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;

    .line 569
    invoke-virtual {v2}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 570
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public static getFallbackDictionaryAsin(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 365
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->fallbackDictionariesAsins:Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getLanguageCodeOfCustomDictionaryASIN(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 327
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->customDictionaryAsinToLanguageMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 328
    monitor-enter v0

    .line 329
    :try_start_0
    invoke-static {p0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isCustomDictionary(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    sget-object v1, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->customDictionaryAsinToLanguageMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 332
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLanguageFromAsin(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 285
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->cachedAsin:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    sget-object p0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->cachedLanguageCode:Ljava/lang/String;

    return-object p0

    .line 291
    :cond_0
    invoke-static {p0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->getLanguageCodeOfCustomDictionaryASIN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 296
    :cond_1
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preloadedDictionaries:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    .line 300
    :cond_2
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preloadedDictionaries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;

    if-eqz v2, :cond_3

    .line 302
    iget-object v2, v2, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->listDictionaries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_4

    .line 304
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;

    .line 305
    invoke-virtual {v4}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getAsin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 306
    sput-object p0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->cachedAsin:Ljava/lang/String;

    .line 307
    invoke-virtual {v4}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getLanguageCode()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->cachedLanguageCode:Ljava/lang/String;

    return-object p0

    :cond_6
    return-object v1
.end method

.method public static getPreferredDictionaries()Ljava/util/HashMap;
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

    .line 375
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preloadedDictionaries:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getPreferredDictionaryTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 179
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preloadedDictionaryTitles:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 181
    :cond_0
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preloadedDictionaryTitles:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static declared-synchronized isCustomDictionary(Lcom/amazon/kindle/model/content/IListableBook;)Z
    .locals 1

    const-class v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 140
    :try_start_0
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isCustomDictionary(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0
.end method

.method public static declared-synchronized isCustomDictionary(Ljava/lang/String;)Z
    .locals 2

    const-class v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 165
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->customDictionaryAsinToLanguageMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->customDictionaryAsinToLanguageMap:Ljava/util/Map;

    .line 167
    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    const/4 p0, 0x0

    .line 165
    :goto_0
    monitor-exit v0

    return p0
.end method

.method public static isPreferredDictionary(Lcom/amazon/kindle/model/content/IListableBook;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 129
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPreferredDictionary(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 152
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preloadedDictionaryTitles:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preloadedDictionaryTitles:Ljava/util/HashMap;

    .line 153
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setPreferredDictionaries(Lcom/amazon/kcp/library/dictionary/internal/IDictionaryList;)V
    .locals 1

    .line 98
    invoke-interface {p0}, Lcom/amazon/kcp/library/dictionary/internal/IDictionaryList;->getDictionaryDefinitions()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preloadedDictionaries:Ljava/util/HashMap;

    .line 99
    invoke-interface {p0}, Lcom/amazon/kcp/library/dictionary/internal/IDictionaryList;->getDictionaryTitles()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preloadedDictionaryTitles:Ljava/util/HashMap;

    .line 100
    invoke-interface {p0}, Lcom/amazon/kcp/library/dictionary/internal/IDictionaryList;->getShortTitleToContentDescription()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->shortTitleToDescription:Ljava/util/HashMap;

    .line 101
    invoke-interface {p0}, Lcom/amazon/kcp/library/dictionary/internal/IDictionaryList;->getFallbackDictionaryAsins()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->fallbackDictionariesAsins:Ljava/util/HashMap;

    .line 102
    invoke-interface {p0}, Lcom/amazon/kcp/library/dictionary/internal/IDictionaryList;->getDictionaryLanguages()Ljava/util/ArrayList;

    move-result-object p0

    sput-object p0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preloadedDictionaryTitleLanguageCodePair:Ljava/util/List;

    return-void
.end method
